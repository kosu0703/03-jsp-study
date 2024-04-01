package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex08")
public class Ex08 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//	나중에는 model 에서 한다.(MVC패턴)
		//	파라미터값 받기
		String name = request.getParameter("name");
		String kor = request.getParameter("kor");
		String eng = request.getParameter("eng");
		String math = request.getParameter("math");
		
		int k1 = Integer.parseInt(kor);
		int k2 = Integer.parseInt(eng);
		int k3 = Integer.parseInt(math);
		
		int sum = k1 + k2 + k3;
		double avg = (int)(sum/3.0*10)/10.0;
		String hak = "";
		if (avg >= 90) {
			hak = "A학점";
		}else if (avg >= 80) {
			hak = "B학점";
		}else if (avg >= 70) {
			hak = "C학점";
		}else {
			hak = "F학점";
		}
		
		out.println("<h1>성적보기</h1>");
		out.println("<h2> 이름 : " + name + "</h2>");
		out.println("<h2> 총점 : " + sum + "</h2>");
		out.println("<h2> 평균 : " + avg + "</h2>");
		out.println("<h2> 학점 : " + hak + "</h2>");
		
	}

}
