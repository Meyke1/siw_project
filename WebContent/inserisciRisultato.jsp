<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nuovo Risultato</title>
</head>
<body bgcolor="#F5F5F5">
<f:view>
<h1><font color="blue" size="8" face="Verdana" >Inserisci un risultato per un esame</font></h1>
<h2><font color="red" size="5" face="Verdana" >Benvenuto ${amministratoreController.corrente.nome} ${amministratoreController.corrente.cognome}</font></h2>
<h:form>
    <div>Esame:<h:selectOneMenu value="#{esameController.code}">
           <f:selectItems value="#{esameController.esami}" var="esame" itemLabel="#{esame.tipoEsame.nome}" itemValue="#{esame.code}"/>			
         </h:selectOneMenu>
	</div>
	<div>Nome Risultato: <h:inputText value="#{esameController.nomeRisultato}"
						required="true"
						requiredMessage="Campo nome obbligatorio"
						id="nome"/>
						<h:message for="nome"/>
	</div>
	<div>Valore Risultato: <h:inputText value="#{esameController.valoreRisultato}"
						required="true"
						requiredMessage="Campo valore obbligatorio"
						id="valore"/>
						<h:message for="valore"/>
			</div>
   
	
	<div>
		<h:commandButton value="Invia"  action="#{esameController.inserisciRisultato}"/>
	</div>
	<a href='<c:url value="/faces/index.jsp" />'>Torna alla pagina Home</a>
</h:form>
</f:view>
</body>
</html>