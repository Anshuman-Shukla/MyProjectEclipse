package com.ComplexForm;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Interceptor {
	@RequestMapping("/home")
	public String handlehome() {
		System.out.println("***Interceptor's Handlehome Method***");
		
		return "home";
	}
	@RequestMapping("/intercept")
	public String handle(@RequestParam("name") String name,Model m) {
		System.out.println(name);
		m.addAttribute("name",name);
		
		
		return "intercept";
	}

}
