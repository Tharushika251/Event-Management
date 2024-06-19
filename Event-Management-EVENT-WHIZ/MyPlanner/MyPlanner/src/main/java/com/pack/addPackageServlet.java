package com.pack;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.hotelDBUtil;

@WebServlet("/addPackageServlet")
public class addPackageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Get the selectedHotelID as a String
	    String selectedHotelIDString = request.getParameter("selectedHotelID");

	    // Parse the selectedHotelIDString to an integer
	    int selectedHotelID = Integer.parseInt(selectedHotelIDString);

		String packName = request.getParameter("packName");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		Boolean isTrue;

		isTrue = packageDBUtil.addPackage(selectedHotelID, packName, price, description);

		if (isTrue == true) {

			RequestDispatcher dis = request.getRequestDispatcher("success2.jsp");
			dis.forward(request, response);
			
		} else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
			
		}

	}

}
