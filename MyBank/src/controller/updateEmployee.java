package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateEmployee
 */
public class updateEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String uname=request.getParameter("uname");
		String email=request.getParameter("email");
		String psw=request.getParameter("psw");
		System.out.println(uname+"\n"+email+"\n"+psw);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver is loaded");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shubham","root","root");  
			System.out.println("Connection established");
			//inserting data to the table
			PreparedStatement ps=con.prepareStatement("update shubham.reg set username=?,email=?,password=? where email=?");
			ps.setString(1, uname);
			ps.setString(2, email);
			ps.setString(3, psw);	
			ps.setString(4, email);
			
			int i=ps.executeUpdate();
			if(i==0)
			{
				System.out.println("Rows is not inserted");
			}
			else
			{
				System.out.println("Updated");
			}
			
		} catch (Exception e) {
			System.out.println("End of capacity");
		}		
	}

}