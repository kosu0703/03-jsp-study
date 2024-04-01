<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 선언해야 사용할 수 있다. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSTL : 포맷팅 fmt</title>
	</head>
	<body>
<%-- 
		포맷팅 fmt => 숫자와 날짜 변환하기

--%>		
		<h2>숫자만 받기(세자리마다 콤마 표시)</h2>
		<h3>
			<li><fmt:formatNumber value="123456.7839"></fmt:formatNumber></li>
							<!-- 문자열을 넣으면 오류 발생 -->
		</h3>
		<hr>
		<h2>숫자 받고, 문자가 있으면(숫자까지만 인식)</h2>
		<h3>
			<li><fmt:parseNumber value="123456.7839"></fmt:parseNumber></li>
			<li><fmt:parseNumber value="12a3b45c6.7839"></fmt:parseNumber></li>
			<li><fmt:parseNumber value="123456.a7839"></fmt:parseNumber></li>
							<!-- 문자열을 만나면 뒤에거 버림 -->
		</h3>
		<hr>
		<h2>정수만 구하기(반올림 처리)</h2>
		<h3>
			<li><fmt:formatNumber value="123456.4321" pattern="#,###"></fmt:formatNumber></li>
			<li><fmt:formatNumber value="123456.5678" pattern="#,###"></fmt:formatNumber></li>
		</h3>
		<hr>
		<h2>소수점 첫째자리까지 구하기(반올림 처리)</h2>
		<h3>
			<li><fmt:formatNumber value="123456.4321" pattern="#,###.#"></fmt:formatNumber></li>
			<li><fmt:formatNumber value="123456.5678" pattern="#,###.#"></fmt:formatNumber></li>
			<li><fmt:formatNumber value="123456" pattern="#,###.#"></fmt:formatNumber></li>
			<li><fmt:formatNumber value="123456" pattern="#,###.0"></fmt:formatNumber></li>
												<!-- 소수점을 강제로 채우기 0 -->
		</h3>
		<hr>
		<h2>pattern 에서 # 과 0 의 차이점</h2>
		<h3>
			<li><fmt:formatNumber value="127" pattern="#,###"></fmt:formatNumber></li>
			<li><fmt:formatNumber value="127" pattern="#,###.#"></fmt:formatNumber></li>
			<!-- 숫자가 없는 자리에 0 이 강제로 채워진다. -->
			<li><fmt:formatNumber value="127" pattern="0,000"></fmt:formatNumber></li>
			<li><fmt:formatNumber value="127" pattern="0,000.0"></fmt:formatNumber></li>
		</h3>
		<hr>
		<h2>현재 운영체제에 맞는 화폐단위 표시(반올림 처리)</h2>
		<h3>
			<li><fmt:formatNumber value="123456.789" type="currency"></fmt:formatNumber></li>
			<li><fmt:formatNumber value="123456.432" type="currency"></fmt:formatNumber></li>
			<li><fmt:formatNumber value="123456" type="currency"></fmt:formatNumber></li>
			<li><fmt:formatNumber value="123456" type="currency"></fmt:formatNumber></li>
		</h3>
		<hr>
		<h2>퍼센트 % 구하기(value * 100 + "%" 자동계산)</h2>
		<h3>
			<li><fmt:formatNumber value="12" type="percent"></fmt:formatNumber></li>
			<li><fmt:formatNumber value="0.12" type="percent"></fmt:formatNumber></li>
		</h3>
		<hr>
		
		<h2>오늘 날짜 구하기</h2>
		<h2>현재 운영체제에 맞는 날짜 표시</h2>
		<%-- 객체 생성 --%>
		<jsp:useBean id="now" class="java.util.Date"></jsp:useBean>
		<h3>
			<li>날짜 : dateStyle</li>
			<li><fmt:formatDate value="${now}" dateStyle="short"/></li>
			<li><fmt:formatDate value="${now}" dateStyle="medium"/></li>
			<li><fmt:formatDate value="${now}" dateStyle="long"/></li>
			<li><fmt:formatDate value="${now}" dateStyle="full"/></li>
			<hr>
			<li>시간 : timeStyle</li>
			<li><fmt:formatDate value="${now}" type="time" timeStyle="short"/></li>
			<li><fmt:formatDate value="${now}" type="time" timeStyle="medium"/></li>
			<li><fmt:formatDate value="${now}" type="time" timeStyle="long"/></li>
			<li><fmt:formatDate value="${now}" type="time" timeStyle="full"/></li>
			<hr>
			<li>날짜 시간 둘다</li>
			<li><fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short"/></li>
			<li><fmt:formatDate value="${now}" type="both" dateStyle="medium" timeStyle="medium"/></li>
			<li><fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long"/></li>
			<li><fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/></li>
		</h3>
		
	</body>
</html>