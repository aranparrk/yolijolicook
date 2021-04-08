package com.my.vo;

import java.util.Date;
import java.util.List;

public class Recipe_Info {
	int recipe_no; 
	
	List<Recipe_Process> rp;
	List<Recipe_Ingre> ri;
	List<Recipe_Comment> rc;
	 Member m; //member_id
	 
	 String recipe_name; 
	 String recipe_intro;
	 String recipe_category;
	 int recipe_time;  
	 int recipe_level; 
	 String recipe_img;
	 int recipe_scrap_cnt;
	 int recipe_cnt; 
	 Date recipe_dt; 
	 int recipe_status;
	  
}
