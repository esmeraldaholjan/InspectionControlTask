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
</style>

<body class = style1>
	
<h1 style="font-family: Georgia; color: #B22222">Tabela inspekcijskih kontrola sortirana po odabranom datumu</h1>
	<form:form method="post" modelAttribute="kontrola1">
	<table class="table table-striped">
		<tr style="background-color:#E4BBBB; font-weight:bold">
			<td>idKontrole:</td>
			<td>datum:</td>
			<td>idTijela:</td>
			<td>idProizvoda:</td>
			<td>rezultatKontrole:</td>
			<td>proizvodSiguran</td>
		</tr>
		<c:forEach items="${tabelaKontrolaSort}" var="kontrolaSort">
			<tr>
				<td>${kontrolaSort.idKontrole}</td>
				<td>${kontrolaSort.datum}</td>
				<td>${kontrolaSort.idTijela}</td>
				<td>${kontrolaSort.idProizvoda}</td>
				<td>${kontrolaSort.rezultatKontrole}</td>
				<td>${kontrolaSort.proizvodSiguran}</td>
			</tr>
		</c:forEach>
	</table>
	</form:form>
</body>
</html>