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
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
<LINK href="../theme/menuapp.css" rel="stylesheet" type="text/css">
<TITLE>displaymenuitems.jsp</TITLE>
<jsp:useBean id="disp" class="anything.GetMenuItemDisplayData"	scope="page"></jsp:useBean>
		<jsp:setProperty name="disp" property="*"/>
</HEAD>
<BODY>
<div class="text-center m-2">
<a href="home.jsp?">
<button class="btn btn-primary">Home</button><br><br>
</a>
<%@ page import="java.util.Vector" %>
<%disp.connect();%>
<%disp.select();%>
<% Vector aResult = disp.getResult(); %>
<% int s=0; %>
	<!----------------Start of Display-------------------------------->

    <%//=aResult.size()%>
    <div id="displaymi" style="none">
    <%if(aResult.size() < 1){%>
    No items added</br></br>
    <% }else{%>
     <table class="table" border="1">
      <% for (int i=0; i < aResult.size(); i++) { %>
      <tr>
      	
        <!--<td><%//=aResult.elementAt(i)%></td>-->
	    <!--<td><%i++;%><%//=aResult.elementAt(i)%></td>-->
	   		<td><%i++;%><%=aResult.elementAt(i)%></td>
			<td><%i++;%><%=aResult.elementAt(i)%></td>
			<td><%i++;%><%=aResult.elementAt(i)%></td>
			<td><%i++;%><%=aResult.elementAt(i)%></td>
			<td><%i++;%><%=aResult.elementAt(i)%></td>
      </tr>
      <% } %>
      
      </table>
      <% } %>
      <a href="Insertmenuitem.jsp?lif1=<%=request.getParameter("restaurant")%>&lif2=<%=request.getParameter("member")%>"><button class="btn btn-outline-primary">Add an item</button></a>
</BODY>
</HTML>
