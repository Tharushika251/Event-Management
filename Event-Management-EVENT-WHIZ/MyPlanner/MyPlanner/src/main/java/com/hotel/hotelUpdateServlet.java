package com.hotel;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/hotelUpdateServlet")
public class hotelUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 // Retrieve updated hotel information from request parameters
        int hotelId = Integer.parseInt(request.getParameter("hid"));
        String updatedName = request.getParameter("hname");
        String updatedEmail = request.getParameter("hemail");
        String updatedArea = request.getParameter("harea");
        String updatedDescription = request.getParameter("hdescription");

        // Call a method in your hotelDBUtil to update the hotel information in the database
        boolean isUpdated = hotelDBUtil.updateHotel(hotelId, updatedName, updatedEmail, updatedArea, updatedDescription);

        if (isUpdated) {
            // Redirect to a success page
            response.sendRedirect("success2.jsp");
        } else {
            // Redirect to an error page
            response.sendRedirect("unsuccess.jsp");
        }
    }

}
