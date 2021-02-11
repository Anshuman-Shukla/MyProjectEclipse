package com.ComplexForm;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.model.studentDao;




@Controller
public class ComplexController {

	@RequestMapping("/complex")
	public String ShowForm() {
		return "complex";
	}

	@RequestMapping(path = "/handleform", method = RequestMethod.POST)
	public String formhandle(@ModelAttribute ("studentDao") studentDao student,BindingResult result  ) {
		
		
		 if(result.hasErrors()) { return "complex"; }
		 
		
		return "success";
	}
	
	@RequestMapping("/views")
	public String views() {
		
		System.out.println("Practice controller for various resources");
		return "views";
	}
	
	
}
