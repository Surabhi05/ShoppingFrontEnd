package com.niit.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.niit.dao.CustomerDao;

import com.niit.models.Customer;

@Controller
public class CustomerController {
	@Autowired
	CustomerDao customerDao;
	
	 @RequestMapping(value="/Sign-up")
	 public String Signup(Model m)
	 {
	    m.addAttribute("customer", new Customer());
	    m.addAttribute("msg", "Successfully registered!!");
	    return "signup";
	 }
	 
	 @RequestMapping(value="/signup", method=RequestMethod.POST)
	 public String save(@ModelAttribute("customer") @Valid Customer c,BindingResult result, Model m)
	 {
	 
		 if(result.hasErrors())
		 {
			 m.addAttribute("customer", c);
			
			  m.addAttribute("msg", "Error");
			  System.out.println(result.getFieldError().getField());
			  return "signup";
		 }
		 customerDao.save(c);
	   m.addAttribute("customer", new Customer());
	   return "login";
	 }

	
	
	 @RequestMapping(value="/login")
	 public String Login()
	 {
	  return "login";
	 }
	 
	 @RequestMapping(value="/fail2login", method=RequestMethod.GET)
	 public ModelAndView loginerror(ModelMap model)
	 {
	   return new ModelAndView("login","error",true);
	 }

	 @RequestMapping(value="/logout", method=RequestMethod.GET)
	 public ModelAndView logout(HttpServletRequest request, HttpServletResponse response)
	 {
	   Authentication auth=SecurityContextHolder.getContext().getAuthentication();
	    if(auth!= null)
	      {
	  new SecurityContextLogoutHandler().logout(request, response, auth);
	      }
	    return new ModelAndView("login","logoutmsg","Logged out Successfully");
	 }
	 
	  @RequestMapping(value = "/welcome", method = RequestMethod.GET)
	      public String printWelcome() {
	          return "index";

	      }

}

