package com.my.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.exception.*;
import com.my.service.BoardService;
import com.my.vo.Board;
import com.my.vo.BoardComment;
import com.my.vo.Member;
import com.my.vo.PageGroupBean;

import lombok.extern.log4j.Log4j;

@ResponseBody
@Controller
@RequestMapping("/board/*")
@Log4j
public class BoardController {
	@Autowired
	private BoardService service;
	
//	@PostMapping("/list")
//	public List<Map<String,Object>> boardList() throws FindException {
//		List<Map<String, Object>> jacksonList = new ArrayList<>();
//		
//		List<Board> boards = service.findAll();
//		for(Board board : boards) {
//			Map<String, Object> jacksonMap = new HashMap<>();
//            jacksonMap.put("board_no",board.getBoard_no());
//            jacksonMap.put("member_id",board.getMember().getMember_id());
//            jacksonMap.put("board_title",board.getBoard_title());
//            jacksonMap.put("board_dt",board.getBoard_dt());
//            jacksonMap.put("board_cnt",board.getBoard_cnt());
//            jacksonList.add(jacksonMap);
//        }
//		Map<String,Object> jacksonMap2 = new HashMap<>();
//		jacksonMap2.put("boards", jacksonList);
//        return jacksonList;
//	}
	
	@RequestMapping("/list")
	public Map<String,Object> boardList(@RequestParam(defaultValue="t") String searchopt,
										@RequestParam(defaultValue="") String keyword,
										@RequestParam(value="currentPage", 
												      required = false, 
												      defaultValue = "1") int currentPage) throws FindException {		
		int cnt_per_page = 10;
		List<Board> boards = service.findAll(searchopt, keyword, currentPage, cnt_per_page);
		int totalCnt = service.findCount();
		String targetURL = "/boardlist";
		PageGroupBean<Board> pgb = 
				new PageGroupBean<>(totalCnt, currentPage, boards, targetURL);
		
	
		Map<String,Object> jacksonMap = new HashMap<>();
		jacksonMap.put("pgb", pgb);
        return jacksonMap;
	}
	
	@PostMapping("/detail")
	public Map<String, Object> boardDetail(@RequestParam(value = "board_no") int board_no) throws FindException {
		Map<String, Object> jacksonMap = new HashMap<>();
		
		Board board = service.findByBoard_no(board_no);
		jacksonMap.put("board_no", board.getBoard_no());
		jacksonMap.put("member_id", board.getMember().getMember_id());
		jacksonMap.put("board_title", board.getBoard_title());
		jacksonMap.put("board_dt", board.getBoard_dt());
		jacksonMap.put("board_detail", board.getBoard_detail());
		jacksonMap.put("board_cnt", board.getBoard_cnt());
		return jacksonMap;
	}
	
	@RequestMapping("delete")
	public Map<String, Object> boardDelete(@RequestParam(value = "board_no") int board_no) throws RemoveException {
		Map<String, Object> jacksonMap = new HashMap<>();
		
		service.removeByBoard_no(board_no);
		jacksonMap.put("status", 1);
		return jacksonMap;
	}
	
	@PostMapping("/commnetlist")
	public List<Map<String,Object>> boardCommentList(@RequestParam(value = "board_no") int board_no) throws FindException {
		List<Map<String, Object>> jacksonList = new ArrayList<>();
		Board board = new Board();
		board.setBoard_no(board_no);
		
		List<BoardComment> boardcmts = service.findCommentByBoard_no(board_no);
		
		for(BoardComment boardcomment : boardcmts) {
			Map<String, Object> jacksonMap = new HashMap<>();
			jacksonMap.put("board_no", boardcomment.getBoard().getBoard_no());
            jacksonMap.put("member_id",boardcomment.getMember().getMember_id());
            jacksonMap.put("boardcmt_detail",boardcomment.getBoardcmt_detail());
            jacksonMap.put("boardcmt_dt",boardcomment.getBoardcmt_dt());
            jacksonMap.put("status", 1);
            jacksonList.add(jacksonMap);
        }
        return jacksonList;
	}
	
	@RequestMapping("/write")
	public Map<String, Object> boardWrite(@RequestParam(value = "board_title") String board_title,
										  @RequestParam(value="board_detail") String board_detail,
										  HttpServletRequest request) throws AddException{
		Map<String, Object> jacksonMap = new HashMap<>();
		HttpSession session = request.getSession();
		
		String login_id = (String) session.getAttribute("loginInfo");
		
		Member member = new Member();
		member.setMember_id(login_id);
		
		Board board = new Board();
		board.setMember(member);
		board.setBoard_title(board_title);
		board.setBoard_detail(board_detail);
		
		
		service.writeBoard(board);
		jacksonMap.put("member_id", login_id);
		jacksonMap.put("status", 1);
		
		return jacksonMap;
	}
}
