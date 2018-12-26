<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.IOException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ProAction - Home</title>
<link href="style1.css" rel="stylesheet" type="text/css"/>
<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js?ver=1.3.2'></script> 
<script type="text/javascript" language="javascript" src="scroll.js"></script> 
</head>
<body>

<div class="container">
 <div class="header">
<img alt="logo" src="images/cgi.png" id="logo" /> 

<div class="topnav" id="myTopnav">
<!-- <p align="center" style="color:white;padding-top:12px;">Select Project</p> -->
 
 <!--  <ul class="topnavigation">
  <li class="dropdown"><a href="javascript:void(0)"
				class="dropbtn">Project</a>
				<div class="dropdown-content">
					<a href="ses.jsp?name=ENDEAVOUR ENERGY">ENDEAVOUR ENERGY</a> <a
						href="ses.jsp?name=ENCANA">ENCANA</a> 
						<a href="ses.jsp?name=UKPN">UKPN</a>
					<a href="ses.jsp?name=EON">EON</a>
				</div></li>
</ul>  -->
 
</div>
<div class="dropbtn">
			 <ul class="dropdown">
        	<li id="select"><a href="#"><span id="projbtn">Select Project</span></a>
        		<ul class="sub_menu">
        		
        		<% try {

                    File f = new File("C:/Users/chirag.gokani/Documents/My Received Files/menu.txt");

                    BufferedReader b = new BufferedReader(new FileReader(f));

                    String readLine = "";

                    System.out.println("Reading file using Buffered Reader");

                    while ((readLine = b.readLine()) != null) { %>
                       <li><a href="ses.jsp?name=<%=readLine%>"><%=readLine %></a>
             <%        }

                } catch (IOException e) {
                    e.printStackTrace();
                    out.println("No File Found");
                }
 %>	
        		</ul>
        	</li>
        	
        </ul> </div>
</div>
<!-- <div class="logo">
<img alt="logo" src="images/logo.png" width="15%" height="5%"/>
</div> -->
<div>
<h4 style="margin-left: 513px;font-family: Arial Rounded MT;font-size: 22px;">ProAction Implementation</h4>

</div>

<!-- <div class="BU-a">

<ul class="info">
  <li class="projects"><a class="active" href="#">MIG</a></li>
  <li class="projects"><a href="ses.jsp?name=ENDEAVOUR ENERGY">ENDEAVOUR ENERGY</a></li>
  <li class="projects"><a href="ses.jsp?name=ENCANA">ENCANA</a></li>
  <li class="projects"><a href="ses.jsp?name=UKPN">UKPN</a></li>
  <li class="projects"><a href="ses.jsp?name=EON">EON</a></li>
  
</ul> 

</div>

<div class="BU-b">

<ul class="info">
  <li class="projects"><a class="active" href="#">CES</a></li>
  <li class="projects"><a href="ses.jsp?name=ENDEAVOUR ENERGY">ENDEAVOUR ENERGY</a></li>
  <li class="projects"><a href="ses.jsp?name=ENCANA">ENCANA</a></li>
  <li class="projects"><a href="ses.jsp?name=UKPN">UKPN</a></li>
  <li class="projects"><a href="ses.jsp?name=EON">EON</a></li>
  
</ul> 

</div>

<div class="BU-c">

<ul class="info">
  <li class="projects"><a class="active" href="#">FSDC</a></li>
  <li class="projects"><a href="ses.jsp?name=ENDEAVOUR ENERGY">ENDEAVOUR ENERGY</a></li>
  <li class="projects"><a href="ses.jsp?name=ENCANA">ENCANA</a></li>
  <li class="projects"><a href="ses.jsp?name=UKPN">UKPN</a></li>
  <li class="projects"><a href="ses.jsp?name=EON">EON</a></li>
  
</ul> 

</div>
<div class="BU-d">

<ul class="info">
  <li class="projects"><a class="active" href="#">ASDC</a></li>
  <li class="projects"><a href="ses.jsp?name=ENDEAVOUR ENERGY">ENDEAVOUR ENERGY</a></li>
  <li class="projects"><a href="ses.jsp?name=ENCANA">ENCANA</a></li>
  <li class="projects"><a href="ses.jsp?name=UKPN">UKPN</a></li>
  <li class="projects"><a href="ses.jsp?name=EON">EON</a></li>
  
</ul> 

</div>
<div class="BU-e">

<ul class="info">
  <li class="projects"><a class="active" href="#">GIM</a></li>
  <li class="projects"><a href="ses.jsp?name=ENDEAVOUR ENERGY">ENDEAVOUR ENERGY</a></li>
  <li class="projects"><a href="ses.jsp?name=ENCANA">ENCANA</a></li>
  <li class="projects"><a href="ses.jsp?name=UKPN">UKPN</a></li>
  <li class="projects"><a href="ses.jsp?name=EON">EON</a></li>
  
</ul> 

</div> -->
<div class="logo1" align="center">
<img alt="logo1" src="images/intro.PNG" name="Edv" />
<!-- <table cellspacing="5px">
<tr><td>

<img alt="logo1" src="images/EndeavourEnergy.png" width=300px height=150px name="Edv" />

</td>
<td>

<img alt="logo2" src="images/enacana.png" width=300px height=150px/>

</td>
</tr><tr>
<td>

<img alt="logo1" src="images/eon.PNG" width=300px height=150px/>

</td>
<td>

<img alt="logo2" src="images/ps.PNG" width=300px height=150px/>

</td></tr>
</table> -->
</div>
</div>

</body>
</html>