<%@page import="DBPKG.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String no = request.getParameter("no");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String registDate = request.getParameter("registDate");
	String type = request.getParameter("type");
	
	MemberVO vo = new MemberVO();
	ClassDAO dao = new ClassDAO();
	
	vo.setMemberSeq(dao.lastMemberSeq() + 1);
	vo.setName(name);
	vo.setNo(no);
	vo.setPhone(phone);
	vo.setAddress(address);
	vo.setRegistDate(registDate);
	vo.setType(type);
	
	dao.insertMember(vo);
	response.sendRedirect("memberList.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>