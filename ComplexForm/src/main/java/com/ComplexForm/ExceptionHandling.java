package com.ComplexForm;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class ExceptionHandling {
	
	
	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value=NullPointerException.class)
	public String NullpointException(Model m) {
		
		m.addAttribute("msg","NULLPOINTERException Has Occoured");
		
		return "exception";
	}
	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value=NumberFormatException.class)
	public String NumberpointException(Model m) {
		
		m.addAttribute("msg","NUMBER FORMATException Has Occoured");
		
		return "exception";
	}
	
	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value=Exception.class)
	public String Exception(Model m) {
		
		m.addAttribute("msg","Exception Has Occoured");
		
		return "exception";
	}

}
