package com.my.vo;

import com.fasterxml.jackson.annotation.JsonFormat;

public class BoardComment {
	private int boardcmt_no;
	private Board board;
	private Member member; //member_id
	private String boardcmt_detail;
	@JsonFormat(pattern = "yy/MM/dd",timezone = "Asia/Seoul")
	private String boardcmt_dt;
	
	public BoardComment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BoardComment(int boardcmt_no, Board board, Member member, String boardcmt_detail, String boardcmt_dt) {
		super();
		this.boardcmt_no = boardcmt_no;
		this.board = board;
		this.member = member;
		this.boardcmt_detail = boardcmt_detail;
		this.boardcmt_dt = boardcmt_dt;
	}

	public int getBoardcmt_no() {
		return boardcmt_no;
	}

	public void setBoardcmt_no(int boardcmt_no) {
		this.boardcmt_no = boardcmt_no;
	}

	public Board getBoard() {
		return board;
	}

	public void setBoard(Board board) {
		this.board = board;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public String getBoardcmt_detail() {
		return boardcmt_detail;
	}

	public void setBoardcmt_detail(String boardcmt_detail) {
		this.boardcmt_detail = boardcmt_detail;
	}

	public String getBoardcmt_dt() {
		return boardcmt_dt;
	}

	public void setBoardcmt_dt(String boardcmt_dt) {
		this.boardcmt_dt = boardcmt_dt;
	}

	
	
}
