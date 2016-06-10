<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ricerca Esami Medico</title>
</head>
<body>

	<f:view>
		<h:form>
		    <div>
			    <font color="#DC143C" size="4">${esameController.errore}</font>
		    </div>
			<div>
				Nome medico:
				<h:inputText value="#{esameController.nomeMedico}" 
				required="true"
				requiredMessage="Non hai inserito nessun nome"
				id="nome"/> <h:message for="nome" />
				Cognome medico:
				<h:inputText value="#{esameController.cognomeMedico}" 
				required="true"
				requiredMessage="Non hai inserito nessun cognome"
				id="cognome"/> <h:message for="cognome" />
				<h:commandButton value="Mostra gli esami del medico" action="#{esameController.findEsamiMedico}"/>
			</div>
		</h:form>
	</f:view>
</body>
</html>