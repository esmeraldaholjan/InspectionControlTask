<%@include file="include.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ page isELIgnored="false" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Evidencija inspekcijskih tijela</title>
</head>

<style>
.style1 {
        background: url(https://d2v9y0dukr6mq2.cloudfront.net/video/thumbnail/itCjTBE/grey-moving-flowing-waves-abstract-background-video-animation-1920x1080_vjx3xtmwg__F0000.png) no-repeat center center fixed;
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
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	        </button>
	      </div>
	
	      <!-- Collect the nav links, forms, and other content for toggling -->
	      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      
	        <ul class="nav navbar-nav navbar-right">
	        <li><a href="Home">Naslovna</a></li>
	        <li><a href="Proizvodi">Evidencija inspekcijskih proizvoda</a></li>
	        <li><a href="Kontrola">Evidencija inspekcijskih kontrola</a></li>
	         <li class="active"><a href="Tijelo">Evidencija inspekcijskih tijela<span class="sr-only">(current)</span></a></li>
	        </ul>
	      </div><!-- /.navbar-collapse -->
	    </div><!-- /.container-fluid -->
	</nav>
	
<h1 style="font-family: Georgia; color: #B22222">Tabela inspekcijskih tijela</h1>

	<!-- <table border = "2" cellpadding="15""> -->
	<table class="table table-striped">
		<tr style="background-color:#E4BBBB; font-weight:bold">
			<td>idTijela:</td>
			<td>nazivTijela:</td>
			<td>inspektorat:</td>
			<td>nadleznost:</td>
			<td>kontaktOsoba</td>
		</tr>
		<c:forEach items="${tabelaTijela}" var="tijela">
			<tr>
				<td>${tijela.idTijela}</td>
				<td>${tijela.nazivTijela}</td>
				<td>${tijela.inspektorat}</td>
				<td>${tijela.nadleznost}</td>
				<td>${tijela.kontaktOsoba}</td>
			</tr>
		</c:forEach>	

	</table>
</body>
</html>