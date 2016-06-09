<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Elenco esami</title>
</head>
<body style="background-color: light-grey;">
<f:view>
<h1><font color="red"> Elenco Esami che offriamo</font></h1>
<h:form>
<table class="table table-hover">
    <thead>
	<tr>
		<th>Nome</th>
		<th>Prezzo</th>
	</tr>
    </thead>
    <tbody>
	<c:forEach var="tp" items="#{tipoEsameController.tps}">
		<tr>
		<td>
		<h:commandLink action="#{tipoEsameController.findTipoEsame}" value="#{tp.nome}">
		    <f:param name="id" value="#{tp.id}" />
		</h:commandLink>
		</td>
		<td>${tp.price}</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</h:form>
<a href='<c:url value="/faces/index.jsp" />'>Torna alla pagina Home</a>
</f:view>
</body>
</html>