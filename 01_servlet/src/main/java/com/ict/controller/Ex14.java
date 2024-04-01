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
import com.ict.model.Command04;
import com.ict.model.Command05;

@WebServlet("/Ex14")
public class Ex14 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//	기본 3개
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//	**항상 기본으로 써주자 ( cmd 받기 / Command 선언 null / switch 문 )
		String cmd = request.getParameter("cmd");
		Command comm = null;
		switch (cmd) {
		case "4": comm = new Command04(); break;
		case "5": comm = new Command05(); break;
		}	
		String path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);

	}


}
