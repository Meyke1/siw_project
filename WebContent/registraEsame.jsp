<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
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
<title>Nuovo Esame</title>
</head>
<body bgcolor="#F5F5F5">
<f:view>
<h1><font color="blue" size="8" face="Verdana" >Prenotata un paziente a un esame</font></h1>
<h:form>
    <div class="form-group">
    <label>Codice Esame</label>
    <h:inputText styleClass="form-control" value="#{esameController.code}" 
                     required="true"
                     requiredMessage="Il codice e' obbligatorio"
                     id="codice"/> <h:message for="codice" />
	</div>
	<div class="form-group">
	<label>Tipo Esame</label>
    <h:selectOneMenu styleClass="form-control" value="#{esameController.tid}">
           <f:selectItems value="#{tipoEsameController.tps}" var="tp" itemLabel="#{tp.nome}" itemValue="#{tp.code}"/>			
         </h:selectOneMenu>
	</div>
	<div class="form-group">
	<label>Paziente</label>
	<h:selectOneMenu styleClass="form-control" value="#{esameController.pid}">
	       <f:selectItem itemValue="#{null}" itemLabel="-- select one --" />
           <f:selectItems value="#{pazienteController.pazienti}" var="paziente" itemLabel="#{paziente.nome},#{paziente.cognome},#{paziente.code} " itemValue="#{paziente.code}"/>			
         </h:selectOneMenu>
	</div>
   
	
	<div>
		<h:commandButton styleClass="btn btn-primary" value="Invia"  action="#{esameController.creaEsame}"/>
	</div>
	<div>
	<h:commandLink action="#{tipoEsameController.listTipoEsami}" value="Lista delle tipologie di esame" />
	</div>
	<a href='<c:url value="/faces/index.jsp" />'>Torna alla pagina Home</a>
</h:form>
</f:view>
</body>
</html>