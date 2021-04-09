package com.my.control;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.exception.FindException;
import com.my.service.BoardService;
import com.my.vo.Board;

import lombok.extern.log4j.Log4j;

@ResponseBody
@Controller
@RequestMapping("/board/*")
@Log4j
public class BoardController {
	@Autowired
	private BoardService service;
	
	@PostMapping("/list")
	public List<Map<String,Object>> boardList() throws FindException {
		List<Map<String, Object>> jacksonList = new ArrayList<>();
		
		List<Board> boards = service.selectAll();
		for(Board board : boards) {
			Map<String, Object> jacksonMap = new HashMap<>();
            jacksonMap.put("board_no",board.getBoard_no());
            jacksonMap.put("member_id",board.getMember().getMember_id());
            jacksonMap.put("board_title",board.getBoard_title());
            jacksonMap.put("board_dt",board.getBoard_dt());
            jacksonMap.put("board_cnt",board.getBoard_cnt());
            jacksonList.add(jacksonMap);
        }
		Map<String,Object> jacksonMap2 = new HashMap<>();
		jacksonMap2.put("boards", jacksonList);
        return jacksonList;
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
	
}
