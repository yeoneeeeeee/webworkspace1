package com.kh.board.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.board.model.dao.BoardDao;
import com.kh.board.model.vo.Attachment;
import com.kh.board.model.vo.Board;
import com.kh.board.model.vo.Category;
import com.kh.common.model.vo.PageInfo;
import com.kh.notice.model.dao.NoticeDao;


	public class BoardService {
	
	public int selectListCount() {
		
		Connection conn = getConnection();
		
		int listCount = new BoardDao().selectListCount(conn);  
		
		close(conn);
		
		return listCount;
	}
	
	public ArrayList<Board> selectList(PageInfo pi){
		
		Connection conn = getConnection();
		
		ArrayList<Board> list  = new BoardDao().selectList(conn,pi);
		
		close(conn);
		
		return list;
	}
	
	public int increaseCount(int boardNo) {
		
		Connection conn = getConnection();
		
		int result = new BoardDao().increaseCount(conn, boardNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	public Board selectBoard(int boardNo) {
		Connection conn = getConnection();
		
		Board b = new BoardDao().selectBoard(conn, boardNo);
		
		close(conn);
		
		return b;
		
	}
	
	public Attachment selectAttachment(int boardNo) {
		Connection conn = getConnection();
		
		Attachment at = new BoardDao().selectAttachment(conn, boardNo);
		
		close(conn);
		
		return at;
	}
	
	public ArrayList<Category> selectCategoryList(){
		
		Connection conn = getConnection();
		
		ArrayList<Category> list = new BoardDao().selectCategoryList(conn);
		
		close(conn);
		
		return list; 
	}
	
	public int insertBoard(Board b, Attachment at) {
		
		Connection conn = getConnection();
		
		int result1 = new BoardDao().insertBoard(conn, b);
		
		int result2 = 1; //; 무조건 '1'을 성공으로 본다.
		
		if(at != null) {
			result2 = new BoardDao().insertAttachment(conn, at);
		}
		
		// 트랜잭션 처리
		if(result1 > 0 && result2 > 0) { // 게시글 등록(insertBoard)은 되는데 첨부파일등록(insertAttachment)은 안되었다는(반대로도 말이안됨) 말이 안되서 묶어서 처리함
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		//(; 곱셈하여 반환하는 이유: 데이터의 정확성을 유지하기 위해서) 
		//둘중 하나라도 실패하여서 0이 반환될 경우 실패값을 반환하기 위해서 곱셈결과를 리턴
		return result1 * result2;
	}
	
	public int updateBoard(Board b, Attachment at) {
		
		Connection conn = getConnection();
		
		int result1 = new BoardDao().updateBoard(conn, b);
		
		int result2 = 1;
		
		if(at != null) { // 새롭게 등록한 첨부파일이 있는 경우
			
			if(at.getFileNo() != 0) { // 기존에 첨부파일이 있던 경우 => Attachment Update
				result2 = new BoardDao().updateAttachment(conn,at);
			}else { // 기존의 첨부파일이 없던 경우 => Attachment Insert
				result2 = new BoardDao().insertNewAttachment(conn,at);
			}
			
		}
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);		
		}
		close(conn);
		
		return result1 * result2;
		
	}
	
	public int deleteBoard (int boardNo) {
		
		Connection conn = getConnection();
			
		int result = new BoardDao().deleteBoard(conn, boardNo);
			
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	public int insertThumbnailBoard(Board b, ArrayList<Attachment> list) {
		
		Connection conn = getConnection();
		
		int result1 = new BoardDao().insertThumbnailBoard(conn,b);
		
		int result2 = new BoardDao().insertAttachmentList(conn, list);
		
		if(result1 > 0 && result2 > 0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result1 * result2;
	}
	
	public ArrayList<Board> selectThumbnailList(){
		
		Connection conn = getConnection();

		ArrayList<Board> list = new BoardDao().selectThumbnailList(conn);
		
		close(conn);
		
		return list;
		
	}
	
	public ArrayList<Attachment> selecAttachmentList(int boardNo){
		
		Connection conn = getConnection();
		
		ArrayList<Attachment> list = new BoardDao().selectAttachmentList(conn,boardNo);
		
		close(conn);
		
		return list;
	}
	
}
