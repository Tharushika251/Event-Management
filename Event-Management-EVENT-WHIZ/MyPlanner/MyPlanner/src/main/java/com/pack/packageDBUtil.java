package com.pack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.client.DBConnection;

public class packageDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean addPackage(int hId, String packName, String price, String description) {

		boolean isSuccess = false;

		try {
			// DB connect part
			// -------------------------------------------------------------------------------
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			// ------------------------------------------------------------------------------------------------------

			String sql = "insert into packages(pName, price, description,idhotels) values('" + packName + "','" + price
					+ "','" + description + "','" + hId + "') ";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	public static List<Packages> getPackageDetails() {

//	int convertedID = Integer.parseInt();

		ArrayList<Packages> pack = new ArrayList<>();

		try {

			con = DBConnection.getConnection();
			stmt = con.createStatement();

			String sql = "select * from packages;";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int pid = rs.getInt(1);
				String pname = rs.getString(2);
				String price = rs.getString(3);
				String description = rs.getString(4);
				int hid = rs.getInt(5);

				Packages p = new Packages(pid, pname, price, description, hid);
				pack.add(p);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return pack;
	}

	public static boolean updatePackage(int pID, String pName, String price, String description, int hid) {
		boolean isSuccess = false;

		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			String sql = "UPDATE packages SET pName='" + pName + "',price='" + price + "', description='" + description
					+ "', idhotels='" + hid + "' WHERE pid = '" + pID + "'";
			// pid, pName, price, description, idhotels
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	public static boolean deletebooking(String pID) {
		boolean isSuccess = false;

		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "DELETE FROM packages WHERE pid='" + pID + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

}
