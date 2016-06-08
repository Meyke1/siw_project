<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Nuovo Prodotto</title>
</head>
<body bgcolor="#F5F5F5">
<f:view>
<h1><font color="red"> Inserimento Nuovo Tipo Di Esame</font></h1>
<h:form>
    <div>Nome:<h:inputText value="#{tipoEsameController.nome}" 
                     required="true"
                     requiredMessage="Il Nome e' obbligatorio"
                     id="name"/> <h:message for="name" />
	</div>
    <div>Codice: <h:inputText value="#{tipoEsameController.code}" 
                     required="true"
                     requiredMessage="Il Codice e' obbligatorio"
                     id="code"/> <h:message for="code" />
	</div>
    <div>Prezzo: <h:inputText value="#{tipoEsameController.price}" 
                     required="true"
                     requiredMessage="Il Prezzo e' obbligatorio"
                     converterMessage="Il Prezzo deve essere un numero"
                     id="price"/> <h:message for="price" />
    </div>
	
    <div>Descrizione: <h:inputTextarea value="#{tipoEsameController.descrizione}" 
    				required="false" 
    				cols="20" 
    				rows="5" />     
	</div>
	
	<div>
		<h:commandButton value="Inserisci Tipo Esame"  action="#{tipoEsameController.createTipoEsame}"/>
	</div>
	<h:commandLink action="#{tipoEsameController.listTipoEsami}" value="Lista delle tipologie di esame" />
	<a href='<c:url value="/faces/index.jsp" />'>Torna alla pagina Home</a>
</h:form>
</f:view>
</body>
</html>