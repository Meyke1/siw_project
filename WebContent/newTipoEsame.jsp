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
<h1><font color="red"> Inserimento Nuovo Tipo Di Esame</font></h1>
<h:form>
    <div><h5><label>Nome:</label></h5><h:inputText styleClass="form-control" value="#{tipoEsameController.nome}" 
                     required="true"
                     requiredMessage="Il Nome e' obbligatorio"
                     id="name"/> <h:message for="name" />
	</div>
    <div><h5><label>Codice:</label></h5><h:inputText styleClass="form-control" value="#{tipoEsameController.code}" 
                     required="true"
                     requiredMessage="Il Codice e' obbligatorio"
                     id="code"/> <h:message for="code" />
	</div>
    <div><h5><label>Prezzo:</label></h5><h:inputText styleClass="form-control" value="#{tipoEsameController.price}" 
                     required="true"
                     requiredMessage="Il Prezzo e' obbligatorio"
                     converterMessage="Il Prezzo deve essere un numero"
                     id="price"/> <h:message for="price" />
    </div>
	
    <div><h5><label>Descrizione:</label></h5><h:inputTextarea styleClass="form-control" value="#{tipoEsameController.descrizione}" 
    				required="false" 
    				cols="20" 
    				rows="5" />     
	</div>
	
	<div>
                    <h5><label>Prerequisiti:</label></h5><h6>usa cmd o ctrl per selezionarne diversi</h6>
                    <h:selectManyListbox value="#{tipoEsameController.prerequisiti}"
                                          required="true"
                                          requiredMessage="Prerequisiti non inseriti"
                                          id="prerequisito">
                        <f:selectItem itemValue="NOIncinta" itemLabel="Paziente NON Incinta"/>
                        <f:selectItem itemValue="Incinta" itemLabel="Paziente Incinta"/>
                        <f:selectItem itemValue="Digiuno" itemLabel="Digiuno da 12 ore"/>
                        <f:selectItem itemValue="NO Tatuaggi" itemLabel="Nessun tatuaggio nell'ultimo anno"/>
                        <f:selectItem itemValue="NO Medicinali" itemLabel="Nessun medicinale assunto nelle ultime 48 ore"/>
                        <f:selectItem itemValue="NO Alcolici" itemLabel="Nessun alcolico assunti nelle ultime 48 ore"/>
                        <f:selectItem itemValue="NO Prerequisiti" itemLabel="Nessun prerequisito da immettere"/>
                        <f:selectItem itemValue="Altro" itemLabel="Altre possibilita"/>
                    </h:selectManyListbox>
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
</f:view>
</body>
</html>