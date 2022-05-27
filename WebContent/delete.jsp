<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.guestdao.GuestDao"%>
<%@ page import="com.javaex.guestVo.GuestVo"%>

<%
	int no = Integer.parseInt(request.getParameter("no"));
	String pw = request.getParameter("pw");
	
	GuestDao guestDao = new GuestDao();
	
	if( pw.equals(guestDao.Select(no).password)) {
		guestDao.Delete(no);
	}
	
	response.sendRedirect("./addList.jsp");
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