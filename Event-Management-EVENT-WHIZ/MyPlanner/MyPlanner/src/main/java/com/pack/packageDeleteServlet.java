package com.pack;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/packageDeleteServlet")
public class packageDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String pID = request.getParameter("pID");
		boolean isTrue;

		isTrue = packageDBUtil.deletebooking(pID);

		if (isTrue) {
			String successMessage = "Deleted successfully.";
			response.sendRedirect("adminPackView.jsp?successMessage=" + successMessage);
		} else {

			List<Packages> packageDetails = packageDBUtil.getPackageDetails();
			request.setAttribute("PackDetails", packageDetails);

			String unsuccessMessage = "Failed to delete Package.";
			request.setAttribute("unsuccessMessage", unsuccessMessage);

			RequestDispatcher dis1 = request.getRequestDispatcher("adminPackView.jsp");
			dis1.forward(request, response);

		}
	}

}
