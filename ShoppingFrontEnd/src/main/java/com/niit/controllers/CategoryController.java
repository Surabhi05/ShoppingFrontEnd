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

import com.niit.dao.CategoryDao;
import com.niit.models.Category;

@Controller
public class CategoryController {
 @Autowired
 CategoryDao categoryDao;
  // Landing Page--product is added in Model for Spring Form---List is added
 // to retrieve all data
 @RequestMapping("/admin/category")
 public String home(Model m) {
  m.addAttribute("isEditing", false);
  m.addAttribute("category", new Category());
  m.addAttribute("categorylist", categoryDao.getAllCategory());
  m.addAttribute("msg", "");
  return "category";
 }
  // Saving Product
 @RequestMapping(value = "/admin/category/save", method = RequestMethod.POST)
 public String save(@ModelAttribute("category")@Valid  Category c, BindingResult result, Model m) {
	 if(result.hasErrors()){
		
		  m.addAttribute("category", c);
		  m.addAttribute("categorylist", categoryDao.getAllCategory());
		  m.addAttribute("msg", "error in adding category");
		  return "category";
	 }
  categoryDao.save(c);
  m.addAttribute("category", new Category());
  m.addAttribute("categorylist", categoryDao.getAllCategory());
  m.addAttribute("msg", "product added successfully");
  return "category";
 }

  // Displaying Update Form
 @RequestMapping(value = "/admin/category/update/{cid}", method = RequestMethod.GET)
 public String update(@PathVariable("cid") int cid, Model m) {
  Category c = categoryDao.getById(cid);
  m.addAttribute("isEditing", true);
  m.addAttribute("category", c);
  m.addAttribute("categorylist", categoryDao.getAllCategory());
  m.addAttribute("msg", "");
  return "category";
 }

  // Updating Category
 @RequestMapping(value = "/admin/category/update", method = RequestMethod.POST)
 public String update(@ModelAttribute("category") Category c, Model m) {
  categoryDao.update(c);
  m.addAttribute("category", new Category());
  m.addAttribute("categorylist", categoryDao.getAllCategory());
  m.addAttribute("msg", "category updated successfully");
  return "category";
 }

  // Deleting Product
 @RequestMapping(value = "/admin/category/delete/{cid}", method = RequestMethod.GET)
 public String delete(@PathVariable("cid") int cid, Model m) {
  categoryDao.deleteById(cid);
  m.addAttribute("category", new Category());
  m.addAttribute("categorylist", categoryDao.getAllCategory());
  m.addAttribute("msg", "category deleted successfully");
  return "category";
 }

}
