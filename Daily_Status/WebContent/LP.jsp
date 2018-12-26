<%@page import="com.proPackage.Img"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ page import="java.io.File"%>
    <%@page import="java.io.IOException"%>
    <%@page import="java.awt.image.BufferedImage"%>
    <%@page import="javax.imageio.ImageIO"%>
    <%@page import="java.io.ByteArrayOutputStream"%>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %>
    <%@page import="java.math.BigInteger"%>
    <%@page import="javax.xml.bind.DatatypeConverter"%>
    <%@page import="java.awt.image.BufferedImage"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Leave Planner</title>
<link href="style.css" rel="stylesheet" type="text/css"/>
<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js?ver=1.3.2'></script> 
<script type="text/javascript" language="javascript" src="scroll.js"></script> 
</head>
<body>

<div class="topnav" id="myTopnav">
  <ul>
 <li><a href="ses.jsp?file=DD&name=<%=session.getAttribute("pName") %>">DashBoard</a></li>
  <li><a href="ses.jsp?file=Skills&name=<%=session.getAttribute("pName") %>">Skills</a></li>
  <li class="active"><a href="ses.jsp?file=LP&name=<%=session.getAttribute("pName") %>">Leave Planner</a></li>
  <li><a href="ses.jsp?file=CC_TeamObj&name=<%=session.getAttribute("pName") %>">Captain's Corner</a></li>
  <li class="proname"><%=session.getAttribute("pName")%></li></ul>
  <!-- <li class="label">Project : </li> -->
<%--   <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn"><%=session.getAttribute("pName")%></a>
    <div class="dropdown-content">
    <a href="ses.jsp?name=ENDEAVOUR ENERGY">ENDEAVOUR ENERGY</a> 
					<a href="ses.jsp?name=ENCANA">ENCANA</a> 
					<a href="ses.jsp?name=UKPN">UKPN</a>
					<a href="ses.jsp?name=EON">EON</a> --%>
    </div>
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
                }
 %>	
        		</ul>
        	</li>
        	
        </ul> </div>
</div>
  </li>
</ul>
</div>
<div class="Image" align="center">
<% Img img=new Img();
 String path=img.sendpath(); 

    //write image
    try{
      String imgName=path;
      BufferedImage bImage = ImageIO.read(new File(imgName));//give the path of an image
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ImageIO.write( bImage, "PNG", baos );
        baos.flush();
        byte[] imageInByteArray = baos.toByteArray();
        baos.close();                                   
        String b64 = DatatypeConverter.printBase64Binary(imageInByteArray);
        %>
        <img src="data:image/PNG;base64, <%=b64%>" height="500px" width="800px"/>                            
        <% 
    }catch(IOException e){
      System.out.println("Error: "+e);
    } 


    %>


</div>
<a href="MainPage1.jsp"><img class="home" alt="home" src="images/home-button.png" height="60px" width="60px"></a>
</body>
</html>