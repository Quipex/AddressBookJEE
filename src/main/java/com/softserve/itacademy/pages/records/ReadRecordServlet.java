package com.softserve.itacademy.pages.records;

import com.softserve.itacademy.addressbook.AddressBook;
import com.softserve.itacademy.pages.ErrorHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/read")
public class ReadRecordServlet extends HttpServlet {
	private AddressBook addressBook;
	
	@Override
	public void init() throws ServletException {
		addressBook = AddressBook.getInstance();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fName = request.getParameter("fName");
		String lName = request.getParameter("lName");
		String address = addressBook.read(fName, lName);
		if (address != null) {
			request.setAttribute("fName", fName);
			request.setAttribute("lName", lName);
			request.setAttribute("address", address);
			request.getRequestDispatcher("/WEB-INF/records/read-record.jsp").forward(request, response);
		} else {
			ErrorHandler.errorPage(request, response, 404, "Person not found");
		}
		
	}
}
