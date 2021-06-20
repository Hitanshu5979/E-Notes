package com.Db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static Connection conn;
	public static Connection getConn(){
					
	try {
				
		if (conn==null) {
						
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes2","root","Hits$#@5979");
				
			}
		}
	
	catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		
		}
			
		return conn;		
	}
}