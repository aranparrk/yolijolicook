package com.my.control;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
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
	@Autowired
	private ServletContext sc;
	
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
	
	//**************************레시피 등록
		@PostMapping("/addrecipe")
		@ResponseBody
		public Map<String,Object> addRecipe(HttpSession session
											//,HttpServletRequest request
											,MultipartFile recipe_main_img
											//,@RequestParam("recipe_step_img[]") 
											,@RequestParam(value="recipe_step_img") MultipartFile[] recipe_step_img
											, @RequestParam(value ="recipe_info") String info
											){ 
			
			Map<String, Object> map = new HashMap<>();
			//파일 업로드
			
			//업로드 위치 지정
			String uploadFolder = sc.getRealPath("/resources/images/upload");
			
			//System.out.println("업로드 저장 위치 : " + uploadFolder);

			  
			  UUID uuid = UUID.randomUUID();
			  
			  String mainImgName = recipe_main_img.getOriginalFilename(); 
			//메인이미지 이름
			  String newMainImgName = uuid.toString()+"_main_"+mainImgName;
			  //System.out.println("파일 저장용 메인 이미지 이름 : "+ newMainImgName);
			
			  //메인이미지 저장
			  File mainImageFile = new File(uploadFolder,newMainImgName);
			  try {
				recipe_main_img.transferTo(mainImageFile);
			} catch (IllegalStateException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			  
			  
	
			ObjectMapper mapper = new ObjectMapper();//string으로 얻어온 info를 객체로 변경
			try {
				RecipeInfo recipe_info = mapper.readValue(info, RecipeInfo.class);
				
				List<RecipeIngre> ingres = recipe_info.getRecipeingre();//ingres 객체에 저장.
				for(RecipeIngre ingre : ingres) {
					//System.out.println(ingre.getRecipe_ingre_name());
				}
				List<RecipeProcess> processes = recipe_info.getRecipeprocess();//processes 객체에 저장.
				
				
				//step 이미지 이름 변경저장
					  int i = 1;
					  for(MultipartFile stepImg : recipe_step_img) {
						  
						  String newStepImgName = uuid.toString()+"_"+i+"_"+stepImg.getOriginalFilename();//과정이미지 이름
						  //System.out.println("과정이미지 이름 (업로드 파일): "+ newStepImgName);
						  for(RecipeProcess steps : processes) {
							  if(steps.getRecipe_step_no()==i) {
								  steps.setRecipe_step_img(newStepImgName);
								  //System.out.println("과정이미지 이름 (DB): "+steps.getRecipe_step_img());
							  }
						  }
						  		//과정 이미지 업로드
								  File stepImageFile = new File(uploadFolder,newStepImgName);
								  try {
									stepImg.transferTo(stepImageFile);
								} catch (IllegalStateException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								} catch (IOException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							
								  i++;
					  }
						
					 
				//info의 mainImage 이름 변경 저장. 
				recipe_info.setRecipe_img(newMainImgName);//
				

		//upload, upload파일 이름 변경 끝
								
				//DB 저장
				
				String member_id = (String)session.getAttribute("loginInfo");//로그인 아이디 찾아오기


				//member_id 임의지정 **************************삭제 필요*******************
				member_id = "id1";
				
				if(member_id==null) {
					map.put("status", 0);
					return map;
				}else {
					
					try {
						Member m = new Member();
						m.setMember_id(member_id);
						recipe_info.setMember(m);//로그인 아이디 set
						
						service.addRecipe(recipe_info,ingres,processes);
						map.put("status", 1);
						System.out.println("등록성공!");
						return map;
					} catch (AddException e) {
						System.out.println("controllerError : "+e.getMessage());
						e.printStackTrace();
						map.put("status", -1);
					}				
				}
			} catch (JsonMappingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return map;
			
			
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
				if(c.equals("한식")) {
					categories.set(i, "한식");
				}else if(c.equals("양식")) {
					categories.set(i, "양식");
				}else if(c.equals("중식")) {
					categories.set(i, "중식");
				}else if(c.equals("일식")) {
					categories.set(i, "일식");
				}else if(c.equals("퓨전")) {
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
	
	//레시피 수정페이지

	
		

}
