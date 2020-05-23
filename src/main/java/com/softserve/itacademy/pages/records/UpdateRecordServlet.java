package com.softserve.itacademy.pages.records;

import com.softserve.itacademy.addressbook.AddressBook;
import com.softserve.itacademy.pages.ErrorHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/update")
public class UpdateRecordServlet extends HttpServlet {
	private AddressBook addressBook;
	
	@Override
	public void init() throws ServletException {
		addressBook = AddressBook.getInstance();
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String fName = request.getParameter("first-name");
		String lName = request.getParameter("last-name");
		String address = request.getParameter("address");
		if (addressBook.update(fName, lName, address)) {
			response.sendRedirect("/records/read?first-name=" + fName + "&last-name=" + lName);
		} else {
			request.setAttribute("errorMessage", "Error occured, please try again");
			doGet(request, response);
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fName = req.getParameter("first-name");
		String lName = req.getParameter("last-name");
		String address = addressBook.read(fName, lName);
		if (address != null) {
			req.setAttribute("fName", fName);
			req.setAttribute("lName", lName);
			req.setAttribute("address", address);
			req.getRequestDispatcher("/WEB-INF/records/update-record.jsp").forward(req, resp);
		} else {
			ErrorHandler.errorPage(req, resp, 404, "Person not found");
		}
	}
}
