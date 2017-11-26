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
	<title>Evidencija proizvoda</title>
</head>

<style>
	.style1 {
	        background: url(https://d2v9y0dukr6mq2.cloudfront.net/video/thumbnail/itCjTBE/grey-moving-flowing-waves-abstract-background-video-animation-1920x1080_vjx3xtmwg__F0000.png) no-repeat center center fixed;
	        -webkit-background-size: cover;
	        -moz-background-size: cover;
	        -o-background-size: cover;
	        background-size: cover;
	}
	#Boxx {
		width: 500px;
		padding: 10px;
		text-align: center;
		-webkit-border-radius: 4px;
		-moz-border-radius: 4px;
	}
	
	.adding {  
	}
	h3 {
	    display: inline-block;
	}
	a {
	    float: inline-block;
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
	          <li class="active"><a href="Proizvodi">Evidencija proizvoda<span class="sr-only">(current)</span></a></li>
	          <li><a href="Kontrola">Evidencija inspekcijskih kontrola</a></li>
	          <li><a href="Tijelo">Evidencija inspekcijskih tijela</a></li> 
	        </ul>
	      </div><!-- /.navbar-collapse -->
	    </div><!-- /.container-fluid -->
	</nav>
	
<h1 style="font-family: Georgia; color: #B22222">Tabela proizvoda</h1>

	<table class="table table-striped">
		<tr style="background-color:#E4BBBB; font-weight:bold">
			<td>idProizvoda:</td>
			<td>nazivProizvoda:</td>
			<td>proizvodjac:</td>
			<td>serijskiBroj:</td>
			<td>zemljaPorijekla:</td>
			<td>opis</td>
		</tr>
		<c:forEach items="${tabelaProizvoda}" var="proizvod">
			<tr>
				<td>${proizvod.idProizvoda}</td>
				<td>${proizvod.nazivProizvoda}</td>
				<td>${proizvod.proizvodjac}</td>
				<td>${proizvod.serijskiBroj}</td>
				<td>${proizvod.zemljaPorijekla}</td>
				<td>${proizvod.opis}</td>
				<td><a href="AdjustProduct?id=${proizvod.idProizvoda}" style="color:green">Izmijeniti</a></td>
				<td><a href="DeleteProduct?id=${proizvod.idProizvoda}" onclick="return confirm_alert(this);" style="color:red">Izbrisati</a></td>
				
			</tr>
		</c:forEach>	
	</table>
	
	<script type="text/javascript">
		function confirm_alert(node) {
		    return confirm("Klinuti OK ako ste sigurni da želite izbrisati!");
		}
	</script>
	
<div class="adding">
	<h3 style="font-family: Georgia; color: #B22222">Za dodavanje novog proizvoda u tabelu, odabrati: </h3> 
	<h3 style="font-family: Georgia; color: #B22222"><a href="AddProduct">Dodati novi proizvod</a></h3>
</div>


</body>
</html>