package com.ict.controller;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//	URL mapping => 프로젝트 이름/@WebServlet 이름
@WebServlet("/Ex01")
public class Ex01 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    
	//	생성자는 보통 생략한다.
    public Ex01() {
    	System.out.println("1. 생성자()");
    }

    //	생성자를 대신해서 멤버 초기화를 할 수 있다.
    //	init() 가 끝나면 자동으로 service() 로 넘어간다. 
	public void init(ServletConfig config) throws ServletException {
		System.out.println("2. init()");
	}
	
	//	request => 요청 정보를 가지고 있는 객체 ( 클라이언트 -> 서버 )
	//	response => 응답 정보를 가지고 있는 객체 ( 서버 -> 클라이언트 )
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("3. service()");
		//	서비스가 하는 일은 클라이언트의 요청 방식에 따라 알맞는 메서드를 호출하는 역할을 한다.
		//	요청방식 -	get 방식(디폴트) => doGet() 으로 간다.
		//			post 방식		=> doPost() 로 간다.
		if (request.getMethod().equalsIgnoreCase("get")) {
			doGet(request, response);
		}else if (request.getMethod().equalsIgnoreCase("post")) {
			doPost(request, response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("4. get()");
		//	웹페이지에 쓴다.
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("4. post()");
		//	둘다 치기 귀찮아서 한쪽으로 모아버린다.
		doGet(request, response);
	}
	
	//	톰켓에서 빠져나올때 
	public void destroy() {
		System.out.println("5. destroy()");
	}
	
}
