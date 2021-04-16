package com.my.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.my.dao.BoardDAO;
import com.my.exception.*;
import com.my.vo.Board;
import com.my.vo.BoardComment;
import com.my.vo.Report;

@Service
public class BoardService {
	@Autowired
	@Qualifier("oracle")
	private BoardDAO boardDAO;
	//boardlist.html
	/**
	 * 게시물 전체 검색
	 * @return 게시물 리스트
	 * @throws FindException 게시물이 없을 때 예외가 발생한다
	 */
	public List<Board> findAll() throws FindException{
		return boardDAO.selectBoardList();
	}
	public List<Board> findAll(String searchopt, String keyword, int currentPage, int cnt_per_page) throws FindException{
		return boardDAO.selectBoardList(searchopt, keyword, currentPage, cnt_per_page);
	}
	public int findCount() throws FindException {
		return boardDAO.selectCount();
	}
	
	//boarddetail.html
	/**
	 * 게시물번호에 해당하는 게시물을 검색하고,
	 * 조회수를 1증가한다
	 * @param board_no 게시물번호
	 * @return
	 * @throws FindException 
	 */
	public Board findByBoard_no(int board_no) throws FindException{
		Board board = boardDAO.selectBoardDetail(board_no);
		try {
			boardDAO.updateBoardCnt(board_no);
		} catch (ModifyException e) {
			throw new FindException(e.getMessage());
		}
		return board;
	}
	/**
	 * 게시물을 삭제
	 * @param board_no 삭제할 게시물 번호
	 * @throws RemoveException
	 */
	public void removeByBoard_no(int board_no) throws RemoveException{
		boardDAO.deleteBoard(board_no);
	}
	
	public List<BoardComment> findCommentByBoard_no(int board_no) throws FindException{
		return boardDAO.selectBoardComment(board_no);
	}
	//boardwrite.html
	/**
	 * 게시물 추가
	 * @param board 추가할 게시물
	 * @throws AddException
	 */
	public void writeBoard(Board board) throws AddException{
		boardDAO.insertBoard(board);
	}
	/**
	 * 게시물 댓글 추가
	 * @param boardcomment 추가할 댓글
	 * @throws AddException
	 */
	public void writeBoardComment(BoardComment boardcomment) throws AddException{
		boardDAO.insertComment(boardcomment);
	}
	/* 추가요소 */
	/**
	 * 게시판 수정
	 * @param board 수정할 게시물
	 * @throws ModifyException
	 */
	public void updateBoard(Board board) throws ModifyException{
		
	}
	/**
	 * 게시물 신고
	 * @param report 추가할 신고
	 * @throws AddException
	 */
	public void writeReport(Report report) throws AddException{
		boardDAO.insertReport(report);
	}
}
