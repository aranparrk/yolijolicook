/**
 * 게시판DAO Interface
 */
package com.my.dao;

import java.util.List;

import com.my.exception.*;
import com.my.vo.Board;
import com.my.vo.BoardComment;

/**
 * @author sumin
 *
 */
public interface BoardDAO {
	/* boardlist.html */

	/**
	 * 게시물 전체 검색
	 * @return 게시물
	 * @throws FindException
	 */
	public List<Board> selectBoardList() throws FindException;
	/**
	 * 게시물 검색어로 검색
	 * @param word 검색어
	 * @return 게시물 리스트
	 * @throws FindException 게시물이 없을 때 예외 발생
	 */
	public List<Board> selectBoardByWord(String keyword) throws FindException;
	/**
	 * 게시물 전체 검색
	 * @param searchopt 검색옵션
	 * @param keyword 검색어
	 * @param currentPage 현재 페이지
	 * @param cnt_per_page 페이지별 게시물 수
	 * @return
	 * @throws FindException
	 */
	public List<Board> selectBoardList(String searchopt, String keyword, int currentPage, int cnt_per_page) throws FindException;
	/**
	 * 게시물 수 검색
	 * @return 게시물 수
	 * @throws FindException
	 */
	public int selectCount() throws FindException;
	/**
	 * 조회수 1 증가
	 * @param board_no 게시물 번호
	 * @throws ModifyException
	 */
	public void updateBoardCnt(int board_no) throws ModifyException;
	
	
	
	
	/* boarddetail.html */
	/**
	 * 게시물 선택
	 * @param board_no 게시물 번호
	 * @return 게시물
	 * @throws FindException 게시물번호에 만족하는 게시물이 없으면 예외 발생
	 */
	public Board selectBoardDetail(int board_no) throws FindException;
	/**
	 * 게시물 번호에 만족하는 댓글을 검색
	 * @param board_no 게시물 번호
	 * @return 게시물 댓글
	 * @throws FindException
	 */
	public List<BoardComment> selectBoardComment(int board_no) throws FindException;
	/**
	 * 댓글 추가
	 * @param boardcomment 댓글
	 * @throws AddException 
	 */
	public void InsertComment(BoardComment boardcomment) throws AddException;
	
	
	
	
	/* boardwrite.html */
	/**
	 * 게시물 추가
	 * @param board 추가할 게시물
	 * @throws AddException
	 */
	public void insertBoard(Board board) throws AddException;
	
	
	/* 추가요소 */
	/**
	 * 게시판 수정
	 * @param board 수정할 게시물
	 * @throws ModifyException
	 */
	public void updateBoard(Board board) throws ModifyException;
	/**
	 * 게시판 삭제
	 * @param board_no 삭제할 게시물의 번호
	 * @throws RemoveException
	 */
	public void deleteBoard(int board_no) throws RemoveException;
	/**
	 * 게시물 여러개 삭제
	 * @param board 삭제할 게시물
	 * @throws RemoveException
	 */
	public void deleteBoardList(Board board) throws RemoveException;
	

}
