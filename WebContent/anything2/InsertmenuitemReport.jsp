<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<%@ page import="anything.variablesm"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META name="GENERATOR" content="">
<META http-equiv="Content-Style-Type" content="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
<TITLE>Add Item</TITLE>
</HEAD>
<body leftmargin="0" topmargin="0" >

<% 	String family = (String)request.getAttribute("keyif1");
	String member = (String)request.getAttribute("keyif2");
	String restaurant = (String)request.getAttribute("keyif3");
	String item = (String)request.getAttribute("keyif4");
	String rating = (String)request.getAttribute("keyif5");
	String notes = (String)request.getAttribute("keyif6");
	%>
<div class="text-center flex-container">	
    	  <!--<tr><td><%//=family%></td></tr>-->
	  <%=member%><br>
	  <%=restaurant%><br>
	  <%=item%><br>
	  Rating:	<%=rating%>	stars<br>
	  <%=notes%><br>
</div>
<div class="text-center">
Your menu item has been added.
  <br>
<button class="btn btn-outline-primary"><a href="/menuapp/anything2/familymembers.jsp?lif1=<%=restaurant%>">Add another item to <%=restaurant%></a></button><br>
<button class="btn btn-outline-primary"><a href="/menuapp/anything2/Insertmenuitem.jsp?lif1=<%=restaurant%>&lif2=<%=member%>">Add another item</a></button>

<br>
<a href="/menuapp/anything2/home.jsp">
<button class="btn btn-outline-primary">Home</button>
</a>
</div>
  
</body>
</html>


