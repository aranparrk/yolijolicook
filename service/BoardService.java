package com.my.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.my.dao.BoardDAO;
import com.my.exception.*;
import com.my.vo.Board;

@Service("service")
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
	public List<Board> selectAll() throws FindException{
		return boardDAO.selectBoardList();
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
}
