package com.softserve.itacademy.pages.records;

import com.softserve.itacademy.addressbook.AddressBook;
import com.softserve.itacademy.addressbook.SortOrder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/list")
public class RecordsListServlet extends HttpServlet {
	private AddressBook addressBook;
	
	@Override
	public void init() {
		addressBook = AddressBook.getInstance();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/records/all-records.jsp");
		String sort = request.getParameter("sort");
		if (sort != null) {
			switch (sort) {
				case "asc":
					addressBook.sortedBy(SortOrder.ASC);
					break;
				case "desc":
					addressBook.sortedBy(SortOrder.DESC);
					break;
				default:
					break;
			}
		}
		request.setAttribute("recordsIterator", addressBook.iterator());
		requestDispatcher.forward(request, response);
	}
}
