package com.my.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.my.dao.MemberDAO;
import com.my.exception.AddException;
import com.my.exception.FindException;
import com.my.vo.Member;

@Service
public class MemberService {
	@Autowired
	@Qualifier("oracle")
	private MemberDAO mDAO;
	
	
	public void insertMember(Member m) throws AddException{
		mDAO.insertMember(m);
	}
	
	
	public String selectById(String member_id) throws FindException{
		return mDAO.selectById(member_id);
	}
	
	public Member login(String member_id, String member_pwd) throws Exception{
		try {
			return mDAO.login(member_id,member_pwd);
		}catch (Exception e){
			throw new Exception(e.getMessage());
		}
		
		
	}
}
