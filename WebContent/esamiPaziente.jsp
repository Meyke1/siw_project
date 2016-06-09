<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>esami paziente</title>
</head>
<body>
<f:view>
<h1><font color="blue" size="8" face="Verdana" >Consulta i tuoi Esami</font></h1>
<h2><font color="red" size="5" face="Verdana" >Benvenuto ${pazienteController.corrente.nome} ${pazienteController.corrente.cognome}</font></h2>
<h:form>
<table>
	<tr>
		<th><font color="#008800" size="4" face="Arial" >Codice esame </font></th> 
		<th><font color="#008800" size="4" face="Arial" >Nome Esame </font></th>
		<th><font color="#008800" size="4" face="Arial" >Prezzo </font></th> 
	</tr>
	<c:forEach var="esame" items="#{esameController.esami}">
		<tr>
		<c:if test="${esame.paziente.id == pazienteController.corrente.id}">
		<td>
		<h:commandLink action="#{esameController.findEsame}" value="#{esame.id}"><f:param name="id" value="#{esame.id}" />
		</h:commandLink>
		</td>
		
		<td>${esame.tipoEsame.nome}</td>
		<td>${esame.tipoEsame.price}</td>
		</c:if>
		</tr>
	</c:forEach>
</table>
</h:form>
	<a href='<c:url value="/faces/index.jsp" />'>Torna alla pagina Home</a>
</f:view>
</body>
</html>