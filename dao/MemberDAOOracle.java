package com.my.dao;

import java.sql.SQLIntegrityConstraintViolationException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.my.exception.AddException;
import com.my.exception.FindException;
import com.my.exception.ModifyException;
import com.my.exception.RemoveException;
import com.my.vo.Board;
import com.my.vo.BoardComment;
import com.my.vo.Member;
import com.my.vo.QNA;
import com.my.vo.RecipeComment;
import com.my.vo.RecipeInfo;
import com.my.vo.Report;

import lombok.extern.log4j.Log4j;

@Repository
@Qualifier(value = "oracle")
@Log4j
public class MemberDAOOracle implements MemberDAO {
	
    @Autowired
    private DataSource ds;

    @Autowired
    private SqlSessionFactory sqlSessionFactory;

 // 회원가입
  	@Override
  	public void insertMember(Member m) throws AddException {

  		SqlSession session = null;
  		try {
  			session = sqlSessionFactory.openSession();
  			session.insert("yolijolicook.MemberMapper.insertMember", m);
  		} catch (Exception e) {
  			Throwable causeException = e.getCause();
  			if (causeException instanceof SQLIntegrityConstraintViolationException) {
  				SQLIntegrityConstraintViolationException scve = (SQLIntegrityConstraintViolationException) causeException;
  				if (scve.getErrorCode() == 1) {// PK중복
  					throw new AddException("이미 사용중인 아이디입니다");
  				} else { // CK, NOT NULL, FK
  					throw new AddException(e.getMessage());
  				}
  			} else {
  				throw new AddException(e.getMessage());
  			}
  		} finally {
  			if (session != null)
  				session.close();
  		}
  	}

 // 아이디 중복
  	@Override
  	public String selectById(String id) throws FindException {
  		SqlSession session = null;
  		try {
  			session = sqlSessionFactory.openSession();
  			String member_id = session.selectOne("yolijolicook.MemberMapper.selectById", id);
  			if(member_id == null)  {
  				throw new Exception("유저 아이디에 해당하는 값이 없습니다");
  			}
  			return member_id;
  		} catch (Exception e) {
  			throw new FindException(e.getMessage());
  		} finally {
  			if (session != null)
  				session.close();
  		}
  	}

 // 닉네임 중복
  	@Override
  	public String selectByNickname(String nickname) throws FindException {
  		SqlSession session = null;
  		try {
  			session = sqlSessionFactory.openSession();
  			String member_nickname = session.selectOne("yolijolicook.MemberMapper.selectByNickname", nickname);
  			if(member_nickname == null)  {
  				throw new Exception("유저 닉네임에 해당하는 값이 없습니다");
  			}
  			return member_nickname;
  		} catch (Exception e) {
  			throw new FindException(e.getMessage());
  		} finally {
  			if (session != null)
  				session.close();
  		}
  	}

 // 이메일 중복
  	@Override
  	public String selectByEmail(String email) throws FindException {
  		SqlSession session = null;
  		try {
  			session = sqlSessionFactory.openSession();
  			String member_email = session.selectOne("yolijolicook.MemberMapper.selectByEmail", email);
  			if(member_email == null)  {
  				throw new Exception("유저 이메일에 해당하는 값이 없습니다");
  			}
  			return member_email;
  		} catch (Exception e) {
  			throw new FindException(e.getMessage());
  		} finally {
  			if (session != null)
  				session.close();
  		}
  	}

 	// 로그인
 	@Override
 	public Member login(String member_id, String member_pwd) throws Exception {
 		SqlSession session = null;
 		
 		try {
 			session = sqlSessionFactory.openSession();
 			Map<String, String> map = new HashMap<>();
 			map.put("member_id", member_id);
 			map.put("member_pwd", member_pwd);
 			Member m = session.selectOne("yolijolicook.MemberMapper.login", map);
 			System.out.println(m.getMember_nickname() + m.getMember_id());
 			return m;
 		} catch (Exception e) {
 			throw new FindException(e.getMessage());
 		} finally {
 			if (session != null)
 				session.close();
 		}

 	}

 	// 아이디 찾기
  	@Override
  	public String selectFindId(String member_email) throws FindException {
  		SqlSession session = null;
  		session = sqlSessionFactory.openSession();
  		return session.selectOne("yolijolicook.MemberMapper.selectFindId", member_email);
  	}

	// 비밀번호 찾기
 	@Override
 	public String selectFindPwd(String member_id, String member_email) throws FindException {
 		// TODO Auto-generated method stub
 		return null;
 	}
	


	
	
	// 마이페이지---------------------------------
	
 	// 닉네임 수정
 	@Override
 	public void updateNickname(String member_id, String member_nickname) throws ModifyException {
 		SqlSession session = null;
 		
 		try {
 			session = sqlSessionFactory.openSession();
 			Map<String, String> map = new HashMap<>();
 			map.put("member_id", member_id);
 			map.put("member_nickname", member_nickname);
 			session.selectOne("yolijolicook.MemberMapper.updateNickname", map);

 		} catch (Exception e) {
 			throw new ModifyException(e.getMessage());
 		} finally {
 			if (session != null)
 				session.close();
 		}

 	}
 	
	// 회원탈퇴
	@Override
	public void deleteMember(String member_id) throws RemoveException {
		SqlSession session = null;
 		
 		try {
 			session = sqlSessionFactory.openSession();
 			session.selectOne("yolijolicook.MemberMapper.deleteMember", member_id);

 		} catch (Exception e) {
 			throw new RemoveException(e.getMessage());
 		} finally {
 			if (session != null)
 				session.close();
 		}

	}
		
	// 비밀번호 변경
	@Override
	public void updatePwd(String member_id,String member_pwd) throws ModifyException{
		SqlSession session = null;
 		
 		try {
 			session = sqlSessionFactory.openSession();
 			Map<String, String> map = new HashMap<>();
 			map.put("member_id", member_id);
 			map.put("member_pwd", member_pwd);
 			session.selectOne("yolijolicook.MemberMapper.updatePwd", map);

 		} catch (Exception e) {
 			throw new ModifyException(e.getMessage());
 		} finally {
 			if (session != null)
 				session.close();
 		}
	};
		
	

	// 내가 쓴 레시피 보기
	@Override
	public List<RecipeInfo> selectMyRecipe(String member_id) throws FindException {
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			List<RecipeInfo> list = new ArrayList<>();
			list = session.selectList("yolijolicook.MemberMapper.selectMyRecipe",member_id);
			return list;
		} catch(Exception e) {
			throw new FindException(e.getMessage());
		} finally {
			if(session != null) session.close();
		}
	}

	
	// 내가 요청한 레시피 
	@Override
	public List<RecipeInfo> selectRequestRecipe(String member_id) throws FindException {
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			List<RecipeInfo> list = new ArrayList<>();
			list = session.selectList("yolijolicook.MemberMapper.selectRequestRecipe",member_id);
			return list;
		} catch(Exception e) {
			throw new FindException(e.getMessage());
		} finally {
			if(session != null) session.close();
		}
	}

	//내가 스크랩 한 레시피
	@Override
	public List<RecipeInfo> selectScrapRecipe(String member_id) throws FindException {
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			List<RecipeInfo> list = new ArrayList<>();
			list = session.selectList("yolijolicook.MemberMapper.selectScrapRecipe",member_id);
			return list;
		} catch(Exception e) {
			throw new FindException(e.getMessage());
		} finally {
			if(session != null) session.close();
		}
	}


	// 내가 쓴 게시글
	@Override
	public List<Board> selectMyBoard(String member_id) throws FindException {
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			List<Board> list = new ArrayList<>();
			list = session.selectList("yolijolicook.MemberMapper.selectMyBoard",member_id);
			return list;
		} catch(Exception e) {
			throw new FindException(e.getMessage());
		} finally {
			if(session != null) session.close();
		}
	}

	// 내가 쓴 신고글
	@Override
	public List<Report> selectMyReport(String member_id) throws FindException {
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			List<Report> list = new ArrayList<>();
			list = session.selectList("yolijolicook.MemberMapper.selectMyReport",member_id);
			return list;
		} catch(Exception e) {
			throw new FindException(e.getMessage());
		} finally {
			if(session != null) session.close();
		}
	}
	
	
	// 내가 쓴 문의글
	@Override
	public List<QNA> selectMyQNA(String member_id) throws FindException {
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			List<QNA> list = new ArrayList<>();
			list = session.selectList("yolijolicook.MemberMapper.selectMyQNA",member_id);
			return list;
		} catch(Exception e) {
			throw new FindException(e.getMessage());
		} finally {
			if(session != null) session.close();
		}
	}

	
	// 내가 쓴 게시글 댓글
	@Override
	public List<BoardComment> selectMyBoardCmt(String member_id) throws FindException {
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			List<BoardComment> list = new ArrayList<>();
			list = session.selectList("yolijolicook.MemberMapper.selectMyBoardCmt",member_id);
			return list;
		} catch(Exception e) {
			throw new FindException(e.getMessage());
		} finally {
			if(session != null) session.close();
		}
	}

	
	// 내가 쓴 레시피 댓글
	@Override
	public List<RecipeComment> selectMyRecipeCmt(String member_id) throws FindException {
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			List<RecipeComment> list = new ArrayList<>();
			list = session.selectList("yolijolicook.MemberMapper.selectMyRecipeCmt",member_id);
			return list;
		} catch(Exception e) {
			throw new FindException(e.getMessage());
		} finally {
			if(session != null) session.close();
		}
	}
	
	//나의 레시피 삭제
	@Override
	public void recipeDelete(int recipe_no) throws RemoveException{
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session = sqlSessionFactory.openSession();
			session.delete("yolijolicook.MemberMapper.deleteRecipe", recipe_no);
			
		} catch (Exception e) {
			throw new RemoveException(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}
	
	//스크랩 레시피 해제
	@Override
	public void scrapDelete(int scrap_no) throws RemoveException{
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session = sqlSessionFactory.openSession();
			session.delete("yolijolicook.MemberMapper.deleteScrapRecipe", scrap_no);
			
		} catch (Exception e) {
			throw new RemoveException(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}
	
	//나의 게시글 삭제
	@Override
	public void boardDelete(int board_no) throws RemoveException{
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session = sqlSessionFactory.openSession();
			session.delete("yolijolicook.MemberMapper.deleteBoard", board_no);
			
		} catch (Exception e) {
			throw new RemoveException(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}
	
	//나의 신고글 삭제
	@Override
	public void reportDelete(int report_no) throws RemoveException{
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session = sqlSessionFactory.openSession();
			session.delete("yolijolicook.MemberMapper.deleteReport", report_no);
			
		} catch (Exception e) {
			throw new RemoveException(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}
	
	//나의 문의글 삭제
	@Override
	public void qnaDelete(int question_no) throws RemoveException{
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session = sqlSessionFactory.openSession();
			session.delete("yolijolicook.MemberMapper.deleteQNA", question_no);
			
		} catch (Exception e) {
			throw new RemoveException(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}
	
	//내가 쓴 게시글 댓글 삭제
	@Override
	public void boardCmtDelete(int boardcmt_no) throws RemoveException{
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session = sqlSessionFactory.openSession();
			session.delete("yolijolicook.MemberMapper.deleteBoardCmt", boardcmt_no);
			
		} catch (Exception e) {
			throw new RemoveException(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}
	
	//내가 쓴 레시피 댓글 삭제
	@Override
	public void recipeCmtDelete(int recipecmt_no) throws RemoveException{
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session = sqlSessionFactory.openSession();
			session.delete("yolijolicook.MemberMapper.deleteRecipeCmt", recipecmt_no);
			
		} catch (Exception e) {
			throw new RemoveException(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}
	
	

	

}
