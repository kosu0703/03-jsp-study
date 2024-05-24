<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.ict.db.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSTL : 코어 c</title>
	</head>
	<body>
<%--
	JSTL(JSP Standard Tag Library) : JSP 표준 라이브러리 

	1. 라이브러리 다운받아서 해당 프로젝트에 넣기 (tomcat.apache.org)
		(톰켓 사이트 - 다운로드 - 태그라이브러리 - jar 파일 4개 다운받기)
			
	2. 다운받은 4개의 파일을 WEB-INF 안에 lib 폴더에 넣어주자
		(**WEB-INF 는 외부에서 접근할 수 없다.)
			
	3. JSTL 을 사용하기 위해서는 지시어 중 taglib 지시어로 선언하고 사용한다.
		(보통 page 지시어 아래에 사용한다.)
			
		1) 코어 : <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			
		2) 포맷팅 : <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
	4. 사용방법
		1) 코어 	=> 	<c + ctrl +space bar 	=>	< c : 사용명령어 >
		2) 포맷팅 	=> 	<fmt + ctrl + space bar => 	< fmt : 사용명령어 >

--%>

		<%-- 1. 변수 생성 및 데이터 저장 : 디폴트는 pageContext 에 저장 --%>
		<%-- 변수 생성 (set) : <c:set var="변수명" value="데이터"></c:set> --%>
		<c:set var="str" value="Hello JSTL!!"></c:set>
		<%-- 잘 사용하지 않고 보통 pageContext.setAttribute("이름",데이터); 사용한다. --%>
		
		<%-- 2. 변수값 출력 (out) : <c:out value="출력할 데이터 또는 EL 사용"></c:out> --%>
		<!-- 문자열 자체 출력 -->
		<c:out value="str"></c:out> <br>
		<!-- 변수값 출력 -->
		<c:out value="${str}"></c:out> <br>
		<!-- 하지만 set 을 하면 pageContext 에 저장하므로 -->
		<!-- 보통 바로 EL 을 사용한다. -->
		${str } <br>
		
		<%-- 3. 변수 삭제 (remove) : <c:remove var="변수명"/> --%>
		<c:remove var="str"/>
		<!-- 안나온다. -->
		${str } <br>
		<hr>
		
	<%-- 
		if 문 : else 가 없다. 조건식이 참일때만 실행 
		<c:if test="조건식(관계연산,비교연산,논리연산 -> **EL 방식으로 작성)" var="사용할 변수">
			조건식이 참일때 실행할 문장
		</c:if>	
		
		** 조건식은 EL 로 작성하자 ${조건식}
	--%>
		<c:if test="${4>3 }">
			<h2>결과 : 참이라서 실행</h2>
		</c:if>
		<hr>
		<c:if test="${4<3 }">
			<h2>결과 : 거짓이라 실행 안됨</h2>
		</c:if>
		<hr>
		
		<%-- avg 가 80 이상이면 합격 --%>
		<c:set var="avg" value="77"></c:set>
		<%-- <c:if test="${avg >= 80 }"> --%>
		<c:if test="${avg ge 80 }">
			<h3>결과 : 합격</h3>
		</c:if>		
		<hr>
		
	<%-- 
		if 문은 else 가 없어서 불편하다.
		그래서 choose 문을 사용한다.
		switch 문과 비슷하다.
		
		choose 문 -> when(case 와 같다) -> otherwise(default 와 같다)
	
		<c:choose>
			<c:when test="조건식(EL 방식)">참일때 실행</c:when>
			<c:when test="조건식(EL 방식)">참일때 실행</c:when>
			<c:when test="조건식(EL 방식)">참일때 실행</c:when>
			<c:otherwise>나머지</c:otherwise>
		</c:choose>
	--%>	
		
		<%-- 80 이상이면 합격 아니면 불합격 --%>
		<c:choose>
			<c:when test="${avg ge 80 }">
				<h2>결과 : 합격</h2>
			</c:when>
			<c:otherwise>
				<h2>결과 : 불합격</h2>
			</c:otherwise>
		</c:choose>
		<hr>
		
		<%-- avg2 가 90 이상이면 A학점, 80 이상이면 B학점, 70 이상이면 C학점, 나머지는 F학점 --%>
		<c:set var="avg2" value="88.8"></c:set>
		<%-- 주의사항) ** 정수는 정수와 비교 , 실수는 실수와 비교 --%>
		<c:choose>
			<c:when test="${avg2 ge 90.0 }">
				<h2>결과 : A학점</h2>
			</c:when>
			<c:when test="${avg2 >= 80.0 }">
				<h2>결과 : B학점</h2>
			</c:when>
			<c:when test="${avg2 ge 70.0 }">
				<h2>결과 : C학점</h2>
			</c:when>
			<c:otherwise>
				<h2>결과 : F학점</h2>
			</c:otherwise>
		</c:choose>
		<hr>
	<%-- 
		for 문 
		
		1. 일반적인 for 문
			<c:forEach begin="시작값" end="끝값" step="증가/감소" 
						var="사용할 변수" varStatus="변수상태값">
			</c:forEach>
			
			varStatus 변수상태값에는 index , count , first , last 가 있다.
				index : 변수값
				count : 1부터 순서대로 (위치값)
				first : 처음이면 true
				last : 마지막이면 true
			
		2. 개선된 for 문
			<c:forEach var="사용할 변수" items="배열 또는 ArrayList 를 EL 형식으로 표현">
				
			</c:forEach>
		
		3. 토큰(반복해서 나누기)	
			<c:forTokens items="${배열이나 컬렉션}" delims="구분자" var="사용할 변수">
								
			</c:forTokens>						** 구분자는 여러개 사용가능하다.
			
	--%>
	
		<h2>10~20 까지 출력</h2>
		<c:forEach begin="10" end="20" step="1" var="k" varStatus="vs">
			<h3>${k} : ${vs.index} : ${vs.count} : ${vs.first} : ${vs.last}</h3>
		</c:forEach>
		<hr>
		<h2>10~20 까지 짝수만 출력</h2>
		<!-- step 으로 -->
		<c:forEach begin="10" end="20" step="2" var="k" varStatus="vs">
			<h3>${k} : ${vs.index} : ${vs.count} : ${vs.first} : ${vs.last}</h3>
		</c:forEach>
		<hr>
		<!-- if 문으로 -->
		<c:forEach begin="10" end="20" step="1" var="k" varStatus="vs">
			<c:if test="${k%2 eq 0}">
				<h3>${k} : ${vs.index} : ${vs.count} : ${vs.first} : ${vs.last}</h3>
			</c:if>
		</c:forEach>
		<hr>
		
		<%-- 배열 생성 --%>
		<c:set var="arr_1" value="둘리, 도우너, 마이콜, 희동이, 고길동"></c:set>
		<c:forEach var="k" items="${arr_1}">
			<h3>${k} 님 환영합니다.</h3>
		</c:forEach>
		<hr>
		
		<%
			//	모델에서 ArrayList 를 가져왔다고 치자
			VO vo1 = new VO("1", "희동이", "1", "대전");
			VO vo2 = new VO("2", "도우너", "13", "경기");
			VO vo3 = new VO("3", "마이콜", "35", "대구");
			
			List<VO> list = new ArrayList<VO>();
			list.add(vo1);
			list.add(vo2);
			list.add(vo3);
			request.setAttribute("list", list);
		
		%>
		<%-- 리스트 출력 --%>
		<c:forEach var="k" items="${list}">
			<h3>이름 : ${k.name}, 나이 : ${k.age}, 주소 : ${k.addr}</h3>
		</c:forEach>
		<hr>
		
		<c:set var="arr_2" value="둘리,도우너,마이콜/홍길동,장길산,임꺽정/태권브이,마징가,짱가"></c:set>
		<c:forTokens items="${arr_2}" delims="/" var="k">
			<h3>${k} 님</h3>		
		</c:forTokens>
		<hr>
		<c:set var="arr_2" value="둘리,도우너,마이콜/홍길동,장길산,임꺽정/태권브이,마징가,짱가"></c:set>
		<c:forTokens items="${arr_2}" delims="," var="k">
			<h3>${k} 님</h3>		
		</c:forTokens>
		<hr>
		<c:set var="arr_2" value="둘리,도우너,마이콜/홍길동,장길산,임꺽정/태권브이,마징가,짱가"></c:set>
		<c:forTokens items="${arr_2}" delims=", /" var="k">
			<h3>${k} 님</h3>		
		</c:forTokens>
		<hr>
		
	<%-- 
		redirect : 페이지이동 (request, response 새로 만들어진다.) 
	
		<c:redirect url="ex07_EL.jsp"></c:redirect>	
	--%>	
		
	<%-- 
		import : 페이지 가져오기 (include 와 같음)
		
		<c:import url="ex07_EL.jsp"></c:import>	
	--%>	

		
	</body>
</html>






