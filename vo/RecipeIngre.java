package com.my.vo;

public class RecipeIngre {
	private int recipe_no; 
	private int recipe_ingre_no; 
	private String recipe_ingre_name;
	private String recipe_ingre_metering; 
	private String recipe_ingre_type;
	
	public RecipeIngre() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public RecipeIngre(int recipe_no, int recipe_ingre_no, String recipe_ingre_name, String recipe_ingre_metering,
			String recipe_ingre_type) {
		super();
		this.recipe_no = recipe_no;
		this.recipe_ingre_no = recipe_ingre_no;
		this.recipe_ingre_name = recipe_ingre_name;
		this.recipe_ingre_metering = recipe_ingre_metering;
		this.recipe_ingre_type = recipe_ingre_type;
	}

	public int getRecipe_no() {
		return recipe_no;
	}
	public void setRecipe_no(int recipe_no) {
		this.recipe_no = recipe_no;
	}
	public int getRecipe_ingre_no() {
		return recipe_ingre_no;
	}
	public void setRecipe_ingre_no(int recipe_ingre_no) {
		this.recipe_ingre_no = recipe_ingre_no;
	}
	public String getRecipe_ingre_name() {
		return recipe_ingre_name;
	}
	public void setRecipe_ingre_name(String recipe_ingre_name) {
		this.recipe_ingre_name = recipe_ingre_name;
	}
	public String getRecipe_ingre_metering() {
		return recipe_ingre_metering;
	}
	public void setRecipe_ingre_metering(String recipe_ingre_metering) {
		this.recipe_ingre_metering = recipe_ingre_metering;
	}
	public String getRecipe_ingre_type() {
		return recipe_ingre_type;
	}
	public void setRecipe_ingre_type(String recipe_ingre_type) {
		this.recipe_ingre_type = recipe_ingre_type;
	} 
	
	
}
