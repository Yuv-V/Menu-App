<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
<%@ page import="anything.variablesm"%>
<script language="JavaScript" type="text/javascript">
  function do_insert(){
  	var fmName   = document.getElementById('member').value;
  	if(fmName == ""){
  		alert("Please fill out the name field!");
  	}else{
  	 	document.INSERTFORM.submit();
  	}
   }
</script>
<TITLE>Add New Record</TITLE>
</HEAD>
<body>
<div class="text-center">
<a href="home.jsp?">
<button class="color btn btn-primary m-2">Home</button>
</a>
	<form class="form" name="INSERTFORM" action="<%=variablesm.FORM_ACTION%>Insertfm" method="post" >
	<p>Family Member Form</p>
	<input type="hidden" name="family" value="Vij">
	Name: <input type="text" name="member" id="member"> <br><br>
	Notes: <input type="text" name="notes"><br><br>
	<button class="btn btn-outline-primary" name="buttonName" type="button" onclick="do_insert()">Add</button>
	</form>
</div>
</body>
</html>