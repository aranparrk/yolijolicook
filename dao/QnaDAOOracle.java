package com.my.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.my.exception.AddException;
import com.my.exception.FindException;
import com.my.exception.RemoveException;
import com.my.vo.QNA;

@Repository
@Qualifier(value = "oracle")
public class QnaDAOOracle implements QnaDAO {

	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	// 문의하기
	@Override
	public void insertQNA(QNA qna) throws AddException {
		// sqlSessionFactory 에서 sqlSession만들기
		SqlSession session = sqlSessionFactory.openSession();
		try {
			System.out.println(qna.getQuestion_title() + ":" + qna.getQuestion_detail() + ":" + qna.getMember().getMember_id());
			session.insert("yolijolicook.QnaMapper.insertQNA", qna);
		} catch (Exception e) {
			throw new AddException(e.getMessage());
		}

	}

	// 문의 디테일
	@Override
	public QNA selectQNA(int question_no) throws FindException {
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			QNA q = session.selectOne("yolijolicook.QnaMapper.selectQNA", question_no);
			if (q == null) {
				throw new FindException("게시글이없습니다.");
			}
			return q;
		} catch (Exception e) {
			throw new FindException(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}

	// 문의삭제
	@Override
	public void deleteQNA(int question_no) throws RemoveException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session = sqlSessionFactory.openSession();
			Map<String, Object> map = new HashMap<>();
			map.put("question_no", question_no);
			int rowcnt = session.delete("yolijolicook.QnaMapper.deleteQNA", map);
			if (rowcnt == 0) {
				throw new RemoveException("글번호가 없습니다");
			}
			session.commit();
		} catch (Exception e) {
			throw new RemoveException(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}
}