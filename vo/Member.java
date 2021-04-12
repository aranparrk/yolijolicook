package com.my.vo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Member {
	
//	MEMBER_ID VARCHAR2(12 BYTE) NOT NULL 
//	MEMBER_PWD VARCHAR2(15 BYTE) NOT NULL 
//	MEMBER_EMAIL VARCHAR2(30 BYTE) NOT NULL 
//	MEMBER_NICKNAME VARCHAR2(25 BYTE) NOT NULL 
//	MEMBER_STATUS NUMBER(1, 0) DEFAULT 0 
//	MEMBER_DT DATE NOT NULL 
//	CONSTRAINT MEMBER_PK PRIMARY KEY 
	
	private String member_id; // 아이디
	private String member_pwd; // 비밀번호
	private String member_email; // 이메일
	private String member_nickname; // 닉네임
	private int member_status; // 회원상태
	@JsonFormat(pattern = "yy/MM/dd",timezone = "Asia/Seoul")
	private Date member_dt; // 가입날짜 (관리자 1, 탈퇴 -1) default 0
	
	public Member() {
		super();
	}
	
	public Member(String member_id, String member_pwd, String member_email, String member_nickname) {
		super();
		this.member_id = member_id;
		this.member_pwd = member_pwd;
		this.member_email = member_email;
		this.member_nickname = member_nickname;

	}
	
	public Member(String member_id, String member_pwd, String member_email, String member_nickname, int member_status,
			Date member_dt) {
		super();
		this.member_id = member_id;
		this.member_pwd = member_pwd;
		this.member_email = member_email;
		this.member_nickname = member_nickname;
		this.member_status = member_status;
		this.member_dt = member_dt;
	}



	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pwd() {
		return member_pwd;
	}
	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_nickname() {
		return member_nickname;
	}
	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}
	public int getMember_status() {
		return member_status;
	}
	public void setMember_status(int member_status) {
		this.member_status = member_status;
	}
	public Date getMember_dt() {
		return member_dt;
	}
	public void setMember_dt(Date member_dt) {
		this.member_dt = member_dt;
	}

	
}
