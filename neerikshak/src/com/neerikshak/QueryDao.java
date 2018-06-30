package com.neerikshak;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.neerikshak.bean.Officer;
import com.neerikshak.bean.Query;  
public class QueryDao {  
  
public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
} 

public static List<Query> getAllRecords(){  
    List<Query> list=new ArrayList<Query>();  
    
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("SELECT * FROM dummy WHERE area=? AND DATEDIFF(CURDATE(),date) BETWEEN 14 AND 30");  
        HttpSession session=ServletActionContext.getRequest().getSession();
        String area=(String)session.getAttribute("area");
        ps.setString(1, area);
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
        	Query u=new Query(); 
        	
        	 u.setDate(rs.getString("date"));  
             u.setState(rs.getString("state"));  
             u.setCity(rs.getString("city"));  
             u.setArea(rs.getString("area"));  
             u.setLandmark(rs.getString("landmark"));  
             u.setQuery_For(rs.getString("querytype")); 
             u.setSuggested_Solution(rs.getString("suggestedsol"));
             list.add(u); 
             }   
    
    }catch(Exception e){System.out.println(e);}  
    return list;  
}



	

public static List<Query> getAllNewQueries() {
	
	
	 List<Query> list=new ArrayList<Query>();
	
    try{
    	
    	 
    	
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from dummy where status='just_arrived'");  
        ResultSet rs=ps.executeQuery();
        
        
        
        
        /*//data for fetching image
        byte b[];
        Blob blob;*/
        
        while(rs.next()){  
        	Query u=new Query(); 
        	
        	//date,state,city,area,landmark,Query_For,Suggested_Solution;
        		 u.setId(rs.getString("querID"));
                 u.setDate(rs.getString("date"));  
                 u.setState(rs.getString("state"));  
                 u.setCity(rs.getString("city"));  
                 u.setArea(rs.getString("area"));  
                 u.setLandmark(rs.getString("landmark"));  
                 u.setQuery_For(rs.getString("querytype"));
                 
                 
                 
                 
                /* Blob b=rs.getBlob(9);
                 byte barr[]=b.getBytes(1,(int)b.length());
                 u.setImages(rs.getBinaryStream("images"));
                 */
                 
                
                 
                 
                 
                 
                 u.setSuggested_Solution(rs.getString("suggestedsol"));
                 list.add(u);  
             }   
          
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  


public static List<Query> getAllUnderProgressQueries() {
	
	
	 List<Query> list=new ArrayList<Query>();
	
   try{
   	
       Connection con=getConnection();  
       PreparedStatement ps=con.prepareStatement("select * from dummy where status='under progress'");  
       ResultSet rs=ps.executeQuery();
       
       while(rs.next()){  
       	Query u=new Query(); 
       	
       	//date,state,city,area,landmark,Query_For,Suggested_Solution;
       		 u.setId(rs.getString("querID"));
                u.setDate(rs.getString("date"));  
                u.setState(rs.getString("state"));  
                u.setCity(rs.getString("city"));  
                u.setArea(rs.getString("area"));  
                u.setLandmark(rs.getString("landmark"));  
                u.setQuery_For(rs.getString("querytype")); 
                u.setSuggested_Solution(rs.getString("suggestedsol"));
                list.add(u);  
            }   
         
   }catch(Exception e){System.out.println(e);}  
   return list;  
}  


public static List<Query> getAllDoneQueries() {
	
	
	 List<Query> list=new ArrayList<Query>();
	
  try{
  	
      Connection con=getConnection();  
      PreparedStatement ps=con.prepareStatement("select * from dummy where status='done'");  
      ResultSet rs=ps.executeQuery();
      
      while(rs.next()){  
      	Query u=new Query(); 
      	
      	//date,state,city,area,landmark,Query_For,Suggested_Solution;
      		 u.setId(rs.getString("querID"));
               u.setDate(rs.getString("date"));  
               u.setState(rs.getString("state"));  
               u.setCity(rs.getString("city"));  
               u.setArea(rs.getString("area"));  
               u.setLandmark(rs.getString("landmark"));  
               u.setQuery_For(rs.getString("querytype")); 
               u.setSuggested_Solution(rs.getString("suggestedsol"));
               list.add(u);  
           }   
        
  }catch(Exception e){System.out.println(e);}  
  return list;  
}  



public static List<Query> getAllQueries() {
	
	
	 List<Query> list=new ArrayList<Query>();
	
 try{
 	
     Connection con=getConnection();  
     PreparedStatement ps=con.prepareStatement("select * from dummy where status='done' OR status='just_arrived' OR status='under progress' ");  
     ResultSet rs=ps.executeQuery();
     
     while(rs.next()){  
     	Query u=new Query(); 
     	
     	//date,state,city,area,landmark,Query_For,Suggested_Solution;
     		  u.setId(rs.getString("querID"));
              u.setDate(rs.getString("date"));  
              u.setState(rs.getString("state"));  
              u.setCity(rs.getString("city"));  
              u.setArea(rs.getString("area"));  
              u.setLandmark(rs.getString("landmark"));  
              u.setQuery_For(rs.getString("querytype")); 
              u.setSuggested_Solution(rs.getString("suggestedsol"));
              u.setStatus(rs.getString("status"));
              list.add(u);  
          }   
       
 }catch(Exception e){System.out.println(e);}  
 return list;  
}






public static void changeToDone(String id) {
	
	
	 try{
		   	
	       Connection con=getConnection();  
	       PreparedStatement ps=con.prepareStatement("update dummy set status='done' where querID=?"); 
	       
	       ps.setString(1, id);
	       
	       ps.executeUpdate();
	       
	       
	         
	   }catch(Exception e){System.out.println(e);}  
}  






public static void changeToUnderProgress(String id) {
		
   try{
   	
       Connection con=getConnection();  
       PreparedStatement ps=con.prepareStatement("update dummy set status='under progress' where querID=?"); 
       
       ps.setString(1, id);
       
       ps.executeUpdate();
       
       
         
   }catch(Exception e){System.out.println(e);}  
    
}  
}
