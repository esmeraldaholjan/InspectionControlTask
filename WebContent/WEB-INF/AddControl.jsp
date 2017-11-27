<%@include file="include.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodati kontrolu</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
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
<h1 style="font-family: Georgia; color: #B22222">Unesite podatke kontrole koju želite dodati:</h1>

	<jsp:useBean id="now" class="java.util.Date" />
	<fmt:formatDate var="dateToday" value="${now}" pattern="yyyy-MM-dd" />
	<h4 style="font-family: Georgia; color: #B22222">Današnji datum: ${dateToday}</h4>

	<div id = Boxx>
	<form:form method="get" action="AddControl" modelAttribute="Kontrola">
	<form:label path="idKontrole"> Unesite id kontrole: </form:label>
	<form:input id="idKontrole" name="idKontrole" path="idKontrole" /><br>
	
	<form:label path="datum"> Unesite datum kontrole: </form:label>
	<form:input id="datum" name="datum" path="datum" /><br>
	
	<form:label path="idTijela"> Unesite id inspekcijskog tijela: </form:label>
	<form:input id="idTijela" name="idTijela" path="idTijela" /><br>
	
	<form:label path="idProizvoda"> Unesite id proizvoda: </form:label>
	<form:input id="idProizvoda" name="idProizvoda" path="idProizvoda" /><br>
	
	<form:label path="rezultatKontrole"> Unesite rezultat kontrole: </form:label>
	<form:input id="rezultatKontrole" name="rezultatKontrole" path="rezultatKontrole" /><br>
	
	<form:label path="proizvodSiguran"> Unesite da li je proizvod siguran: </form:label>
	<form:input id="proizvodSiguran" name="proizvodSiguran" path="proizvodSiguran" /><br>
	
	<input class="btn btn-success" type="submit" value="Dodaj" onclick="return validate()""/>
	</form:form>
	
	<form action="Kontrola">
		<tr><input class="btn btn-info" type="submit" value="Vrati se na kontrole"/></tr>
	</form>
	</div>

	<script type="text/javascript">
		function validate() {
			var uneseniDatum = document.getElementById("datum").value;
			var unDatum = new Date(uneseniDatum);
			var danasnjiDatum = new Date();

			if (unDatum.valueOf() > danasnjiDatum) {
				alert("Ne možete unijeti budući datum!"); 
				return false;
			}
		}
	</script>
	
	<script type="text/javascript">
		function confirm_alert(node) {
		    return confirm("Kliknuti OK da potvrdite unos!");
		}
	</script>
	
</body>
</html>

