package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.DAO.UserDAO;
import com.Db.DBConnect;
import com.User.UserDetails;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet{

	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
		
		String name=request.getParameter("fname");
		String email=request.getParameter("uemail");
		String password=request.getParameter("upassword");
		
		UserDetails us=new UserDetails();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);
		
		
		try {
			UserDAO dao = new UserDAO(DBConnect.getConn());
			
			boolean f=dao.addUser(us);
			PrintWriter out=response.getWriter();
			
			if (f) {
				
				out.print("User Registered Successfully");
			
			}
			
			else {
				
				out.print("Data Not Inserted!");
				
			}
		}
		
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
	}
	
}
