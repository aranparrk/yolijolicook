package com.my.control;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.exception.AddException;
import com.my.exception.FindException;
import com.my.service.RecipeService;
import com.my.vo.Member;
import com.my.vo.RecipeComment;
import com.my.vo.RecipeInfo;
import com.my.vo.RecipeIngre;
import com.my.vo.RecipeProcess;
import com.my.vo.Scrap;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/recipe/*")
public class RecipeController {
	@Autowired
	private RecipeService service;
	
	@GetMapping("/recipedetail")
	@ResponseBody
	public Map<String,Object> veiwRecipeDetail(@RequestParam(value = "recipe_no")int recipe_no) throws FindException{

		
		Map<String, Object> details = new HashMap<>();
		
		List<RecipeInfo> detaillist =  service.findRecipeDetailRecipe_no(recipe_no);
		
		System.out.println(detaillist);
		List <RecipeIngre> ingre = new ArrayList();
		List <RecipeProcess> process = new ArrayList();
		List <RecipeComment> recipecmt = new ArrayList();

		//return 값 꺼내기
		
		details.put("status", 1);
		details.put("list", detaillist);
		

//		String test = info.get(0).toString();
//		System.out.println(test);
//		List<Map<String,Object>> detaillist = info;
		
		return details;
	}
	
//	@SuppressWarnings("unused")
	@PostMapping("/scrap")
	@ResponseBody
	public Map <String,Object> addScrap(HttpSession session,@RequestParam(value = "recipe_no") int recipe_no) throws AddException{
		
		System.out.println(recipe_no);
		Map<String, Object> map = new HashMap<>();
		String member_id = (String)session.getAttribute("loginInfo");
		member_id = "id1";//*************************************************************

		
		if(member_id == null) {
			map.put("status", 0);
			return map;
		}else {
				Member member = new Member();
				member.setMember_id(member_id);
				
				RecipeInfo recipeinfo = new RecipeInfo();
				recipeinfo.setRecipe_no(recipe_no);
				
				Scrap s = new Scrap();

				s.setMember(member);
				s.setRecipeinfo(recipeinfo);

				service.addScrap(s);
				
				map.put("status",1);
				return map;
		
			}

	}

	
	@PostMapping("/addrecipecmt")
	@ResponseBody
	public Map<String,Object> addRecipeCmt(HttpSession session, @RequestParam(value = "recipe_no") int recipe_no,String recipecmt_detail)throws AddException{
		Map<String, Object> map = new HashMap<>();
		String member_id = (String)session.getAttribute("loginInfo");
		
		System.out.println("addrecipecmt"+recipe_no);
		
		if(member_id == null) {
			map.put("status", 0);
			return map;
		}else {
			Member member = new Member();
			member.setMember_id(member_id);
			
			RecipeInfo recipeinfo = new RecipeInfo();
			recipeinfo.setRecipe_no(recipe_no);
			
			RecipeComment rc = new RecipeComment();
			
			rc.setMember(member);
			rc.setRecipeInfo(recipeinfo);
			rc.setRecipecmt_detail(recipecmt_detail);
			
			service.addRecipeCmt(rc);
			
			map.put("status",1);
			return map;
	
		}
		
	}
	
	
	@PostMapping("/addrecipe")
	public Map<String,Object> addRecipe(HttpSession session,RecipeInfo info, List<RecipeIngre> ingre, List<RecipeProcess> process){
		Map<String, Object> map = new HashMap<>();
		String member_id = (String)session.getAttribute("loginInfo");
		if(member_id==null) {
			map.put("status", 0);
			return map;
		}else {
			try {
				service.addRecipe(info,ingre,process);
				map.put("status", 1);
				
			} catch (AddException e) {
				System.out.println("controllerError : "+e.getMessage());
				e.printStackTrace();
				map.put("status", -1);
			}
			return map;
		}
		
	}
	
	
//	********************레시피 리스트 controller***********************************
	@PostMapping("/list")
	@ResponseBody // json형태로 응답시 써줘야함
	public Map<String, Object> list(String word) throws FindException {

		log.info("검색어:" + word);

		List<RecipeInfo> list = null;

		Map<String, Object> map = new HashMap<>();
		try {
			if (word == null) {
				list = service.findAll();
			}else{
				list = service.findByRecipeIngre(word);
			}
			map.put("list", list);
			map.put("status", 1);
		} catch (FindException e) {
			log.info(e.getMessage());
			map.put("status", -1);
			map.put("msg", e.getMessage());
		}

		return map;
	}

	@PostMapping("/categorylist")
	@ResponseBody // json형태로 응답시 써줘야함

	public Map<String, Object> categorylist(@RequestBody List<String> categories) throws FindException {
		List<RecipeInfo> list = null;

		Map<String, Object> map = new HashMap<>();
		try {
			for(int i=0; i<categories.size(); i++) {
				String c = categories.get(i);
				if(c.equals("1")) {
					categories.set(i, "한식");
				}else if(c.equals("2")) {
					categories.set(i, "양식");
				}else if(c.equals("3")) {
					categories.set(i, "중식");
				}else if(c.equals("4")) {
					categories.set(i, "일식");
				}else if(c.equals("5")) {
					categories.set(i, "퓨전");
				}
			}
			System.out.println(categories);
			list = service.findByRecipeCategory(categories);
			
			map.put("list", list);
			map.put("status", 1);
		} catch (FindException e) {
			log.info(e.getMessage());
			map.put("status", -1);
			map.put("msg", e.getMessage());
		}
		return map;
	}
	
	
		

}
