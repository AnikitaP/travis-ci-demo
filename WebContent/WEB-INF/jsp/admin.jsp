<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% ArrayList<String> users=(ArrayList)request.getAttribute("users");
if(users !=null)
{

%>
<table border="1" bgcolor="skyblue">
<tr>
<th>userEmailId</th><th>userPassword</th><th>userName</th><th>usercontactNo</th><th>userAddress</th>
<th>userCity</th><th>userCountry</th><th>userBloodGroup</th>
<th>userAge</th><th>weight</th><th>gender</th><th>birthDate</th>
<th>birthMonth</th><th>birthYear</th>



</tr>
<% 
Iterator iter=users.iterator();

%>
<%while(iter.hasNext())%><% 
{
	
%><tr>

<%String str=(String)iter.next();
String[] str1=str.split(" ");
for(int j=0;j<14;j++)
{
%><td><%=str1[j] %></td>
<%} %>
</tr>
<%} %>




<% 

}%>

</table>

<form action="usr" >
<input type="submit" value="userdata" />
</form>
<form action="hospital" >
<input type="submit" value="hospitaldata" />
</form>
<form action="BB" >
<input type="submit" value="bloodbankdata" />
</form>

<% ArrayList<String> hospitals=(ArrayList)request.getAttribute("hospitals");
if(hospitals!=null)
{

%>
<table border="1" bgcolor="skyblue">
<tr>
<th>Email</th><th>Name</th><th>contact no</th><th>Address</th><th>city</th><th>country</th></tr>
<% 
Iterator iter=hospitals.iterator();

%>
<%while(iter.hasNext())%><% 
{
	
%><tr>

<%String str=(String)iter.next();
String[] str1=str.split(" ");
for(int j=0;j<6;j++)
{
%><td><%=str1[j] %></td>
<%} %>
</tr>
<%} %>




<% 

}%>

</table>
<% ArrayList<String> BBdetails=(ArrayList)request.getAttribute("BBdetails");
if(BBdetails!=null)
{

%>
<table border="1" bgcolor="skyblue">
<tr>
<th>Email</th><th>Name</th><th>contact no</th><th>Address</th><th>city</th><th>country</th></tr>
<% 
Iterator iter=BBdetails.iterator();

%>
<%while(iter.hasNext())%><% 
{
	
%><tr>

<%String str=(String)iter.next();
String[] str1=str.split(" ");
for(int j=0;j<6;j++)
{
%><td><%=str1[j] %></td>
<%} %>
</tr>
<%} %>




<% 

}%>

</table>

</body>
</html>