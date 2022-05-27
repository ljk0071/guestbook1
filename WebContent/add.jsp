<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.guestdao.GuestDao"%>
<%@ page import="com.javaex.guestVo.GuestVo"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Calendar"%>

<%	
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
	String content = request.getParameter("content");
	String regDate = request.getParameter("regDate");
	System.out.println(regDate);
	
	GuestVo guestVo = new GuestVo(name, pw, content, regDate);
	GuestDao guestDao = new GuestDao();
	guestDao.Insert(guestVo);
	
	response.sendRedirect("./addList.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	test
	
</body>
</html>