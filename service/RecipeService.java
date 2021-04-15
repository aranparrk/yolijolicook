package com.my.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.my.dao.RecipeDAO;
import com.my.exception.FindException;
import com.my.vo.RecipeInfo;

@Service("service")
public class RecipeService {

	@Autowired
	@Qualifier("oracle")
	private RecipeDAO recipeDAO;


	/**게시물 전체 레시피를 보여준다
	 * 전체레시피
	 * @return FindException 게시글이 없을떄 예외가 발생한다
	 */
	public List<RecipeInfo> findAll()throws FindException{
		 return recipeDAO.selectAllRecipeInfo();
	}

	
	public List<RecipeInfo> findByRecipeCategory(List<String> categories)throws FindException{
		 return recipeDAO.selectByCategory(categories);
	}
	
	public List<RecipeInfo> findByRecipeIngre(String word)throws FindException {
		 System.out.println("서비스초밥");
		 return recipeDAO.selectByIngre_name(word);

	}
	   
}
