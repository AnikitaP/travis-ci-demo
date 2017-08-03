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
background:white;
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
<form action="hospi">

<div class="header">
            <div Class="logo">
			<img src="resources/logo2.jpg"/>
			</div>
       
            <fieldset class="row1">
                <legend> Hospital Details
                </legend>
                <p>
                <label>Hospital's Email *
                </label>
                <input type="text" name="userEmail" class="long" required="required"/>
                </p>
                

                <p>
                <label>Hospital's Name *
                </label>
                <input type="text" name="userName" class="long" required="required"/>
                </p>
                <p>
                <label> Hospital's Phone *
                </label>
                <input type="text" name="usercontactNo" minlength="10" maxlength="10" />
                </p>
                <p>
                <label>Hospital's Address *
                </label>
                <input type="text" name="userAddress" class="long"/>
            </p>

            <p>
            <label>Hospital's City *
            </label>
            <input type="text" name="userCity" class="long"/>
            </p>

            <p>
            <label>Hospital's Country *
            </label>
            <select name="userCountry">
                <option value="India">India
                </option>
                <option value="Us">Us
                </option>
            </select>
            </p>
            </fieldset>
<input type="submit" value="Register" align="right">
</form>

</body>
</html>