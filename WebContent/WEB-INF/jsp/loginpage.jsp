<%-- 
    Document   : loginpage
    Created on : Jan 23, 2017, 12:36:57 AM
    Author     : Gopshetwar Sneha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body >
        <table  style="background-color: purple; border: solid;">
        <tr><td>
        <label>Enter Email-ID :-</label>&nbsp;&nbsp;
        <input style="padding-left: 15px" type=text name="userEmail"/> <br><br></td></tr>
        <tr><td>
         <label>Enter Password :-</label>&nbsp;&nbsp;
         <input style="padding-left: 15px" type=password name="passWord"/> 
        <br> <input class="button" type=submit name=loginButton value=Login /></td></tr>
        </table>
    </body>
</html>
