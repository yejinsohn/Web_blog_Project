package com.cos.blog.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.blog.dto.ResponseDto;
import com.cos.blog.model.RoleType;
import com.cos.blog.model.User;
import com.cos.blog.service.UserService;

import jakarta.servlet.http.HttpSession;

@RestController
public class UserApicontroller {
	
	@Autowired
	private UserService userservice;
	
	@PostMapping("/auth/signProc")
	public ResponseDto<Integer> save(@RequestBody User user) {
		System.out.println("save 호출");
		user.setRole(RoleType.USER);
		userservice.Signup(user);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
}