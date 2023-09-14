package com.cos.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	
	@GetMapping("/auth/signForm")
	public String signForm() {
		
		return "user/signForm";
	}
	
	@GetMapping("/auth/loginForm")
	public String loginForm() {
		
		return "user/loginForm";
	}
	
	@RequestMapping(value="user/logout") 
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
}