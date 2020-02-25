<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> JSTL연습 폼</h1>
	<form action="control" method="post">
		<input type="hidden" name="type" value="ex1"/>
		<label for = "s_id"> ID : </label>
		<input type = "text" id = "s_id" name="s_id"/>
		<br/>
		<label for = "s_pw"> PW : </label>
		<input type = "password" id = "s_pw" name="s_pw"/>
		<br/>
		<input type ="hidden" name = "cPage" value="5"/>
		<input type = "button" value="보내기" onclick="sendData(this.form)"/>
		
	</form>
	<script>
		function sendData(frm) {
			//유효성 검사 생략
			
			frm.submit();
			
		}
	</script>

</body>
</html>