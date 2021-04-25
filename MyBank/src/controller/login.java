package controller;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class login
 */
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		{
			
			System.out.println("in server");
			String uname=request.getParameter("uname");
			String psw=request.getParameter("psw");
			
			System.out.println(uname+" "+psw);
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				System.out.println("Driver is loaded");
				
				Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/shubham","root","root");  
				System.out.println("Connection established");
			
				String str="select * from shubham.reg where username=? and password=?";
				PreparedStatement ps=con.prepareStatement(str);
				ps.setString(1, uname);
				ps.setString(2, psw);
				
				ResultSet rs=ps.executeQuery();
				java.sql.ResultSetMetaData rsmd = rs.getMetaData();
				int columnsNumber = rsmd.getColumnCount();
				while(rs.next())
				{
					 for (int i = 1; i <= columnsNumber; i++) {
				           if (i > 1) System.out.print(", ");
				           String columnValue = rs.getString(i);
				           if(columnValue.equals(uname) || columnValue.equals(psw))
				           {
				        	   System.out.print(columnValue);
				        	   RequestDispatcher dispatcher = request.getRequestDispatcher("services.jsp");
				        	   dispatcher.forward(request, response);
				        	  
				           }
				       }
				       System.out.println("");
				      
				}
				
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			
		}
	}
}