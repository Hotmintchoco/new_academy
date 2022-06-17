package com.sae.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.EmployeeDAO;
import com.saeyan.dto.EmployeeVO;

public class BoardUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "employee/boardUpdate.jsp";
		String id = request.getParameter("id");
		EmployeeDAO bDao = EmployeeDAO.getInstance();
		EmployeeVO bVo = bDao.selectOneBoardById(id);
		
		request.setAttribute("board", bVo);
		
		RequestDispatcher dispatcher = request.
				getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
