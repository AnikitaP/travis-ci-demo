package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;

import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.HttpServletBean;

@Controller
public class Admincontroller {
	@Autowired
	DataSource ds;
	
	@RequestMapping(value="admin" ,method=RequestMethod.GET)
	public String checkuser(@RequestParam String usertype)
	{ if(usertype.equals("Acceptor"))
	{
		
		return "acceptor";
	}else
	{
		return "donor";
	}
	}
	
	
	@RequestMapping(value="forpayment",method=RequestMethod.GET)
	public String Acceptormethod(@RequestParam String quantity,@RequestParam String userBloodGroup) throws SQLException
	{
		Connection con=ds.getConnection();
		int qunt=Integer.parseInt(quantity);
		PreparedStatement ps=con.prepareStatement("select quantity from bloodstack where bloodgroup=?");
		ps.setString(1 ,userBloodGroup);
		ResultSet rs=ps.executeQuery();
		int value=-1;
		while(rs.next())
		{
		 value=rs.getInt(1);
		}
		int val=value-qunt;
	 if(val >=0)
		{
		 PreparedStatement pstmt = con.prepareStatement("update bloodstack set quantity=quantity-? where bloodgroup=?");
		 pstmt.setInt(1,qunt);
		 pstmt.setString(2, userBloodGroup);
		  pstmt.executeUpdate();

     return "paymentcomplete";
		}
	 
		else
		{
			
			return "bloodnotavailable";
			
		}
	}
		
		
		
	
@RequestMapping(value="donor" ,method=RequestMethod.GET)
	public String Donormethod(@RequestParam String userBloodGroup)
	{
		
		
		try
		{
			
		Connection con=ds.getConnection();
		
		
		  PreparedStatement pstmt = con.prepareStatement("update bloodstack set quantity=quantity+200 where bloodgroup=?");
		  pstmt.setString(1 ,userBloodGroup);
		  pstmt.executeUpdate();
		
		}
		catch (SQLException e){
			e.printStackTrace();
		}
		
		return "donatecomplete";
	}
	
	
	
	@RequestMapping(value="usr",method=RequestMethod.GET)
	public String userdetails(ModelMap model)
	{
		ArrayList<String> al=new ArrayList<String>();
		try {
			Connection con=ds.getConnection();
			
			PreparedStatement psmt=con.prepareStatement("select * from user");
			
			ResultSet rs=psmt.executeQuery();
			while(rs.next())
			{
				al.add(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "
			+rs.getString(4)+" "+rs.getString(5)+" "
						+rs.getString(6)+" "+rs.getString(7)
						+" "+rs.getString(8)+" "+rs.getInt(9)+" "
						+rs.getInt(10)+" "+rs.getString(11)+" "+rs.getInt(12)+" "+
						rs.getString(13)+" "+rs.getInt(14));
				
				
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		model.addAttribute("users", al);
		return "admin";
	}
	@RequestMapping(value="hospital",method=RequestMethod.GET)
	public String hospitaldetails(ModelMap model)
	{
		try
		{
		ArrayList<String> al1 = new ArrayList<String>();
		Connection con=ds.getConnection();
		PreparedStatement pstmt=con.prepareStatement("select * from hospital;");
    	ResultSet rs=pstmt.executeQuery();
    	while(rs.next())
    	{
    		al1.add(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6));
    		
    		
    	}
    	model.addAttribute("hospitals",al1);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
    	
		
		return "admin";
		
	}
	
	@RequestMapping(value="BB",method=RequestMethod.GET)
	public String BBdetails(ModelMap model)
	{
		try
		{
		ArrayList<String> al1 = new ArrayList<String>();
		Connection con=ds.getConnection();
		PreparedStatement pstmt=con.prepareStatement("select * from bbtable;");
    	ResultSet rs=pstmt.executeQuery();
    	while(rs.next())
    	{
    		al1.add(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6));
    		
    		
    	}
    	model.addAttribute("BBdetails",al1);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
    	
		
		return "admin";
		
	}
	
	
	@RequestMapping(value="bbank",method=RequestMethod.GET)
	public String SearchBB(@RequestParam String city,ModelMap model)
	{
		try
		{
			ArrayList<String> al=new ArrayList<String>();
		Connection con=ds.getConnection();
		PreparedStatement pstmt=con.prepareStatement("select * from bbtable where City='"+city+"'");
		
		ResultSet rs=pstmt.executeQuery();
		
		while(rs.next())
		{
			al.add(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6));
			
			
		}
		model.addAttribute("bdata", al);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return "searchedbb";
		
		
	}
	@RequestMapping(value="hospit",method=RequestMethod.GET)
	public String SearchHospital(@RequestParam String city,ModelMap model)
	{
		try
		{
			ArrayList<String> al=new ArrayList<String>();
		Connection con=ds.getConnection();
		PreparedStatement pstmt=con.prepareStatement("select * from hospital where City='"+city+"'");
		
		ResultSet rs=pstmt.executeQuery();
		
		while(rs.next())
		{
			al.add(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6));
			
			
		}
		model.addAttribute("hdata", al);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return "searchedbb";
		
		
	}
	@RequestMapping(value="back",method=RequestMethod.GET)
	public String GOBACK()
	{
		
		return "bloodnotavailable";
		
	}
	
}
