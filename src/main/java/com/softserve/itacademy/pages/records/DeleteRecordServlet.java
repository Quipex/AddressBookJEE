package com.softserve.itacademy.pages.records;

import com.softserve.itacademy.addressbook.AddressBook;
import com.softserve.itacademy.pages.ErrorHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/delete")
public class DeleteRecordServlet extends HttpServlet {
	private AddressBook addressBook;
	
	@Override
	public void init() throws ServletException {
		addressBook = AddressBook.getInstance();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String firstName = request.getParameter("fName");
		String lastName = request.getParameter("lName");
		if (addressBook.delete(firstName, lastName)) {
			response.sendRedirect("/records/list");
		} else {
			ErrorHandler.errorPage(request, response, 404, "Person not found");
		}
	}
}
