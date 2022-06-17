package com.sae.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.EmployeeDAO;
import com.saeyan.dto.EmployeeVO;

public class BoardUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmployeeVO bVo = new EmployeeVO();
		
		bVo.setId(request.getParameter("id"));
		bVo.setName(request.getParameter("name"));
		bVo.setPass(request.getParameter("pass"));
		bVo.setLev(request.getParameter("lev"));
		bVo.setGender(Integer.parseInt(request.getParameter("gender")));
		bVo.setPhone(request.getParameter("phone"));
		
		EmployeeDAO bDao = EmployeeDAO.getInstance();
		bDao.updateBoard(bVo);
		
		response.sendRedirect("EmployeeServlet");
	}

}
