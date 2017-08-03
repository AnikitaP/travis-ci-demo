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
<form action="admin">
 <div class="header">
            <div Class="logo">
			<img src="resources/logo2.jpg"/>
			</div>
<p>
            <label>usertype(acceptor/donor) *</label>
         Acceptor :  <input type="radio" name="usertype" value="Acceptor"/>
            
        Donor :    <input type="radio" name="usertype" value="Donor"/>
            
            </p>
            <input type="submit" value="click here"/>
            </form>

</body>
</html>