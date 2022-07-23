<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato&family=Playfair+Display:ital@1&family=Roboto&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META name="GENERATOR" content="IBM WebSphere Studio">
<META http-equiv="Content-Style-Type" content="text/css">
<LINK href="../theme/menuapp.css" rel="stylesheet" type="text/css">
<TITLE>home.jsp</TITLE>
<script src="https://kit.fontawesome.com/dfaaaa4306.js" crossorigin="anonymous"></script>
</HEAD>
<BODY>


  <%String rname = (String)request.getAttribute("keyif1");%>

    <!----------------Start of database access-------------------------------->
    	<jsp:useBean id="display3" class="anything.GetrData" scope="request">
		</jsp:useBean>
		
		<% display3.connect(); %>
		<% display3.select(); %>
		<%@ page import="java.util.Vector" %>
		<% Vector aResult = display3.getResult(); %>
		<% int s=0; %>
	<!----------------Start of Display-------------------------------->

<div class="flex-container">

      <% for (int i=0; i < aResult.size(); i++) { %>
      
      	<!--<div><%//s++;%><%//=s%></div>-->
        <!--<div><%//=aResult.elementAt(i)%><%//=i%></div>-->
	        <div><%i++;%><button class="btn btn-lg btn-outline-primary m-2"><a href="restaurantpage.jsp?lif1=<%=aResult.elementAt(i)%>&lif2=<%i++;%><%=aResult.elementAt(i)%>&lif3=<%=aResult.elementAt(i)%>"><%i=i-1;%><%=aResult.elementAt(i)%></a>	<i class="fa-solid fa-plus"></i></button></div>
	   		<!--<div><%i++;%></div>-->
			<!--<div><%i++;%><%//=aResult.elementAt(i)%></div>-->
			<!--<div><%i++;%><%//=aResult.elementAt(i)%></div>-->
      
      <% } %>
      </div>
      <button class="btn btn-lg btn-outline-primary m-2"><a href="Insertr.jsp">Add	<i class="fa-solid fa-plus"></i></a></button>
      
      <br/><br/>
          


</BODY>
</HTML>
