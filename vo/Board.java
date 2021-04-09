package com.my.vo;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Board {
	private int board_no; 
	private String board_title; 
	private Member member; //member_id
	private List<BoardComment> boardcomment;
	private String board_detail;
	@JsonFormat(pattern = "yy/MM/dd",timezone = "Asia/Seoul")
	private String board_dt; 
	private int board_cnt; 
	private int board_report_cnt;

	
	public Board() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Board(int board_no, String board_title, Member member, List<BoardComment> boardcomment, String board_detail,
			String board_dt, int board_cnt, int board_report_cnt) {
		super();
		this.board_no = board_no;
		this.board_title = board_title;
		this.member = member;
		this.boardcomment = boardcomment;
		this.board_detail = board_detail;
		this.board_dt = board_dt;
		this.board_cnt = board_cnt;
		this.board_report_cnt = board_report_cnt;
	}


	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public List<BoardComment> getBoardcomment() {
		return boardcomment;
	}
	public void setBoardcomment(List<BoardComment> boardcomment) {
		this.boardcomment = boardcomment;
	}
	public String getBoard_detail() {
		return board_detail;
	}
	public void setBoard_detail(String board_detail) {
		this.board_detail = board_detail;
	}
	public String getBoard_dt() {
		return board_dt;
	}
	public void setBoard_dt(String board_dt) {
		this.board_dt = board_dt;
	}
	public int getBoard_cnt() {
		return board_cnt;
	}
	public void setBoard_cnt(int board_cnt) {
		this.board_cnt = board_cnt;
	}
	public int getBoard_report_cnt() {
		return board_report_cnt;
	}
	public void setBoard_report_cnt(int board_report_cnt) {
		this.board_report_cnt = board_report_cnt;
	}
	
}
