package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Command02 implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		int luck = (int)(Math.random()*101);
		String result = "오늘 운세는 " + luck + "% 입니다.";
		request.setAttribute("res", result);
		return "view/ex13_res02.jsp";
	}

}
