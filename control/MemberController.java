package com.my.control;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.exception.AddException;
import com.my.exception.FindException;
import com.my.service.MemberService;
import com.my.vo.Member;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member/*")
@Log4j
public class MemberController {
	@Autowired
	private MemberService service;
	
	
	
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

}
