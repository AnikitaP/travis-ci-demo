<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% ArrayList<String> names=(ArrayList)request.getAttribute("names");
if(names!=null)
{

%>
<table border="1" bgcolor="skyblue">
<tr>
<th>Email</th><th>Name</th><th>contact no</th><th>Address</th><th>city</th><th>country</th></tr>
<% 
Iterator iter=names.iterator();

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