package com.ComplexForm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class MyInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		System.out.println("This is a PreHandler");
		
	String p = request.getParameter("name");
	if(p.startsWith("d")) {
		 response.setContentType("text/html");
		 response.getWriter().print("<h1> ***INVALID NAME>>>>NAME SHOULD NOT START WITH 'D' </h1>");
		
		return false;
	}
	return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("this is post Handler");
		super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("this is after completion...");
		super.afterCompletion(request, response, handler, ex);
	}

}
