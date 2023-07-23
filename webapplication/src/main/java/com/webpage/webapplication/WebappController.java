package com.webpage.webapplication;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;





@Controller
public class WebappController {
	
	@Autowired
	WebappRepo webAppRepo;
	
	@RequestMapping("/Home")
	public String request() {
		return "Requestmapping";
	}
	
	@GetMapping(value="/")
	public String getHomepage() {
		return "Home.jsp";
		
		
	}
	
	@PostMapping("/addcustomer")
	public String addCustomer(Model model,WebappEntity data) {
		webAppRepo.save(data);
	    model.addAttribute("data", webAppRepo.findAll());
		return "success.jsp";
	}
	@DeleteMapping("/deletecustomer")
	public String deleteCustomer(WebappEntity data,Model model) {
		webAppRepo.delete(data);
		model.addAllAttributes(webAppRepo.findAll());
		return "delete.jsp";
		
	}
}
	

