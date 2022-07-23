<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<%@ page import="anything.variablesm"%>
<script language="JavaScript" type="text/javascript">
  function do_insert(){
  	var menuitemName   = document.getElementById('itemname').value;
  	var menuitemRating   = document.getElementById('rating').value;
  	if(menuitemName == ""){
  		alert("Please fill out the name field!");
  	}else{
  		if(menuitemRating == ""){
  			alert("Please select an item rating!");
  		}else{
  			document.INSERTFORM.submit();
  		}
  	}
  }
</script>
<script src="https://kit.fontawesome.com/dfaaaa4306.js" crossorigin="anonymous"></script>
<TITLE>Add New Record</TITLE>
</HEAD>
<body>
<div class="text-center">
<a href="home.jsp?">
<button class="btn btn-primary m-2">Home</button>
</a>
	<form name="INSERTFORM" action="<%=variablesm.FORM_ACTION%>Insertitem" method="post" >
	<p>Insert Menu Item</p>
	<input type="hidden" name="family" value="Vij">
	Selected Family Member: <%=request.getParameter("lif2")%><input type="hidden" readonly="readonly" name="member" value="<%=request.getParameter("lif2")%>"> <br><br>
	Selected Restaurant: <%=request.getParameter("lif1")%><input type="hidden" readonly="readonly" name="restaurant" value="<%=request.getParameter("lif1")%>"> <br><br>
	Item Name: <input type="text" name="item" id="itemname"> <br><br>
	Rating: <select name="rating" id="rating">
  				<option value="1">1</option>
  				<option value="2">2</option>
  				<option value="3">3</option>
  				<option value="4">4</option>
  				<option value="5">5</option>
			</select> <br><br>
	Item Notes: <input type="text" name="notes"> <br><br>
	<button class="btn btn-outline-primary" name="buttonName" type="button" onclick="do_insert()">Add</button>
	</form>
	</div>
	<div class="text-center">
	<a href="displaymenuitems.jsp?member=<%=request.getParameter("lif2")%>&restaurant=<%=request.getParameter("lif1")%>"><button class="btn btn-outline-primary">View items	<i class="fa-solid fa-eye"></i></button></a>
	</div>
</body>
</html>