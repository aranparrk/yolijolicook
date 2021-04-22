package com.my.vo;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class RecipeInfo {
	private int recipe_no; 
	
	private List<RecipeProcess> recipeprocess;
	private List<RecipeIngre> recipeingre;
	private List<RecipeComment> recipecomment;
	private Member member; //member_id
	 
	private String recipe_name; 
	private String recipe_intro;
	private String recipe_category;
	private int recipe_time;  
	private int recipe_level; 
	private String recipe_img;
	private int recipe_scrap_cnt;
	private int recipe_cnt; 
	@JsonFormat(pattern = "yy/MM/dd",timezone = "Asia/Seoul")
	private String recipe_dt; 
	private int recipe_status;
	private List<Scrap> scraps = new ArrayList<>();
	
	public RecipeInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public RecipeInfo(int recipe_no, List<RecipeProcess> recipeprocess, List<RecipeIngre> recipeingre,
			List<RecipeComment> recipecomment, Member member, String recipe_name, String recipe_intro,
			String recipe_category, int recipe_time, int recipe_level, String recipe_img, int recipe_scrap_cnt,
			int recipe_cnt, String recipe_dt, int recipe_status) {
		super();
		this.recipe_no = recipe_no;
		this.recipeprocess = recipeprocess;
		this.recipeingre = recipeingre;
		this.recipecomment = recipecomment;
		this.member = member;
		this.recipe_name = recipe_name;
		this.recipe_intro = recipe_intro;
		this.recipe_category = recipe_category;
		this.recipe_time = recipe_time;
		this.recipe_level = recipe_level;
		this.recipe_img = recipe_img;
		this.recipe_scrap_cnt = recipe_scrap_cnt;
		this.recipe_cnt = recipe_cnt;
		this.recipe_dt = recipe_dt;
		this.recipe_status = recipe_status;
	}

	@Override
	public String toString() {
		return "RecipeInfo [recipe_no=" + recipe_no + ", recipeprocess=" + recipeprocess + ", recipeingre="
				+ recipeingre + ", recipecomment=" + recipecomment + ", member=" + member + ", recipe_name="
				+ recipe_name + ", recipe_intro=" + recipe_intro + ", recipe_category=" + recipe_category
				+ ", recipe_time=" + recipe_time + ", recipe_level=" + recipe_level + ", recipe_img=" + recipe_img
				+ ", recipe_scrap_cnt=" + recipe_scrap_cnt + ", recipe_cnt=" + recipe_cnt + ", recipe_dt=" + recipe_dt
				+ ", recipe_status=" + recipe_status + "]";
	}

	public int getRecipe_no() {
		return recipe_no;
	}
	public void setRecipe_no(int recipe_no) {
		this.recipe_no = recipe_no;
	}
	public List<RecipeProcess> getRecipeprocess() {
		return recipeprocess;
	}
	public void setRecipeprocess(List<RecipeProcess> recipeprocess) {
		this.recipeprocess = recipeprocess;
	}
	public List<RecipeIngre> getRecipeingre() {
		return recipeingre;
	}
	public void setRecipeingre(List<RecipeIngre> recipeingre) {
		this.recipeingre = recipeingre;
	}
	public List<RecipeComment> getRecipecomment() {
		return recipecomment;
	}
	public void setRecipecomment(List<RecipeComment> recipecomment) {
		this.recipecomment = recipecomment;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public String getRecipe_name() {
		return recipe_name;
	}
	public void setRecipe_name(String recipe_name) {
		this.recipe_name = recipe_name;
	}
	public String getRecipe_intro() {
		return recipe_intro;
	}
	public void setRecipe_intro(String recipe_intro) {
		this.recipe_intro = recipe_intro;
	}
	public String getRecipe_category() {
		return recipe_category;
	}
	public void setRecipe_category(String recipe_category) {
		this.recipe_category = recipe_category;
	}
	public int getRecipe_time() {
		return recipe_time;
	}
	public void setRecipe_time(int recipe_time) {
		this.recipe_time = recipe_time;
	}
	public int getRecipe_level() {
		return recipe_level;
	}
	public void setRecipe_level(int recipe_level) {
		this.recipe_level = recipe_level;
	}
	public String getRecipe_img() {
		return recipe_img;
	}
	public void setRecipe_img(String recipe_img) {
		this.recipe_img = recipe_img;
	}
	public int getRecipe_scrap_cnt() {
		return recipe_scrap_cnt;
	}
	public void setRecipe_scrap_cnt(int recipe_scrap_cnt) {
		this.recipe_scrap_cnt = recipe_scrap_cnt;
	}
	public int getRecipe_cnt() {
		return recipe_cnt;
	}
	public void setRecipe_cnt(int recipe_cnt) {
		this.recipe_cnt = recipe_cnt;
	}
	public String getRecipe_dt() {
		return recipe_dt;
	}
	public void setRecipe_dt(String recipe_dt) {
		this.recipe_dt = recipe_dt;
	}
	public int getRecipe_status() {
		return recipe_status;
	}
	public void setRecipe_status(int recipe_status) {
		this.recipe_status = recipe_status;
	}

	public List<Scrap> getScraps() {
		return scraps;
	}

	public void setScraps(List<Scrap> scraps) {
		this.scraps = scraps;
	}
	  
}
