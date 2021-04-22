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
	
	/*레시피 개수를 찾아옴*/
	@Override
	public int selectRecipeInfoCount() throws FindException {
		// TODO Auto-generated method stub
		return 0;
	}

	/*최근 등록된 레시피 순으로 불러오기 */
	@Override
	public List<RecipeInfo> selectAllRecipeInfo() throws FindException {

		SqlSession session = sqlSessionFactory.openSession();

		try {			
			List<RecipeInfo> list = session.selectList("mybatis.RecipeMapper.selectAllRecipeInfo");
			if (list.size() == 0) {
				throw new FindException("레시피가 없습니다.");
			}

			return list;
		} catch (Exception e) {
			throw new FindException(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}
	
	@Override
	public List<RecipeInfo> selectAllRecipeInfo( int currentPage, int cnt_per_page, String member_id) throws FindException {
		 SqlSession session = null;
	      try {
	         session = sqlSessionFactory.openSession();
	         Map<String, Object> map = new HashMap<>();
	         map.put("currentPage", currentPage);
	         map.put("cnt_per_page", cnt_per_page);	  
	         map.put("member_id", member_id);
	         List<RecipeInfo> list = session.selectList("mybatis.RecipeMapper.selectAllRecipeInfo", map);
	         if (list.size() == 0) {
	            throw new FindException("게시글이 없습니다.");
	         }
	         return list;
	      } catch (Exception e) {
	         throw new FindException(e.getMessage());
	      } finally {
	         if (session != null)
	            session.close();
	      }
	}
	
	@Override
	public int selectCount() throws FindException {
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			int count = session.selectOne("mybatis.RecipeMapper.selectCount");
			return count;
		}catch(Exception e) {
			throw new FindException(e.getMessage());
		}finally {
			if(session != null) session.close();
		}
	}

	/*카테고리로 레시피 리스트 찾아오기*/
	@Override
	public List<RecipeInfo> selectByCategory(List<String> categories) throws FindException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			List<RecipeInfo> list = session.selectList("mybatis.RecipeMapper.selectByCategory", categories);
			if (list.size() == 0) {
				throw new FindException("레시피가 없습니다.");
			}

			return list;
		} catch (Exception e) {
			throw new FindException(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}

	/* 검색하여 레시피 리스트 찾아오기*/
	@Override
	public List<RecipeInfo> selectByIngre_name(String word) throws FindException {
		
		SqlSession session = null;
		HashMap<String,String> map = new HashMap<>();
		map.put("word",word);
		map.put("o","board_no DESC");
		System.out.println("디에이오 오라클 초밥  = "+ word);

		try {
			session = sqlSessionFactory.openSession();
			List<RecipeInfo> list = session.selectList("mybatis.RecipeMapper.selectByIngre_name",word);
			if (list.size() == 0) {
				throw new FindException("레서피가 없습니다.");
			}
			System.out.println("디에이오 리턴됨 리스트");
			return list;
			
		} catch (Exception e) {
			throw new FindException(e.getMessage());
		}finally {
			if(session != null) session.close();
		}
				
	}
	

	/* 사용자가 스크랩한 레시피 번호를 찾아옴 */
	@Override
	public List<Scrap> selectAllScrap(String member_id) throws FindException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			List<Scrap> list = session.selectList("mybatis.RecipeMapper.selectAllScrap");
			if (list.size() == 0) {
				throw new FindException("게시글이 없습니다.");
			}

			return list;
		} catch (Exception e) {
			throw new FindException(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}
<<<<<<< HEAD


	@Override
	public int insertRecipeInfo(RecipeInfo recipeinfo) throws AddException {//upload
=======
	
	
	@Transactional(rollbackFor = Exception.class)
	public void insertRecipe( RecipeInfo recipeinfo) throws AddException{
>>>>>>> 3557d33eeb662f2cabeeed3d7e2568dc72f789bd
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

	@Override
	public void deleteRecipeIngre(int recipe_no, int recipe_ingre_no) throws RemoveException {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteRecipeProcess(int recipe_no, int recipe_step_no) throws RemoveException {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateRecipeInfo(RecipeInfo info) throws ModifyException {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateRecipeIngre(RecipeIngre ingre) throws ModifyException {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateRecipeProcess(RecipeProcess process) throws ModifyException {
		// TODO Auto-generated method stub

	}

	@Override
	public List<RecipeInfo> selectRecipeDetailRecipe_no(int recipe_no) throws FindException {
		SqlSession session = null;
		
		try {
			
			session = sqlSessionFactory.openSession();
			List<RecipeInfo> detaillist = session.selectList("mybatis.RecipeMapper.selectRecipeDetailByRecipe_no",recipe_no);
			
			System.out.println("daooracle :"+detaillist);
			
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
	public List<Integer> selectRecipeCmtListByMember_id(String member_id) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteRecipeCmtByRecipeCmt_no(int recipecmt_no) throws RemoveException {
		// TODO Auto-generated method stub

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
