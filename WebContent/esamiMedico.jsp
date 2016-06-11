<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

<script src="http://code.jquery.com/jquery.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" ></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ricerca Esami Medico</title>
</head>
<body>
	<f:view>
	<h1><font color="blue" size="8" face="Verdana" >Visualizza gli esami di un medico</font></h1>
		<h:form>
		    <div>
			    <font color="#DC143C" size="4">${esameController.errore}</font>
		    </div>
			<div class="form-group">
			<label>Nome medico:</label>
				<h:inputText styleClass="form-control" value="#{esameController.nomeMedico}" 
				required="true"
				requiredMessage="Non hai inserito nessun nome"
				id="nome"/> <h:message for="nome" />
			</div>
			<div class="form-group">
			<label>Cognome medico:</label>
				<h:inputText styleClass="form-control" value="#{esameController.cognomeMedico}" 
				required="true"
				requiredMessage="Non hai inserito nessun cognome"
				id="cognome"/> <h:message for="cognome" />
			</div>
			<div>
				<h:commandButton styleClass="btn btn-primary" value="Mostra gli esami del medico" action="#{esameController.findEsamiMedico}"/>
			</div>
			
		</h:form>
	</f:view>
</body>
</html>