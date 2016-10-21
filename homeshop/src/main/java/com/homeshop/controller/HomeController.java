
package com.homeshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.homeshop.dao.ProductDAO;
import com.homeshop.model.Product;

@Controller
public class HomeController {
	@Autowired

	ProductDAO productDAO;
	

	@RequestMapping(value = { "/product/all" })
	@ResponseBody
	List<Product> getproductall() {
		return productDAO.getAllProduct();

	}
	@RequestMapping("/")
public ModelAndView helloWorld(){
	ModelAndView model=new ModelAndView("index");

	return model;
}

	@RequestMapping("/about")
public ModelAndView about(){
	ModelAndView model=new ModelAndView("about");

	return model;
}
	@RequestMapping("/Contacts")
public ModelAndView Contacts(){
	ModelAndView model=new ModelAndView("Contacts");

	return model;
}
	@RequestMapping("/Viewall")
public ModelAndView Viewall(){
	ModelAndView model=new ModelAndView("Viewall");
	return model;
}	
	@RequestMapping("/Login")
public ModelAndView Loginpage(){
	ModelAndView model=new ModelAndView("Login");
	return model;
}	
	
}
