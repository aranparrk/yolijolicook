package com.my.dao;

import com.my.exception.AddException;
import com.my.exception.FindException;
import com.my.exception.RemoveException;
import com.my.vo.QNA;

public interface QnaDAO {
	/**
	 * 문의하기
	 * 
	 * @param qna
	 * @throws AddException
	 */
	public void insertQNA(QNA qna) throws AddException;

	/**
	 * 문의 디테일
	 * 
	 * @param question_no
	 * @return QNA
	 * @throws FindException
	 */
	public QNA selectQNA(int question_no) throws FindException;

	/**
	 * 문의 디테일 삭제
	 * 
	 * @param question_no
	 * @throws RemoveException
	 */
	public void deleteQNA(int question_no) throws RemoveException;
}