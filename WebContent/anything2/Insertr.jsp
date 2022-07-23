<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<%@ page import="anything.variablesm"%>
<script language="JavaScript" type="text/javascript">
  function do_insert(){
  	var rName   = document.getElementById('rName').value;
  	if(rName == ""){
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
</div>
<div class="text-center">
	<form class="col-12" name="INSERTFORM" action="<%=variablesm.FORM_ACTION%>Insertr" method="post" >
	<p>Restaurant Data Form</p>
	Restaurant Name: <input class="" type="text" name="rname" id="rName"> <br><br>
	Restaurant Location: <input type="text" name="rlocation"> <br><br>
	Restaurant Notes: <input type="text" name="rnotes"> <br><br>
	<input readonly="readonly" type="hidden" name="family" value="Vij">
	<button class="color btn btn-outline-primary" name="buttonName" type="button" onclick="do_insert()">Add</button>
	</form>
	</div>
</body>
</html>