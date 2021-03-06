<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />

<script src="http://code.jquery.com/jquery.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" ></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>SIW-PROGETTO-ESAME</title>
</head>
<body>
<f:view>
<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="#">CLINICA</a>
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav">
      <li class="active"></li>
      <li><c:if test="${amministratoreController.corrente == null && pazienteController.corrente == null}">
			<a href='<c:url value="/faces/loginPaziente.jsp" />'>Effettua il login Paziente</a>	
		</c:if></li>
		<li><c:if test="${amministratoreController.corrente == null && pazienteController.corrente == null}">
			<a href='<c:url value="/faces/loginAmministratore.jsp" />'>Effettua il login Amministratore</a>
		</c:if></li>	
		<c:if test="${amministratoreController.corrente != null}">
		 <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Operazioni <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href='<c:url value="/faces/newTipoEsame.jsp" />'>Inserisci un nuovo tipo di esame </a></li>
                  <li><a href='<c:url value="/faces/registraPaziente.jsp" />'>Registra Paziente</a></li>
			      <li><a href='<c:url value="/faces/registraEsame.jsp" />'>Registra un esame</a></li>
			      <li><a href='<c:url value="/faces/registraMedico.jsp" />'>Registra un medico</a></li>
			      <li><a href='<c:url value="/faces/associaMedicoEsame.jsp" />'>Associa un medico a un esame</a></li>
			      <li><a href='<c:url value="/faces/esamiMedico.jsp" />'>Consulta gli esami che effettua un certo medico</a></li>
			      <li><a href='<c:url value="/faces/inserisciRisultato.jsp" />'>Inserisci risultato di un certo esame</a></li>
                  
                </ul>
              </li>
         </c:if>
         <li><c:if test="${amministratoreController.corrente != null}">
			<h:form><h:commandLink styleClass="btn btn-link btn-lg" action="#{amministratoreController.logoutAmministratore}" value="Sign-out"/></h:form>
		</c:if></li>
		<li><c:if test="${pazienteController.corrente != null}">
			<h:form><h:commandLink styleClass="btn btn-link btn-lg" action="#{pazienteController.logoutPaziente}" value="Sign-out"/></h:form>
		</c:if></li>
   
    </ul>
  </div><!-- /.navbar-collapse -->
</nav>

		<div class="jumbotron">
			<div class="container">

				<h2>Welcome
					${amministratoreController.corrente.nome}${pazienteController.corrente.nome}
					to</h2>
				<h1>CLINICA SAN RAFFAELE</h1>
				<c:if test="${amministratoreController.corrente == null && utenteController.corrente==null}">
					<h1>
						<h:form>
							<h:commandLink styleClass="btn btn-info"
								action="#{tipoEsameController.listTipoEsami}"
								value="COSA OFFRIAMO" />
						</h:form>
					</h1>
				</c:if>

			</div>
		</div>
		<c:if test="${amministratoreController.corrente == null && pazienteController.corrente == null}">
			<h1>Non sei registrato? Chiedi a un Amministratore!</h1>
		</c:if>
		<c:if test="${pazienteController.corrente != null}">
			<h1><h:form><h:commandLink styleClass="btn btn-info" action="#{esameController.listEsami}" value="Consulta gli esami a cui sei prenotato">
				<f:param name="uid" value="#{pazienteController.corrente.id}" />
			</h:commandLink>
			</h:form></h1>
		</c:if>
		<h2>Operazioni:</h2> 
		<ul>
			<li><h:form><h:commandLink action="#{tipoEsameController.listTipoEsami}" value="Visualizza gli esami che offriamo"/></h:form></li>
			<li><a href='<c:url value="/faces/registraAmministratore.jsp" />'>Registrati come amministratore</a></li>
		</ul>
		<h2>Realizzato dagli studenti:</h2>
		<ul>
			<li>Tedesco Michele 470338</li>
		</ul> 
	</f:view>
</body>
</html>

