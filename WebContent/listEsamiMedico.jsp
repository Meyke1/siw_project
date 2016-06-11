<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>esami medico</title>
</head>
<body>
<f:view>
<h2><font color="black" size="8" face="Verdana" >Esami sostenuti dal medico ${esameController.nomeMedico} ${esameController.cognomeMedico}</font></h2>
<div class="container">
<h:form>
<table class="table table-striped">
    <thead>
	<tr>
		<th>Codice esame</th> 
		<th>Nome Esame</th>
		<th>Prezzo</th> 
	</tr>
	</thead>
	<tbody>
	<c:forEach var="esame" items="#{esameController.esamiMedico}">
	<tr>
	<td>
		<h:commandLink action="#{esameController.findEsame}" value="#{esame.id}"><f:param name="id" value="#{esame.id}" />
		</h:commandLink>
	</td>	
		
		<td>${esame.tipoEsame.nome}</td>
		<td>${esame.tipoEsame.price}</td>
		
		</tr>
	</c:forEach>
	</tbody>
</table>
</h:form>
</div>
	<h5><a href='<c:url value="/faces/index.jsp" />'>Torna alla pagina Home</a></h5>
</f:view>
</body>
</html>