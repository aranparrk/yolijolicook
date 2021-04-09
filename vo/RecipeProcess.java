package com.my.vo;

public class RecipeProcess {
	private int recipe_no; 
	private int recipe_step_no; 
	private String recipe_step_text;
	private String recipe_step_img;
	
	public RecipeProcess() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public RecipeProcess(int recipe_no, int recipe_step_no, String recipe_step_text, String recipe_step_img) {
		super();
		this.recipe_no = recipe_no;
		this.recipe_step_no = recipe_step_no;
		this.recipe_step_text = recipe_step_text;
		this.recipe_step_img = recipe_step_img;
	}

	public int getRecipe_no() {
		return recipe_no;
	}
	public void setRecipe_no(int recipe_no) {
		this.recipe_no = recipe_no;
	}
	public int getRecipe_step_no() {
		return recipe_step_no;
	}
	public void setRecipe_step_no(int recipe_step_no) {
		this.recipe_step_no = recipe_step_no;
	}
	public String getRecipe_step_text() {
		return recipe_step_text;
	}
	public void setRecipe_step_text(String recipe_step_text) {
		this.recipe_step_text = recipe_step_text;
	}
	public String getRecipe_step_img() {
		return recipe_step_img;
	}
	public void setRecipe_step_img(String recipe_step_img) {
		this.recipe_step_img = recipe_step_img;
	} 
	
	
}
