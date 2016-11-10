package com.homeshop.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.homeshop.dao.ProductDAO;
import com.homeshop.dao.UserDAO;
import com.homeshop.model.Product;
import com.homeshop.model.User;

@Controller
public class HomeController {
	@Autowired

	ProductDAO productDAO;
	@Autowired
	UserDAO user;

	@RequestMapping(value = { "/product/all" })
	@ResponseBody
	List<Product> getproductall() {
		return productDAO.getAllProduct();

	}
@RequestMapping(value = {"/","/index"})
public ModelAndView helloWorld(@RequestParam (name = "thanks", required = false)String str){
		ModelAndView model=new ModelAndView("index");
		if(str!=null) {
			model.addObject("thanks", "Thanks for your valuable feedback!");
		}
		

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
public String Loginpage(Principal principal, Model model){
		 User customer = user.getCustomerByUsername(principal.getName());
		 model.addAttribute("customer", customer);
		return "Login";
}
	/*@RequestMapping("/Login")
public Strings Loginpage(Principal principal, Model model){
		 User customer = user.getCustomerByUsername(principal.getName());
		 model.addAttribute("customer", customer);
		return "Login";
}*/
	@RequestMapping("/displaycatgory/{catgory}")
	public ModelAndView Productcategory(@PathVariable("catgory") String cate) {
		ModelAndView modelAndView = new ModelAndView("displaycatgory");
		List<Product> products = productDAO.getProductByCategory(cate);
	
		modelAndView.addObject("productData", products);
		return modelAndView;
	}
	@RequestMapping("/singledata/{id}")
	public ModelAndView singledata(@PathVariable("id")int id) {
		ModelAndView modelAndView = new ModelAndView("singledata");
	

		modelAndView.addObject("product", productDAO.getProductById(id));
		
		return modelAndView;
	}
	@RequestMapping(value={"/Viewall/{procat}"})
	public ModelAndView productde(@PathVariable("procat") String st)
	{
	ModelAndView view = new ModelAndView();
		view.setViewName("Viewall");
		view.addObject("hj",st);
		return view;
	}
	@RequestMapping(value={"/forget"})
	public ModelAndView forget()
	{
	ModelAndView view = new ModelAndView();
		view.setViewName("forgotPassword");
		
		return view;
	}

	
}
