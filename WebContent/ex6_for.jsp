<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="eg" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 연습 </h1>
	<%-- JSTL 변수 cnt를 정의하고 기본값으로 5를 넣어준다. --%>
	<eg:set var="cnt" value="5"/>
	
	<ul>
		<eg:forEach begin="1" end="${cnt }" step="1" varStatus="st">
			<li>${st.index }</li>
		</eg:forEach>
	</ul>
<%
	String[] ar = {"자바", "MyBatis", "Lombok", "스프링"};
	//jstl에서 바로 사용할 수 있도록 request나 session에 저장!
	request.setAttribute("ar", ar);
%>	
<%--<eg:set var="ar" value="<%=ar %>"/> --%>	
	<ul>
	<%-- for(String str : ar){ 와 같다--%>
		<eg:forEach var="str" items="${ar}" varStatus="st">
			<li>${st.index+1}. ${str }</li>
		</eg:forEach>
	
	</ul>
	
	
</body>
	
</html>





