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
<form action="forpayment">
<div class="header">
            <div Class="logo">
			<img src="resources/logo2.jpg"/>
			</div>



<table border="1" bgcolor="skyblue"><label>Blood Group *</label>

            <tr> <td>  <select name="userBloodGroup">
                    
                    <option value="Aplus">A+
                    </option>
                    <option value="AMinus" class="long">A-
                    </option>
                    <option value="BPlus">BPlus
                    </option>
                    <option value="BMinus" class="long">BMinus
                    </option>
                     <option value="ABlus">ABlus
                    </option>
                    <option value="ABMinus" class="long">ABMinus
                    </option>
                    <option value="OPlus">OPlus
                    </option>
                    <option value="OMinus" class="long">OMinus
                    </option>
                    
                </select>
            </td>
            <td>
            Quantity in ml<input type="text" name="quantity"/>
            <!-- <input type="submit" value="Send Request"> -->
            </td></tr>
        </table>
        <table border="1" bgcolor="skyblue"><th style="color: red">ATM details</th>
       
        <p>
         <tr><td>
 <select name="Expmonth" >
                <option value="1">January
                </option>
                <option value="2">February
                </option>
                <option value="3">March
                </option>
                <option value="4">April
                </option>
                <option value="5">May
                </option>
                <option value="6">June
                </option>
                <option value="7">July
                </option>
                <option value="8">August
                </option>
                <option value="9">September
                </option>
                <option value="10">October
                </option>
                <option value="11">November
                </option>
                <option value="12">December
                </option>
            </select></td>
     <td>Year:<input type="text" name="expyear" required="required"/></td>
     
    <td> CVV:<input type="text" name="expyear" maxlength="3" /></td>
   </p></tr> </table>
     <input type="submit" value="pay" style="background-color:orange;">
            
            </form>
</body>
</html>