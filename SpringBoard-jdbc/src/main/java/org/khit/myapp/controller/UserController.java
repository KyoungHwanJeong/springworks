package org.khit.myapp.controller;

import javax.servlet.http.HttpSession;

import org.khit.myapp.dto.UserDTO;
import org.khit.myapp.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@AllArgsConstructor
@Slf4j
@RequestMapping("/user")
@Controller
public class UserController {

	private UserService userService;
	
	//회원가입 페이지
	@GetMapping("/join")
	public String join() {
		return "/user/join";
	}
	
	//회원가입처리
	@PostMapping("/join")
	public String join(@ModelAttribute UserDTO userDTO){
		log.info("userDTO= " + userDTO);
		userService.save(userDTO);
		return "redirect:/";	//인덱스로 이동한다
	}
	
	//로그인 페이지
	@GetMapping("/login")
	public String login() {
		return "/user/login";
	}
	
	//로그인 처리
	//성공했을 때(true)- 아이디로 세션 발급, 글목록으로 페이지 이동
	//실패했을 때(false) - 로그인 페이지로 이동
	@PostMapping("/login")
	public String login(@ModelAttribute UserDTO userDTO,
			HttpSession session){//userDTO(폼에 입력된 아이디와 비밀번호)
		boolean loginResult = userService.login(userDTO);
		if(loginResult) {
			session.setAttribute("sessionId", userDTO.getUserId());
			return "redirect:/board/list";
		}else {
			return "/user/login";
		}
	}
	
	//로그아웃 처리
	@GetMapping("/logout")
	public String logout(HttpSession session){
		session.invalidate();	// 모든세션 삭제
		return "redirect:/";
	}
}
