<%@page import="ex7.vo.TestVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="eg" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		border-collapse: collapse;
		width: 400px;
	}
	table th, table td{
		border: 1px solid black;
		padding: 4px;
	}
</style>
</head>
<body>
	<h1>JSTL for문 연습</h1>
	<table>
		<colgroup>
			<col width="50px"/>
			<col width="110px"/>
			<col width="*"/>
		</colgroup>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
			</tr>
		</thead>
		<tbody>
		
		<eg:forEach var ="vo" items="${sessionScope.list }" varStatus="egu">
			<tr>											
				<td>${egu.index+1 }</td>	
				<td>${vo.name }</td>	
				<td>${vo.email}</td>	
			</tr>
		</eg:forEach>
		</tbody>			
	</table>



</body>
</html>