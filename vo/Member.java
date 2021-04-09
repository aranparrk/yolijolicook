package com.my.vo;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Member {
	
	 private String member_id;
	 private String member_pwd;
	 private String member_email;
	 private String member_nickname; 
	 private int member_status;
	 @JsonFormat(pattern = "yy/MM/dd",timezone = "Asia/Seoul")
	 private String member_dt;
	 
	 
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Member(String member_id, String member_pwd, String member_email, String member_nickname, int member_status,
			String member_dt) {
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
	public String getMember_dt() {
		return member_dt;
	}
	public void setMember_dt(String member_dt) {
		this.member_dt = member_dt;
	}
	 
	 

}
