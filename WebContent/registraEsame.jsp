<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nuovo Esame</title>
</head>
<body bgcolor="#F5F5F5">
<f:view>
<h1><font color="blue" size="8" face="Verdana" >Prenotata un paziente a un esame</font></h1>
<h2><font color="red" size="5" face="Verdana" >Benvenuto ${amministratoreController.corrente.nome} ${amministratoreController.corrente.cognome}</font></h2>
<h:form>
    <div>Codice Esame:<h:inputText value="#{esameController.code}" 
                     required="true"
                     requiredMessage="Il codice e' obbligatorio"
                     id="codice"/> <h:message for="codice" />
	</div>
    <div>Codice Tipo Esame:<h:inputText value="#{esameController.tid}" 
                     required="true"
                     requiredMessage="Il codice e' obbligatorio"
                     id="tipo"/> <h:message for="tipo" />
	</div>
    <!--  <div>Codice Medico: <h:inputText value="#{esameController.mid}" 
                     required="true"
                     requiredMessage="Il codice e' obbligatorio"
                     id="medico"/> <h:message for="medico" />
	</div>-->
	<div>Codice Paziente: <h:inputText value="#{esameController.pid}" 
                     required="true"
                     requiredMessage="Il codice e' obbligatorio"
                     id="paziente"/> <h:message for="paziente" />
	</div>
   
	
	<div>
		<h:commandButton value="Inserisci Tipo Esame"  action="#{esameController.creaEsame}"/>
	</div>
	<h:commandLink action="#{tipoEsameController.listTipoEsami}" value="Lista delle tipologie di esame" />
	<a href='<c:url value="/faces/index.jsp" />'>Torna alla pagina Home</a>
</h:form>
</f:view>
</body>
</html>