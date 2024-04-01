<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>EL(Expression Language)</title>
	</head>
	<body>
<%--
	EL(Expression Language) : 표현 언어
							JSP 표현식 <%= %> 대신에 사용한다.
							(가독성이 떨어지기 때문에)
							
		<%= 변수값 이나 메서드의 결과 %> => ${변수나 메서드의 결과}
		
		앞에서 배운 pageContext, request, session, application 을 이용해서
		데이터를 저장하면 EL 이나 JSTL 으로 저장된 정보를 바로 사용할 수 있다.
	
 --%>
 
 		<h2>표현식을 사용한 산술연산</h2>
 		<h3>
 			<ul>
 				<li>15 + 7 = <%= 15+7 %></li>		
 				<li>15 - 7 = <%= 15-7 %></li>		
 				<li>15 * 7 = <%= 15*7 %></li>		
 				<li>15 / 7 = <%= 15/7 %></li>		
 				<li>15 % 7 = <%= 15%7 %></li>		
 			</ul>
 		</h3>	
 		<hr>	
 		<h2>EL 을 사용한 산술연산</h2>
 		<h3>
 			<ul>
 				<li>15 + 7 = ${15+7}</li>		
 				<li>15 - 7 = ${15-7}</li>		
 				<li>15 * 7 = ${15*7}</li>		
 				<li>15 / 7 = ${15/7}</li>		
 				<li>15 % 7 = ${15%7}</li>		
 			</ul>
 		</h3>	
 		<hr>
 		<h2>표현식 변수 사용 예제</h2>
 		<% int su = 157 + 47; %>
 		<h3> 결과 : <%= su %></h3>
 	<%-- ** EL 은 pageContext, request, session, application 에 
 				저장되어야 사용할 수 있다. --%>
 		<% pageContext.setAttribute("su", su); %>
 		<h3> 결과 : ${su }</h3>
 		
 	
	</body>
</html>