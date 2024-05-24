<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Action 태그 : include</title>
	</head>
	<body>
<%--
		액션태그 : JSP 페이지 간에 흐름제어, 자바빈즈 컴포넌트 지원
		
			사용방법) <jsp: 액션태그>

		 	1. include : 현재 페이지에서 다른 페이지를 호출 또는
		 				다른 페이지의 결과를 현재 페이지에 보여주는 것
		 		
		 		1) 지시어 include : <%@ include file="가져올 파일의 경로" %>
		 				=> 다른 페이지 소스 전체를 가져와서 현재 페이지에서 한번에 처리
		 					파라미터값 전달 안됨
		 					잘 변경되지 않는 정적 페이지에 많이 사용된다.
		 						
		 		2) 액션 include : <jsp:include page=""></jsp:include>
		 				=> 지정한 다른 페이지의 결과를 가져와서 현재 페이지에 표시한다.
		 					파라미터값 전달 가능
		 					자주 변경되는 동적 페이지에 많이 사용된다.
		 					만약에 파라미터를 전달하려면
					 		<jsp:include page="">
					 			<jsp:param value="" name=""/>
					 		</jsp:include>
		 		
 --%>
 		
 		<h2>include 지시어 사용하기</h2>
 		<%@ include file="ex03_request.jsp" %>
 		<hr>
 		<h2>include 액션태그 사용하기</h2>
		<jsp:include page="ex03_request.jsp"></jsp:include> 		
 		<hr>
 			
 		<%-- ex05 가져오기 --%>	
 		
 		<%-- 지시어는 변수를 선언한 후, 변수에 저장하고 호출 --%>
 		<% request.setAttribute("phone", "010-3311-4568"); %>
 		
 		<h2>include 지시어 사용하기</h2>
 		<%@ include file="ex05_pageContext.jsp" %>
 		<hr>

		<%-- 액션태그는 가져올 페이지에 변수 선언해야지 호출가능 --%> 		
 		<h2>include 액션태그 사용하기</h2>
		<jsp:include page="ex05_pageContext.jsp">
			<jsp:param value="010-7526-0703" name="phone"/>
		</jsp:include> 		
 		<hr>
 			
 	
	</body>
</html>