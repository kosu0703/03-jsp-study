package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex12")
public class Ex12 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//	** cmd 를 가져와서 value 값으로 구분을 하자
		String cmd = request.getParameter("cmd");
		
		switch (cmd) {
		case "1":
			Calendar now = Calendar.getInstance();
			int year = now.get(Calendar.YEAR);
			int month = now.get(Calendar.MONTH)+1;
			int day = now.get(Calendar.DAY_OF_MONTH); // DATE 도 가능
			
			out.println("<h2>현재 Ex12 페이지(오늘날짜구하기)</h2>");
			out.println("오늘날짜 : " + year + "년 " + month + "월 " + day + "일 입니다.");
			break;
		case "2":
			int luck = (int)(Math.random()*101);
			
			out.println("<h2>현재 Ex12 페이지(운세구하기)</h2>");
			out.print("오늘 운세는 " + luck + "% 입니다.");
			break;
		case "3":
			out.println("<h2>현재 Ex12 페이지(계산기)</h2>");
			
			int su1 = Integer.parseInt(request.getParameter("s1"));
			int su2 = Integer.parseInt(request.getParameter("s2"));
			String op = request.getParameter("op");
			
			try {
				int res = 0;
				switch (op) {
				case "+": res = su1 + su2; break;
				case "-": res = su1 - su2; break;
				case "*": res = su1 * su2; break;
				case "/": res = su1 / su2; break;
				}
				out.println("<h2>결과 : " + su1 + op + su2 + " = " + res + "</h2>");
			} catch (Exception e) {
				out.println("<h2>0 으로는 나눌 수 없습니다.</h2>");
			}
			break;
		}
		
	}


}
