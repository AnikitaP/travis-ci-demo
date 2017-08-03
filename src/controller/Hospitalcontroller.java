package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Hospitalcontroller {
	
	@Autowired
	DataSource ds;
	@RequestMapping(value="hospi",method=RequestMethod.GET)
	public String inserthospi(@RequestParam String userEmail,
    		@RequestParam String userName,@RequestParam String usercontactNo,@RequestParam String userAddress,
    		@RequestParam String userCity,@RequestParam String userCountry)
	{
		try
		{
		Connection con=ds.getConnection();
		
		 PreparedStatement pstmt = con.prepareStatement("insert into hospital values(?,?,?,?,?,?)");
			
	    	
		 pstmt.setString(1, userEmail);
			pstmt.setString(2, userName);
			
			
			pstmt.setString(3, usercontactNo);
			pstmt.setString(4, userAddress);
			pstmt.setString(5, userCity);
			pstmt.setString(6, userCountry);
			
			pstmt.executeUpdate();
			
		}catch (SQLException e) {
			// TODO: handle exception
		}	
		
		
		return "hospitalRegSuc";
		
	}
	
	

}
