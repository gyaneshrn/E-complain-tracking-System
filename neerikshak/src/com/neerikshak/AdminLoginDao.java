package com.neerikshak;

import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.PreparedStatement;  
import java.sql.ResultSet;  
  
public class AdminLoginDao {  
  
public static boolean validate(String username,String pwd){  
	boolean status=false;  
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","");
		
		PreparedStatement ptmt=con.prepareStatement("select * from admin where username=? AND password=? ");
		
		ptmt.setString(1, username);
		ptmt.setString(2, pwd);
		
		ResultSet rs=ptmt.executeQuery();
		
		 status=rs.next();  
		
	}catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   
return status;  
}  
}  
