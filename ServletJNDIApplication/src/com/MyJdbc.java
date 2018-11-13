package com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MyJdbc {
Statement stmt;
Connection con;
PreparedStatement ps;
	
	/*public MyJdbc()
	{		
	}*/
	public void myConnection() throws NamingException, SQLException
	{
		InitialContext in=new InitialContext();
		DataSource ds=(DataSource) in.lookup("java:comp/env/jdbc/TestJNDI");
		con=ds.getConnection();
	}
	public int save(String fname,String lname) throws Exception
	{
		System.out.println("test4");
		myConnection();
		System.out.println("test5");
		ps=con.prepareStatement("insert into MyData values(?,?)");
		ps.setString(1,fname);
		ps.setString(2,lname);
		int i=ps.executeUpdate();
			return i;
	}

}
