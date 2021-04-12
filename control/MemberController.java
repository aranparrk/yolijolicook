package com.my.control;

import java.util.HashMap;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.exception.AddException;
import com.my.exception.FindException;
import com.my.service.MemberService;
import com.my.vo.Member;

//import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member/*")
//@Log4j
public class MemberController {
	@Autowired
	private MemberService service;
	
	// 회원가입
	@RequestMapping("/signup")
	@ResponseBody
	public Map<String, Object> signup(Member m)throws AddException {
		Map<String, Object> map = new HashMap<>();
		
		try {
			service.insertMember(m);
			map.put("status", 1);
		} catch (AddException e) {
			e.printStackTrace();
			map.put("status", -1);
			map.put("msg",e.getMessage());
		}
		return map;
	}
	
	// 로그인
	@RequestMapping("/login")
	@ResponseBody
	public Map<String, Object> login(String member_id, String member_pwd)throws Exception {
		Map<String, Object> map = new HashMap<>();
		
		try {
			service.login(member_id,member_pwd);
			map.put("status", 1);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("status", -1);
			map.put("msg",e.getMessage());
		}
		return map;
	}
	
	// 아이디 중복
	@PostMapping("/iddupchk")
	@ResponseBody
	public Map<String, Integer> idDupChk(String member_id) throws Exception{
		Map<String, Integer> map = new HashMap<>();
		
		try {
			service.selectById(member_id);
			map.put("status", 1);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("status", -1);
		}
		return map;
	}
	
	// 닉네임 중복
	@PostMapping("/nicknamedupchk")
	@ResponseBody
	public Map<String, Integer> nicknamedupchk(String member_nickname) throws Exception{
		Map<String, Integer> map = new HashMap<>();
		
		try {
			service.selectByNickname(member_nickname);
			map.put("status", 1);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("status", -1);
		}
		return map;
	}
	
	// 이메일 중복
	@PostMapping("/emaildupchk")
	@ResponseBody
	public Map<String, Integer> emaildupchk(String member_email) throws Exception{
		Map<String, Integer> map = new HashMap<>();
		
		try {
			service.selectByEmail(member_email);
			map.put("status", 1);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("status", -1);
		}
		return map;
	}
	
	// 아이디 찾기
	@RequestMapping("/finid")
	public String findId(String id) throws FindException{
		return "/member/findid";
	}
}