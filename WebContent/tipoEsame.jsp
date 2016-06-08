<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<title>Informazioni sul prodotto</title>
</head>
<body>
<f:view>
<h1> Informazioni Tipologia Esame </h1>
<h1>${tipoEsameController.tipoEsame.nome}</h1>
<h2>Dettagli</h2>
<div>Codice: ${tipoEsameController.tipoEsame.code}</div>
<div>Prezzo: ${tipoEsameController.tipoEsame.price}</div>
<div>Descrizione: ${tipoEsameController.tipoEsame.descrizione}</div>
<ul>
	<c:if test="${amministratoreController.corrente != null}">	
		<li><a href='<c:url value="/faces/newTipoEsame.jsp" />'>Inserisci un nuovo tipo di Esame</a></li>
	</c:if>
	<li><a href='<c:url value="/faces/index.jsp" />'>Torna alla pagina Home</a></li>
	<li><h:form>
		<h:commandLink action="#{tipoEsameController.listTipoEsami}" value="Visualizza le tipologie di esami che offriamo"/>
	</h:form></li>
</ul>
</f:view>
</body>
</html>