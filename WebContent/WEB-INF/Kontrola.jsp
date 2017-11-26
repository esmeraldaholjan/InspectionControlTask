<%@include file="include.jsp"%>
<%@page import="java.sql.Date" %>
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
    
    <!-- Include Required Prerequisites -->
	<script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
	<script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap/3/css/bootstrap.css" />
	 
	<!-- Include Date Range Picker -->
	<script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
	<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />
	<script type="text/javascript" src="bootstrap-datetimepicker.de.js" charset="UTF-8"></script>
    <title>Evidencija inspekcijskih kontrola</title>
	
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
	        <li><a href="Proizvodi">Evidencija inspekcijskih proizvoda</a></li>
	          <li class="active"><a href="Kontrola">Evidencija inspekcijskih kontrola<span class="sr-only">(current)</span></a></li>
	          <li><a href="Tijelo">Evidencija inspekcijskih tijela</a></li>

	        </ul>
	      </div><!-- /.navbar-collapse -->
	    </div><!-- /.container-fluid -->
	</nav>
	
<h1 style="font-family: Georgia; color: #B22222">Tabela inspekcijskih kontrola</h1>

	<table class="table table-striped">
		<tr style="background-color:#E4BBBB; font-weight:bold">
			<td>idKontrole:</td>
			<td>datum:</td>
			<td>idTijela:</td>
			<td>idProizvoda:</td>
			<td>rezultatKontrole:</td>
			<td>proizvodSiguran</td>
			<td>Za vise informacija:</td>
		</tr>
		<c:forEach items="${tabelaKontrola}" var="kontrola">
			<tr>
				<td>${kontrola.idKontrole}</td>
				<td>${kontrola.datum}</td>
				<td>${kontrola.idTijela}</td>
				<td>${kontrola.idProizvoda}</td>
				<td>${kontrola.rezultatKontrole}</td>
				<td>${kontrola.proizvodSiguran}</td>
				<td><a href="DetaljiKontrole?id=${kontrola.idKontrole}" style="color:grey">Detalji kontrole</a></td>
				<td><a href="AdjustControl?id=${kontrola.idKontrole}" style="color:green">Izmijeniti</a></td>
				<td><a href="DeleteControl?id=${kontrola.idKontrole}" onclick="return confirm_alert(this);" style="color:red">Izbrisati</a></td>
				
				<%-- <td><a href="KontrolaSort?fromDate=${kontrola.datum}&toDate=${kontrola.datum}">Sortiraj po datumu</a></td> --%>
			
				</tr>
		</c:forEach>	

	</table>
	
<div class="adding">
	<h3 style="font-family: Georgia; color: #B22222">Za dodavanje nove kontrole u tabelu, odabrati:</h3> 
	<h3 style="font-family: Georgia; color: #B22222"><a href="AddProduct">Dodati novu kontrolu</a></h3>
</div>
	
<h3 style="font-family: Georgia; color: #B22222">Za sortiranje inspekcijskih kontrola u željenom intervalu, odabrati:</h3>

<div>
	<form class="form-inline" action="KontrolaSort" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input class="form-control mb-2 mr-sm-2 mb-sm-0" type="text" name="fromDate" id="fromDate" />
		<input class="form-control mb-2 mr-sm-2 mb-sm-0" type="text" name="toDate" id="toDate" />
		<input class="btn btn-info" type="submit" value="Sortiraj po datumu">
	</form>
</div>
 
	<script type="text/javascript">
	$(function() {
	    $('input[name="fromDate"]').daterangepicker({
	        singleDatePicker: true,
	        showDropdowns: true, 
	        locale: {
	        	format: 'YYYY-MM-DD'
	        }
	    });
	});
	</script>
	
	<script type="text/javascript">
	$(function() {
	    $('input[name="toDate"]').daterangepicker({
	        singleDatePicker: true,
	        showDropdowns: true,
	        locale: {
	        	format: 'YYYY-MM-DD'
	        }
	    });
	});
	</script>

	<script type="text/javascript">
		function confirm_alert(node) {
		    return confirm("Klinuti OK ako ste sigurni da želite izbrisati!");
		}
	</script>

</body>
</html>