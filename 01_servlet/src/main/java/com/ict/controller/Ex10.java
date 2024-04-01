package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex10")
public class Ex10 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		//	페이지 이동(리다이렉트, 포워딩)
		//	=> 현재 페이지에서 작업을 한 후 다른 페이지로 이동 (현재 페이지는 보이지 않음)
		
		String name = request.getParameter("userName");
		String age = request.getParameter("userAge");
		
		out.println("<h2>현재 Ex10 페이지입니다.</h2>");
		out.println("<h3><ul>");
		out.println("<li>" + name + "</li>");
		out.println("<li>" + age + "</li>");
		out.println("</ul></h3>");
		//==================================================================
		//	리다이렉트 : **다른 페이지로 이동하면서 기존의 request 와 response 정보가 사라진다.
		//				(즉, 파라미터도 사라진다.)
		//				새로운 request 와 response 가 만들어진다.
		//				주소창에 **최종 주소가 보인다.
		
		//		사용방법) response.sendRedirect("주소");
		
		//	확장자가 없으면 서블릿으로 간다.
		//response.sendRedirect("Ex10_2");
		
		//	확장자가 있으면 html, jsp 로 이동
		//response.sendRedirect("view/ex09.jsp");
		
		//==================================================================
		//	포워딩 : 다른 페이지로 이동하면서 기존의 request 와 response 정보를 가지고 간다.
		//			파라미터도 사용가능하다. (즉, 현재 정보를 유지한다.)
		//			주소창에는 **최초 주소가 보인다.
		
		//		사용방법) request.getRequestDispatcher("주소").forward(request, response);
		
		request.getRequestDispatcher("Ex10_2").forward(request, response);
		
	}


}
