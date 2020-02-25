<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>param.name : ${param.name}</h2>	
	<%-- Get방식의 요청시 한글처리는 Servers->servers.xml에서 URIEncoding="UTF-8" 넣어야한다.  --%>
	<h2>param["name"] : ${param["name"]}</h2>
	<h2>param["type"] : ${param["type"]}</h2>	<%-- 같은 방법 --%>
	
</html>