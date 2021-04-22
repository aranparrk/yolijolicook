package com.my.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.my.dao.RecipeDAO;
import com.my.exception.AddException;
import com.my.exception.FindException;
import com.my.vo.RecipeComment;
import com.my.vo.RecipeInfo;
import com.my.vo.RecipeIngre;
import com.my.vo.RecipeProcess;
import com.my.vo.Scrap;

@Service
public class RecipeService {

	@Autowired
	private RecipeDAO dao;
	

	
	/**
	 * 레시피 디테일 정보 info를 받아옴
	 * @param recipe_no
	 * @return List<RecipeInfo>타입으로 반환 
	 * @throws FindException 레시피 번호에 해당하는 결과값이 없을경우 FindException 발생
	 */
	public List<RecipeInfo> findRecipeDetailRecipe_no(int recipe_no) throws FindException{
		return dao.selectRecipeDetailRecipe_no(recipe_no);
		
	}
	/**
	 * 스크랩하기 . 
	 * @param s member_id와 recipe_no를 포함
	 * @throws AddException
	 */
	public void addScrap(Scrap s) throws AddException{
		dao.insertScrap(s);
	}
	/**
	 * 레시피 내부 댓글 작성
	 * @param rc recipeCmt정보
	 * @throws AddException
	 */
	public void addRecipeCmt(RecipeComment rc) throws AddException{
		dao.insertRecipe_comment(rc) ;
	}

	
	//*******************레시피 리스트 Service*********************
	/**게시물 전체 레시피를 보여준다
	 * 전체레시피
	 * @return FindException 게시글이 없을떄 예외가 발생한다
	 */
	public List<RecipeInfo> findAll()throws FindException{
		 return dao.selectAllRecipeInfo();
	}
	
	public List<RecipeInfo> findAll( int currentPage, int cnt_per_page, String member_id) throws FindException{
		return dao.selectAllRecipeInfo( currentPage, cnt_per_page, member_id);
	}
	public int findCount() throws FindException {
		return dao.selectCount();
	}

	
	public List<RecipeInfo> findByRecipeCategory(List<String> categories)throws FindException{
		 return dao.selectByCategory(categories);
	}
	
	public List<RecipeInfo> findByRecipeIngre(String word)throws FindException {
		 System.out.println("서비스초밥");
		 return dao.selectByIngre_name(word);

	}
	public List<Scrap> findScrap(String member_id) throws FindException{
		return dao.selectAllScrap(member_id);
	}
	//*******************레시피 등록******************************
	/**
	 * 레시피 등록하기
	 * @param recipeinfo 레시피 정보, 레시피 재료, 레시피 순서를 포함
	 * @throws AddException
	 * 
	 * 3개의 메서드 전부 성공시 commit 하나라도 실패시 roll-back
	 */
	
	public void addRecipe (RecipeInfo info,List<RecipeIngre> ingre,List<RecipeProcess> process) throws AddException{
		dao.insertRecipe(info);//info정보 insert
//		RecipeInfo recipeinfo = new RecipeInfo();
//		recipeinfo.setRecipe_name(info.getRecipe_name());
//		recipeinfo.setRecipe_img(info.getRecipe_img());
//		try {
//			int recipe_no = dao.selectRecipe_noByRecipe_name(recipeinfo);//info의 name과 img 정보로 recipe_no 찾아오기	
//			dao.insertRecipeIngre(ingre,recipe_no);
//			dao.insertRecipeProcess(process,recipe_no);
//		} catch (FindException e) {
//			System.out.println("레시피 정보를 등록하지 못했습니다.");
//			e.printStackTrace();
//		}
		
		
	}
	
}
