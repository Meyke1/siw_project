<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profilo dell'amministratore</title>
</head>
<body>
	<f:view>
		<h1>Amministratore</h1>
		<div class="container">
			<h2>Dettagli</h2>
			<table class="table table-striped">
				<thead></thead>
				<tbody>
					<tr>
						<td>Nome: ${amministratoreController.amministratore.nome}</td>
					</tr>
					<tr>
						<td>Cognome:
							${amministratoreController.amministratore.cognome}</td>
					</tr>
					<tr>
						<td>Username: ${amministratoreController.amministratore.username}</td>
					</tr>
					<tr>
						<td>Password: ${amministratoreController.amministratore.password}</td>
					</tr>
				</tbody>
			</table>
		</div>
		<h5>
			<a href='<c:url value="/faces/index.jsp" />'>Torna alla pagina
				Home</a>
		</h5>
	</f:view>
</body>
</html>