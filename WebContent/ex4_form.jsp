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
		<input type="hidden" name="type" value="ex4"/>
		<label for = "s_name">  Name : </label>
		<input type = "text" id = "s_name" name="s_name"/>
		<br/>
		<label for = "s_year"> B_year : </label>
		<label for ="s_year">-</label>
		<input type = "text" name="s_year"/>
	
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