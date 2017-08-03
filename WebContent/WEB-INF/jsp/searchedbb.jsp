<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
        .header
{
width:100%;
height:150px;
background:	white;
}
.logo
{
width:30%;
height:150px;
background:	white;
float:left;

}

.logo img 
{
width:100%;
height:150px;
}

        
        </style>
</head>
<body>
<div class="header">
            <div Class="logo">
			<img src="resources/logo2.jpg"/>
			</div>
<% ArrayList<String> BBdetails=(ArrayList)request.getAttribute("bdata");
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
<% ArrayList<String> HHdetails=(ArrayList)request.getAttribute("hdata");
if(HHdetails!=null)
{

%>
<table border="1" bgcolor="skyblue">
<tr>
<th>Email</th><th>Name</th><th>contact no</th><th>Address</th><th>city</th><th>country</th></tr>
<% 
Iterator iter=HHdetails.iterator();

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

<a href="back">Go Back</a>

</body>
</html>