package com.OnlineShopping.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.OnlineShopping.DaoController.DaoController;
import com.OnlineShopping.Model.RegisteredUser;

@Controller
public class AuthController {
	@Autowired
	private DaoController register;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginAuth(@RequestParam("user_name") String user, @RequestParam("user_pass") String pass,
			HttpServletRequest request, HttpServletResponse response, Model m) throws IOException {

		System.out.println(user + "  " + pass);

		Boolean authBoolean = register.AllUserName(user, pass);

		System.out.println("Authantication method is running");

		if (authBoolean) {
			request.getSession().setAttribute("user", user);
			m.addAttribute("name", user);
			m.addAttribute("title", user);
			System.out.println("Successfully registered");
			return "login";
		}

		return "homepage";
	}

	@RequestMapping("/logout")
	public String logoutauth(HttpServletRequest req, HttpServletResponse res) {
		req.getSession().invalidate();
		return "homepage";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registeruser(@ModelAttribute RegisteredUser user) {
		System.out.println(user);
		register.registeringUser(user);
		return "homepage";
	}
}
