package com.hotel;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.booking.Booking;
import com.booking.BookingDBUtil;

/**
 * Servlet implementation class DeleteHotelServlet
 */
@WebServlet("/DeleteHotelServlet")
public class DeleteHotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String hid=request.getParameter("hid");
		boolean isTrue;
		
		isTrue=hotelDBUtil.deleteHotel(hid);
		
		
		if (isTrue) {
		    String successMessage = "Hotel Deleted successfully.";
		    response.sendRedirect("adminHotelView.jsp?successMessage=" + successMessage);
		    RequestDispatcher dispatcher = request.getRequestDispatcher("ViewHotel.jsp");
		}
		// In the case of a failure to delete the booking
		else {
			/*
			 * List<Booking> bookingDetails = BookingDBUtil.getBookingDetails(booking_id);
			 * request.setAttribute("bookingDetails", bookingDetails);
			 */

		    String unsuccessMessage = "Failed to delete Hotel.";
		    request.setAttribute("unsuccessMessage", unsuccessMessage);

		    RequestDispatcher dis1 = request.getRequestDispatcher("admin.jsp");
		    dis1.forward(request, response);
		}
	}

}
