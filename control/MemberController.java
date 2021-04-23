package com.my.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.exception.AddException;
import com.my.exception.FindException;
import com.my.service.MemberService;
import com.my.vo.Board;
import com.my.vo.BoardComment;
import com.my.vo.Member;
import com.my.vo.QNA;
import com.my.vo.RecipeComment;
import com.my.vo.RecipeInfo;
import com.my.vo.Report;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member/*")
@Log4j
public class MemberController {
	@Autowired
	private MemberService service;
	
	// 이메일 전송
	@Autowired
	private JavaMailSender mailSender;
	
	// 회원가입
	@RequestMapping("/signup")
	@ResponseBody
	public Map<String, Object> signup(Member m)throws AddException {
		Map<String, Object> map = new HashMap<>();
		
		try {
			service.insertMember(m);
			map.put("status", 1);
		} catch (AddException e) {
			e.printStackTrace();
			map.put("status", -1);
			map.put("msg",e.getMessage());
		}
		return map;
	}
	
	// 회원가입 이메일 인증
	@RequestMapping("/emailCheck")
	@ResponseBody
	public String mailCheckGET(String member_email) throws Exception{
		// 인증번호 난수 생성
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111; // 111111 ~ 999999 범위의 숫자를 얻기 위해
		
		String from = "aranparrk@gmail.com";
		String to = member_email;
		String subject = "요리조리쿡 회원가입 인증";
		String content = 
				"요리조리쿡을 방문해주셔서 감사합니다." +
				"<br><br>" +
				"인증번호는 " + checkNum + " 입니다" +
				"<br>" + 
				"해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
		
		try {
			MimeMessage mail = mailSender.createMimeMessage();
			MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true, "UTF-8"); // true는 멀티파트 메세지를 사용하겠다는 의미
			
			mailHelper.setFrom(from);
			mailHelper.setTo(to);
			mailHelper.setSubject(subject);
			mailHelper.setText(content, true);
			
			mailSender.send(mail);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		String num = Integer.toString(checkNum);
		return num;
	}
	
	// 로그인
	@RequestMapping("/login")
	@ResponseBody
	public Map<String, Object> login(String member_id, String member_pwd, HttpServletRequest request)throws Exception {
		Map<String, Object> map = new HashMap<>();
		
		try {
			Member member = service.login(member_id, member_pwd);
			HttpSession session = request.getSession();
		    session.setAttribute("loginInfo", member.getMember_id());
			map.put("status", 1);
			map.put("member_nickname",member.getMember_nickname());
		} catch (Exception e) {
			e.printStackTrace();
			map.put("status", -1);
			map.put("msg",e.getMessage());
		}
		return map;
	}
	
	// 로그아웃
	@RequestMapping("/logout")
    public ResponseEntity logout(HttpSession session) {
       session.removeAttribute("loginInfo");
        return new ResponseEntity<>(HttpStatus.OK);
    }
	
	// 아이디 중복
	@PostMapping("/iddupchk")
	@ResponseBody
	public Map<String, Integer> idDupChk(String member_id) throws Exception{
		Map<String, Integer> map = new HashMap<>();
		
		try {
			service.selectById(member_id);
			map.put("status", 1);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("status", -1);
		}
		return map;
	}
	
	// 닉네임 중복
	@PostMapping("/nicknamedupchk")
	@ResponseBody
	public Map<String, Integer> nicknamedupchk(String member_nickname) throws Exception{
		Map<String, Integer> map = new HashMap<>();
		
		try {
			service.selectByNickname(member_nickname);
			map.put("status", 1);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("status", -1);
		}
		return map;
	}
	
	// 이메일 중복
	@PostMapping("/emaildupchk")
	@ResponseBody
	public Map<String, Integer> emaildupchk(String member_email) throws Exception{
		Map<String, Integer> map = new HashMap<>();
		
		try {
			service.selectByEmail(member_email);
			map.put("status", 1);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("status", -1);
		}
		return map;
	}
	
	// 아이디 찾기
	@RequestMapping("/findid")
	@ResponseBody
	public Map<String, Object> findId(String member_email) throws FindException{
		Map<String, Object> map = new HashMap<>();
		String member_id ;

		try {
			member_id = service.findId(member_email);
			
			String from = "aranparrk@gmail.com";
			String to = member_email;
			String subject = "요리조리쿡 아이디 찾기";
			String content = 
					"요리조리쿡을 방문해주셔서 감사합니다." +
					"<br><br>" +
					"회원님의 아이디는  " + member_id + " 입니다";
			
			map.put("status", 1);
			MimeMessage mail = mailSender.createMimeMessage();
			MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true, "UTF-8"); // true는 멀티파트 메세지를 사용하겠다는 의미
			
			mailHelper.setFrom(from);
			mailHelper.setTo(to);
			mailHelper.setSubject(subject);
			mailHelper.setText(content, true);
			
			mailSender.send(mail);
		}catch(Exception e){
			e.printStackTrace();
			map.put("status", -1);
		}
		return map;
	}
	
	// 비밀번호 찾기
	@RequestMapping("/findpwd")
	@ResponseBody
	public Map<String, Object> findPwd(String member_email, String member_id) throws FindException{
		Map<String, Object> map = new HashMap<>();
		
		try {
			String member_pwd = service.findPwd(member_email, member_id);
			System.out.println(member_pwd);
			String from = "aranparrk@gmail.com";
			String to = member_email;
			String subject = "요리조리쿡 비밀번호 찾기";
			String content = 
					"요리조리쿡을 방문해주셔서 감사합니다." +
							"<br><br>" +
							member_id + "님의 비밀번호는  " + member_pwd + " 입니다";
			map.put("status", 1);
			MimeMessage mail = mailSender.createMimeMessage();
			MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true, "UTF-8"); // true는 멀티파트 메세지를 사용하겠다는 의미
			
			mailHelper.setFrom(from);
			mailHelper.setTo(to);
			mailHelper.setSubject(subject);
			mailHelper.setText(content, true);
			
			mailSender.send(mail);
		}catch(Exception e){
			e.printStackTrace();
			map.put("status", -1);
		}
		return map;
	}
	
	
	// 정보수정
	
	
	//닉네임변경
	@RequestMapping("/updatenickname")
	@ResponseBody
	public Map<String, Object> updateNickname(HttpServletRequest request,String member_nickname)throws Exception {
		Map<String, Object> map = new HashMap<>();
		HttpSession session = request.getSession();
		String member_id = (String)session.getAttribute("loginInfo");
		try {
			service.updateNickname(member_id,member_nickname);
			map.put("status", 1);
			
		} catch (Exception e) {
			e.printStackTrace();
			map.put("status", -1);
			map.put("msg",e.getMessage());
		}
		return map;
	}
	
	
	//비밀번호 변경
	@RequestMapping("/updatepwd")
	@ResponseBody
	public Map<String, Object> updatePwd(HttpServletRequest request,String member_pwd)throws Exception {
		Map<String, Object> map = new HashMap<>();
		HttpSession session = request.getSession();
		String member_id = (String)session.getAttribute("loginInfo");
		try {
			service.updatePwd(member_id,member_pwd);
			map.put("status", 1);
			
		} catch (Exception e) {
			e.printStackTrace();
			map.put("status", -1);
			map.put("msg",e.getMessage());
		}
		return map;
	}
	
	
	//회원탈퇴
	@RequestMapping("/deletemember")
	@ResponseBody
	public Map<String, Object> deleteMember(HttpServletRequest request,String member_pwd)throws Exception {
		Map<String, Object> map = new HashMap<>();
		HttpSession session = request.getSession();
		String member_id = (String)session.getAttribute("loginInfo");
		try {
			service.login(member_id, member_pwd);
			service.deleteMember(member_id);
			map.put("status", 1);
			
		} catch (Exception e) {
			e.printStackTrace();
			map.put("status", -1);
			map.put("msg",e.getMessage());
		}
		return map;
	}
	
	// 내가 쓴 레시피
	@RequestMapping("/myRecipe")
	@ResponseBody
	public Map<String, Object> selectMyRecipe(HttpServletRequest request)throws Exception {
		Map<String, Object> map = new HashMap<>();
		HttpSession session = request.getSession();
		String member_id = (String)session.getAttribute("loginInfo");
		
		try {
			
			List<RecipeInfo> list = service.selectMyRecipe(member_id);
			map.put("status", 1);
			map.put("list", list);
			
		} catch (Exception e) {
			e.printStackTrace();
			map.put("status", -1);
			map.put("msg",e.getMessage());
		}
		return map;
	}
	
	
	// 내가 올린 레시피 현황
	@RequestMapping("/myRqt")
	@ResponseBody
	public Map<String, Object> selectRequestRecipe(HttpServletRequest request)throws Exception {
		Map<String, Object> map = new HashMap<>();
		HttpSession session = request.getSession();
		String member_id = (String)session.getAttribute("loginInfo");
		
		try {
			
			List<RecipeInfo> list = service.selectRequestRecipe(member_id);
			map.put("status", 1);
			map.put("list", list);
			
		} catch (Exception e) {
			e.printStackTrace();
			map.put("status", -1);
			map.put("msg",e.getMessage());
		}
		return map;
	}
	
	// 내가 한 스크랩
	@RequestMapping("/myScrap")
	@ResponseBody
	public Map<String, Object> selectScrapRecipe(HttpServletRequest request)throws Exception {
		Map<String, Object> map = new HashMap<>();
		HttpSession session = request.getSession();
		String member_id = (String)session.getAttribute("loginInfo");
		
		try {
			
			List<RecipeInfo> list = service.selectScrapRecipe(member_id);
			map.put("status", 1);
			map.put("list", list);
			
		} catch (Exception e) {
			e.printStackTrace();
			map.put("status", -1);
			map.put("msg",e.getMessage());
		}
		return map;
	}
	
	// 내가 쓴 게시물
	@RequestMapping("/myBoard")
	@ResponseBody
	public Map<String, Object> selectMyBoard(HttpServletRequest request)throws Exception {
		Map<String, Object> map = new HashMap<>();
		HttpSession session = request.getSession();
		String member_id = (String)session.getAttribute("loginInfo");
		
		try {
			
			List<Board> list = service.selectMyBoard(member_id);
			map.put("status", 1);
			map.put("list", list);
			
		} catch (Exception e) {
			e.printStackTrace();
			map.put("status", -1);
			map.put("msg",e.getMessage());
		}
		return map;
	}
	
	// 내가 쓴 신고
	@RequestMapping("/myReport")
	@ResponseBody
	public Map<String, Object> selectMyReport(HttpServletRequest request)throws Exception {
		Map<String, Object> map = new HashMap<>();
		HttpSession session = request.getSession();
		String member_id = (String)session.getAttribute("loginInfo");
		
		try {
			
			List<Report> list = service.selectMyReport(member_id);
			map.put("status", 1);
			map.put("list", list);
			
		} catch (Exception e) {
			e.printStackTrace();
			map.put("status", -1);
			map.put("msg",e.getMessage());
		}
		return map;
	}
	
	// 내가 쓴 문의
	@RequestMapping("/myQna")
	@ResponseBody
	public Map<String, Object> selectMyQNA(HttpServletRequest request)throws Exception {
		Map<String, Object> map = new HashMap<>();
		HttpSession session = request.getSession();
		String member_id = (String)session.getAttribute("loginInfo");
		try {
			
			List<QNA> list = service.selectMyQNA(member_id);
			map.put("status", 1);
			map.put("list", list);
			
		} catch (Exception e) {
			e.printStackTrace();
			map.put("status", -1);
			map.put("msg",e.getMessage());
		}
		return map;
	}
	
	// 내가 쓴 게시글 댓글
	@RequestMapping("/myBoardCmt")
	@ResponseBody
	public Map<String, Object> selectMyBoardCmt(HttpServletRequest request)throws Exception {
		Map<String, Object> map = new HashMap<>();
		HttpSession session = request.getSession();
		String member_id = (String)session.getAttribute("loginInfo");
		try {
			
			List<BoardComment> list = service.selectMyBoardCmt(member_id);
			map.put("status", 1);
			map.put("list", list);
			
		} catch (Exception e) {
			e.printStackTrace();
			map.put("status", -1);
			map.put("msg",e.getMessage());
		}
		return map;
	}
	
	// 내가 쓴 레시피 댓글
	@RequestMapping("/myRecipeCmt")
	@ResponseBody
	public Map<String, Object> selectMyRecipeCmt(HttpServletRequest request)throws Exception {
		Map<String, Object> map = new HashMap<>();
		HttpSession session = request.getSession();
		String member_id = (String)session.getAttribute("loginInfo");
		try {
			
			List<RecipeComment> list = service.selectMyRecipeCmt(member_id);
			map.put("status", 1);
			map.put("list", list);
			
		} catch (Exception e) {
			e.printStackTrace();
			map.put("status", -1);
			map.put("msg",e.getMessage());
		}
		return map;
	}
	
	
	//삭제기능
	
	
	// 문의 삭제
	@RequestMapping("/listdelete")
	@ResponseBody
	public Map<String, Object> listDelete(@RequestParam(value="deleteItems[]") List<Integer> deleteItems,String name) throws ServletException, IOException {
		Map<String, Object> map = new HashMap<>();
		
		switch (name) {
			case "recipeDelete":
				try {
					service.recipeDelete(deleteItems);
					map.put("status", 1);
				} catch (Exception e) {
					e.printStackTrace();
					map.put("status", -1);
					map.put("msg", e.getMessage());
				}
				break;
				
			case "scrapDelete":
				try {
					service.scrapDelete(deleteItems);
					map.put("status", 1);
				} catch (Exception e) {
					e.printStackTrace();
					map.put("status", -1);
					map.put("msg", e.getMessage());
				}
				break;
				
				
			case "boardDelete":
				try {
					service.boardDelete(deleteItems);
					map.put("status", 1);
				} catch (Exception e) {
					e.printStackTrace();
					map.put("status", -1);
					map.put("msg", e.getMessage());
				}
				break;
				
			case "reportDelete":
				try {
					service.reportDelete(deleteItems);
					map.put("status", 1);
				} catch (Exception e) {
					e.printStackTrace();
					map.put("status", -1);
					map.put("msg", e.getMessage());
				}
				break;
				
			case "qnaDelete":
				try {
					service.qnaDelete(deleteItems);
					map.put("status", 1);
				} catch (Exception e) {
					e.printStackTrace();
					map.put("status", -1);
					map.put("msg", e.getMessage());
				}
				break;
				
			case "boardCmtDelete":
				try {
					service.boardCmtDelete(deleteItems);
					map.put("status", 1);
				} catch (Exception e) {
					e.printStackTrace();
					map.put("status", -1);
					map.put("msg", e.getMessage());
				}
				break;
				
			case "recipeCmtDelete":
				try {
					service.recipeCmtDelete(deleteItems);
					map.put("status", 1);
				} catch (Exception e) {
					e.printStackTrace();
					map.put("status", -1);
					map.put("msg", e.getMessage());
				}
				break;
				

			default:
				map.put("status", -1);
				break;
			}
			
			
		return map;
		
	}		
}
