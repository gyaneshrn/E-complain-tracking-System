package com.neerikshak;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  
import com.neerikshak.bean.Officer;  
public class OfficerDao {  
  
public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  


public static int save(String name, String mobile, String email, String pwd, String cpwd, String state, String city,
		String area) {
	int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into officerdetails(name,mobile,email,password,cpassword,state,city,area) values(?,?,?,?,?,?,?,?)");  
        ps.setString(1,name); 
        ps.setString(2,mobile);
        ps.setString(3,email);
        ps.setString(4,pwd);  
        ps.setString(5,cpwd);  
        ps.setString(6,state);  
        ps.setString(7,city);
        ps.setString(8,area);
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  




public static int update(String id,String name, String mobile, String email, String pwd, String state, String city, String area){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update officerdetails set name=?,mobile=?,email=?,password=?,state=?,city=?,area=? where id=?");  
        ps.setString(1,name); 
        ps.setString(2,mobile);
        ps.setString(3,email);
        ps.setString(4,pwd);  
        ps.setString(5,state);  
        ps.setString(6,city);  
        ps.setString(7,area);
        ps.setString(8, id);
          
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  




public static void delete(String id){  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from officerdetails where id=?");  
        ps.setString(1,id);  
        ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
     
}  




public static List<Officer> getAllRecords(){  
    List<Officer> list=new ArrayList<Officer>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from officerdetails");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
        	Officer u=new Officer(); 
        	
        	   
                
                 u.setId(rs.getString("id"));  
                 u.setName(rs.getString("name"));  
                 u.setMobile(rs.getString("mobile"));  
                 u.setEmail(rs.getString("email"));  
                 u.setState(rs.getString("state"));  
                 u.setCity(rs.getString("city")); 
                 u.setArea(rs.getString("area"));
                 list.add(u);  
             }   
          
    }catch(Exception e){System.out.println(e);}  
    return list;  
}




public static Officer getRecordById(String id){  
	Officer u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from officerdetails where id=?");  
        ps.setString(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){
        	u=new Officer();
        	  
            u.setName(rs.getString("name"));
            u.setMobile(rs.getString("mobile"));
            u.setPwd(rs.getString("password"));  
            u.setEmail(rs.getString("email"));  
            u.setState(rs.getString("state"));  
            u.setCity(rs.getString("city"));
            u.setArea(rs.getString("area"));
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}  
