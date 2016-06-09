<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Nuovo Tipo Esame</title>
</head>
<body style="background-color: light-grey;">
<f:view>
<div class="container">
<h1><font color="red"> Inserimento Nuovo Tipo Di Esame</font></h1>
<h:form>
    <div>Nome:<h:inputText styleClass="form-control" value="#{tipoEsameController.nome}" 
                     required="true"
                     requiredMessage="Il Nome e' obbligatorio"
                     id="name"/> <h:message for="name" />
	</div>
    <div>Codice: <h:inputText styleClass="form-control" value="#{tipoEsameController.code}" 
                     required="true"
                     requiredMessage="Il Codice e' obbligatorio"
                     id="code"/> <h:message for="code" />
	</div>
    <div>Prezzo: <h:inputText styleClass="form-control" value="#{tipoEsameController.price}" 
                     required="true"
                     requiredMessage="Il Prezzo e' obbligatorio"
                     converterMessage="Il Prezzo deve essere un numero"
                     id="price"/> <h:message for="price" />
    </div>
	
    <div>Descrizione: <h:inputTextarea styleClass="form-control" value="#{tipoEsameController.descrizione}" 
    				required="false" 
    				cols="20" 
    				rows="5" />     
	</div>
	<label></label>
	<label></label>
	<div>
		<h:commandButton styleClass="btn btn-primary" value="Invia"  action="#{tipoEsameController.createTipoEsame}"/>
	</div>
	<div>
	<h:commandLink action="#{tipoEsameController.listTipoEsami}" value="Lista delle tipologie di esame" />
	</div>
	<div>
	<a href='<c:url value="/faces/index.jsp" />'>Torna alla pagina Home</a>
	</div>
</h:form>
</div>
</f:view>
</body>
</html>