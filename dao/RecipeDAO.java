package com.my.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

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
//	레시피 리스트 페이지 

	   /**
	    * 최근 등록된 레시피 순으로 불러오기 
	    * @return List<RecipeInfo> 레시피 정보
	    * @throws FindException 등록된 레시피를 찾지 못한 경우 예외발생
	    */
	   List<RecipeInfo> selectAllRecipeInfo() throws FindException;

	/**
	    * 검색하여 레시피 리스트 찾아오기
	    * @return List <Integer> 검색어에 해당하는 레시피 정보 찾기 
	    * @throws FindException 검색어에 맞는 레시피 정보를 찾는 경우
	    */
	   List<Integer> selectByIngre_name(String word) throws FindException;

	/**
	    * 리스트에서 내가 스크랩한 레시피 확인
	    * @param member_id
	    * @return
	    * @throws FindException
	    */
	   List<Integer> selectMyScrap(String member_id)throws FindException;
	
	//------------------------------------


	
//	레시피 등록 페이지

	/**
	 * 레시피 정보 등록후 생성된 시퀀스번호 (recipe_no) 반환
	 * 
	 * @param info
	 * @throws AddException
	 */
	void insertRecipe(RecipeInfo recipeinfo) throws AddException;
//레시피 삭제 페이지
	
	int deleteRecipe(int recipe_no) throws RemoveException;
	 

//	레시피 수정페이지
	/**
	 * 레시피 수정 오류 발생시 rollback
	 * 
	 * @param info
	 * @param recipe_no 
	 * @throws RemoveException
	 * @throws ModifyException
	 */
	void updateRecipe(RecipeInfo info, int recipe_no) throws AddException, RemoveException;

//	레시피 디테일
	/**
	 * 레시피 디테일 보여주기
	 * 
	 * @param recipe_no 레시피 번호
	 * @return RecipeInfo 레시피 정보를 모두 포함(info, ingre, process, cmt)
	 * @throws FindException 레시피 번호에 해당하는 정보를 찾지 못했을 경우 예외 발생
	 */
	List<RecipeInfo> selectRecipeDetailRecipe_no(int recipe_no) throws FindException;

	/**
	 * 레시피에 댓들 입력
	 * 
	 * @param rc
	 * @throws AddException 레시피댓글 저장 실패시 예외 발생
	 */
	void insertRecipe_comment(RecipeComment rc) throws AddException;

	/**
	 * 스크랩하기
	 * 
	 * @param member Member 타입
	 * @param info   RecipeInfo 타입
	 * @throws AddException
	 */
	void insertScrap(Scrap s) throws AddException;

//	반려메시지 가져오기 (관리자 페이지 생성시)

	int selectRecipe_noByRecipe_name(RecipeInfo recipeinfo) throws FindException;
}
