package com.ict.model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.VO;

public class Command05 implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//	일처리
		//	배열, 컬렉션하는 이유
		//	DB 에서 컬렉션, Object, 숫자로 결과가 올 수도 있다.(List<VO> , VO, int)
		
		String[] hobby = request.getParameterValues("hobby");
		String[] web = request.getParameterValues("web");
		request.setAttribute("hobby", hobby);
		request.setAttribute("web", web);
		
		//	강제로 DB 에서 처리한 것처럼 VO 에 정보를 넣자.
		//	하나면 VO
		VO vo = new VO("1", "둘리", "24", "서울");
		request.setAttribute("vo", vo);
		
		//	여러개면 List<VO>
		VO vo1 = new VO("1", "희동이", "1", "대전");
		VO vo2 = new VO("2", "도우너", "13", "경기");
		VO vo3 = new VO("3", "마이콜", "35", "대구");
		
		//	강제로 DB 에서 처리한 것처럼 list 에 정보를 넣자.
		List<VO> list = new ArrayList<VO>();
		list.add(vo1);
		list.add(vo2);
		list.add(vo3);
		request.setAttribute("list", list);
		
		return "view/ex14_res02.jsp";
	}

}
