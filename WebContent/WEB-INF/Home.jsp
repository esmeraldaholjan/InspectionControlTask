<%@include file="include.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Inspekcijska kontrola</title>
</head>

<style>
#box {
	width: 900px;
	padding: 20px 10px;
	margin: 50px 400px;
	text-align: center;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	background: #C0C0C0;
	opacity: 0.65;
}
.style1 {
        background: url(C:/Users/User/Desktop/back.jpg) no-repeat center center fixed;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
}
</style>

<body class = style1>

	<nav class="navbar navbar-default">
	    <div class="container-fluid">
	    
	      <!-- Brand and toggle get grouped for better mobile display -->
	      <div class="navbar-header">
	        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	          <span class="sr-only">Toggle navigation</span>
	          <span class="icon-bar"></span>
	        </button>
	      </div>
	
	      <!-- Collect the nav links, forms, and other content for toggling -->
	      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      
	        <ul class="nav navbar-nav navbar-right">
	          <li class="active"><a href="Home">Naslovna<span class="sr-only">(current)</span></a></li>
	          <li><a href="Proizvodi">Evidencija proizvoda</a></li>
	          <li><a href="Kontrola">Evidencija inspekcijskih kontrola</a></li>
	          <li><a href="Tijelo">Evidencija inspekcijskih tijela</a></li>
	        </ul>
	        
	      </div><!-- /.navbar-collapse -->
	    </div><!-- /.container-fluid -->
	</nav>

<div id=box>
	<h1 style="font-family: Georgia; font-size: 65px; color: #B22222">Inspekcijska kontrola</h1>
	<p style="font-family: Georgia; font-size: 20px">Dobrodošli na stranicu za evidenciju inspekcijskih kontrola</p>
</div>


</body>
</html>