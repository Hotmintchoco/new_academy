package com.sae.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.EmployeeDAO;
import com.saeyan.dto.EmployeeVO;

public class BoardListAction implements Action {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/employee/employeeList.jsp";
		EmployeeDAO bDao = EmployeeDAO.getInstance();
		List<EmployeeVO> boardList = bDao.selectAllBoard();
		request.setAttribute("boardList", boardList);
		
		RequestDispatcher dispatcher = request.
				getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
