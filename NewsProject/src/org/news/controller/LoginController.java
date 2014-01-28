package org.news.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	@RequestMapping(method= RequestMethod.GET, value="/login")
	public String loginPage(){
		return "login";
	}

	@RequestMapping(method=RequestMethod.POST, value="/login")
	public String login(@ModelAttribute String username, @ModelAttribute String password){
		if(username.isEmpty()){
			return "redirect:/login";
		}
		return "redirect:/list";
	}

	@RequestMapping(value="/logout")
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/login";
	}
}
