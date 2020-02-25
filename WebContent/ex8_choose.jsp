<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="egu" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--
	현재 페이지는 money라는 파라미터를 받는다 (get방식)
	money에 따라 과일을 선택할 수 있다.
	
	사과: 500
	배: 700
	대봉: 1000
	
 --%>
	<egu:choose>
			<egu:when test="${param.money >= 1000 }">사과, 배 , 대봉 중 하나를 선택하세요!</egu:when>
			<egu:when test="${param.money >= 700 }">사과, 배 중 하나를 선택하세요!</egu:when>
			<egu:when test="${param.money >= 500 }">사과를 선택할 수 있습니다</egu:when>
			<egu:otherwise>선택할 수 있는 과일이 없습니다.</egu:otherwise>
	</egu:choose>


</body>
</html>