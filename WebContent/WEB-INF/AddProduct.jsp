<%@include file="include.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodati proizvod</title>
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
<h1 style="font-family: Georgia; color: #B22222">Unesite podatke proizvoda kojeg želite dodati:</h1>

	<div id = Boxx>
	<form:form method="post" action="AddProduct" modelAttribute="Proizvodi">
	<form:label path="idProizvoda">Unesite id proizvoda: </form:label>
	<form:input id="idProizvoda" name="idProizvoda" path="idProizvoda" /><br>
	
	<form:label path="nazivProizvoda"> Unesite naziv proizvoda: </form:label>
	<form:input id="nazivProizvoda" name="nazivProizvoda" path="nazivProizvoda" /><br>
	
	<form:label path="proizvodjac"> Unesite proizvođača: </form:label>
	<form:input id="proizvodjac" name="proizvodjac" path="proizvodjac" /><br>
	
	<form:label path="serijskiBroj"> Unesite serijski broj: </form:label>
	<form:input id="serijskiBroj" name="serijskiBroj" path="serijskiBroj" /><br>
	
	<form:label path="zemljaPorijekla"> Unesite zemlju porijekla: </form:label>
	<form:input id="zemljaPorijekla" name="zemljaPorijekla" path="zemljaPorijekla" /><br>
	
	<form:label path="opis"> Dodati opis proizvoda: </form:label>
	<form:input id="opis" name="opis" path="opis" /><br>
	
	<input class="btn btn-success" type="submit" value="Dodaj" onclick="return confirm_alert(this);"/>
	</form:form>

	<form action="Proizvodi">
		<tr><input class="btn btn-info" type="submit" value="Vrati se na proizvode"/></tr>
	</form>
	</div>
	
	<script type="text/javascript">
		function confirm_alert(node) {
		    return confirm("Kliknuti OK da potvrdite unos!");
		}
	</script>
	
</body>
</html>

