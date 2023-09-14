package com.cos.blog.Interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginCheckInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

		String requestURI = request.getRequestURI();
		System.out.println("[interceptor] : " + requestURI);
		HttpSession session = request.getSession(false);
		
		if(session == null) {
       		// 로그인 되지 않음
			System.out.println("인증되지 않은 사용자 요청");
			
			//로그인으로 redirect
			response.sendRedirect("/login?redirectURL=" + requestURI);
			return false;
		}
        // 로그인 되어있을 떄
		return true;
	}
}