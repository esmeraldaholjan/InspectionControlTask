<%@include file="include.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Detalji inspekcijske kontrole</title>

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
		width: 300px;
		padding: 20px;
		text-align: center;
		-webkit-border-radius: 4px;
		-moz-border-radius: 4px;
	}
</style>

<body class = style1>
	
	<h2 style="font-family: Georgia; color: #B22222">Detalji inspekcijske kontrole:</h2> 
	<form:form method="post" modelAttribute="detalji">
		<table class="table table-striped">
	 		<tr style="background-color:#E4BBBB; font-weight:bold">
				<td>serijskiBroj:</td>
				<td>nazivProizvoda:</td>
				<td>zemljaPorijekla:</td>
				<td>datum:</td>
				<td>rezultatKontrole:</td>
			</tr>
			<c:forEach items="${tabelaDetalja}" var="kontrola">
				<tr>
					<td>${kontrola.serijskiBroj}</td>
					<td>${kontrola.nazivProizvoda}</td>
					<td>${kontrola.zemljaPorijekla}</td>
					<td>${kontrola.datum}</td>
					<td>${kontrola.rezultatKontrole}</td>
				</tr>
			</c:forEach>	
		</form> 
	</table>
</form:form>
</body>
</html>