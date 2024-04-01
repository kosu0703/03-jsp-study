package com.ict.model;

import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Command04 implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//	일처리 (성적처리)
		String name = request.getParameter("name");
		int k1 = Integer.parseInt(request.getParameter("kor"));
		int k2 = Integer.parseInt(request.getParameter("eng"));
		int k3 = Integer.parseInt(request.getParameter("math"));
		
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
		
		request.setAttribute("name", name);
		request.setAttribute("sum", sum);
		request.setAttribute("avg", avg);
		request.setAttribute("hak", hak);
		
		return "view/ex14_res.jsp";
	}

}
