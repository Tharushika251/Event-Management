package com.hotel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.booking.Booking;
import com.client.DBConnection;



public class hotelDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
public static boolean addHotel(String name, String hemail,String area, String description){
		
		boolean isSuccess = false;
		
		try {
			//DB connect part -------------------------------------------------------------------------------
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			//------------------------------------------------------------------------------------------------------
			
			String sql = "insert into hotels values(0,'"+name+"','"+hemail+"','"+area+"','"+description+"') ";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
						
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

public static List<Hotels> getHotelDetails(String hid) {
	
	int convertedID = Integer.parseInt(hid);
	
	ArrayList<Hotels> hote = new ArrayList<>();
	
	try {
		
		con = DBConnection.getConnection();
		stmt = con.createStatement();
		String sql = "select * from hotels where idhotels='"+convertedID+"'";
		rs =stmt.executeQuery(sql);
		
		while(rs.next()) {
			int hid1 = rs.getInt(1);
			String hname = rs.getString(2);
			String hemail = rs.getString(3);
			String harea = rs.getString(4);
			String hdescription = rs.getString(5);
			
			Hotels h = new Hotels(hid1,hname,hemail,harea,hdescription);
			hote.add(h);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return hote;	
}



// ... Existing methods for adding and retrieving hotel information ...

public static boolean updateHotel(int hotelId, String updatedName, String updatedEmail, String updatedArea, String updatedDescription) {
    boolean isUpdated = false;

    try {
        con = DBConnection.getConnection();
        String sql = "UPDATE hotels SET hname=?, hemail=?, area=?, description=? WHERE idhotels=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, updatedName);
        ps.setString(2, updatedEmail);
        ps.setString(3, updatedArea);
        ps.setString(4, updatedDescription);
        ps.setInt(5, hotelId);

        int rowsAffected = ps.executeUpdate();

        if (rowsAffected > 0) {
            isUpdated = true;
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } 

    return isUpdated;
}

public static boolean deleteHotel(String hid) {
	boolean isSuccess = false;
		int convId=Integer.parseInt(hid);
	
	
	try {
		con=DBConnection.getConnection();
		stmt=con.createStatement();
		String sql="delete from hotels where idhotels='"+convId+"'";
		int rs=stmt.executeUpdate(sql);
		
		if(rs>0) {
			isSuccess=true;
		}
		else {
			isSuccess=false;
		}
		
		
		
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
		
		
	
	
	return isSuccess;
}


public static List<Hotels> getAllHotels1() {
    List<Hotels> hotel = new ArrayList<>();

    try (Connection con = DBConnection.getConnection();
         Statement stmt = con.createStatement();
         ResultSet rs = stmt.executeQuery("SELECT * FROM hotels")) {
        while (rs.next()) {
        	int hid1 = rs.getInt(1);
			String hname = rs.getString(2);
			String hemail = rs.getString(3);
			String harea = rs.getString(4);
			String hdescription = rs.getString(5);
			
			Hotels h = new Hotels(hid1,hname,hemail,harea,hdescription);
			hotel.add(h);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return hotel;
}




}
