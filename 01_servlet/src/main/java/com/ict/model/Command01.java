package com.ict.model;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//	인터페이스 상속시 implements 후 오버라이딩
public class Command01 implements Command{
		
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//	일처리를 하고
		Calendar now = Calendar.getInstance();
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MONTH)+1;
		int day = now.get(Calendar.DAY_OF_MONTH); 
		String result = "오늘날짜 : " + year + "년 " + month + "월 " + day + "일 입니다.";
		
		//	일처리한 결과를 저장하자.(request) => 그래서 컨트롤러에서 페이지 이동을 포워딩한다.
		//request.setAttribute(이름, 데이터);
		request.setAttribute("res", result);
		
		//	return 인 반환형 String 은 "결과를 보여줄 jsp 파일 위치" 이다.(거의) 
		return "view/ex13_res01.jsp";
		//	자기를 호출한 곳으로 되돌아간다. (즉, 서블릿으로 되돌아간다.)
	}

}
