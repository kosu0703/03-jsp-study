<%@page import="com.ict.db.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>VO 가져오기</title>
	</head>
	<body>
	
	<% 
		VO vo = new VO("1", "둘리", "24", "서울");
		request.setAttribute("vo", vo);
	%>	
		<ul>
			<!-- 객체의 주소가 나온다. -->
			<li>${vo }</li>
			<!-- EL 표현식은 알아서 getter 에 접근해서 값을 가져온다. -->
			<!-- (즉, VO 에 getter 가 없으면 오류 발생) -->
			<li>${vo.idx }</li>
			<li>${vo.name }</li>
			<li>${vo.age }</li>
			<li>${vo.addr }</li>
		</ul>
	
	</body>
</html>