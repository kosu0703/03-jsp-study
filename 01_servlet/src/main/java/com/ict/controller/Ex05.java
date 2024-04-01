package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex05")
public class Ex05 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//	서블릿의 첫번째 역할은 클라이언트의 요청을 받는 것이다.
		
		//	요청에 따른 한글 처리
		request.setCharacterEncoding("utf-8");
		//	응답에 따른 한글 처리
		response.setContentType("text/html; charset=utf-8");
		//	페이지에 출력하기 위한 처리
		PrintWriter out = response.getWriter();
		
		/*
			클라이언트가 서버에게 정보를 요청하면서 필요한 정보를 보낼 수 있다.
			이렇게 요청을 처리하기 위해서 함께 전달되는 정보를 파라미터라고 한다.
		
			파라미터의 자료형은 기본적으로 String 이거나 String[] 이다.
			
			클라이언트에서 요청할때 사용하는 메서드는 get 방식 , post 방식 이다.
			get 방식 : 주소창에 정보가 보인다.(정보를 헤더에 담아서 보낸다.) 
					=> url~~~?name=value&name=value&~~~
			post 방식 : 주소창에 정보가 안보인다.(정보를 바디에 담아서 보낸다.)
			
			파라미터를 받아서 처리하는 메서드들
			1. request.getParameter("name");		: String
			2. request.getParameterValues("name");	: String[]
			
			맵 형식의 파라미터일때 사용
			3. request.getParameterMap();			: Map<String, String[]>
		
			열거형의 파라미터일때 사용
			4. request.getParameterNames();			: Enumeration<String>
		
		*/
		
		//	만약에 이름(userName)과 나이(userAge)가 파라미터로 넘어왔을때 처리하는 방법
		String uName = request.getParameter("userName");
		String uAge = request.getParameter("userAge");
		
		//	주소창에 직접 파라미터값을 넣어서 웹페이지에 출력해보자
		//	주소?userName=value&userAge=value
		
		out.println("<h3>");
		out.println("<p> 이름 : "+uName+"</p>");
		out.println("<p> 나이 : "+uAge+"</p>");
		out.println("</h3>");
		
		//	만약에 숫자(s1,s2)와 +,-,*,/연산자(op)가 파라미터로 넘어왔을때 처리하는 방법
		String s1 = request.getParameter("s1");
		String s2 = request.getParameter("s2");
		String op = request.getParameter("op");
		
		//	문자를 숫자로 Integer.parseInt
		int su1 = Integer.parseInt(s1);
		int su2 = Integer.parseInt(s2);
		
		//int su1 = Integer.parseInt(request.getParameter("s1"));
		//int su2 = Integer.parseInt(request.getParameter("s2"));
		
		int result = 0;
		switch (op) {
		case "+":
			result = su1 + su2;
			break;
		case "-":
			result = su1 - su2;
			break;
		case "*":
			result = su1 * su2;
			break;
		case "/":
			result = su1 / su2;
			break;
		}
		
		out.println("<h3>");
		out.println("<p> 결과 : " + su1 + op + su2 + " = " + result + "</p>");
		out.println("</h3>");
		
	}

}
