<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>객체보기</title>
		<!-- **객체는 주소값이 나온다 -->
		<!-- EL 에서는 객체를 표현할 수 없다. -->
		<!-- JSTL 을 사용해야한다. -->
		<!-- JSP 를 배워야 할 수 있다. -->
	</head>
	<body>
	
		<h1>ex14_res02</h1>
		
		<!-- 객체, 배열 -->
		<h2>${hobby}</h2>
		<h2>${web}</h2>
		
		<!-- 객체, Object -->
		<h2>${vo}</h2>
		
		<!-- 객체, list -->
		<h2>${list}</h2>
		
	</body>
</html>