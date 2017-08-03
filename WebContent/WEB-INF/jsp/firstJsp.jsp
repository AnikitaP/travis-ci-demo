<html>
<head>

<link href="/resources/css/style.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
*
{
margin:0px auto;
padding:0px auto;
}
.container
{
width:100%;
height:auto;
background:#ccc;
}
body
{
background-image:url(img/body.jpeg);
}

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
.menu ul
{
	
list-style-type:none;
padding-top:20px;
	
}
.menu ul li
{
	float:left;
	width:120px;
	background:green; 
	color:black;
	margin:20px;
	box-shadow:0px 6px 11px black;
	text-align:center;
	padding-top:10px;
	
	
}
.t1 
{
	width:100%;
	height:120px;
	background:gray;
}
.menu1
{
width:100%;
height:30px;	
	background:pink;
}

.banner
{
width:100%;
height:300px;
background:	#8B0000;
}
.banner img{
width:100%;
height:300px;
}
.main
{
width:100%;
height:270px;
background:	#fff;
}
.welcome
{
width:58%;
height:270px;
background:	#fff;
float:left;
box-shadow:0px 0px 11px #000;
margin:1%;
border-radius:10px;

}
.welcome h1
{
background:pink;
color:red;
text-align:center;
padding:10px;
margin:5px;
}
.welcome p
{
line-height:28px;
text-align:justify;
padding:15px;
}
.sb
{
width:40%;
height:270px;
background:grey;
float:right;
}
.sb img
{
	width:100%;`
	height:200px;
}
.sb marquee
{
	text-align:justify;
	
	
}

.main
{
width:100%;
height:250px;
}

.footer
{
width:100%;
height:70px;
background:#000;
padding-top:20px;
}
.footer p
{
	color:#fff;
	text-align:center;
}

</style>
</head>
<body style="background-image:body.jpeg">
<div Class="container">
    <div class="header">
            <div Class="logo">
			<img src="resources/logo2.jpg"/>
			</div>
			<div Class="menu" background-image=>
			   <ul>
			   
			  <li> <a href="home">HOME</a></li>
			   <li> <a href="about">ABOUT</a></li>
			    <li> <a href="signin">SIGN IN</a></li>
			     <li> <a href="contact">CONTACT</a></li>
			   
			   </ul>
			</div>
       </div>     
<div Class="banner">
<img src="resources/banner.png"/>
</div>
<div Class="main">
         <div Class="welcome">
		<marquee direction="left"><h1>welcome to my Blood Bank</h1></marquee>
		 <p>Blood is saver of all existing lives on the earth. The probability of finding required blood components and blood groups in nearby blood banks is low, because of these reasons patient life is at risk. There were many websites are available in which donor's information and contact details are available but these details are not reliable and accurate. Considering all these problems in our existing life we coined an idea of designing a web based mobile android application to overcome existing problem. Our mobile application helps people in finding blood banks in their nearest location. This application also shows route or path for reaching blood bank easily by using GPS system. Our system maintains the stock levels of blood banks and their location and their contact details.
        </p>
</p>
		 </div>
         <div Class="sb">

		 
		 
		 <div class="contact"><p> NATIONAL NEEDY BLOOD BANK</br>  FOR MORE DETAILS: CONTACT ASHWINI BHAGWAT</br> (PHONE NO:9960328392)</p></div>
<div class="login" >
<form action="lpage">
 <table  style="background-color:pink; border: solid;">
        <tr><td>
        <b> UserType:<select name="check"  value="select one";></b>
            <option value="admin">admin</option>
            <option value="user">user</option>
           
          
        </select></br>
        <label>Enter Email-ID :-</label>&nbsp;&nbsp;
        <input type="text" name="userEmail"/> <br><br></td></tr>
        <tr><td>
         <label>Enter Password :-</label>&nbsp;&nbsp;
         <input type="password" name="passWord"/> 

        <br> <input type="submit"  value=Login /></td></tr>
<tr><td> <a href="forgetpassword.jsp"> <b>forget password?</b></td></tr>

        </table>
</form>
    
</div>
<div class="register">
     
           <form action="tocheck">
<p style="color:red">If New User Then Register Here!!!!</p>

      <b> UserType:<select name="check"  value="select one";></b>

            <option value="user">user</option>
            <option>hospital</option>
            <option>Blood Bank</option>
          
        </select></br>
            
        <input type="submit" value="Registration" />
        
        </form>
</div>
		 
		 
		 </div>
</div>
   
	  <div Class="footer">
	  <p>Developed by ashwini & sneha</p>
	  </div>



</body>
</html>
