<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<head>
<title>Informazioni sull'esame</title>
</head>
<body>
<f:view>
<h1> Informazioni Esame </h1>
<div class="container">
<h2>Dettagli</h2>
<table class="table table-striped">
<thead></thead>
<tbody>
<tr><td>Esame: ${esameController.esame.tipoEsame.nome}</td></tr>
<tr><td>Codice: ${esameController.esame.code}</td></tr>
<tr><td>Prezzo: ${esameController.esame.tipoEsame.price}</td></tr>
<tr><td>Data Prenotazione: ${esameController.esame.dataPrenotazione}</td></tr>
</tbody>
</table>
</div>
<div class="container">
<h2>Paziente:</h2> 
<table class="table table-striped">
<thead></thead>
<tbody>
<tr><td>Nome: ${esameController.esame.paziente.nome}</td></tr>
<tr><td>Cognome: ${esameController.esame.paziente.cognome}</td></tr>
<tr><td>Codice: ${esameController.esame.paziente.code}</td></tr>
</tbody>
</table>              
</div>
<div class="container">
<h2>Medico</h2> 
<table class="table table-striped">
<thead></thead>
<tbody>
<tr><td>Nome: ${esameController.esame.medico.nome}</td></tr>
<tr><td>Cognome: ${esameController.esame.medico.cognome}</td></tr>
</tbody>
</table>           
</div>
<div class="container">
<h2>Risultati</h2>
<h:form>
<table class="table table-striped">
<thead>
	<tr>
		<th>Nome Risultato</th>
		<th>Valore Risultato</th> 
	</tr>
	</thead>
	<tbody>
	<c:forEach var="risultato" items="#{esameController.esame.risultati}">
		<tr>		
		<td>${risultato.nome}</td>
		<td>${risultato.valore}</td>
		</tr>
	</c:forEach>
	<tbody>
</table>
</h:form>
</div>
<ul>
	<c:if test="${amministratoreController.corrente != null}">	
		<li><a href='<c:url value="/faces/registraEsame.jsp" />'>Inserisci un nuovo esame</a></li>
	</c:if>
	<li><a href='<c:url value="/faces/index.jsp" />'>Torna alla pagina Home</a></li>
</ul>
</f:view>
</body>
</html>