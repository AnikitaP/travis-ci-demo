package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



	@Controller
	public class firstcontroller {
		@Autowired
		DataSource ds;
		
	    @RequestMapping(value="user",method=RequestMethod.GET)
	    public String fun()
	    {
	     return "firstJsp";
	    }
	    @RequestMapping(value="about",method=RequestMethod.GET)
	    public String about()
	    {
	     return "aboutUs";
	    }
	    @RequestMapping(value="contact",method=RequestMethod.GET)
	    public String contact()
	    {
	     return "contact";
	    }
	    @RequestMapping(value="home",method=RequestMethod.GET)
	    public String home()
	    {
	     return "firstJsp";
	    }
	    
	    @RequestMapping(value="signin",method=RequestMethod.GET)
	    public String signin()
	    {
	     return "loginpage";
	    }  
	    @RequestMapping(value="login",method=RequestMethod.GET)
	    public String login()
	    {
	     return "loginpage";
	    }  
	    
	  	    
	     @RequestMapping(value="/lpage",method=RequestMethod.GET)
	    public String loginpage(@RequestParam String userEmail,@RequestParam String passWord,@RequestParam String check) 
	    {
	    	 if(userEmail.equals("admin") && passWord.equals("admin")  )
	    	 {
	    		 
	    		 return "admin";
	    	 }
	    	 else
	    	 {
	    	 
		 try {
		Connection con=ds.getConnection();
			 PreparedStatement pstmt=con.prepareStatement("select * from user");
    		 ResultSet rs=pstmt.executeQuery();
    		 while(rs.next())
    		 {
    		if(userEmail.equals(rs.getString("Email")))
    		 {
    			if(passWord.equals(rs.getString("Password")))
    					return "hospitalpage";
    			 
    		 }
    		else 
   		 {
   	    
   		  
   		 }
    		 }
		} 
		 catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
	    
		 }
	    	
	     try {
	 		Connection con=ds.getConnection();
	 			 PreparedStatement pstmt=con.prepareStatement("select * from hospital");
	     		 ResultSet rs=pstmt.executeQuery();
	     		 while(rs.next())
	     		 {
	     		if(userEmail.equals(rs.getString("Email")))
	     		 {
	     			if(passWord.equals(rs.getString("Password")))
	     					return "hospitalpage";
	     			 
	     		 }
	     		else 
	    		 {
	    	    
	    		  
	    		 }
	     		 }
	 		} 
	 		 catch (SQLException e) {
	 			// TODO Auto-generated catch block
	 			e.printStackTrace();
	 		}
	 		 
	 	 
	    	 try {
	 	 		Connection con=ds.getConnection();
	 	 			 PreparedStatement pstmt=con.prepareStatement("select * from bbtable");
	 	     		 ResultSet rs=pstmt.executeQuery();
	 	     		 while(rs.next())
	 	     		 {
	 	     		if(userEmail.equals(rs.getString("Email")))
	 	     		 {
	 	     			if(passWord.equals(rs.getString("Password")))
	 	     					return "hospitalpage";
	 	     			 
	 	     		 }
	 	     		else 
	 	    		 {
	 	    	    
	 	    		  
	 	    		 }
	 	     		 }
	 	 		} 
	 	 		 catch (SQLException e) {
	 	 			// TODO Auto-generated catch block
	 	 			e.printStackTrace();
	 	 		}
	 	 		 return "error";
	 	 		 
	 	 	    }
	 	 	
	 	    
	
	}		
	
	 	    
	    
	    //private String value1;
	    @RequestMapping(value="/tocheck",method=RequestMethod.GET)
	    public String register(@RequestParam String check)
	    {
	        
	        if(check.equals("user"))
	        {
	        
	            return "userdetailpagejsp";
	        }
	        else if(check.equals("hospital"))
	        {
	          return "HospitalREg";
	        }
	        else
	        {
	         return "bloodbankReg";
	        }
	   
	    
	    } 
	    
	    @RequestMapping(value="/insert",method=RequestMethod.GET)
	    public String Userinsert(@RequestParam String userEmailId,@RequestParam String userPassword,
	    		@RequestParam String userName,@RequestParam String usercontactNo,@RequestParam String userAddress,
	    		@RequestParam String userCity,@RequestParam String userCountry,@RequestParam String userBloodGroup,
	    		@RequestParam int userAge,
	    		
	    		@RequestParam int weight
	    		,@RequestParam String gender,@RequestParam int birthDate,
	    		@RequestParam String birthMonth,@RequestParam int birthYear) throws SQLException, ClassNotFoundException
	    {
	    	Connection con=ds.getConnection();
		 PreparedStatement pstmt = con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
	    	
		 pstmt.setString(1, userEmailId);
			pstmt.setString(2, userPassword);
			pstmt.setString(3, userName);
			
			
			pstmt.setString(4, usercontactNo);
			pstmt.setString(5, userAddress);
			pstmt.setString(6, userCity);
			pstmt.setString(7, userCountry);
			pstmt.setString(8, userBloodGroup);
			pstmt.setInt(9, userAge);
			
			
			pstmt.setInt(10, weight);
			pstmt.setString(11, gender);
			pstmt.setInt(12, birthDate);
			
			pstmt.setString(13, birthMonth);
			pstmt.setInt(14, birthYear);
			
			
			
			pstmt.executeUpdate();
	
	    	
	    	 return "sucessReg";
	    }
	    
}
