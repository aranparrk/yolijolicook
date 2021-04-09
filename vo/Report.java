package com.my.vo;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Report {
	private int report_no; 
	private String report_title; 
	private String report_detail; 
	
	private Member member; //member_id; 
	private Board board;  //board_no
	
	private int report_status;
	@JsonFormat(pattern = "yy/MM/dd",timezone = "Asia/Seoul")
	private String report_dt;
	
	public Report() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Report(int report_no, String report_title, String report_detail, Member member, Board board,
			int report_status, String report_dt) {
		super();
		this.report_no = report_no;
		this.report_title = report_title;
		this.report_detail = report_detail;
		this.member = member;
		this.board = board;
		this.report_status = report_status;
		this.report_dt = report_dt;
	}


	public int getReport_no() {
		return report_no;
	}
	public void setReport_no(int report_no) {
		this.report_no = report_no;
	}
	public String getReport_title() {
		return report_title;
	}
	public void setReport_title(String report_title) {
		this.report_title = report_title;
	}
	public String getReport_detail() {
		return report_detail;
	}
	public void setReport_detail(String report_detail) {
		this.report_detail = report_detail;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public Board getBoard() {
		return board;
	}
	public void setBoard(Board board) {
		this.board = board;
	}
	public int getReport_status() {
		return report_status;
	}
	public void setReport_status(int report_status) {
		this.report_status = report_status;
	}
	public String getReport_dt() {
		return report_dt;
	}
	public void setReport_dt(String report_dt) {
		this.report_dt = report_dt;
	} 
	
	
}
