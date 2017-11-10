package com.niit.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.CartDao;
import com.niit.dao.CustomerDao;
import com.niit.dao.DebitCardDao;
import com.niit.dao.OrdersDao;
import com.niit.dao.ShippingDao;
import com.niit.models.Cart;
import com.niit.models.Customer;
import com.niit.models.DebitCard;
import com.niit.models.Orders;
import com.niit.models.Product;
import com.niit.models.Shipping;
@Controller
public class ShippingController {

	
	@Autowired
	ShippingDao shippingDao;
	@Autowired
	DebitCardDao debitCardDao;
	@Autowired
	CustomerDao customerDao;
	@Autowired
	CartDao cartDao;
	@Autowired
	OrdersDao ordersDao;
	
	
	@RequestMapping("/user/Shipping/checkout/")
	 public String shipping(Model m) {
	 
	  m.addAttribute("shipping", new Shipping());
	  m.addAttribute("msg", "");
	  return "shipping";
	 }
	// Saving Product
	 @RequestMapping(value = "/user/Shipping/save", method = RequestMethod.POST)
	 public String save(@ModelAttribute("shipping") @Valid Shipping s,BindingResult result, Model m) 
	 {
		 if(result.hasErrors())
		 {
			 m.addAttribute("shipping", s);
			  m.addAttribute("msg", "Error while shipping");
			  System.out.println(result.getFieldError().getField());
			  return "shipping";
		 }
		 
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String email = auth.getName();
			Customer c = customerDao.getByEmail(email);
			s.setCustomer(c);
	shippingDao.save(s);
	
	  m.addAttribute("debit", new DebitCard());
	  m.addAttribute("msg", "shipping is successfull");
	  return "debitcard";
	 
	 }
	
	 
	 @RequestMapping(value = "/user/DebitCard/save", method=RequestMethod.POST)
	        public String debitCardsave(@ModelAttribute("debit") @Valid DebitCard d,BindingResult result, Model m ) 
	 {
		 System.out.println("saving card details....");
	     if(result.hasErrors())
	     {
	       
	    	m.addAttribute("debit",d);
	    	m.addAttribute("msg", "Error in debitcard");
	        System.out.println(result.getFieldError().getField());
	        return "debitcard";
	     }
	     Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String email = auth.getName();
			Customer c = customerDao.getByEmail(email);
			d.setCustomer(c);
			System.out.println(c.getCusId());
	     debitCardDao.save(d);
	     m.addAttribute("debit", new DebitCard());
	     m.addAttribute("msg","payment successfull");
	     List<Cart> cartList = cartDao.getByCustomer(c);
	     
	     for (Cart cart : cartList) {
			Orders orders = new Orders();
			orders.setCustomer(c);
			orders.setProduct(cart.getProduct());
			orders.setQty(cart.getQty());
			orders.setTotalAmt(cartDao.getTotalAmount(c));
			orders.setShipping(shippingDao.getByCustomer(c));
			System.out.println(orders);
			ordersDao.save(orders);
		}
	  
	   cartDao.deleteByCustomer(c);	
	    
	     return "orders";
	     
	     
	 }
	     

}