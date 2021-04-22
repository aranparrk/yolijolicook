package com.my.dao;

import java.util.List;

import com.my.exception.AddException;
import com.my.exception.FindException;
import com.my.exception.ModifyException;
import com.my.exception.RemoveException;
import com.my.vo.RecipeComment;
import com.my.vo.RecipeInfo;
import com.my.vo.RecipeIngre;
import com.my.vo.RecipeProcess;
import com.my.vo.Scrap;

public interface RecipeDAO {
//   레시피 리스트 페이지 
   
   /**
    * 레시피 개수를 찾아옴
    * @return  int 레시피 수
    * @throws FindException 등록된 레시피를 찾지 못한경우 예외발생
    */
   int selectRecipeInfoCount()throws FindException;
   
   
   /**
    * 최근 등록된 레시피 순으로 불러오기 
    * @return List<RecipeInfo> 레시피 정보
    * @throws FindException 등록된 레시피를 찾지 못한 경우 예외발생
    */

   List<RecipeInfo> selectAllRecipeInfo() throws FindException;
   
   List<RecipeInfo> selectAllRecipeInfo(int currentPage, int cnt_per_page, String member_id)throws FindException;

   int selectCount()throws FindException;

    
   /**
    * 카테고리로 레시피 리스트 찾아오기
    * @return List<Recipeinfo> 카테고리에 해당하는 레시피 정보
    * @throws FindException 카테고리에 해당하는 레시피를 찾을 수 없는 경우 예외 발생
    */
   List<RecipeInfo> selectByCategory(List<String> categories) throws FindException;
   
   /**
    * 검색하여 레시피 리스트 찾아오기
    * @return List <Recipeinfo> 검색어에 해당하는 레시피 정보 찾기 
    * @throws FindException 검색어에 맞는 레시피 정보를 찾는 경우
    */
   List<RecipeInfo> selectByIngre_name(String word) throws FindException;
   
   /**
    * 사용자가 스크랩한 레시피 번호를 찾아옴
    * @param member_id
    * @return recipe_no 로그인한 사용자가 스크랩  한 레시피 번호들
    * @throws FindException
    */
   List<Scrap> selectAllScrap(String member_id) throws FindException;
   

//   레시피 등록 페이지
   
   /**
    * 레시피 info에 해당하는 정보를 저장
    * @param info  (타입 : RecipeInfo)
    * @throws AddException 저장에 실패시 예외 발생
    */
   void insertRecipeInfo(RecipeInfo info) throws AddException;
   
   /**
    * 레시피 ingre에 해당하는 정보를 저장 (레시피 등록, 수정 페이지에서 사용)
    * @param ingre (타입 : RecipeIngre)
    * @throws AddException 재료정보 저장 실패시 예외 발생
    */
   void insertRecipeIngre(RecipeIngre ingre) throws AddException;
   
   /**
    * 레시피 process에 해당하는 정보를 저장 (레시피 등록, 수정페이지에서 사용)
    * @param process (타입 : RecipeProcess)
    * @throws AddException
    */
   void insertRecipeProcess(RecipeProcess process) throws AddException;
   
   /**
    * 레시피 번호와 레시피 재료번호를 가져와 해당 레시피 재료정보 삭제(레시피 등록, 수정 페이지에서 사용)
    * @param recipe_no 레시피 번호
    * @param recipe_ingre_no 레시피 재료 번호
    * @throws RemoveException 삭제 실패시 예외 발생
    */
   void deleteRecipeIngre(int recipe_no, int recipe_ingre_no) throws RemoveException;
   
   /**
    * 레시피 번호와 레시피 과정번호를 가져와 레시피 과정정보 삭제 (레시피 등록, 수정페이지에서 사용)
    * @param recipe_no
    * @param recipe_step_no
    * @throws RemoveException
    */
   void deleteRecipeProcess(int recipe_no, int recipe_step_no) throws RemoveException;
//   레시피 수정페이지
   
   /**
    * 레시피 info 수정
    * @param info (타입 : RecipeInfo)
    * @throws ModifyException 레시피 정보 수정 오류시 예외 발생
    */
   void updateRecipeInfo(RecipeInfo info) throws ModifyException;
   
   /**
    * 레시피 ingre 수정
    * @param ingre (타입 : RecipeIngre)
    * @throws ModifyException 레시피 재료 정보 수정 오류시 예외 발생
    */
   void updateRecipeIngre (RecipeIngre ingre) throws ModifyException;
   
   /**
    * 레시피 process수정
    * @param process (타입 : RecipeProcess)
    * @throws ModifyException 레시피 과정 정보 수정 오류시 예외 발생
    */
   void updateRecipeProcess (RecipeProcess process) throws ModifyException;
   
   
//   레시피 디테일
   /**
    * 레시피 디테일 보여주기 
    * @param recipe_no 레시피 번호
    * @return RecipeInfo 레시피 정보를 모두 포함(info, ingre, process, cmt) 
    * @throws FindException 레시피 번호에 해당하는 정보를 찾지 못했을 경우 예외 발생
    */
   List<RecipeInfo> selectRecipeDetailRecipe_no(int recipe_no) throws FindException;
   
   /**
    * 사용자가 작성한 레시피 댓글 번호 찾기
    * @param member_id
    * @return 접속한 사용자가 작성한 레시피댓글번호들
    * @throws FindException 접속한 사용자의 id로 찾는 댓글을 찾지 못할 경우 예외 발생 (해당 사용자의 댓글이 없을 수도 있음....)
    */
   List<Integer> selectRecipeCmtListByMember_id(String member_id) throws FindException;
   
   /**
    * 사용자가 작성한 레시피댓글번호로 그 댓글 삭제
    * @param recipecmt_no 사용자가 삭제를 원한 레시피댓글 번호
    * @throws RemoveException 삭제오류시 예외 발생
    */
   void deleteRecipeCmtByRecipeCmt_no (int recipecmt_no) throws RemoveException;
   
   /**
    * 레시피에 댓들 입력
    * @param rc 
    * @throws AddException 레시피댓글 저장 실패시 예외 발생
    */
   void insertRecipe_comment(RecipeComment rc) throws AddException;

	

//	레시피 등록 페이지
	
	/**
	 * 레시피 정보 등록후 생성된 시퀀스번호 (recipe_no) 반환
	 * @param info
	 * @return recipe_no반환 
	 * @throws AddException
	 */
	int insertRecipeInfo(RecipeInfo info) throws AddException;
	
	/**
	 * 레시피 ingre에 해당하는 정보를 저장 (레시피 등록, 수정 페이지에서 사용)
	 * @param ingre (타입 : RecipeIngre)
	 * @throws AddException 재료정보 저장 실패시 예외 발생
	 */
	void insertRecipeIngre(List<RecipeIngre> ingre,int recipe_no) throws AddException;
	
	/**
	 * 레시피 process에 해당하는 정보를 저장 (레시피 등록, 수정페이지에서 사용)
	 * @param process (타입 : RecipeProcess)
	 * @throws AddException
	 */
	void insertRecipeProcess(List<RecipeProcess> process,int recipe_no) throws AddException;
	
	/**
	 * 레시피 번호와 레시피 재료번호를 가져와 해당 레시피 재료정보 삭제(레시피 등록, 수정 페이지에서 사용)
	 * @param recipe_no 레시피 번호
	 * @param recipe_ingre_no 레시피 재료 번호
	 * @throws RemoveException 삭제 실패시 예외 발생
	 */
	void deleteRecipeIngre(int recipe_no, int recipe_ingre_no) throws RemoveException;
	
	/**
	 * 레시피 번호와 레시피 과정번호를 가져와 레시피 과정정보 삭제 (레시피 등록, 수정페이지에서 사용)
	 * @param recipe_no
	 * @param recipe_step_no
	 * @throws RemoveException
	 */
	void deleteRecipeProcess(int recipe_no, int recipe_step_no) throws RemoveException;
//	레시피 수정페이지
	
	/**
	 * 레시피 info 수정
	 * @param info (타입 : RecipeInfo)
	 * @throws ModifyException 레시피 정보 수정 오류시 예외 발생
	 */
	void updateRecipeInfo(RecipeInfo info) throws ModifyException;
	
	/**
	 * 레시피 ingre 수정
	 * @param ingre (타입 : RecipeIngre)
	 * @throws ModifyException 레시피 재료 정보 수정 오류시 예외 발생
	 */
	void updateRecipeIngre (RecipeIngre ingre) throws ModifyException;
	
	/**
	 * 레시피 process수정
	 * @param process (타입 : RecipeProcess)
	 * @throws ModifyException 레시피 과정 정보 수정 오류시 예외 발생
	 */
	void updateRecipeProcess (RecipeProcess process) throws ModifyException;
	
	
//	레시피 디테일
	/**
	 * 레시피 디테일 보여주기 
	 * @param recipe_no 레시피 번호
	 * @return RecipeInfo 레시피 정보를 모두 포함(info, ingre, process, cmt) 
	 * @throws FindException 레시피 번호에 해당하는 정보를 찾지 못했을 경우 예외 발생
	 */
	List<RecipeInfo> selectRecipeDetailRecipe_no(int recipe_no) throws FindException;
	
	/**
	 * 사용자가 작성한 레시피 댓글 번호 찾기
	 * @param member_id
	 * @return 접속한 사용자가 작성한 레시피댓글번호들
	 * @throws FindException 접속한 사용자의 id로 찾는 댓글을 찾지 못할 경우 예외 발생 (해당 사용자의 댓글이 없을 수도 있음....)
	 */
	List<Integer> selectRecipeCmtListByMember_id(String member_id) throws FindException;
	
	/**
	 * 사용자가 작성한 레시피댓글번호로 그 댓글 삭제
	 * @param recipecmt_no 사용자가 삭제를 원한 레시피댓글 번호
	 * @throws RemoveException 삭제오류시 예외 발생
	 */
	void deleteRecipeCmtByRecipeCmt_no (int recipecmt_no) throws RemoveException;
	
	/**
	 * 레시피에 댓들 입력
	 * @param rc 
	 * @throws AddException 레시피댓글 저장 실패시 예외 발생
	 */
	void insertRecipe_comment(RecipeComment rc) throws AddException;
	
	/**
	 * 스크랩하기
	 * @param member Member 타입
	 * @param info   RecipeInfo 타입
	 * @throws AddException
	 */
	void insertScrap (Scrap s) throws AddException;
	
	
//	반려메시지 가져오기 (관리자 페이지 생성시)
	
	
	int selectRecipe_noByRecipe_name(RecipeInfo recipeinfo) throws FindException;
}
