<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP 내장객체 : pageContext</title>
	</head>
	<body>
<%--
		cf) context : 맥락
		
	pageContext : JSP 페이지에서 1:1 로 연결된 객체로,
				JSP 페이지당 하나의 pageContext 객체가 생성된다. 
				같은 페이지에서 서로 값을 공유할 수 있으며,
				다른 JSP 내장 객체를 구하거나, 페이지의 흐름을 제어한다.
				(request, session 등)	
	
		1. 	데이터 저장 : pageContext.setAttribute("이름", 객체);
			데이터 호출 : pageContext.getAttribute("이름") => EL 사용가능 ${이름}
			
			생명주기 => 해당 페이지를 벗어나면 저장 정보도 사라진다.
			
		** 속성을 이용해서 데이터를 저장 및 호출하는 내장 객체들
			우선순위 : pageContext > request > session > application
			생명주기 : *pageContext < **request < *session < application
			
			- pageContext : 현재 페이지를 벗어나면 정보도 사라진다.
			
			- request : response 가 되면 정보도 사라진다.
			
			- session : 해당 브라우저가 종료되면 정보도 사라진다.
						보통 로그인 처리할때 사용한다.
				but, 예외적으로 시간을 지정할 수 있다. => 팝업(일정기간 안보이기), 은행(일정시간 로그아웃) 
			
			- application : 해당 프로젝트가 종료될때 정보가 사라진다.
							전역적으로 사용하던가 환경정보 등을 가지고 있다.
		
 --%>
 	
 		<%! String str = "hello jsp"; %>
 		<h2><%= str %></h2>
 		<h2>${str}</h2>	<!-- 안나온다. -->
 		<hr>
 	
 		<% 
 			//	데이터 저장
 			pageContext.setAttribute("addr", "서울시 마포구");
 			pageContext.setAttribute("age", 24);
 			pageContext.setAttribute("gender", true);
 			pageContext.setAttribute("str", "Hello JSP");
 		
 		%>
 		
 		<h2>결과 보기</h2>
 		<h2>EL : pageContext, request, session, application 에 저장된 데이터 호출 가능</h2>
 		<h3>주소 : ${addr }</h3>
 		<h3>나이 : ${age }</h3>
 		<h3>성별 : ${gender }</h3>
 		<h3>str : ${str }</h3>
 		<hr>
 		
 		<h2>우선 순위 : pageContext, request, session, application</h2>
 		<%
 			pageContext.setAttribute("name", "둘리");
 			request.setAttribute("name", "도우너");
 			session.setAttribute("name", "희동이");
 			//	**브라우저가 켜져있으면 생명주기에 의해 세션의 정보가 나온다.
 			application.setAttribute("name", "마이콜");
 		
 		%>
 		<%-- 이름이 같으면 우선순위가 높은 것의 데이터 값이 나온다. --%>
 		<h3>결과 : ${name }</h3>
 		<hr>
 		<%-- 따로따로 보고싶다면 Scope 어미 사용 --%>
 		<h3>결과 : ${pageScope.name }</h3>
 		<h3>결과 : ${requestScope.name }</h3>
 		<h3>결과 : ${sessionScope.name }</h3>
 		<h3>결과 : ${applicationScope.name }</h3>
		<%-- 실제로는 이름을 겹치게 사용하지 않는다. --%> 		
 		
 		
 		<%-- ex06 에서 include 할때 --%>
 		<!-- 지시어 사용시 -->
 		<h3>결과 : ${phone}</h3>
 		
 		<!-- 액션태그 사용시 -->
 		<% 
 			String phone = request.getParameter("phone");
 			pageContext.setAttribute("phone", phone);
 		%>
 		<h3>결과 : ${phone}</h3>
 		
 		
	</body>
</html>




