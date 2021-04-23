package com.my.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.my.dao.MemberDAO;
import com.my.exception.AddException;
import com.my.exception.ModifyException;
import com.my.exception.RemoveException;
import com.my.vo.Board;
import com.my.vo.BoardComment;
import com.my.vo.Member;
import com.my.vo.QNA;
import com.my.vo.RecipeComment;
import com.my.vo.RecipeInfo;
import com.my.vo.Report;

@Service
public class MemberService {
	@Autowired
	@Qualifier("oracle")
	private MemberDAO mDAO;
	
	
	/**
	 * 회원가입
	 * @param m
	 * @throws AddException
	 */
	public void insertMember(Member m) throws AddException{
		mDAO.insertMember(m);
	}
	
	/**
	 * 아이디 중복
	 * @param member_id
	 * @return
	 * @throws Exception
	 */
	public String selectById(String member_id) throws Exception {
		return mDAO.selectById(member_id);
	}
	
	/**
	 * 닉네임 중복
	 * @param member_nickname
	 * @return
	 * @throws Exception
	 */
	public String selectByNickname(String member_nickname) throws Exception{
		return mDAO.selectByNickname(member_nickname);
	}
	
	/**
	 * 이메일 중복
	 * @param member_email
	 * @return
	 * @throws Exception
	 */
	public String selectByEmail(String member_email) throws Exception{
		return mDAO.selectByEmail(member_email);
	}
	
	/**
	 * 로그인
	 * @param member_id
	 * @param member_pwd
	 * @return
	 * @throws Exception
	 */
	public Member login(String member_id, String member_pwd) throws Exception{
		try {
			return mDAO.login(member_id,member_pwd);
		}catch (Exception e){
			throw new Exception(e.getMessage());
		}
		
		
	}
	
	/**
	 * 아이디 찾기
	 * @param member_email
	 * @return
	 * @throws Exception
	 */
	public String findId(String member_email) throws Exception{
		return mDAO.selectFindId(member_email);
	}
	
	/**
	 * 비밀번호 찾기
	 * @param member_email
	 * @param member_id
	 * @return
	 * @throws Exception
	 */
	public String findPwd(String member_email , String member_id) throws Exception{
		return mDAO.selectFindPwd(member_email , member_id);
	}
	
	
	// 문의하기 -------------------------------------------
	


	// 마이페이지 -------------------------------------------

	
	/**
	 * 닉네임 수정
	 * @param member_id
	 * @param member_nickname
	 * @throws Exception
	 */
	public void updateNickname(String member_id, String member_nickname) throws Exception{
		try {
			mDAO.updateNickname(member_id,member_nickname);
		}catch (Exception e){
			throw new Exception(e.getMessage());
		}
		
		
	}
	
	/**
	 * 회원탈퇴
	 * @param member_id
	 * @throws RemoveException
	 */
	public void deleteMember(String member_id) throws RemoveException {
		try {
			mDAO.deleteMember(member_id);
		}catch (Exception e){
			throw new RemoveException(e.getMessage());
		}
	}
	
	
	/**
	 * 비밀번호 변경
	 * @param member_id
	 * @param member_pwd
	 * @throws ModifyException
	 */
	public void updatePwd(String member_id,String member_pwd) throws ModifyException {
		try {
			mDAO.updatePwd(member_id,member_pwd);
		}catch (Exception e){
			throw new ModifyException(e.getMessage());
		}
	}

	
	/**
	 * 나의 레시피 목록
	 * @param member_id
	 * @return
	 * @throws Exception
	 */
	public  List<RecipeInfo> selectMyRecipe(String member_id) throws Exception{
		try {
			return mDAO.selectMyRecipe(member_id);
		}catch (Exception e){
			throw new Exception(e.getMessage());
		}
	}
	
	
	/**
	 * 내가 요청한 레시피 목록
	 * @param member_id
	 * @return
	 * @throws Exception
	 */
	public  List<RecipeInfo> selectRequestRecipe(String member_id) throws Exception{
		try {
			return mDAO.selectRequestRecipe(member_id);
		}catch (Exception e){
			throw new Exception(e.getMessage());
		}
	}
	
	
	/**
	 * 내가 스크랩 한 레시피 목록
	 * @param member_id
	 * @return
	 * @throws Exception
	 */
	public  List<RecipeInfo> selectScrapRecipe(String member_id) throws Exception{
		try {
			return mDAO.selectScrapRecipe(member_id);
		}catch (Exception e){
			throw new Exception(e.getMessage());
		}
	}
	

	/**
	 * 내가 쓴 게시글 목록
	 * @param member_id
	 * @return
	 * @throws Exception
	 */
	public  List<Board> selectMyBoard(String member_id) throws Exception{
		try {
			return mDAO.selectMyBoard(member_id);
		}catch (Exception e){
			throw new Exception(e.getMessage());
		}
	}
	

	/**
	 * 내가 쓴 신고글
	 * @param member_id
	 * @return
	 * @throws Exception
	 */
	public  List<Report> selectMyReport(String member_id) throws Exception{
		try {
			return mDAO.selectMyReport(member_id);
		}catch (Exception e){
			throw new Exception(e.getMessage());
		}
	}
	

	
	/**
	 * 내가 쓴 문의글
	 * @param member_id
	 * @return
	 * @throws Exception
	 */
	public  List<QNA> selectMyQNA(String member_id) throws Exception{
		try {
			return mDAO.selectMyQNA(member_id);
		}catch (Exception e){
			throw new Exception(e.getMessage());
		}
	}
	
	
	/**
	 * 내가 쓴 게시글 댓글
	 * @param member_id
	 * @return
	 * @throws Exception
	 */
	public  List<BoardComment> selectMyBoardCmt(String member_id) throws Exception{
		try {
			return mDAO.selectMyBoardCmt(member_id);
		}catch (Exception e){
			throw new Exception(e.getMessage());
		}
	}
	
	
	/**
	 * 내가 쓴 레시피 댓글
	 * @param member_id
	 * @return
	 * @throws Exception
	 */
	public List<RecipeComment> selectMyRecipeCmt(String member_id) throws Exception{
		try {
			return mDAO.selectMyRecipeCmt(member_id);
		}catch (Exception e){
			throw new Exception(e.getMessage());
		}
	}
	
	/**
	 * 내가 쓴 레시피 삭제하기
	 * @param deleteItems
	 * @throws Exception
	 */
	public void recipeDelete(List<Integer> deleteItems) throws Exception{
		try {
			for(int recipe_no : deleteItems) {
				mDAO.recipeDelete(recipe_no);
			}
		}catch (Exception e){
			throw new Exception(e.getMessage());
		}
	}
	
	
	/**
	 * 내가 스크랩 레시피 삭제하기
	 * @param deleteItems
	 * @throws Exception
	 */
	public void scrapDelete(List<Integer> deleteItems) throws Exception{
		try {
			for(int scrap_no : deleteItems) {
				mDAO.scrapDelete(scrap_no);
			}
		}catch (Exception e){
			throw new Exception(e.getMessage());
		}
	}
	
	
	
	/**
	 * 내가 쓴 게시글 삭제하기
	 * @param deleteItems
	 * @throws Exception
	 */
	public void boardDelete(List<Integer> deleteItems) throws Exception{
		try {
			for(int board_no : deleteItems) {
				mDAO.boardDelete(board_no);
			}
		}catch (Exception e){
			throw new Exception(e.getMessage());
		}
	}
	
	
	
	
	
	/**
	 * 내가 쓴 신고글 삭제하기
	 * @param deleteItems
	 * @throws Exception
	 */
	public void reportDelete(List<Integer> deleteItems) throws Exception{
		try {
			for(int report_no : deleteItems) {
				mDAO.reportDelete(report_no);
			}
		}catch (Exception e){
			throw new Exception(e.getMessage());
		}
	}
	
	
	
	
	
	/**
	 * 내가 쓴 문의글 삭제하기
	 * @param deleteItems
	 * @throws Exception
	 */
	public void qnaDelete(List<Integer> deleteItems) throws Exception{
		try {
			for(int question_no : deleteItems) {
				mDAO.qnaDelete(question_no);
			}
		}catch (Exception e){
			throw new Exception(e.getMessage());
		}
	}
	
	
	

	/**
	 * 내가 쓴 게시글 댓글 삭제하기
	 * @param deleteItems
	 * @throws Exception
	 */
	public void boardCmtDelete(List<Integer> deleteItems) throws Exception{
		try {
			for(int boardcmt_no : deleteItems) {
				mDAO.boardCmtDelete(boardcmt_no);
			}
		}catch (Exception e){
			throw new Exception(e.getMessage());
		}
	}
	
	
	
	
	/**
	 * 내가 쓴 레시피 댓글 삭제하기
	 * @param deleteItems
	 * @throws Exception
	 */
	public void recipeCmtDelete(List<Integer> deleteItems) throws Exception{
		try {
			for(int recipecmt_no : deleteItems) {
				mDAO.recipeCmtDelete(recipecmt_no);
			}
		}catch (Exception e){
			throw new Exception(e.getMessage());
		}
	}
	
	
	
	
}