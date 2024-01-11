package com.khit.web.exception;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice	//오류를 처리하는 주요 클래스
public class GlobalExceptionAdvice {
	//예외처리(코드 및 구문 오류)
	@ExceptionHandler(Exception.class)
	public String handException(Exception exception,
			Model model) {
		model.addAttribute("exception", exception);
		return "/exception/global_error";
	}
	
	//예외처리(페이지 찾을 수 없음)
	@ExceptionHandler(NoHandlerFoundException.class)
	@ResponseStatus(HttpStatus.NOT_FOUND)
	public String handle404(NoHandlerFoundException ex) {
		return "/exception/error_404";
	}
}
