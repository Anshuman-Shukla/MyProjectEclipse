package com.OnlineShopping.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String HomePage() {
		
		System.out.println("Main controller is working..");
		return "homepage";
	}
	
	@RequestMapping("/loginpage")
	public String loginpage() {
		System.out.println("Login page..");
		return "login";
	}
	
}
