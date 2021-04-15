package com.my.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.my.dao.QnaDAO;
import com.my.exception.AddException;
import com.my.exception.FindException;
import com.my.exception.RemoveException;
import com.my.vo.QNA;

@Service
public class QnaService {
	
	@Autowired
	@Qualifier("oracle")
	private QnaDAO qDAO;
	
	public QnaDAO getQnaDAO() {
		return qDAO;
	}

	/**
	 * 문의글 추가
	 * @param qna
	 * @throws AddException
	 */
	public void insertQNA(QNA qna) throws AddException{
		if(qna.getQuestion_no() != 0) {
			qna.setQuestion_no(0);
		}
		qDAO.insertQNA(qna);
	}
	
	/**
	 * 문의글번호에 해당하는 게시물을 검색
	 * @param question_no 게시물 번호
	 * @return
	 * @throws FindException 
	 */
	public QNA findByQuestion_no(int question_no) throws FindException{
		QNA qna = qDAO.selectQNA(question_no);
		try {
			qDAO.selectQNA(question_no);
		} catch (FindException e) {
			throw new FindException(e.getMessage());
		}
		return qna;
	}

	/**
	 * 문의글 삭제
	 * @param question_no
	 * @throws RemoveException
	 */
	public void deleteQNA(int question_no) throws RemoveException{
		qDAO.deleteQNA(question_no);
	}

}
