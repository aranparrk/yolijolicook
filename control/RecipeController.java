package com.my.control;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.exception.FindException;
import com.my.service.RecipeService;
import com.my.vo.RecipeInfo;
import com.my.vo.RecipeIngre;

import lombok.extern.log4j.Log4j;

@ResponseBody
@Controller
@RequestMapping("/recipe/*")
@Log4j
public  class RecipeController {

	@Autowired
	private RecipeService service;
	

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
