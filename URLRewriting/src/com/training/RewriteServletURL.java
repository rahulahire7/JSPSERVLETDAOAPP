package com.training;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class RewriteServletURL extends HttpServlet
{
	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException
	{
		doPost(req, res);
	}
	public void doPost(HttpServletRequest req, HttpServletResponse
			res) throws ServletException, IOException
	{
		String username = req.getParameter("user");//abcd
		PrintWriter pw = res.getWriter();
		res.setContentType("text/html");
		javax.servlet.http.HttpSession s = req.getSession(true);
		s.setAttribute("name",username);
		pw.println("session"+s.isNew());
		pw.println("<a href=\""+res.encodeURL("SecondServlet")+ "\"> click here </a>to proceed");
		//pw.println("<a href=\""+("SecondServlet")+ "\"> click here </a>to proceed");
	}
}