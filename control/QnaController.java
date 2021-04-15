package com.my.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.exception.AddException;
import com.my.exception.FindException;
import com.my.exception.RemoveException;
import com.my.service.QnaService;
import com.my.vo.Member;
import com.my.vo.QNA;

@Controller
@RequestMapping("/qna/*")
public class QnaController {

	@Autowired
	private QnaService service;

	// 문의 작성
	@RequestMapping("/insertQNA")
	@ResponseBody
	public ResponseEntity<String> insertQNA(QNA qna, HttpSession session) {
		try {
			String id = (String) session.getAttribute("loginInfo");
			Member member = new Member();
			member.setMember_id(id);
			qna.setMember(member);

			// 2.비지니스로직 호출
			service.insertQNA(qna);
			ResponseEntity<String> entity = new ResponseEntity(HttpStatus.OK);
			return entity;
		} catch (AddException e) {
			e.printStackTrace();
			ResponseEntity<String> entity = new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
			return entity;
		}
	}

	// 문의 디테일
	@GetMapping("/a_write")
	@ResponseBody
	public Map<String, Object> detail(@RequestParam(required = false, defaultValue = "0") int question_no) throws Exception {
		Map<String, Object> map = new HashMap<>();
		try {
			// 2. 비즈니스로직 호출
			QNA qna = service.findByQuestion_no(question_no);

			// 3. 요청속성으로 추가
			map.put("status", 1);
			map.put("qna", qna);

		} catch (FindException e) {
			e.printStackTrace();
			map.put("status", -1);
			map.put("msg", e.getMessage());
		}
		return map;
	}

	// 문의 삭제
	@RequestMapping("/deleteQNA")
	@ResponseBody
	public Map<String, Object> deleteQNA(int question_no) throws ServletException, IOException {
		Map<String, Object> map = new HashMap<>();
		try {
			service.deleteQNA(question_no);
			map.put("status", 1);
			System.out.println("삭제완료");
		} catch (RemoveException e) {
			e.printStackTrace();
			map.put("status", -1);
			map.put("msg", e.getMessage());
			System.out.println("삭제실패");
		}
		return map;
	}
}