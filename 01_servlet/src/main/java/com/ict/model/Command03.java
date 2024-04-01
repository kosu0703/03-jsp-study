package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Command03 implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
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
			String result = "결과 : " + su1 + op + su2 + " = " + res;
			request.setAttribute("res", result);
		} catch (Exception e) {
			String result = "0 으로는 나눌 수 없습니다.";
			request.setAttribute("res", result);
		}
		return "view/ex13_res03.jsp";
	}

}
