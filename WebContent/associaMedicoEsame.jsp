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
<h1><font color="blue" size="8" face="Verdana" >Associa un medico a un esame</font></h1>
<h:form>
    <div class="form-group">
    <h5><label>Esame:</label></h5>
    <h:selectOneMenu styleClass="form-control" value="#{esameController.id}">
           <f:selectItems value="#{esameController.esami}" var="esame" itemLabel="#{esame.tipoEsame.nome} per #{esame.paziente.nome} #{esame.paziente.cognome} " itemValue="#{esame.id}"/>			
         </h:selectOneMenu>
	</div>
	<div class="form-group">
	<h5><label>Codice Medico:</label></h5>
	<h:selectOneMenu styleClass="form-control" value="#{esameController.mid}">
	       <f:selectItem itemValue="#{null}" itemLabel="-- select one --" />
           <f:selectItems value="#{medicoController.medici}" var="medico" itemLabel="#{medico.nome},#{medico.cognome}" itemValue="#{medico.id}"/>			
         </h:selectOneMenu>
	</div>
   
	
	<div>
		<h:commandButton styleClass="btn btn-primary" value="Invia"  action="#{esameController.associaMedico}"/>
	</div>
	<a href='<c:url value="/faces/index.jsp" />'>Torna alla pagina Home</a>
</h:form>
</f:view>
</body>
</html>