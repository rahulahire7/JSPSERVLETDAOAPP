package com.training;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
public class LogFilter implements Filter 
{
	protected FilterConfig config;
	private ServletContext context;
	String filterName;
	@Override
	public void init(FilterConfig cfg) 
			throws ServletException {
		context  = cfg.getServletContext();
	}
	@Override
	public void destroy(){
	}
	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
	FilterChain arg2) throws IOException, ServletException {
		HttpServletRequest req1 = (HttpServletRequest)req;
		String result =  (req1.getRemoteHost() +
				" tried to access " +
				req1.getRequestURL() +
				" on " + new Date() + ". " +
				"(Reported by " + this);
		context.setAttribute("result", result);
		System.out.println("welcome to Filter");
		arg2.doFilter(req, resp);
		System.out.println("thank you...Filter");
	}
}
