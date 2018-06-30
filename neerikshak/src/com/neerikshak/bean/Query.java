package com.neerikshak.bean;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import com.neerikshak.QueryDao;
;

public class Query extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String id,date,state,city,area,landmark,Query_For,Suggested_Solution,status;

	private File images;
	private String userImageContentType;  
    private String userImageFileName; 
	
    
    
    
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserImageContentType() {
		return userImageContentType;
	}

	public void setUserImageContentType(String userImageContentType) {
		this.userImageContentType = userImageContentType;
	}

	public String getUserImageFileName() {
		return userImageFileName;
	}

	public void setUserImageFileName(String userImageFileName) {
		this.userImageFileName = userImageFileName;
	}

	public File getImages() {
		return images;
	}

	public void setImages(File images) {
		this.images = images;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getLandmark() {
		return landmark;
	}

	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}

	public String getQuery_For() {
		return Query_For;
	}

	public void setQuery_For(String query_For) {
		Query_For = query_For;
	}

	public String getSuggested_Solution() {
		return Suggested_Solution;
	}

	public void setSuggested_Solution(String suggested_Solution) {
		Suggested_Solution = suggested_Solution;
	}
	
	/*public static Connection connect() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		return (Connection) DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/demo", "root", "");
	}*/
	
	
	
	
	
public String execute(){ 
	int status=0;
	try
    {
        FileInputStream fis =  new FileInputStream(images); 
	        Class.forName("com.mysql.jdbc.Driver");
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","");
       /* PreparedStatement stmt = con.prepareStatement("insert into dummy(images) values(?)");
        stmt.setBinaryStream(1, fis, (int)images.length());
        stmt.executeUpdate();*/
        
        
        PreparedStatement ps=con.prepareStatement(  
        		"insert into dummy(date,state,city,area,landmark,querytype,suggestedsol,images) values(?,?,?,?,?,?,?,?)");  
        		        ps.setString(1,date); 
        		        ps.setString(2,state);
        		        ps.setString(3,city);
        		        ps.setString(4,area);  
        		        ps.setString(5,landmark);  
        		        ps.setString(6,Query_For);  
        		        ps.setString(7,Suggested_Solution);
        		       ps.setBinaryStream(8, fis, (int)images.length());
        		        
        		        status=ps.executeUpdate();  
        
        
        
	}catch(Exception e)
    {
        e.printStackTrace();
    }
	if(status>0)
    {
        return "SUCCESS";
    }
    else
    {
    	return "fail";
    }

	
}
}
