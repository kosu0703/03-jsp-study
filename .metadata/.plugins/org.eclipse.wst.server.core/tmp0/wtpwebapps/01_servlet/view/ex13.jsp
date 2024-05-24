<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Model 모델 만들기</title>
		<!-- ** 클라이언트한테는 안보이는 hidden 으로 cmd 를 만들어서 value 값으로 구분을 하자 -->
		<style type="text/css">
			fieldset{width:300px;}
		</style>
	</head>
	<body>
		<form action="/01_servlet/Ex13">
			<input type="submit" value="오늘날짜구하기">
			<input type="hidden" name="cmd" value="1">
		</form>
		<hr>
		<form action="/01_servlet/Ex13">
			<input type="submit" value="운세구하기">
			<input type="hidden" name="cmd" value="2">
		</form>
		<hr>
		<form action="/01_servlet/Ex13">
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
				<input type="hidden" name="cmd" value="3">
			</fieldset>
		</form>
	
	</body>
</html>