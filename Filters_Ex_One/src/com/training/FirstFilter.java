package com.training;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class FirstFilter extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
	public FirstFilter() {
		super();
	}   	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("hello servlet.....");
	PrintWriter out = response.getWriter();
	response.setContentType("text/html");
	out.println("Client Information is :");
out.println(getServletContext().getAttribute("result"));
System.out.println("Thank you servlet..");
	}  	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}   	  	    
}