package com.my.dao;

import java.util.List;

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

public interface MemberDAO {
	/**
	 * 회원가입
	 * @param  Member m
	 * @throws AddException
	 */
	public void insertMember(Member m) throws AddException;
	
	/**
	 * 중복아이디 확인
	 * @param member_id
	 * @return true or false
	 * @throws FindException
	 */
	public String selectById(String member_id) throws FindException;
	
	/**
	 * 닉네임 중복 확인
	 * @param member_nickname
	 * @return true or false
	 * @throws FindException
	 */
	public String selectByNickname(String member_nickname) throws FindException;
	
	/**
	 * 이메일 중복 확인
	 * @param member_email
	 * @return true or false
	 * @throws FindException
	 */
	public String selectByEmail(String member_email) throws FindException;
	
	/**
	 * 로그인
	 * @param member_id
	 * @param member_pwd
	 * @return Member 정보
	 * @throws FindException
	 */
	public Member login(String member_id,String member_pwd) throws Exception;
	/**
	 * 이메일 찾기
	 * @param member_email
	 * @return 이메일 정보
	 * @throws FindException
	 */
	public String selectFindId(String member_email) throws FindException;
	/**
	 * 비밀번호찾기
	 * @param member_id
	 * @param member_email
	 * @return 비밀번호
	 * @throws FindException
	 */
	public String selectFindPwd(String member_id,String member_email) throws FindException;
	
//	정보수정
	
	/**
	 * 비밀번호 확인
	 * @param member_id
	 * @param member_pwd
	 * @return true or false
	 * @throws FindException
	 */
	public boolean selectByPwd(String member_id,String member_pwd) throws FindException;
	/**
	 * 닉네임 변경
	 * @param member_id
	 * @param member_nickname
	 * @throws ModifyException
	 */
	public void updateNickname(String member_id,String member_nickname) throws ModifyException;
	/**
	 * 회원탈퇴
	 * @param member_id
	 * @throws RemoveException
	 */
	public void deleteMember(String member_id) throws RemoveException;
	
//	레시피북
	/**
	 * 나의 레시피
	 * @param member_id
	 * @return
	 * @throws FindException
	 */
	public List<RecipeInfo> selectMyRecipe(String member_id) throws FindException;
	/**
	 * 요청중인 레시피
	 * @param member_id
	 * @return List<RecipeInfo>
	 * @throws FindException
	 */
	public List<RecipeInfo> selectRequestRecipe(String member_id) throws FindException;
	/**
	 * 내가 스크랩한 레시피
	 * @param member_id
	 * @return List<RecipeInfo>
	 * @throws FindException
	 */
	public List<RecipeInfo> selectScrapRecipe(String member_id) throws FindException;
	
	/**
	 * 내가 스크랩한 레시피 해제
	 * @param scrap_no
	 * @throws RemoveException
	 */
	public void deleteScrapRecipe(int scrap_no) throws RemoveException;
	
	
//	내가 쓴 게시글
	/**
	 * 내가 쓴 게시판글
	 * @param member_id
	 * @return List<Board>
	 * @throws FindException
	 */
	public List<Board> selectMyBoard(String member_id) throws FindException;
	/**
	 * 내가 쓴 신고글
	 * @param member_id
	 * @return List<Report>
	 * @throws FindException
	 */
	public List<Report> selectMyReport(String member_id) throws FindException;
	/**
	 * 내가 쓴 문의글
	 * @param member_id
	 * @return List<QNA>
	 * @throws FindException
	 */
	public List<QNA> selectMyQNA(String member_id) throws FindException;
	
//	문의하기
	/**
	 * 문의하기
	 * @param qna
	 * @throws AddException
	 */
	public void insertQNA(QNA qna) throws AddException;
	/**
	 * 문의 디테일
	 * @param question_no
	 * @return QNA
	 * @throws FindException
	 */
	public QNA selectQNA(int question_no) throws FindException;
	/**
	 * 문의 디테일 삭제
	 * @param question_no
	 * @throws RemoveException
	 */
	public void deleteQNA(int question_no) throws RemoveException;
	
//	내가 쓴 댓글
	/**
	 * 내가 쓴 게시글 댓글
	 * @param member_id
	 * @return List<BoardComment>
	 * @throws FindException
	 */
	public List<BoardComment> selectMyBoardCmt(String member_id) throws FindException;
	
	/**
	 * 내가 쓴 레시피 댓글
	 * @param member_id
	 * @return List<RecipeComment> 
	 * @throws FindException
	 */
	public List<RecipeComment> selectMyRecipeCmt(String member_id) throws FindException;
	
}