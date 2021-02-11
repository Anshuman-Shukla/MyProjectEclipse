package com.ComplexForm;

import java.io.File;

import java.io.FileOutputStream;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class fileupload {
	
	@RequestMapping("/path/{userId}/{userName}")
	public String pathview(@PathVariable("userId") int userId,@PathVariable("userName") String userName) {
		System.out.println(userId);
		System.out.println(userName);
		return "success";
	}
	
	@RequestMapping("/upload")
	public String Showuploadform() {
		System.out.println("Uploding is working");
		
		/*
		 * String str=null; System.out.println(str.getBytes());//to Show Exception
		 */
		
		return "fileform";
	}
	
	@RequestMapping(value="/uploadimage", method=RequestMethod.POST)
	public String fileup(@RequestParam("profile") CommonsMultipartFile file,HttpSession s ,Model m) 
	{
		System.out.println("file name");
		System.out.println(file.getName());
		System.out.println(file.getName());
		System.out.println(file.getSize());
		System.out.println(file.getStorageDescription());
		
		//File saving process...
		byte[] data = file.getBytes();
		
		String path = s.getServletContext().getRealPath("/")+"WEB-INF"+File.separator+"resources"+File.separator+"images"+File.separator+file.getOriginalFilename();
		System.out.println(path);
		
		try {
			FileOutputStream fos=new FileOutputStream(path);
			fos.write(data);
			fos.close();
			System.out.println("File Uploaded Successfully..");
			m.addAttribute("msg","Uploaded Successfully...");
			m.addAttribute("filename",file.getOriginalFilename());
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Fileuploading Fail...");
		}
		
	
		return "fileup";
	}


}
