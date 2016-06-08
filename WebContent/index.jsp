<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body bgcolor="#E6E6FA">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>SIW-PROGETTO-ESAME</title>
</head>
<body>
	<f:view>
		<h1>CLINICA</h1>
		
		<h1>Benvenuto ${amministratoreController.corrente.nome}${pazienteController.corrente.nome}
		<c:if test="${amministratoreController.corrente != null}">
			<h:form><h:commandLink action="#{amministratoreController.logoutAmministratore}" value="LOGOUT"/></h:form>
		</c:if>
		<c:if test="${pazienteController.corrente != null}">
			<h:form><h:commandLink action="#{pazienteController.logoutPaziente}" value="LOGOUT"/></h:form>
		</c:if>
		</h1>
		
		<c:if test="${amministratoreController.corrente == null && pazienteController.corrente == null}">
			<h1>Non sei registrato? Chiedi a un Amministratore!</h1>
		</c:if>
		<c:if test="${amministratoreController.corrente == null && utenteController.corrente==null}">
			<h1><h:form><h:commandLink action="#{tipoEsameController.listTipoEsami}" value="COSA OFFRIAMO"/></h:form></h1>
		</c:if>

		<c:if test="${amministratoreController.corrente != null}">
			<h1><a href='<c:url value="/faces/newTipoEsame.jsp" />'>Inserisci un nuovo tipo di esame </a></h1>
		    <h1><a href='<c:url value="/faces/registraPaziente.jsp" />'>Registra Paziente</a></h1>
			<h1><a href='<c:url value="/faces/registraEsame.jsp" />'>Registra un esame</a></h1>
		</c:if>
		<c:if test="${pazienteController.corrente != null}">
			<h1><h:form><h:commandLink action="#{tipoEsameController.listTipoEsami}" value="Guarda le nostre offerte"/></h:form></h1>
			<h1><h:form><h:commandLink action="#{esameController.listEsami}" value="Consulta gli esami a cui sei prenotato">
				<f:param name="uid" value="#{pazienteController.corrente.id}" />
			</h:commandLink>
			</h:form></h1>
		</c:if>
		<c:if test="${amministratoreController.corrente == null && pazienteController.corrente == null}">
			<h1><a href='<c:url value="/faces/loginPaziente.jsp" />'>Effettua il login Paziente</a></h1>
			<h1><a href='<c:url value="/faces/loginAmministratore.jsp" />'>Effettua il login Amministratore</a></h1>	
		</c:if>
		<h2>Realizzato dagli studenti:</h2>
		<ul>
			<li>Tedesco Michele</li>
		</ul> 
	</f:view>
</body>
</html>

