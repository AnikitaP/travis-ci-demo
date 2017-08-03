
    

<link href="style.css" rel="stylesheet" type="text/css"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
        .header
{
width:100%;
height:150px;
background:	#8B4513;
}
.logo
{
width:30%;
height:150px;
background:	#90EE90;
float:left;

}

.logo img 
{
width:100%;
height:150px;
}
.menu
{
background-color:lightblue;
width:70%;
height:150px;
background:	#fff;
float:right;

}

        
        </style>
    </head>
    <body>
    <div class="header">
            <div Class="logo">
			<img src="resources/logo2.jpg"/>
			</div>
        <div class="menu"><h1><i>Blood At One Touch</i></h1>
        </div>
         
        <form action="insert" method="get" class="register" style="background: url(images/red-flowing-backgrd2.jpg)">
            <h1>User Detail Form</h1>
            <fieldset class="row1">
                <legend>Account Details
                </legend>
                <p>
                <input name="userRegId" type="hidden"  disabled="true" value="0"/>
                <input type="hidden" name="userType" disabled="true" value="User"/>
                </p>
                <p>

                <label>Email *
                </label>
                <input name="userEmailId" type="email"  required="required"/>
                
                </p>
                <p>
                <label>Password*
                </label>
                <input name="userPassword" type="password" required="required" />
                <label class="obinfo">* Compulsary fields
                </label>
                </p>
            </fieldset>
            <fieldset class="row2">
                <legend>User Details
                </legend>

                <p>
                <label>User Name *
                </label>
                <input type="text" name="userName" class="long" required="required"/>
                </p>
                <p>
                <label>Phone *
                </label>
                <input type="text" name="usercontactNo" minlength="10" maxlength="10" />
                </p>
                <p>
                <label>Address *
                </label>
                <input type="text" name="userAddress" class="long"/>
            </p>

            <p>
            <label>City *
            </label>
            <input type="text" name="userCity" class="long"/>
            </p>

            <p>
            <label>Country *
            </label>
            <select name="userCountry">
                <option value="India">India
                </option>
                <option value="Us">Us
                </option>
            </select>
            </p>

        </fieldset>
        <fieldset class="row3">
            <legend>Further Information
            </legend>
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
                    
                </select>
            </p>
            <p>
            <label>Age *
            </label>
            <input class="year" name="userAge" type="text"/>
            <label>Weight *
            </label>
            <input class="year" name="weight" type="text"/>
            </p>
            <p>
            <label>Gender *</label>
            <input type="radio" name="gender" value="Male"/>
            <label class="gender">Male</label>
            <input type="radio" name="gender" value="Female"/>
            <label class="gender">Female</label>
            </p>
            <p>
            <label>Birthdate *
            </label>
            <select name="birthDate" class="date">
                <option value="1">01
                </option>
                <option value="2">02
                </option>
                <option value="3">03
                </option>
                <option value="4">04
                </option>
                <option value="5">05
                </option>
                <option value="6">06
                </option>
                <option value="7">07
                </option>
                <option value="8">08
                </option>
                <option value="9">09
                </option>
                <option value="10">10
                </option>
                <option value="11">11
                </option>
                <option value="12">12
                </option>
                <option value="13">13
                </option>
                <option value="14">14
                </option>
                <option value="15">15
                </option>
                <option value="16">16
                </option>
                <option value="17">17
                </option>
                <option value="18">18
                </option>
                <option value="19">19
                </option>
                <option value="20">20
                </option>
                <option value="21">21
                </option>
                <option value="22">22
                </option>
                <option value="23">23
                </option>
                <option value="24">24
                </option>
                <option value="25">25
                </option>
                <option value="26">26
                </option>
                <option value="27">27
                </option>
                <option value="28">28
                </option>
                <option value="29">29
                </option>
                <option value="30">30
                </option>
                <option value="31">31
                </option>
            </select>
            <select name="birthMonth">
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
            </select>
            <input class="year" name="birthYear" type="text" size="4" maxlength="4"/>e.g 1976
            </p>


        </fieldset>
        <div><input type="submit" value="register"></div>
    </form>
</div>





    </body>
</html>
