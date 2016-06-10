<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<title>Informazioni sull'esame</title>
</head>
<body>
<f:view>
<h1> Informazioni Esame </h1>
<h1>${esameController.esame.tipoEsame.nome}</h1>
<h2>Dettagli</h2>
<div>Codice: ${esameController.esame.code}</div>
<div>Prezzo: ${esameController.esame.tipoEsame.price}</div>
<div>Data Prenotazione: ${esameController.esame.dataPrenotazione}</div>
<div>Paziente: <ul><li>nome: ${esameController.esame.paziente.nome}</li>
                   <li>cognome: ${esameController.esame.paziente.cognome}</li>
                   <li>codice: ${esameController.esame.paziente.code}</li>
               </ul>
</div>
<div>Medico: <ul><li>nome: ${esameController.esame.medico.nome}</li>
                   <li>cognome: ${esameController.esame.medico.cognome}</li>
               </ul>
</div>
<ul>
	<c:if test="${amministratoreController.corrente != null}">	
		<li><a href='<c:url value="/faces/registraEsame.jsp" />'>Inserisci un nuovo esame</a></li>
	</c:if>
	<li><a href='<c:url value="/faces/index.jsp" />'>Torna alla pagina Home</a></li>
</ul>
</f:view>
</body>
</html>