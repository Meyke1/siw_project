<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<title>Registra Amministratore</title>
</head>
<body>
	<f:view>
		<h1>SCHERMATA REGISTRAZIONE AMMINISTRATORE</h1>
		
		<h:form>
			<div class="form-group">Nome: <h:inputText styleClass="form-control" value="#{amministratoreController.nome}"
						required="true"
						requiredMessage="Campo nome obbligatorio"
						id="nome"/>
						<h:message for="nome"/>
			</div>
			<div class="form-group">Cognome: <h:inputText styleClass="form-control" value="#{amministratoreController.cognome}"
						required="true"
						requiredMessage="Campo cognome obbligatorio"
						id="cognome"/>
						<h:message for="cognome"/>
			</div>
			<div class="form-group">Username: <h:inputText styleClass="form-control" value="#{amministratoreController.username}"
						required="true"
						requiredMessage="Campo email obbligatorio"
						id="username"/>
						<h:message for="username"/>
			</div>
			<div class="form-group">Password: <h:inputSecret styleClass="form-control" value="#{amministratoreController.password}"
						required="true"
						requiredMessage="Campo password obbligatorio"
						id="password"/>
						<h:message for="password"/>
			</div>
			<div>
				<h:commandButton styleClass="btn btn-default" value="Submit" action="#{amministratoreController.createAmministratore}"/>
			</div>
			<div>
			<h:commandLink styleClass="btn btn-default" action="#{amministratoreController.listAmministratori}" value="Lista degli Amministratori" />
		    </div>
		</h:form>
		
		<a href='<c:url value="/faces/index.jsp" />'>Torna alla pagina Home</a>
	</f:view>
</body>
</html>