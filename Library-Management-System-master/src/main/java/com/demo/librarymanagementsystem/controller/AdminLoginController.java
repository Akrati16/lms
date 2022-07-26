package com.demo.librarymanagementsystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminLoginController {

	@RequestMapping(value="/adminlogin", method=RequestMethod.GET)
	public String adminloginpage(){
		return "admin-login";
	}
	
	@RequestMapping(value="/adminlogin", method=RequestMethod.POST)
	public String welcomepage(ModelMap model, @RequestParam String adminid, @RequestParam String apassword){
		if(adminid.equals("admin") && apassword.equals("root123")) {
			return "welcome";
		}
		model.put("errorMsg", "Please provide right credential");
		return "admin-login";
	}
	
}
