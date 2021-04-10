package com.my.dao;

import java.sql.SQLIntegrityConstraintViolationException;
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

	@Override
	public void insertMember(Member m) throws AddException {
		
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			session.insert("yolijolicook.MemberMapper.insertMember",m);
		} catch(Exception e) {
			Throwable causeException = e.getCause();
			if(causeException instanceof SQLIntegrityConstraintViolationException) {
				 SQLIntegrityConstraintViolationException scve = (SQLIntegrityConstraintViolationException)causeException;
				if(scve.getErrorCode() == 1) {//PK중복
					throw new AddException("이미 사용중인 아이디입니다");
				} else { //CK, NOT NULL, FK
					throw new AddException(e.getMessage());
				}
			} else {
				throw new AddException(e.getMessage());
			}				
		} finally {
			if(session != null) session.close();
		}
		
	   
	}

	@Override
	public String selectById(String member_id) throws FindException {
		SqlSession session = null;
		
		try {
			session = sqlSessionFactory.openSession();
			String id = session.selectOne("yolijolicook.MemberMapper.selectById",member_id);
			return id;
		} catch(Exception e) {
			throw new FindException(e.getMessage() + "오류 메세지 입니다");
		} finally {
			if(session != null) session.close();
		}
	}

	@Override
	public boolean selectByNickname(String member_nickname) throws FindException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean selectByEmail(String member_email) throws FindException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Member login(String member_id, String member_pwd)throws Exception {
		SqlSession session = null;
		
		try {
			session = sqlSessionFactory.openSession();
			Map<String, String> map = new HashMap<>();
			map.put("member_id", member_id);
			map.put("member_pwd", member_pwd);
			Member m = session.selectOne("yolijolicook.MemberMapper.login",map);
			System.out.println(m.getMember_nickname() + m.getMember_id());
			return m;
		} catch(Exception e) {
			throw new FindException(e.getMessage());
		} finally {
			if(session != null) session.close();
		}

	}

	@Override
	public String selectFindId(String member_email) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String selectFindPwd(String member_id, String member_email) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean selectByPwd(String member_id, String member_pwd) throws FindException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void updateNickname(String member_id, String member_nickname) throws ModifyException {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteMember(String member_id) throws RemoveException {
		// TODO Auto-generated method stub

	}

	@Override
	public List<RecipeInfo> selectMyRecipe(String member_id) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<RecipeInfo> selectRequestRecipe(String member_id) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<RecipeInfo> selectScrapRecipe(String member_id) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteScrapRecipe(int scrap_no) throws RemoveException {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Board> selectMyBoard(String member_id) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Report> selectMyReport(String member_id) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<QNA> selectMyQNA(String member_id) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertQNA(QNA qna) throws AddException {
		// TODO Auto-generated method stub

	}

	@Override
	public QNA selectQNA(int question_no) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

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
