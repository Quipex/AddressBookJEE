package com.softserve.itacademy.pages.records;

import com.softserve.itacademy.addressbook.AddressBook;
import com.softserve.itacademy.pages.ErrorHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/create")
public class CreateRecordServlet extends HttpServlet {
	private AddressBook addressBook;
	
	@Override
	public void init() {
		addressBook = AddressBook.getInstance();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String address = request.getParameter("address");
		if (addressBook.create(firstName, lastName, address)) {
			response.sendRedirect("/records/list");
		} else {
			ErrorHandler.errorPage(request, response, 409, "Given person already exists!");
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/records/create-record.jsp").forward(request, response);
	}
}
