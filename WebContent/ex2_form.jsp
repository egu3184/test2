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
		<input type="hidden" name="type" value="ex2"/>
		<label for = "s_id"> name : </label>
		<input type = "text" id = "s_name" name="s_name"/>
		<br/>
		<label for = "s_phone"> phone : </label>
		<select  id = "s_phone" name = "s_phone">
			<option value ="010">010</option>
			<option value ="011">011</option>
			<option value ="012">012</option>
		</select>
		<label for ="s_phone2">-</label>
		<input type = "text" name="s_phone"/>
		<label for ="s_phone3">-</label>
		<input type = "text" name="s_phone"/>
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