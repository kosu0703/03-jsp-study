<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>숫자 계산</title>
		<style type="text/css">
			fieldset{width:300px;}
		</style>
		<script type="text/javascript">
			function send_go(f) {
				f.action="/01_servlet/Ex07";
				f.submit();
			}
		</script>
	</head>
	<body>
		<h2>HTML 을 활용한 서버(서블릿)에게 정보 보내기</h2>
		<form action="/01_servlet/Ex07" method="get">
			<fieldset>
				<legend>계산기</legend>
				<p>수1 : <input type="number" name="su1" required></p>
				<p>수2 : <input type="number" name="su2" required></p>
				<p>연산자 : 
					<input type="radio" name="op" value="+" checked>+
					<input type="radio" name="op" value="-">-
					<input type="radio" name="op" value="*">*
					<input type="radio" name="op" value="/">/
				</p>
				<input type="submit" value="결과보기">
			</fieldset>
		</form>
		<h2>JS 을 활용한 서버(서블릿)에게 정보 보내기</h2>
		<form method="get">
			<fieldset>
				<legend>계산기</legend>
				<p>수1 : <input type="number" name="su1"></p>
				<p>수2 : <input type="number" name="su2"></p>
				<p>연산자 : 
					<input type="radio" name="op" value="+" checked>+
					<input type="radio" name="op" value="-">-
					<input type="radio" name="op" value="*">*
					<input type="radio" name="op" value="/">/
				</p>
				<input type="button" value="결과보기" onclick="send_go(this.form)">
			</fieldset>
		</form>
		
	</body>
</html>