package com.sae.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.EmployeeDAO;

public class BoardDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");
		
		EmployeeDAO bDao = EmployeeDAO.getInstance();
		bDao.deleteBoard(num);
		
		response.sendRedirect("BoardServlet");
	}

}
