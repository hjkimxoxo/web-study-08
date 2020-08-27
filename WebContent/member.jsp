<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<style>
	* {
		margin:0 auto;
		font-family: 'Nanum Gothic', sans-serif;
	}	
	
	table {
		
		width: 600px;
		border-collapse:collapse;
		text-align:center;
	}
	
	.head {
		color: white;
		font-weight: bold;
		
	}
	.menu {
		border-bottom: 1px solid #FFA0A0;
		font-weight: bold;	
	}
	.list {
		border-bottom: 1px solid #FFA0A0;
	}
</style>
</head>
<body>
<!-- ${mList}-->
<br>
<table>
	<thead>
	<tr bgcolor="#FFA0A0" class="head" >
	
		<td colspan="6" height="40px">회원 목록</td>
	</tr>
	<tr class="menu">
		<td>회원명</td>
		<td>아이디</td>
		<td>이메일</td>
		<td>비밀번호</td>
		<td>연락처</td>
		<td>관리자</td>
	</tr>
<c:forEach var="m" items="${mList}">
	<tr class="list">
	<td><c:out value="${m.name}"></c:out></td>
	<td><c:out value="${m.userId}"></c:out></td>
	<td><c:out value="${m.email}"></c:out></td>
	<td><c:out value="${fn:replace(m.pwd, m.pwd, '****')}" ></c:out></td>
	<td><c:out value="${m.phone}"></c:out></td>
	<td>
	<c:if test="${m.admin eq 0}"> 
		<c:out value="관리자"></c:out>
	</c:if>
	<c:if test="${m.admin ne 0}">
		<c:out value="회원"></c:out>
	</c:if>
	</td>
	</tr>

		
</c:forEach>
</table>
</body>
</html>