<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.proPackage.B"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%	

	B b=new B();
	int y=b.getcount();

	String Page=request.getParameter("page");
	int x=Integer.parseInt(request.getParameter("p"));
	out.print(x);
	out.print(Page);
	if(Page.equals("next")){
		x++;
	}
	if(Page.equals("prev"))
	{
		x--;
	}
	if(Page.equals("fisrtpage") && x==1){
		x=1;
	}
	if(Page.equals("lastpage") && x==0){
		x=y;
	}
	
	response.sendRedirect("DD.jsp?page="+x);

%>

</body>
</html>