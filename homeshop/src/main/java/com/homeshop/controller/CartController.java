package com.homeshop.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.homeshop.dao.UserDAO;
import com.homeshop.model.User;

@Controller
@RequestMapping("/customer/cart")

public class CartController {



 @Autowired
 private UserDAO user;

 @RequestMapping("/{cartId}")
 public String getCart(@PathVariable (value = "cartId") int cartId, Principal principal, Model model){
    User customer = user.getCustomerByUsername(principal.getName());
	 model.addAttribute("customer", customer);
	 model.addAttribute("cartId", cartId);
     return "cart";
 }


//    @RequestMapping("/{cartId}")
//    public String getCartRedirect(@PathVariable (value = "cartId") int cartId, Model model){
//        /*model.addAttribute("cartId", cartId);*/
//
//        return "cart";
//    }

}