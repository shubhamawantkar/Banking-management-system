package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Reg
 */
public class Reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname=request.getParameter("uname");
		String email=request.getParameter("email");
		String psw=request.getParameter("psw");
		String psw_repeat=request.getParameter("psw_repeat");
		
		if(psw.equals(psw_repeat))
		{
				try {
					Class.forName("com.mysql.jdbc.Driver");
					System.out.println("Driver is loaded");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shubham","root","root");  
					System.out.println("Connection established");
					//inserting data to the table
					PreparedStatement ps=con.prepareStatement("insert into shubham.reg values(?,?,?)");
					ps.setString(1, uname);
					ps.setString(2, email);
					ps.setString(3, psw);
					
					int i=ps.executeUpdate();
					if(i==0)
					{
						System.out.println("Rows is not inserted");
					}
					else
					{
						System.out.println("row is inserted");
					}
					
					RequestDispatcher("login.jsp");
				} catch (Exception e) {
					System.out.println("End of capacity");
				}		
		}
		else
		{
				System.out.println("Password does not match");
		}
	}
	private void RequestDispatcher(String string) {
		// TODO Auto-generated method stub
		
	}
}
