package com.neerikshak.bean;

import java.util.Map;



import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.neerikshak.OfficerLoginDao;

public class OfficerLogin implements SessionAware{
	private String username,pwd,area;
	private SessionMap<String,Object> sessionMap;

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

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
		
		boolean b=OfficerLoginDao.validate(username, pwd, area);
    	
	    if(b){  
	    	sessionMap.put("area",area);
	        return "success";  
	    }  
	    else{  
	        return "fail"; } 
	    }

	@Override
	public void setSession(Map<String, Object> map) {
		/*	i have chaned this in case of error remove<String,Object>*/
		 sessionMap=(SessionMap<String, Object>)map;
		
	}  
	
	public String logout(){  
	    if(sessionMap!=null){  
	        sessionMap.invalidate();  
	    }  
	    return "success";  
	}  

}
