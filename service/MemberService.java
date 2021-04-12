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
	
	/**
	 * 회원가입
	 * @param m
	 * @throws AddException
	 */
	public void insertMember(Member m) throws AddException{
		mDAO.insertMember(m);
	}
	
	/**
	 * 아이디 중복
	 * @param member_id
	 * @return
	 * @throws Exception
	 */
	public String selectById(String member_id) throws Exception {
		return mDAO.selectById(member_id);
	}
	
	/**
	 * 닉네임 중복
	 * @param member_nickname
	 * @return
	 * @throws Exception
	 */
	public String selectByNickname(String member_nickname) throws Exception{
		return mDAO.selectByNickname(member_nickname);
	}
	
	/**
	 * 이메일 중복
	 * @param member_email
	 * @return
	 * @throws Exception
	 */
	public String selectByEmail(String member_email) throws Exception{
		return mDAO.selectByEmail(member_email);
	}
	
	/**
	 * 로그인
	 * @param member_id
	 * @param member_pwd
	 * @return
	 * @throws Exception
	 */
	public Member login(String member_id, String member_pwd) throws Exception{
		try {
			return mDAO.login(member_id,member_pwd);
		}catch (Exception e){
			throw new Exception(e.getMessage());
		}
		
		
	}
}