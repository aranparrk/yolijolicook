package com.my.vo;

import java.util.Date;
import java.util.List;

public class Board {
	int board_no; 
	String board_title; 
	
	Member m; //member_id
	List<Board_Comment> bc;
	
	String board_detail;
	Date board_dt; 
	int board_cnt; 
	int board_report_cnt;
	
}
