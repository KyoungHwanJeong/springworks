package org.khit.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //@componet 상속
public class HomeController {
	
	//http://localhost:8080/
	@RequestMapping("/")
	public String home() {	//파일 이름 반환(보내줌)
		return "index";	// home.jsp
	}
	
}
