package com.my.vo;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Scrap {
	
	 private int scrap_no;
	 
	 private Member member; //member_id; 
	 private RecipeInfo recipeinfo; //recipe_no 
	 
	 @JsonFormat(pattern = "yy/MM/dd",timezone = "Asia/Seoul")
	 private String scrap_dt;

	public Scrap() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Scrap(int scrap_no, Member member, RecipeInfo recipeinfo, String scrap_dt) {
		super();
		this.scrap_no = scrap_no;
		this.member = member;
		this.recipeinfo = recipeinfo;
		this.scrap_dt = scrap_dt;
	}

	public int getScrap_no() {
		return scrap_no;
	}

	public void setScrap_no(int scrap_no) {
		this.scrap_no = scrap_no;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public RecipeInfo getRecipeinfo() {
		return recipeinfo;
	}

	public void setRecipeinfo(RecipeInfo recipeinfo) {
		this.recipeinfo = recipeinfo;
	}

	public String getScrap_dt() {
		return scrap_dt;
	}

	public void setScrap_dt(String scrap_dt) {
		this.scrap_dt = scrap_dt;
	} 
	 
	 
	 
}
