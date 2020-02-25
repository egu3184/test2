<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>${param.s_name}</h2>
	<h2>${paramValues.s_phone[0]} -
		${paramValues.s_phone[1]} -
		${paramValues.s_phone[2]}
		
	</h2>
	<input type = "button" value ="다음" onclick="javascript: location.href='control?type=ex3&name=${param.s_name}'"/>
	
</body>
</html>