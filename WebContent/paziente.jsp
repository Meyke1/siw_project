<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profilo del paziente</title>
</head>
<body>
<f:view>
<h1>${pazienteController.paziente.username}</h1>
<h2>Dettagli</h2>
<div>Nome: ${pazienteController.paziente.nome}</div>
<div>Cognome: ${pazienteController.paziente.cognome}</div>
<div>Indirizzo: ${pazienteController.paziente.indirizzo}</div>
<div>Data di nascita: ${pazienteController.paziente.dataDiNascita}</div>
<div>Data di iscrizione: ${pazienteController.paziente.dataIscrizione}</div>
<div>Codice: ${pazienteController.paziente.code}</div>
<h2><a href='<c:url value="/faces/index.jsp" />'>Torna alla pagina Home</a></h2>
</f:view>
</body>
</html>