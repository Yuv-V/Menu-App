<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<%@ page 
language="java"
contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"
%>
<META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META name="GENERATOR" content="IBM WebSphere Studio">
<META http-equiv="Content-Style-Type" content="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<LINK href="../theme/menuapp.css" rel="stylesheet" type="text/css">
<TITLE>familymembers.jsp</TITLE>
<script src="https://kit.fontawesome.com/dfaaaa4306.js" crossorigin="anonymous"></script>
</HEAD>
<BODY>
<div class="text-center">
<a href="home.jsp?"><button class="btn btn-primary m-2">Home</button></a>
</div>
<div class="text-center">
<a href="Insertfm.jsp?"><button class="btn btn-outline-primary m-2">Add a Family Member</button></a>
</div>
<hr/>
<div class="text-center">
View: <i class="fa-solid fa-eye"></i><br>
Add: <i class="fa-solid fa-square-plus"></i>
</div>


<%String fmname = (String)request.getAttribute("keyif1");%>
    <!----------------Start of database access-------------------------------->
    <jsp:useBean id="display2" class="anything.GetfmData" scope="request">
	</jsp:useBean>
		
	<% display2.connect(); %>
	<% display2.select(); %>
	<%@ page import="java.util.Vector" %>
	<% Vector aResult2 = display2.getResult(); %>
	<% int s2=0; %>
	<!----------------Start of Display-------------------------------->
	<div class="m-3">
    <h5 class="text-center">Selected Restaurant:  <%=request.getParameter("lif1")%>	</h5>
    </div>
    <%//=aResult2.size()%>
     <div class="flex-container text-center">
      <% for (int i=0; i < aResult2.size(); i++) { %>
      	
      	<!--<div><%//s2++;%><%//=s2%></div>-->
        <!--<div><%//=aResult2.elementAt(i)%></div>-->
	        <div><%i++;%><a href="displaymenuitems.jsp?member=<%=aResult2.elementAt(i+1)%>&restaurant=<%=request.getParameter("lif1")%>">	<i class="fa-solid fa-eye"></i></a>
	   		<%i++;%><a href="Insertmenuitem.jsp?lif2=<%=aResult2.elementAt(i)%>&lif1=<%=request.getParameter("lif1")%>"><i class="fa-solid fa-square-plus"></i></a>
	   		<%=aResult2.elementAt(i)%>	
	   		<%i++;%><%//=aResult2.elementAt(i)%></div><br>
      <% } %>
      </div>
      <div class="text-center">
      <a href="home.jsp"><button class="btn btn-primary">Select a different restaurant</button></a>
      </div>
</BODY>
</HTML>
