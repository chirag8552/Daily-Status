<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><%@page import="java.io.FileInputStream"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="com.proPackage.B"%>
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
<%@page import="com.proPackage.Img"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DashBoard</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js?ver=1.3.2'></script> 
<script type="text/javascript" language="javascript" src="scroll.js"></script> 
</head>
<body>

	<div class="topnav" id="myTopnav">
		<ul>
			<li class="active"><a
				href="ses.jsp?file=DD&name=<%=session.getAttribute("pName")%>">DashBoard</a></li>
			<li><a
				href="ses.jsp?file=Skills&name=<%=session.getAttribute("pName")%>">Skills</a></li>
			<li><a
				href="ses.jsp?file=LP&name=<%=session.getAttribute("pName")%>">Leave
					Planner</a></li>
			<li><a
				href="ses.jsp?file=CC_TeamObj&name=<%=session.getAttribute("pName")%>">Captain's
					Corner</a></li>
			
			<li class="proname"><%=session.getAttribute("pName")%></li></ul>
					
				<!-- <ul>	<li class="label">Project : </li> -->
			<%-- <li class="dropdown"><a href="javascript:void(0)"
				class="dropbtn"><%=session.getAttribute("pName")%> </a>
				<div class="dropdown-content">
					
					
				</div></li> --%>
				
		
				
			<!-- <li class="dropdown"><select size="4" id="project" name="name" onchange="location = this.value;">
			<option value="ses.jsp?name=ENDEAVOUR ENERGY">ENDEAVOUR ENERGY</option>
			<option value="ses.jsp?name=ENCANA">ENCANA</option>
			<option value="ses.jsp?name=UKPN">UKPN</option>
			<option value="ses.jsp?name=EON">EON</option>
			<option value="ses.jsp?name=ENDEAVOUR ENERGY">ENDEAVOUR ENERGY</option>
			<option value="ses.jsp?name=ENCANA">ENCANA</option>
			<option value="ses.jsp?name=UKPN">UKPN</option>
			<option value="ses.jsp?name=EON">EON</option>
			<option value="ses.jsp?name=ENDEAVOUR ENERGY">ENDEAVOUR ENERGY</option>
			<option value="ses.jsp?name=ENCANA">ENCANA</option>
			<option value="ses.jsp?name=UKPN">UKPN</option>
			<option value="ses.jsp?name=EON">EON</option>
			</select>	</li> </ul>-->
				
		
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
    
   <!--  <form action="test.jsp">
    <input type="submit" value="submit"/>
    </form>
    <a href="C:/Users/chirag.gokani/Desktop/eclipse-workspace/ProAction/dd.xlsm" target="_blank">Excel</a>  -->
    
    

    </div>

       
	<%-- <div class="content" align="center">
	
		<%
			B b = new B();
		%>
		<table id="box-table-a" align="center">

			<%
				ArrayList list = b.gethead();
			%>
			<thead>
			
				<tr>
					<%
						int c = 0;
						for (Object x : list) {
					%>
					<th>
						<%
							out.print(x);
								c++;
						%>
					</th>
					<%
						}
					%>
				</tr>
			
			</thead>
 			 
			<%  
			String spageid=request.getParameter("page");  
			int pageid=Integer.parseInt(spageid); 
			int p=pageid;
			int total=8;  
			
			if(pageid==1){}  
			else{  
			    pageid=pageid-1;  
			    pageid=pageid*total+1;  
			}  
			
				ArrayList list1 = b.getbody(pageid, total);

			%>
			<tbody>
				<%! static int x=1;int z,y=0; %>
				<% 
					int i = 0;
					for (Object y:list1) {
						if (i == 0) {
				%>
				<tr>
					<%
						}
							if (i % c == 0) {
					%>
				</tr>
				<tr>
					<%
							}
					%>

					<td>
						<%
							out.print(y);
								i++;
						%>
					</td>
					<%
						}
					%>
				</tr>
			</tbody>
		</table>
		<% if(p==1){}else{ %>
		<a href="page.jsp?page=firstpage&p=1"><img class="prev" src="images/first.png" width="90px" height="30px"></a>	
		<a href="page.jsp?page=prev&p=<%=request.getParameter("page")%>"><img class="prev" src="images/prev.png" width="90px" height="30px"></a><%} %>
		<% if(p<b.getcount()){%> 
		<a href="page.jsp?page=next&p=<%=request.getParameter("page")%>"><img class="prev" src="images/next.png" width="90px" height="30px"></a>
		<a href="page.jsp?page=lastpage&p=0"><img class="prev" src="images/last.png" width="90px" height="30px"></a><%}else{} %>
		
	</div> --%>
	<a href="MainPage1.jsp"><img class="home" alt="home" src="images/home-button.png" height="60px" width="60px"></a>
</body>
</html>
