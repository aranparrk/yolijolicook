package com.my.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.my.exception.AddException;
import com.my.exception.FindException;
import com.my.exception.ModifyException;
import com.my.exception.RemoveException;
import com.my.vo.RecipeComment;
import com.my.vo.RecipeInfo;
import com.my.vo.RecipeIngre;
import com.my.vo.RecipeProcess;
import com.my.vo.Scrap;

import lombok.extern.log4j.Log4j;


@Repository
@Log4j
public class RecipeDAOOracle implements RecipeDAO {

//	@Autowired
//	private DataSource ds;
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	
	@Override
	   public List<RecipeInfo> selectAllRecipeInfo() throws FindException {//list
	      SqlSession session = sqlSessionFactory.openSession();

	      try {
	         List<RecipeInfo> list = session.selectList("mybatis.RecipeMapper.selectAllRecipeInfo");

	         return list;
	      } catch (Exception e) {
	         throw new FindException(e.getMessage());
	      } finally {
	         if (session != null)
	            session.close();
	      }
	   }



	   @Override
	public List<Integer> selectByIngre_name(String word) throws FindException {//list
	      
	      SqlSession session = null;

	      try {
	         session = sqlSessionFactory.openSession();
	         List<Integer> list = session.selectList("mybatis.RecipeMapper.selectByIngre_name",word);

	         return list;
	         
	      } catch (Exception e) {
	         throw new FindException(e.getMessage());
	      }finally {
	         if(session != null) session.close();
	      }
	            
	   }



	@Override
	   public List<Integer> selectMyScrap(String member_id)throws FindException{
	      SqlSession session = null;
	      
	      try {
	         session = sqlSessionFactory.openSession();
	         List<Integer> list = session.selectList("mybatis.RecipeMapper.selectMyScrap",member_id);
	         System.out.println(list.get(0));
	         return list;
	         
	      }catch(Exception e) {
	         throw new FindException(e.getMessage());
	      }finally {
	         if(session != null) session.close();
	      }
	   }
	
	
	
	//----------------------------
	
	
	@Transactional(rollbackFor = Exception.class)
	public void insertRecipe(RecipeInfo recipeinfo) throws AddException{
		SqlSession session = null;
		try {
			System.out.println("in RecipeDAOOracle insertRecipe - 0");
			session = sqlSessionFactory.openSession();
			insertRecipeInfo(session, recipeinfo);
			insertRecipeIngre(session, recipeinfo.getRecipeingre());
			insertRecipeProcess(session, recipeinfo.getRecipeprocess());
			
		}catch(Exception e) {
			e.printStackTrace();
			throw new AddException(e.getMessage());
		}finally {
			if(session != null) session.close();
		}	
	}

	private void insertRecipeInfo(SqlSession session, RecipeInfo recipeinfo) throws Exception {//upload
			session.insert("mybatis.RecipeMapper.insertRecipeInfo",recipeinfo);
		
	}

	/**
	 * 레시피 ingre에 해당하는 정보를 저장 (레시피 등록, 수정 페이지에서 사용)
	 * @param ingre (타입 : RecipeIngre)
	 * @throws AddException 재료정보 저장 실패시 예외 발생
	 */

	private void insertRecipeIngre(SqlSession session, List<RecipeIngre> recipeingre) throws Exception {
	
			for(RecipeIngre ingre: recipeingre) {
				session.insert("mybatis.RecipeMapper.insertRecipeIngre",ingre);
			}

	}
	
	/**
	 * 레시피 process에 해당하는 정보를 저장 (레시피 등록, 수정페이지에서 사용)
	 * @param process (타입 : RecipeProcess)
	 * @throws AddException
	 */
	private void insertRecipeProcess(SqlSession session, List<RecipeProcess> recipeprocess) throws Exception{
				for(RecipeProcess process : recipeprocess) {
					session.insert("mybatis.RecipeMapper.insertRecipeProcess",process);
				}

	}
	


//0425 수정	
	
	 //레시피 삭제
	  
	  @Transactional(rollbackFor = Exception.class) 
	  public int deleteRecipe(int recipe_no) throws RemoveException{
		SqlSession session = null;
		System.out.println("in RecipeDAOOracle updateRecipe - delete");
		session = sqlSessionFactory.openSession();
		try {
			deleteRecipeIngre(session,recipe_no);
			deleteRecipeProcess(session, recipe_no);
			deleteRecipeInfo(session, recipe_no);
			return 1;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
	  }
	 
	
	//레시피 수정 ****
	@Transactional(rollbackFor = Exception.class)
	public void updateRecipe(RecipeInfo recipeinfo, int recipe_no) throws AddException{
	
		SqlSession session = null;
;
		session = sqlSessionFactory.openSession();
		System.out.println("in RecipeDAOOracle updateRecipe - update");

		try {
			updateRecipeInfo(session, recipeinfo, recipe_no);
			updateRecipeIngre(session, recipeinfo.getRecipeingre(),recipe_no);
			updateRecipeProcess(session, recipeinfo.getRecipeprocess(),recipe_no);				
			}catch(Exception e) {
				e.printStackTrace();
				throw new AddException(e.getMessage());
			}finally {
			if(session != null) session.close();
		}	
	} 
	
	//레시피 수정 --레시피 삭제
	private void deleteRecipeInfo(SqlSession session,int recipe_no) throws Exception{
		session.delete("mybatis.RecipeMapper.deleteRecipeInfo",recipe_no);
	}

	
	private void deleteRecipeIngre(SqlSession session,int recipe_no) throws Exception {
		session.delete("mybatis.RecipeMapper.deleteRecipeIngre",recipe_no);
	}

	
	private void deleteRecipeProcess(SqlSession session,int recipe_no) throws Exception {
		session.delete("mybatis.RecipeMapper.deleteRecipeProcess",recipe_no);

	}
	
	
	//레시피 수정--레시피 삽입
	private void updateRecipeInfo(SqlSession session, RecipeInfo recipeinfo, int recipe_no) throws Exception {
		recipeinfo.setRecipe_no(recipe_no);
		session.insert("mybatis.RecipeMapper.updateRecipeInfo",recipeinfo);

	}
	
	private void updateRecipeIngre(SqlSession session,List<RecipeIngre> recipeingre,int recipe_no) throws Exception {
		for(RecipeIngre ingre: recipeingre) {
			ingre.setRecipe_no(recipe_no);
			session.insert("mybatis.RecipeMapper.updateRecipeIngre",ingre);
		}

	}
	
	private void updateRecipeProcess(SqlSession session,List<RecipeProcess> recipeprocess, int recipe_no) throws Exception {
		for(RecipeProcess process : recipeprocess) {
			process.setRecipe_no(recipe_no);
			session.insert("mybatis.RecipeMapper.updateRecipeProcess",process);

		}

	}
//END 0425
	
	@Override
	public List<RecipeInfo> selectRecipeDetailRecipe_no(int recipe_no) throws FindException {
		SqlSession session = null;
		
		try {
			
			session = sqlSessionFactory.openSession();
			List<RecipeInfo> detaillist = session.selectList("mybatis.RecipeMapper.selectRecipeDetailByRecipe_no",recipe_no);
			
			
			if(detaillist==null) {
				throw new FindException("해당 게시물을 찾을 수 없습니다.");
			}
			return detaillist;
			
			
		}catch(Exception e) {
			throw new FindException(e.getMessage());
		}finally {
			if(session != null)
				session.close();
		}
	}


	@Override
	public void insertRecipe_comment(RecipeComment rc) throws AddException {
		SqlSession session = null;
			try {
				session = sqlSessionFactory.openSession();
				session.insert("mybatis.RecipeMapper.insertRecipeCmt",rc);
				
			}catch(Exception e) {
				throw new AddException(e.getMessage());
			}finally {
				if(session != null) session.close();
			}
	}

	@Override
	public void insertScrap(Scrap s) throws AddException {
		SqlSession session = null;
		
		
		try {
			session = sqlSessionFactory.openSession();
			session.insert("mybatis.RecipeMapper.insertScrap",s);
			
		}catch(Exception e) {
			throw new AddException(e.getMessage());
		}finally {
			if(session != null) session.close();
		}

	}

	@Override
	public int selectRecipe_noByRecipe_name(RecipeInfo recipeinfo) throws FindException {//upload
		SqlSession session = null;
		
		try {
			session = sqlSessionFactory.openSession();
			int recipe_no = session.selectOne("mybatis.RecipeMapper.selectRecipe_no",recipeinfo);
			return recipe_no;
			
		}catch(Exception e) {
			throw new FindException(e.getMessage());
		}finally {
			if(session != null) session.close();
		}
		
	}





}
