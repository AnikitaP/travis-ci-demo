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
<form action="donor">
<div class="header">
            <div Class="logo">
			<img src="resources/logo2.jpg"/>
			</div>
<p><label>Blood Group *</label>
               <select name="userBloodGroup">
                    
                    <option value="APlus">A+
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
                    
                </select></p>
                
                <input type="submit" value="PROCEED"/>
                
                </form>

</body>
</html>