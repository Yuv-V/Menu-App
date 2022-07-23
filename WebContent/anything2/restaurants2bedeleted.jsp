<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<%@ page 
language="java"
contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"
%>
<META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META name="GENERATOR" content="IBM WebSphere Studio">
<META http-equiv="Content-Style-Type" content="text/css">
<LINK href="../theme/Master.css" rel="stylesheet" type="text/css">
<TITLE>tacobell.jsp</TITLE>
</HEAD>
<BODY>
<a href="Insertr.jsp">
<button>+ Add</button>
</a>
<a href="restaurants2bedeleted.jsp">
<button>Taco Bell</button>
</a>
<br><br>
<a href="restaurants.jsp">
<button>All Restaurants</button>
</a>
<br><br>
<a href="Insertfm.jsp?">
<button>Add Menu Item</button>
</a>
<a href="home.jsp?">
<button>Home</button>
</a>
<br><br>

     <!----------------Start of database access-------------------------------->
    	<jsp:useBean id="display" class="anything.GetrData" scope="request">
		</jsp:useBean>
		
		<% display.connect(); %>
		<% display.select(); %>
		<%@ page import="java.util.Vector" %>
		<% Vector aResult = display.getResult(); %>
		<% int s=0; %>
	<!----------------Start of Display-------------------------------->
     <table border=2>
      <% for (int i=0; i < 4; i++) { %>
      <tr>
      	<th>Name</th>
      	<th>Location</th>
      	<th>Notes</th>
      	<th>Family</th>
      </tr>
      <tr>
	    <td><%i++;%><%=aResult.elementAt(i)%></td>
	    <td><%i++;%><%=aResult.elementAt(i)%></td>
		<td><%i++;%><%=aResult.elementAt(i)%></td>
		<td><%i++;%><%=aResult.elementAt(i)%></td>
      </tr>
      <% } %>
      </table>
      

</BODY>
</HTML>
