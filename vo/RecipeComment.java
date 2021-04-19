package com.my.vo;

import com.fasterxml.jackson.annotation.JsonFormat;

public class RecipeComment {
	private int recipecmt_no;
	private Member member; // member_id;
	private RecipeInfo recipeinfo;
	private String recipecmt_detail;
	@JsonFormat(pattern = "yy/MM/dd",timezone = "Asia/Seoul")
	private String recipecmt_dt;
	
	public RecipeComment() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public RecipeComment(int recipecmt_no, Member member, RecipeInfo recipeinfo, String recipecmt_detail, String recipecmt_dt) {
		super();
		this.recipecmt_no = recipecmt_no;
		this.member = member;
		this.recipeinfo = recipeinfo;
		this.recipecmt_detail = recipecmt_detail;
		this.recipecmt_dt = recipecmt_dt;
	}

	public int getRecipecmt_no() {
		return recipecmt_no;
	}
	public void setRecipecmt_no(int recipecmt_no) {
		this.recipecmt_no = recipecmt_no;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public RecipeInfo getRecipe_no() {
		return recipeinfo;
	}
	public void setRecipeInfo(RecipeInfo recipeinfo) {
		this.recipeinfo = recipeinfo;
	}
	public String getRecipecmt_detail() {
		return recipecmt_detail;
	}
	public void setRecipecmt_detail(String recipecmt_detail) {
		this.recipecmt_detail = recipecmt_detail;
	}
	public String getRecipecmt_dt() {
		return recipecmt_dt;
	}
	public void setRecipecmt_dt(String recipecmt_dt) {
		this.recipecmt_dt = recipecmt_dt;
	}
	
	

}
