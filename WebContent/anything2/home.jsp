<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META name="GENERATOR" content="IBM WebSphere Studio">
<META http-equiv="Content-Style-Type" content="text/css">
<LINK href="../theme/menuapp.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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

    <%//=aResult.size()%>
     <div class="flex-container text-center">

      <% for (int i=0; i < aResult.size(); i++) { %>
      
      	<!--<div><%//s++;%><%//=s%></div>-->
        <!--<div><%//=aResult.elementAt(i)%><%//=i%></div>-->
	        <div><%i++;%><a href="familymembers.jsp?lif1=<%=aResult.elementAt(i)%>"><button class="btn btn-lg btn-outline-primary m-2"><%=aResult.elementAt(i)%>	<i class="fa-solid fa-plus"></i></button></a></div>
	   		<!--<div><%i++;%><%//=aResult.elementAt(i)%></div>-->
			<!--<div><%i++;%><%//=aResult.elementAt(i)%></div>-->
			<!--<div><%i++;%><%//=aResult.elementAt(i)%></div>-->
      
      <% } %>
      </div><br><br>
      <div class="text-center">
      <a href="Insertr.jsp"><button class="btn btn-lg m-2 text-center btn-primary"><i class="fa-solid fa-plus"></i>	Add Restaurant</button></a><br>
      <a href="Insertfm.jsp"><button class="btn btn-lg m-2 btn-primary"><i class="fa-solid fa-plus"></i>	Add Family Member</button></a>
      </div>
      <br/><br/>
          


</BODY>
</HTML>
