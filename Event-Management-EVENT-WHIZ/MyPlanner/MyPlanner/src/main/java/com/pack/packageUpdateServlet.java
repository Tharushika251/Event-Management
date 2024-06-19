package com.pack;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.hotelDBUtil;


@WebServlet("/packageUpdateServlet")
public class packageUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Get the selectedHotelID as a String
	    String selectedHotelIDString = request.getParameter("selectedHotelID");

	    // Parse the selectedHotelIDString to an integer
	    int selectedHotelID = Integer.parseInt(selectedHotelIDString);
		
		int pID = Integer.parseInt(request.getParameter("pID"));
        String packName = request.getParameter("packName");
        String price = request.getParameter("price");
        String description = request.getParameter("description");
        
        System.out.println();
        
        boolean isUpdated = packageDBUtil.updatePackage(pID, packName, price, description, selectedHotelID);

        if (isUpdated) {
            // Redirect to a success page
            response.sendRedirect("success2.jsp");
        } else {
            // Redirect to an error page
            response.sendRedirect("unsuccess.jsp");
        }
	}

}
