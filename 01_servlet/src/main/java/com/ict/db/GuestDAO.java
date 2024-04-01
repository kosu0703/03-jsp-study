package com.ict.db;

import org.apache.ibatis.session.SqlSession;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import com.ict.db.GuestDAO;
import com.ict.db.GuestVO;

public class GuestDAO {
	//	실제 사용하는 클래스 : SqlSession
	private static SqlSession ss;
	
	private synchronized static SqlSession getSesstion() {
		if(ss == null) {
			ss = GuestDBService.getFactory().openSession();
		}
		return ss;
	}
	
	//	DB 처리하는 메서드들
	
	//	리스트
	public static List<GuestVO> getList() {
		List<GuestVO> list = null;
		list = getSesstion().selectList("guestbook.list");
		return list;
	}
	
	// 	insert
	public static int getInsert(GuestVO gvo){
		int result = 0;
		result = getSesstion().insert("guestbook.insert", gvo);	
		//	삽입, 삭제, 수정은 항상 커밋을 해주자
		ss.commit();
		return result;
	}
	
	//	idx 로 검색하기	
	public static GuestVO getOneList(String idx) {
		GuestVO gvo = null;
		gvo = getSesstion().selectOne("guestbook.detail", idx);
		return gvo;
	}
	
	//	idx 로 삭제하기
	public static int getDelete(String idx){
		int result = 0;
		result = getSesstion().delete("guestbook.delete", idx);
		//	삽입, 삭제, 수정은 항상 커밋을 해주자
		ss.commit();
		return result;
	}
	
	//	수정하기
	public static int getUpdate(GuestVO gvo){
		int result = 0;
		result = getSesstion().update("guestbook.update", gvo);
		ss.commit();
		return result;
	}
	
}







