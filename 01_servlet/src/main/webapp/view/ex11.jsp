<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>페이지 여러개(서블릿 여러개)</title>
		<style type="text/css">
			fieldset{width:300px;}
		</style>
	</head>
	<body>
		<form action="/01_servlet/Ex11_1">
			<input type="submit" value="오늘날짜구하기">
		</form>
		<hr>
		<form action="/01_servlet/Ex11_2">
			<input type="submit" value="운세구하기">
		</form>
		<hr>
		<form action="/01_servlet/Ex11_3">
			<fieldset>
				<legend>계산기</legend>
				<p>수1 : 
					<input type="number" name="s1" required>
				</p>
				<p>수2 : 
					<input type="number" name="s2" required>
				</p>
				<p>연산자 :
					<input type="radio" name="op" value="+" checked>+
					<input type="radio" name="op" value="-">-
					<input type="radio" name="op" value="*">*
					<input type="radio" name="op" value="/">/
				</p>
				<input type="submit" value="결과보기"> <!-- 기본 value 값 : 제출 -->
			</fieldset>
		</form>
	
	</body>
</html>