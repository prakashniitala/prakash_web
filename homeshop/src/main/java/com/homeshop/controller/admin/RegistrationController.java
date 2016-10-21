package com.homeshop.controller.admin;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;

import com.homeshop.model.UserDao;

public class RegistrationController {
	@RequestMapping(value = "/user/registration", method = RequestMethod.GET)
	public String showRegistrationForm(WebRequest request, Model model) {
	    UserDao userDto = new UserDao();
	    model.addAttribute("user", userDto);
	    return "registration";
	}
}
