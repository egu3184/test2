<%@page import="java.util.ArrayList"%>
<%@page import="ex7.vo.TestVO"%>
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
		TestVO t1 = new TestVO("마루치0", "maru0@korea.com");
		TestVO t2 = new TestVO("마루치1", "maru1@korea.com");
		TestVO t3 = new TestVO("마루치2", "maru2@korea.com");
		TestVO t4 = new TestVO("마루치3", "maru3@korea.com");
	
		//위 객체들을 저장할 ArrayList 준비
		ArrayList<TestVO> list = new ArrayList<TestVO>();
		list.add(t1);
		list.add(t2);
		list.add(t3);
		list.add(t4);
		
		//다음 페이지에서 사용할 수 있도록 session에 저장
		session.setAttribute("list", list);
		

	%>
		<input type ="button" value="다음" onclick="javascript: location.href='ex7_for.jsp'"/>


</body>
</html>