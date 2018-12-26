<%@page import="com.proPackage.Img"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="b" scope="page" class="com.proPackage.B" />
<jsp:useBean id="img" scope="page" class="com.proPackage.Img" />
<%
String ss="";
String proname = request.getParameter("name");
out.print(proname);
String filename = request.getParameter("file");
int iRowAffected = 0;   
if(proname!=null)
{
	ss=proname;
}

if(filename==null)
{
	filename="DD";
}

String filepath="C:/Users/chirag.gokani/Desktop/"+proname+"/"+filename;
img.getfilepath(filepath);
b.getfilepath(filepath);
  session.setAttribute("pName", ss);
    
  /*  if(proname!=null){
	   session.setAttribute( "pName", proname );
   }
   else{
	   session.setAttribute("pName", ss );
   }  */
// response.sendRedirect("ProServ1");
response.sendRedirect(filename+".jsp?page=1");
out.print(filepath);
%>

</body>
</html>