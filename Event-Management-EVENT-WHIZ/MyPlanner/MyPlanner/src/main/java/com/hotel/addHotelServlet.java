package com.hotel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/addHotelServlet")
public class addHotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String hemail = request.getParameter("hemail");
		String area = request.getParameter("area");
		String description = request.getParameter("description");
		Boolean isTrue;
		
		isTrue = hotelDBUtil.addHotel(name, area, hemail, description );
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("success2.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}