package com.neerikshak.bean;

import com.neerikshak.AdminLoginDao;

public class AdminLogin{
	
	private String username,pwd;
	
	
	
	
	public String getUsername() {
		return username;
	}




	public void setUsername(String username) {
		this.username = username;
	}




	public String getPwd() {
		return pwd;
	}




	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String execute(){  
		boolean b=AdminLoginDao.validate(username, pwd);
	    if(b){  
	        return "success";  
	    }  
	    else{  
	        return "fail"; } 
	    }  

	
}
