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
<title>Informazioni sulla tipologia esame</title>
</head>
<body>
<f:view>
<h1> Informazioni Tipologia Esame </h1>
<div class="container">
<h2>Dettagli</h2>
<table class="table table-striped">
<thead></thead>
<tbody>
<tr><td><h4>Nome: ${tipoEsameController.tp.nome}</h4></td></tr>
<tr><td>Codice: ${tipoEsameController.tp.code}</td></tr>
<tr><td>Prezzo: ${tipoEsameController.tp.price}</td></tr>
<tr><td>Descrizione: ${tipoEsameController.tp.descrizione}</td></tr>
</tbody>
</table>
</div>
<ul>
	<c:if test="${amministratoreController.corrente != null}">	
		<li><a href='<c:url value="/faces/newTipoEsame.jsp" />'>Inserisci un nuovo tipo di Esame</a></li>
	</c:if>
	<li><a href='<c:url value="/faces/index.jsp" />'>Torna alla pagina Home</a></li>
	<li><h:form>
		<h:commandLink action="#{tipoEsameController.listTipoEsami}" value="Visualizza le tipologie di esami che offriamo"/>
	</h:form></li>
</ul>
</f:view>
</body>
</html>