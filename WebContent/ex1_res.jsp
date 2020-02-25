<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> EL : Expression Language</h2>
	<h2>
		map구조 또는 list구조 등의 컬렉션 접근을 유용하게 해주는 문법을 지닌 것이 표현 언어이다.
	</h2>
	<h2>
		표현언어가 가지는 기본객체:<br/>
		- param : 파라미터 값<br/>
		- requestScope : 요청객체<br/>
		- sessionScope : HttpSession객체<br/>
	</h2>
	<h2>param.s_id : ${param.s_id}</h2>
	<h2>param.s_pw : ${param.s_pw}</h2>
	<h2>param.s_cPage : ${param.s_cPage}</h2>
	<h2>cPage : ${cPage}</h2>

</body>
</html>