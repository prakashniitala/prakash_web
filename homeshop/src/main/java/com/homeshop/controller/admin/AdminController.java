package com.homeshop.controller.admin;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.homeshop.dao.ProductDAO;
import com.homeshop.model.Product;



@Controller
@RequestMapping("/admin")
public class AdminController {

	
	@Autowired
	ProductDAO productDao;
	
	@RequestMapping("/all")
	public ModelAndView getAllProducts(){
		ModelAndView modelAndView=new ModelAndView("adminview/AdminPage");

		modelAndView.addObject("productData",productDao.getAllProduct());
		modelAndView.addObject("product",new Product());
		return modelAndView;
		
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertProduct(@Valid @ModelAttribute("productId") Product product,HttpServletRequest request,BindingResult results, Model model) {
		if (results.hasErrors()) {
			model.addAttribute("product", product);
			model.addAttribute("productData", productDao.getAllProduct());
		return ("adminview/AdminPage");
		}
		if (product.getProductId() == 0) {
			productDao.insertProduct(product);
			
			
			MultipartFile file = product.getFile();
			
			String originalfile = file.getOriginalFilename();
			
			String filepath = request.getSession().getServletContext().getRealPath("/resources/images/productimages/");
	
			System.out.println("Path of file "+filepath);
			String filename = filepath + "\\" + product.getProductId() + ".jpg";
			System.out.println("File Path File "+filepath);
			
			try {
				byte imagebyte[] = product.getFile().getBytes();
				BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filename));
				fos.write(imagebyte);
				fos.close();
				
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			
			
		} else {
			productDao.updateProduct(product);
		}

		return "redirect:/admin/all";

	}
	@RequestMapping("/edit/{id}")
	public String editProduct(@PathVariable("id") int id, Model model) {

		
	model.addAttribute("product", productDao.getProductById(id));
model.addAttribute("productData", productDao.getAllProduct());
		return "adminview/AdminPage";
	}
	

}
