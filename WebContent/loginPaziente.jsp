<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
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
<title>Sezione Login Paziente</title>
</head>
<body style="background-color: light-grey;">

	<f:view>
		<div class="container">
			<h:form>
				<div class="col-md-6 col-md-offset-3">

					<div class="form-group has-error form-group-sm">

						<h2 class="form-signin-heading">Inserisca le sue credenziali 
							</h2>



						<div>
							<font color="#DC143C" size="4">${pazienteController.errore}</font>
						</div>
						<label for="inputUsername">Username: </label>
						<h:inputText styleClass="form-control"
							value="#{pazienteController.username}" required="true"
							requiredMessage="Campo username obbligatorio" id="username" />
						<h:message for="username" />


						<label for="inputPassword">Password:</label>
						<h:inputSecret styleClass="form-control"
							value="#{pazienteController.password}" required="true"
							requiredMessage="Campo password obbligatorio" id="password" />
						<h:message for="password" />
						
						<label></label>

						<div>
							<h:commandButton styleClass="btn btn-lg btn-primary btn-block"
								value="Invia"
								action="#{pazienteController.loginPaziente}" />
						</div>
					</div>
				</div>

			</h:form>
		</div>
		<a href='<c:url value="/faces/index.jsp" />'>Torna alla pagina
			Home</a>
	</f:view>
</body>
</html>