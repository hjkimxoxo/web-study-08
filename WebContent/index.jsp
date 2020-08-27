<%@page import="web_study_08.datasource.JdbcUtilJNDI3"%>
<%@page import="web_study_08.datasource.JdbcUtilJNDI2"%>
<%@page import="web_study_08.datasource.JdbcUtilJNDI"%>
<%@page import="web_study_08.datasource.JdbcUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   Connection con = JdbcUtil.getConnection();
   out.println("con : " + con);
%>
<br>
<c:set var="con" value="<%=JdbcUtil.getConnection() %>"/>
<c:out value="${con}"/>
<br>
<c:set var="con1" value="<%=JdbcUtilJNDI.getConnection() %>"/>
<c:out value="${con1}"/>
<br>
<c:set var="con2" value="<%=JdbcUtilJNDI2.getConnection() %>"/>
<c:out value="${con2}"/>
<br>
<c:set var="con3" value="<%=JdbcUtilJNDI3.getConnection() %>"/>
<c:out value="${con3}"/>
</body>
</html>