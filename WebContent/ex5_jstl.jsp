<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//먼저 JSTL을 사용하지 않는 경우!
	String index = request.getParameter("idx");

	int res = 5; //지역변수 선언
	
	//받은 index값이 null이 아니면  정수로 변환하자!
	if(index != null){
		int i = Integer.parseInt(index);
		
		if(i <= 0){
			out.println("i가 0이거나 0보다 작습니다.");
		}else{
			out.println("i가 0보다 큽니다.");
		}
	}
	
	// JSTL(JSP Standard Tag Library)
	//	자바기반의 웹환경에서 지원하는 확장된
	// Tag를 사용할 수 있도록 제공되는 라이브러리
	//		(Tag로 제어문 지원)
	//먼저 JSTL라이브러리가 WEB-INF/lib에 있어야 한다.
	//	(standard.jar,  jstl.jar)
	
	// JSTL을 사용하기 전에 반드시 다음과 같은 지시자가
	// 정의되어야 한다.
%>
	<%@ taglib prefix="c" 
	uri="http://java.sun.com/jsp/jstl/core" %>
	
	<%-- JSTL변수 선언 --%>
	<c:set var="idx" value="${param.idx }"/>
	<c:set var="index" value="<%=index %>"/>	<%-- 여긴 jsp 변수 --%>
	
	
	<c:if test="${idx != null and idx > 0 }">
		<h2>idx가 0보다 큽니다.</h2>
	</c:if>
	<c:if test="${idx == null or idx <= 0 }">
		<h2>idx가 null 또는 0이거나 0보다 작습니다.</h2>
	</c:if>
	<%-- 태그로 지원되기 때문에 else if가 ★ 없다★. --%>
</body>
</html>





