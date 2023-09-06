<%@page import="com.poscodx.guestbook.dao.GuestbookDao"%>
<%@page import="com.poscodx.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");
		
	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");

	new GuestbookDao().delete(no, password);
	
	response.sendRedirect("/guestbook01");

%>