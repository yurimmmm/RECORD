package com.yr.record.member.controller;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yr.record.member.model.dto.Member;
import com.yr.record.member.model.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
Logger logger =  LoggerFactory.getLogger(this.getClass());
	
	private MemberService memberService;	

	public MemberController(MemberService memberService) {
		super();
		this.memberService = memberService;

	}

	@GetMapping("login")
	public void login() {}
	
	@PostMapping("login")
	public String loginImpl(Member member, HttpSession session, RedirectAttributes redirectAttr) {
		Member certifiedUser = memberService.authenticateUser(member);
		
		if(certifiedUser == null) {
			redirectAttr.addFlashAttribute("message", "아이디나 비밀번호가 틀렸습니다.");
			return "redirect:/member/login";
		}
		
		session.setAttribute("authentication", certifiedUser);
		return "redirect:/";
	}
	
	@GetMapping("join")
	public void Join() {}
	
	@PostMapping("join")
	public String joinImpl(Member member) {
		
		//System.out.println("회원가입 진입" + member);
		
		memberService.insertMember(member);
		
		//System.out.println("회원가입 완료" + member);
		
		return "redirect:/";
	}
		
	@PostMapping("idCheck")
	@ResponseBody
	public int idCheck(@RequestParam("userId") String userId) {		
		//logger.info("userIdCheck 진입");
        //logger.info("전달받은 id:"+userId);
        int cnt = memberService.idCheck(userId);
        //logger.info("확인 결과:"+cnt);
        return cnt;		
	}
	
	@PostMapping("nickNameCheck")
	@ResponseBody
	public int nickNameCheck(@RequestParam("nickName") String nickName) {	
		//logger.info("userIdCheck 진입");
        //logger.info("전달받은 id:"+nickName);
        int cnt = memberService.nickNameCheck(nickName);
        //logger.info("확인 결과:"+cnt);
        return cnt;		
	}
	
	@GetMapping("mailCheck")
    @ResponseBody
    public String mailCheck(Member member,HttpSession session) {
		String token = UUID.randomUUID().toString();
		session.setAttribute("persistUser", member);
		session.setAttribute("persistToken", token);
		
		memberService.authenticateByEmail(member,token);		
		return token;
		
    }
		
	@GetMapping("logout")
	public String logout(HttpServletRequest request) {
		
		 HttpSession session = request.getSession();
		 session.invalidate();
	        
	     return "redirect:/";      		
	}
	
	@GetMapping("search-id")
	public void searchId() {}

	@GetMapping("search-pw")
	public void searchPw() {}
	
	
	@PostMapping("search-id")
	public Member searchIdImpl(Member member, Model model) {
		
		//System.out.println("아이디찾기 진입 전" + member);
		Member searchId = memberService.searchId(member);
		
		//System.out.println("아이디찾기 진입 후" + member);
		
		if(searchId == null) { 
			model.addAttribute("check", 1);
		} else { 
			model.addAttribute("check", 0);
			model.addAttribute("id", searchId.getUserId());
		}
		
		return searchId;

	}
	
	@PostMapping("search-pw")
	public String searchPwImpl(Member member, Model model) {
		Member serchPw = memberService.searchPw(member);
		
		if(serchPw == null) { 
			model.addAttribute("check", 1);
		} else { 
			model.addAttribute("check", 0);
			model.addAttribute("userId", serchPw.getUserId());
			System.out.println(serchPw.getUserId());
		}
				
		return "member/search-pw";
		
	}
	
	@PostMapping("update-pw")
	public String updatePwImpl(@RequestParam("userId") String userId, Member member) {
		String updateUser = userId;
		String updateUser2 = updateUser.substring(updateUser.lastIndexOf(",")+1);
		
		member.setUserId(updateUser2);
		//System.out.println(member);
		
		memberService.updatePw(member);
		return "member/login";
	}
	
	
	/*
	@PostMapping("search-pw")
	public ModelAndView searchPwImpl(@RequestParam Map<String, Object> member, ModelMap model) throws Exception {
		ModelAndView mav;
		
        String id = (String) member.get("userId");
        String e_mail = (String) member.get("email");
        String pw = memberService.searchPw(member);
        //System.out.println(pw);
        
        if(pw!=null) {
        	email.setContent(id+"님의 비밀번호는 "+pw+" 입니다.");
            email.setReceiver(e_mail);
            email.setSubject("'똑DOG한 집사들' 비밀번호 찾기 메일입니다.");
            emailSender.SendEmail(email);
            mav= new ModelAndView("/member/login");
            return mav;
        }else {
        	mav=new ModelAndView("/member/login");
            return mav;
        }
	}
	*/
	
	@GetMapping("kakaoLogin")
	public void kakaoLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		
		//System.out.println(userId);

		Member member = memberService.selectMemberById(userId);
		if(member == null || member.getUserId().equals("")) {
			request.setAttribute("kakaoId", userId);
			response.getWriter().print("kakaoJoin");
			return;
			
		}
		request.getSession().setAttribute("authentication", member);
		response.getWriter().print("kakaoLogin");
	}
	
	@GetMapping("kakaoJoin")
	public void kakaoJoin(HttpServletRequest request) {
		request.setAttribute("kakaoId", request.getParameter("userId"));
	}
	
	@PostMapping("kakaoJoin")
	public String kakaoJoin(Member member,HttpServletRequest request) {
		String userId = request.getParameter("kakaoId");			
		member.setUserId(userId);

		System.out.println("회원가입 진입" + member);
		
		memberService.insertKakaoMember(member);
		
		System.out.println("회원가입 완료" + member);
		
		return "redirect:/";
	}
	

}
