<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>지시어 : Directive</title>
	</head>
	<body>
		
	<!-- html 주석 : 소스보기에서 보인다. -->
		
	<%-- JSP 주석 : 소스보기에서 보이지 않는다. --%>	
		
	<%--
	
		지시어(Directive) : JSP 파일의 속성을 기술하는 곳이다.
					컨테이너에게 해당 파일을 어떻게 처리해야 하는지 전달하는 내용을 담고있다.	
					(웹컨테이너 = tomcat)
			
			1. <%@ page %> : 해당 페이지를 톰켓이 처리하는데 필요한 정보를 기술하는 부분 
		
			2. <%@ include %> : 해당 파일 안에 다른 html 이나 jsp 파일을 삽입할 수 있도록  
								도와주는 기능을 하는 지시어 ( html 의 iframe 과 비슷 )
									
			3. <%@ taglib %> : JSP 기능을 **확장하기 위해 만들어진 라이브러리를 해당 페이지에서
								사용할 수 있도록 도와주는 기능을 하는 지시어				
	      
	   ======================================================================
	      			
			1. page 지시어 속성들
			
				- language : 스크립트 코드에서 사용하는 언어 지정	
			
				- contentType : 해당 페이지의 문서 타입과 문자셋 지정(캐릭터 인코딩)
					
					cf) 인코딩(암호화, 부호화) : 정보의 원래 형태를 변환
						디코딩(복호화) : 인코딩으로 변환된 정보를 원래대로 되돌리는 것 
			
				- pageEncoding : 해당 페이지를 전세계가 볼 수 있도록 UTF-8 로 변환해서 처리하자.
				
				- session : 세션(저장공간) 사용 여부 (기본값 true)
				
				- buffer : 출력에 사용되는 임시저장공간 (기본값 8KB)
				
				- autoFlush : 출력버퍼가 다 차지 않아도 바로 출력 시켜줌 (기본값 true)
				
				- errorPage : 해당 페이지에서 오류가 발생하면, 오류를 처리할 페이지를 지정
				
				- isErrorPage : 해당 페이지가 오류를 처리하는 페이지이면 true 를 지정한다.
				
				
			2. include 지시어 속성 
				
				<%@ include file="삽입할 파일위치와 이름" %>	
				
				** include 는 '지시어'를 사용하는 방법과 'action 태그'를 사용하는 방법 두가지가 있다.
				
				
			3. taglib : 해당 페이지에서 사용할 태그 라이브러리 지정 
						나중에 JSTL 할때 필요하다. 
						(JSTL 이 있어야 반복문 처리를 할 수 있다.)
									
	 --%>	
			
	</body>
</html>