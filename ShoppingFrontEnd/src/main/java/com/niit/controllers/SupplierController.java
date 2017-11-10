package com.niit.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.SupplierDao;
import com.niit.models.Supplier;

@Controller
public class SupplierController {
 @Autowired
 SupplierDao supplierDao;

  // Landing Page--product is added in Model for Spring Form---List is added
 // to retrive all data
 @RequestMapping("/admin/supplier")
 public String home(Model m) {
  m.addAttribute("isEditing", false);
  m.addAttribute("supplier", new Supplier());
  m.addAttribute("supplierList", supplierDao.getAllSupplier());
  m.addAttribute("msg", "");
  return "supplier";
 }

  // Saving Product
 @RequestMapping(value = "/admin/supplier/save", method = RequestMethod.POST)
 public String save(@ModelAttribute("supplier")@Valid Supplier s, BindingResult result, Model m) {
     if(result.hasErrors()){
    	 m.addAttribute("supplier", s);
		 m.addAttribute("supplierList", supplierDao.getAllSupplier());
		 m.addAttribute("msg","error in adding supplier");
		 System.out.println(result.getFieldError().getField());
		 return "supplier";
     }
	 
	 supplierDao.save(s);
  m.addAttribute("supplier", new Supplier());
  m.addAttribute("supplierList", supplierDao.getAllSupplier());
  m.addAttribute("msg", "supplier added successfully");
  return "supplier";
 }

  // Displaying Update Form
 @RequestMapping(value = "/admin/supplier/update/{sid}", method = RequestMethod.GET)
 public String update(@PathVariable("sid") int sid, Model m) {
  Supplier s = supplierDao.getById(sid);
  m.addAttribute("isEditing", true);
  m.addAttribute("supplier", s);
  m.addAttribute("supplierList", supplierDao.getAllSupplier());
  m.addAttribute("msg", "");
  return "supplier";
 }

  // Updating Product
 @RequestMapping(value = "/admin/supplier/update", method = RequestMethod.POST)
 public String update(@ModelAttribute("")@Valid Supplier s,BindingResult result, Model m) {
	 if(result.hasErrors()){
		 m.addAttribute("isEditing", true);
		 m.addAttribute("supplier", s);
		 m.addAttribute("supplierList", supplierDao.getAllSupplier());
		 m.addAttribute("msg","error in adding supplier");
		 return "supplier";
		 
	 }
  supplierDao.update(s);
  m.addAttribute("supplier", new Supplier());
  m.addAttribute("supplierList", supplierDao.getAllSupplier());
  m.addAttribute("msg", "supplier updated successfully");
  return "supplier";
 }

  // Deleting Supplier
 @RequestMapping(value = "/admin/supplier/delete/{sid}", method = RequestMethod.GET)
 public String delete(@PathVariable("sid") int sid, Model m) {
  supplierDao.deleteById(sid);
  m.addAttribute("supplier", new Supplier());
  m.addAttribute("supplierList", supplierDao.getAllSupplier());
  m.addAttribute("msg", "supplier deleted successfully");
  return "supplier";
 }

}
