package com.my.vo;

import com.fasterxml.jackson.annotation.JsonFormat;

public class QNA {
	private int question_no; 
	private String question_title;
	private String question_detail;
	private Member member; //member_id;
	@JsonFormat(pattern = "yy/MM/dd",timezone = "Asia/Seoul")
	private String question_dt; 
	@JsonFormat(pattern = "yy/MM/dd",timezone = "Asia/Seoul")
	private String question_ans_dt; 
	private String question_ans_detail;
	
	
	public QNA() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public QNA(int question_no, String question_title, String question_detail, Member member, String question_dt,
			String question_ans_dt, String question_ans_detail) {
		super();
		this.question_no = question_no;
		this.question_title = question_title;
		this.question_detail = question_detail;
		this.member = member;
		this.question_dt = question_dt;
		this.question_ans_dt = question_ans_dt;
		this.question_ans_detail = question_ans_detail;
	}

	public int getQuestion_no() {
		return question_no;
	}
	public void setQuestion_no(int question_no) {
		this.question_no = question_no;
	}
	public String getQuestion_title() {
		return question_title;
	}
	public void setQuestion_title(String question_title) {
		this.question_title = question_title;
	}
	public String getQuestion_detail() {
		return question_detail;
	}
	public void setQuestion_detail(String question_detail) {
		this.question_detail = question_detail;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public String getQuestion_dt() {
		return question_dt;
	}
	public void setQuestion_dt(String question_dt) {
		this.question_dt = question_dt;
	}
	public String getQuestion_ans_dt() {
		return question_ans_dt;
	}
	public void setQuestion_ans_dt(String question_ans_dt) {
		this.question_ans_dt = question_ans_dt;
	}
	public String getQuestion_ans_detail() {
		return question_ans_detail;
	}
	public void setQuestion_ans_detail(String question_ans_detail) {
		this.question_ans_detail = question_ans_detail;
	} 
	
	
}
