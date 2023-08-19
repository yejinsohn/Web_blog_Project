package com.cos.blog.test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController //스프링이 특정 어노테이션이 붙어있는 클래스들을 new해서 스프링 컨테이너에 관리
public class BlogControllerTest {

		@GetMapping("/test")
		public String hello() {
			return "<h1>spring boot test page</h1>";
		}
	}

