package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.GuestDAO;
import com.ict.db.GuestVO;

public class UpdateCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		String idx = request.getParameter("idx");
		
		//	받은 idx 로 DB 가서 정보를 가져오자
		GuestVO gvo = GuestDAO.getOneList(idx);
		request.setAttribute("gvo", gvo);
		
		return "guestbook/update.jsp";
	}

}
