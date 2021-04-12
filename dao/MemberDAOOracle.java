package com.my.dao;

import java.sql.SQLIntegrityConstraintViolationException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

//import javax.sql.DataSource;

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

@Repository
@Qualifier(value = "oracle")
public class MemberDAOOracle implements MemberDAO {

	// @Autowired
	// private DataSource ds;

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

	// 비밀번호 확인
	@Override
	public boolean selectByPwd(String member_id, String member_pwd) throws FindException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void updateNickname(String member_id, String member_nickname) throws ModifyException {
		// TODO Auto-generated method stub

	}

	// 닉네임 수정
	@Override
	public void deleteMember(String member_id) throws RemoveException {
		// TODO Auto-generated method stub

	}

	// 내가 쓴 레시피
	@Override
	public List<RecipeInfo> selectMyRecipe(String member_id) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	// 내가 요청한 레시피
	@Override
	public List<RecipeInfo> selectRequestRecipe(String member_id) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	// 내가 찜한 레시피
	@Override
	public List<RecipeInfo> selectScrapRecipe(String member_id) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	// 내가 찜한 레시피 해제
	@Override
	public void deleteScrapRecipe(int scrap_no) throws RemoveException {
		// TODO Auto-generated method stub

	}

	// 내가 쓴 게시글
	@Override
	public List<Board> selectMyBoard(String member_id) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	// 내가 쓴 신고글
	@Override
	public List<Report> selectMyReport(String member_id) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	// 내가 쓴 문의글
	@Override
	public List<QNA> selectMyQNA(String member_id) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	// 문의하기
	@Override
	public void insertQNA(QNA qna) throws AddException {
		// TODO Auto-generated method stub

	}

	// 문의디테일
	@Override
	public QNA selectQNA(int question_no) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	// 문의 삭제하기
	@Override
	public void deleteQNA(int question_no) throws RemoveException {
		// TODO Auto-generated method stub

	}

	@Override
	public List<BoardComment> selectMyBoardCmt(String member_id) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<RecipeComment> selectMyRecipeCmt(String member_id) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

}