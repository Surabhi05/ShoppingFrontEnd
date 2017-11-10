package com.niit.controllers;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.dao.SupplierDao;
@Controller
public class HomeController {
	@Autowired
	 ProductDao productDao;
	 @Autowired
	 SupplierDao supplierDao;
	 @Autowired
	 CategoryDao categoryDao;
	 @Autowired
	 HttpSession httpsession;
  @RequestMapping("/")
  
  public String Home()
  {
	  
	  httpsession.setAttribute("productList", productDao.getAllProduct());
		
		httpsession.setAttribute("categoryList", categoryDao.getAllCategory());
		httpsession.setAttribute("supplierList", supplierDao.getAllSupplier());
		  
	  return "index";
  }
  

	
  
  @RequestMapping("/about")
  public String About()
  {
	  return "about";
  }
  
  @RequestMapping("/header")
  public String header()
  {
	   return "header";
  }
  
  @RequestMapping("/signup")
  public String Signup()
  {
	   return "signup";
  }
 	
  @RequestMapping("/contact-us")
  public String Contactus()
  {
	   return "contact-us";
  }
}
