package com.softserve.itacademy.pages;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ErrorHandler {
	/**
	 * Sends error to the response, forwards to error.jsp
	 *
	 * @throws IOException
	 * @throws ServletException
	 */
	public static void errorPage(HttpServletRequest req, HttpServletResponse resp, int errorCode, String errorMessage) throws IOException, ServletException {
		resp.setStatus(errorCode);
		req.setAttribute("errorCode", errorCode);
		req.setAttribute("errorMessage", errorMessage);
		req.getRequestDispatcher("/WEB-INF/error.jsp").forward(req, resp);
	}
}
