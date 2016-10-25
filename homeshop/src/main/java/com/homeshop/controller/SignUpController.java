
package com.homeshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.homeshop.dao.UserDAO;
import com.homeshop.model.User;


@Controller
public class SignUpController {

	@Autowired
	UserDAO userDao;
	@RequestMapping("/signup")
	public String gotoSignUp(Model model) {
		model.addAttribute("user",new User());
		

		return "SignUp";
	}

	@RequestMapping(value = "/insertuser", method = RequestMethod.POST)
	public String insertProduct( User user,Model model) {
    
	   userDao.insertUser(user);	
		return "redirect:/login";

	}

	@RequestMapping("/login")
	public String login() {

		return "Login";
	}
	@RequestMapping(value = "/insertus")
	public String insertp(){
	
			return "redirect:/login";

		}

	@RequestMapping("/403")
	public String acces() {

		return "403";
	}
}
