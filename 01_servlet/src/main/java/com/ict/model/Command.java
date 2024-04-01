package com.ict.model;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//	클라이언트의 요청을 처리하는 곳
//	보통 Command (요즘은 Action 도 사용)
//	요청이 3개이므로 모델도 3개를 만든다.

//	인터페이스는 상수와 추상메서드만 가지고 있음
public interface Command {
	//	요청사항을 처리할 Model 들이 사용할 메서드를 가지고 있음
	public String exec(HttpServletRequest request, HttpServletResponse response);
	//	서블릿 컨트롤러에서 전달받은 요청을 처리하기위해서 request 와 response 가 필요하다.
	
	//	**반환형은 결과를 보여줄 JSP 파일의 위치를 가리킨다. 
	
}



