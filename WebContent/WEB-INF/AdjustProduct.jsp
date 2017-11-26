<%@include file="include.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Izmijeniti proizvod</title>
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
		padding: 20px;
		text-align: right;
		-webkit-border-radius: 4px;
		-moz-border-radius: 4px;
	}
</style>

<body class = style1>
<h1 style="font-family: Georgia; color: #B22222">Unesite podatke proizvoda kojeg želite izmijeniti:</h1>

	<div id = Boxx>
	<form:form method="post" action="AdjustProductExecute" modelAttribute="proizvod">
	<form:label path="idProizvoda"> idProizvoda: </form:label>
	<form:input id="idProizvoda" name="idProizvoda" path="idProizvoda" value="${proizvod.idProizvoda}" readonly="readonly"/><br>
	
	<form:label path="nazivProizvoda"> nazivProizvoda: </form:label>
	<form:input id="nazivProizvoda" name="nazivProizvoda" path="nazivProizvoda" value="${proizvod.nazivProizvoda}" /><br>
	
	<form:label path="proizvodjac"> proizvodjac: </form:label>
	<form:input id="proizvodjac" name="proizvodjac" path="proizvodjac" value="${proizvod.proizvodjac}" /><br>
	
	<form:label path="serijskiBroj"> serijskiBroj: </form:label>
	<form:input id="serijskiBroj" name="serijskiBroj" path="serijskiBroj" value="${proizvod.serijskiBroj}" /><br>
	
	<form:label path="zemljaPorijekla"> zemljaPorijekla: </form:label>
	<form:input id="zemljaPorijekla" name="zemljaPorijekla" path="zemljaPorijekla" value="${proizvod.zemljaPorijekla}" /><br>
	
	<form:label path="opis"> opis: </form:label>
	<form:input id="opis" name="opis" path="opis" value="${proizvod.opis}" /><br>
	
	<input class="btn btn-warning" type="submit" value="Izmijeni" onclick="location.href='Proizvodi.jsp';"/>
	</form:form>
	</div>
	
</body>
</html>

