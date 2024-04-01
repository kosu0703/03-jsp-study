package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex04")
public class Ex04 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//	링크
		//	상대주소
		out.println("<a href = 'Ex03'>문서3 호출</a>");
		//	절대주소
		out.println("<a href = '/01_servlet/Ex03'>문서3 호출</a>");
		//	프로젝트 주소 가져와서 파일명 추가
		out.println("<a href = '"+ request.getContextPath() +"/Ex03'>문서3 호출</a>");
		
	}

}
