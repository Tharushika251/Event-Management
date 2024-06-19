package com.hotel;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adminViewHotelServlet")
public class adminViewHotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        // Get the hotel ID from the request parameter
		        String id = request.getParameter("hid");

		        // Call the database utility method to retrieve hotel details
		        List<Hotels> hotelDetails = hotelDBUtil.getHotelDetails(id);

		        if (hotelDetails != null && !hotelDetails.isEmpty()) {
		            // Set the retrieved hotel details in the request attribute
		            request.setAttribute("HotelDetails", hotelDetails);

		            // Forward the request to a JSP for displaying the details
		            RequestDispatcher dispatcher = request.getRequestDispatcher("adminHotelView.jsp");
		            dispatcher.forward(request, response);
		        } else {
		            // Handle the case where no hotel details were found
		            RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
		            dispatcher.forward(request, response);
		        }
		    
	}

}
