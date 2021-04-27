package com.my.control;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
   private ServletContext sc;// 파일 저장위치
   
   @GetMapping("/recipedetail")
   @ResponseBody
   public Map<String,Object> veiwRecipeDetail(@RequestParam(value = "recipe_no")int recipe_no) throws FindException{

      
      Map<String, Object> details = new HashMap<>();
      
      List<RecipeInfo> detaillist =  service.findRecipeDetailRecipe_no(recipe_no);
   
      List <RecipeIngre> ingre = new ArrayList();
      List <RecipeProcess> process = new ArrayList();
      List <RecipeComment> recipecmt = new ArrayList();


      
      details.put("status", 1);
      details.put("list", detaillist);
      
      
      return details;
   }
   
//   @SuppressWarnings("unused")
   @PostMapping("/scrap")
   @ResponseBody
   public Map <String,Object> addScrap(HttpSession session,@RequestParam(value = "recipe_no") int recipe_no) throws AddException{
      
      System.out.println(recipe_no);
      Map<String, Object> map = new HashMap<>();
      String member_id = (String)session.getAttribute("loginInfo");
      
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
          
            e1.printStackTrace();
         } catch (IOException e1) {
           
            e1.printStackTrace();
         }
           
           
   
         ObjectMapper mapper = new ObjectMapper();//string으로 얻어온 info를 객체로 변경
         try {
            RecipeInfo recipe_info = mapper.readValue(info, RecipeInfo.class);
            
            List<RecipeIngre> ingres = recipe_info.getRecipeingre();//ingres 객체에 저장.
            for(RecipeIngre ingre : ingres) {
           
            }
            List<RecipeProcess> processes = recipe_info.getRecipeprocess();//processes 객체에 저장.
            
            
            //step 이미지 이름 변경저장
                 int i = 1;
                 for(MultipartFile stepImg : recipe_step_img) {
                    
                    String newStepImgName = uuid.toString()+"_"+i+"_"+stepImg.getOriginalFilename();//과정이미지 이름
                   
                    for(RecipeProcess steps : processes) {
                       if(steps.getRecipe_step_no()==i) {
                          steps.setRecipe_step_img(newStepImgName);
                          
                       }
                    }
                          //과정 이미지 업로드
                          File stepImageFile = new File(uploadFolder,newStepImgName);
                          try {
                           stepImg.transferTo(stepImageFile);
                        } catch (IllegalStateException e) {
                           
                           e.printStackTrace();
                        } catch (IOException e) {
                         
                           e.printStackTrace();
                        }
                     
                          i++;
                 }
                  
                
            //info의 mainImage 이름 변경 저장. 
            recipe_info.setRecipe_img(newMainImgName);//
            

      //upload, upload파일 이름 변경 끝
                        
            //DB 저장
            
            String member_id = (String)session.getAttribute("loginInfo");//로그인 아이디 찾아오기
            
            if(member_id==null) {
               map.put("status", 0);
               return map;
            }else {
               
               try {
                  Member m = new Member();
                  m.setMember_id(member_id);
                  recipe_info.setMember(m);//로그인 아이디 sets               
                  service.addRecipe(recipe_info,ingres,processes);
                  map.put("status", 1);
                  
                  return map;
               } catch (AddException e) {
                  System.out.println("controllerError : "+e.getMessage());
                  e.printStackTrace();
                  map.put("status", -1);
               }            
            }
         } catch (JsonMappingException e) {
           
            e.printStackTrace();
         } catch (JsonProcessingException e) {
           
            e.printStackTrace();
         }
         return map;
         
         
      }   
      

   
//   ********************레시피 리스트 controller***********************************
      @RequestMapping("/list")
      @ResponseBody // json형태로 응답시 써줘야함
      public Map<String, Object> list() throws FindException {

         Map<String, Object> map = new HashMap<>();
         List<RecipeInfo> list = null;

         
         try {
            list = service.findAll();
            map.put("list", list);
            map.put("status", 1);
         } catch (FindException e) {
            log.info(e.getMessage());
            map.put("status", -1);
            map.put("msg", e.getMessage());
         }

         return map;
      }

      @RequestMapping("/searchlist")
      @ResponseBody // json형태로 응답시 써줘야함
      public Map<String, Object> searchlist(String word) throws FindException {

         
         Map<String, Object> map = new HashMap<>();
         System.out.println("검색어:" + word);

         List<Integer> list = null;

         
         try {
            list = service.findByRecipeIngre(word);
            map.put("list", list);
            map.put("status", 1);
         } catch (FindException e) {
            log.info(e.getMessage());
            map.put("status", -1);
            map.put("msg", e.getMessage());
         }

         return map;
      }

      
      
      
      @RequestMapping("/scrap")
      @ResponseBody // json형태로 응답시 써줘야함
      public Map<String, Object> scrap(HttpServletRequest request) throws FindException {
         
         Map<String, Object> map = new HashMap<>();
         HttpSession session = request.getSession();
         String member_id = (String)session.getAttribute("loginInfo");


         try {   
            List<Integer> list = service.selectMyScrap(member_id);
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
   @PostMapping("/modifyrecipe")
   @ResponseBody
   public Map<String,Object> modifyRecipe(HttpSession session
                              ,MultipartFile recipe_main_img
                              ,@RequestParam(value="recipe_step_img") MultipartFile[] recipe_step_img
                              , @RequestParam(value ="recipe_info") String info
                              ,@RequestParam(value="before_info")String before_info
                              ){ 
	   //업로드 위치 지정
	      String uploadFolder = sc.getRealPath("/resources/images/upload");
	   
	   
	         
     Map<String, Object> map = new HashMap<>();
      //파일 업로드
      
   
      //System.out.println("업로드 저장 위치 : " + uploadFolder);

        
        UUID uuid = UUID.randomUUID();
        if(recipe_main_img == null) {
        	map.put("status", -2);
        	return map;
        }
        
        String mainImgName = recipe_main_img.getOriginalFilename(); 
      //메인이미지 이름
        String newMainImgName = uuid.toString()+"_main_"+mainImgName;
        
      
        //메인이미지 저장
        File mainImageFile = new File(uploadFolder,newMainImgName);
        try {
         recipe_main_img.transferTo(mainImageFile);
      } catch (IllegalStateException e1) {
         
         e1.printStackTrace();
      } catch (IOException e1) {
        
         e1.printStackTrace();
      }
        
        

      ObjectMapper mapper = new ObjectMapper();//string으로 얻어온 info를 객체로 변경
      try {
         RecipeInfo recipe_info = mapper.readValue(info, RecipeInfo.class);
         
         List<RecipeIngre> ingres = recipe_info.getRecipeingre();//ingres 객체에 저장.
         
         List<RecipeProcess> processes = recipe_info.getRecipeprocess();//processes 객체에 저장.
         
         
         //step 이미지 이름 변경저장
              int i = 1;
              for(MultipartFile stepImg : recipe_step_img) {
                 
                 String newStepImgName = uuid.toString()+"_"+i+"_"+stepImg.getOriginalFilename();//과정이미지 이름
                 
                 for(RecipeProcess steps : processes) {
                    if(steps.getRecipe_step_no()==i) {
                       steps.setRecipe_step_img(newStepImgName);
                       
                    }
                 }
                       //과정 이미지 업로드
                       File stepImageFile = new File(uploadFolder,newStepImgName);
                       try {
                        stepImg.transferTo(stepImageFile);
                     } catch (IllegalStateException e) {
                     
                        e.printStackTrace();
                     } catch (IOException e) {

                        e.printStackTrace();
                     }
                  
                       i++;
              }
               
             
         //info의 mainImage 이름 변경 저장. 
         recipe_info.setRecipe_img(newMainImgName);//
         

         
   //upload, upload파일 이름 변경 끝
                     
         //DB 저장
         
         String member_id = (String)session.getAttribute("loginInfo");//로그인 아이디 찾아오기
         
         if(member_id==null) {
            map.put("status", 0);
            return map;
         }else {
            
            try {
               Member m = new Member();
               m.setMember_id(member_id);
               recipe_info.setMember(m);//로그인 아이디 sets
               int recipe_no = recipe_info.getRecipe_no();
               
               service.updateReicipe(recipe_info,ingres,processes,recipe_no);
               map.put("status", 1);
               
//기존 저장되어있는 업로드 파일(사진)삭제(START)
       	    ObjectMapper bf_mapper = new ObjectMapper();//string으로 얻어온 info를 객체로 변경
       	
       	         RecipeInfo bf_recipe_info;
       			try {
       				bf_recipe_info = bf_mapper.readValue(before_info, RecipeInfo.class);
       				List<RecipeProcess> bf_processes = bf_recipe_info.getRecipeprocess();//processes 객체에 저장.
       			     
       		
       				String bf_main_img = bf_recipe_info.getRecipe_img();
       				
       				File bf_main_img_file = new File(uploadFolder+"/"+bf_main_img);
       				if(bf_main_img_file.exists()) {
       					if(bf_main_img_file.delete()) {
       						System.out.println("메인사진삭제완료");
       					}else {
       						System.out.println("메인사진 삭제 실패");
       					}
       				}else {
       					System.out.println("이전 파일이 존재하지 않습니다.");
       				}				
       		        System.out.println(bf_processes);
       		        
       		        for(RecipeProcess bf_step : bf_processes) {
       		        	String bf_step_img = bf_step.getRecipe_step_img();
       		        	File bf_step_img_file = new File(uploadFolder+"/"+bf_step_img);
       		        	if(bf_step_img_file.exists()) {
       		        		if(bf_step_img_file.delete()) {
       		        			System.out.println("step이미지 삭제 완료");
       		        		}else {
       		        			System.out.println("step이미지 삭제 실패");
       		        		}		
       		        	}else {
       		        		System.out.println("이전 파일이 존재하지 않습니다.");
       		        	}
       		        }
       			} catch (JsonMappingException e2) {
       				
       				e2.printStackTrace();
       			} catch (JsonProcessingException e2) {
       				
       				e2.printStackTrace();
       			}
 //기존 저장 이미지 삭제 (END)
       			
               return map;
            } catch (AddException e) {
               System.out.println("controllerError : "+e.getMessage());
               e.printStackTrace();
               map.put("status", -1);
            } catch (Exception e) {
              
               e.printStackTrace();
            }            
         }
      } catch (JsonMappingException e) {
         
         e.printStackTrace();
      } catch (JsonProcessingException e) {
         
         e.printStackTrace();
      }
      return map;
      
      

   }
      

}