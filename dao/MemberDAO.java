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
	 * @return 
	 * @throws FindException
	 */
	public String selectById(String member_id) throws FindException;
	
	/**
	 * 닉네임 중복 확인
	 * @param member_nickname
	 * @return 
	 * @throws FindException
	 */
	public String selectByNickname(String member_nickname) throws FindException;
	
	/**
	 * 이메일 중복 확인
	 * @param member_email
	 * @return 
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
	 * 아이디 찾기
	 * @param member_email
	 * @return 
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
	 * 닉네임 변경
	 * @param member_id
	 * @param member_nickname
	 * @throws ModifyException
	 */
	public void updateNickname(String member_id,String member_nickname) throws ModifyException;
	
	
	/**
	 * 비밀번호 변경
	 * @param member_id
	 * @param member_pwd
	 * @throws ModifyException
	 */
	public void updatePwd(String member_id,String member_pwd) throws ModifyException;
	
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
	
	
	
	
	//삭제기능
	
	/**
	 * 레시피 삭제
	 * @param recipe_no
	 * @throws RemoveException
	 */
	public void recipeDelete(int recipe_no) throws RemoveException;
	
	
	/**
	 * 스크랩 해제
	 * @param scrap_no
	 * @throws RemoveException
	 */
	public void scrapDelete(int scrap_no) throws RemoveException;
	
	
	/**
	 * 내가 쓴 게시글 삭제
	 * @param board_no
	 * @throws RemoveException
	 */
	public void boardDelete(int board_no) throws RemoveException;
	
	/**
	 * 내가 쓴 신고글 삭제
	 * @param report_no
	 * @throws RemoveException
	 */
	public void reportDelete(int report_no) throws RemoveException;
	
	/**
	 * 내가 쓴 문의글 삭제
	 * @param question_no
	 * @throws RemoveException
	 */
	public void qnaDelete(int question_no) throws RemoveException;
	
	/**
	 * 내가 쓴 게시글 댓글 삭제
	 * @param boardcmt_no
	 * @throws RemoveException
	 */
	public void boardCmtDelete(int boardcmt_no) throws RemoveException;
	
	/**
	 * 내가 쓴 레시피 댓글 삭제
	 * @param recipecmt_no
	 * @throws RemoveException
	 */
	public void recipeCmtDelete(int recipecmt_no) throws RemoveException;
	
	
}