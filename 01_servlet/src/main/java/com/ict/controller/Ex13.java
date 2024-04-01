package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.Command;
import com.ict.model.Command01;
import com.ict.model.Command02;
import com.ict.model.Command03;

@WebServlet("/Ex13")
public class Ex13 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String cmd = request.getParameter("cmd");
		
		//	축약하기 (커멘드 인터페이스를 만드는 이유)
		Command comm = null;
		switch (cmd) {
		case "1": comm = new Command01(); break;
		case "2": comm = new Command02(); break;
		case "3": comm = new Command03(); break;
		}
		String path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		
		/*
		switch (cmd) {
		case "1":
			
			//	클래스는 객체 생성해야 사용할 수 있다.
			Command01 cmd01 = new Command01();
			String path = cmd01.exec(request, response);
			
			//	request 의 정보를 가지고 가야한다. => 포워딩한다.
			request.getRequestDispatcher(path).forward(request, response);
			
			//	jsp 파일로 가서 클라이언트에게 결과를 보여준다.
			break;
		
		case "2":
			Command02 cmd02 = new Command02();
			path = cmd02.exec(request, response);
			request.getRequestDispatcher(path).forward(request, response);
			break;
		case "3":
			Command03 cmd03 = new Command03();
			path = cmd03.exec(request, response);
			request.getRequestDispatcher(path).forward(request, response);
			break;
		}
		*/
	}


}
