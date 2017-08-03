package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class bloodbankcontroller {
	
	/* @RequestMapping(value="blood",method=RequestMethod.GET)
	 public String BBfirst()
	 {
		 
		 
		 return "bloodbankReg";
		 
	 }*/
    @RequestMapping(value="/bbcontroller",method=RequestMethod.GET)
    
    public String bloodbankinsert(@RequestParam String userEmail,
    		@RequestParam String userName,@RequestParam String usercontactNo,@RequestParam String userAddress,
    		@RequestParam String userCity,@RequestParam String userCountry)throws SQLException, ClassNotFoundException
    {
    	Class.forName("com.mysql.jdbc.Driver");
		//format --- protocol:db://IP:port/DBNAME
		String jdbcUrl = "jdbc:mysql://localhost:3306/bloodbank";
		
		Connection con = DriverManager.getConnection(jdbcUrl, "root", "root");
		System.out.println(con);
		
	 PreparedStatement pstmt = con.prepareStatement("insert into bbtable values(?,?,?,?,?,?)");
		
    	
	 pstmt.setString(1, userEmail);
		pstmt.setString(2, userName);
		
		
		pstmt.setString(3, usercontactNo);
		pstmt.setString(4, userAddress);
		pstmt.setString(5, userCity);
		pstmt.setString(6, userCountry);
		
		pstmt.executeUpdate();
		
		
    	
    	 return "bbRegsucess";
    
    }
    @RequestMapping(value="show",method=RequestMethod.GET)
    public String  bloodbankname(ModelMap model) throws ClassNotFoundException, SQLException
    {
    	ArrayList<String> al=new ArrayList<String>();
    	Class.forName("com.mysql.jdbc.Driver");
		
		String jdbcUrl = "jdbc:mysql://localhost:3306/bloodbank";
		
		Connection con = DriverManager.getConnection(jdbcUrl, "root", "root");
		PreparedStatement pstmt=con.prepareStatement("select * from bbtable;");
    	ResultSet rs=pstmt.executeQuery();
    	while(rs.next())
    	{
    		al.add(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6));
    		
    		
    	}
    	model.addAttribute("names", al);
    	return "alllbanks";
    	
    	
    }
    

}
