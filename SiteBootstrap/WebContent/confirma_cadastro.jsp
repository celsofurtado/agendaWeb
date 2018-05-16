<%@page import="br.senai.sp.jandira.servlet.ListaContatos"%>
<%@page import="br.senai.sp.jandira.model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Minha Agenda</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style2.css" rel="stylesheet">
<link rel="icon" href="images/contatos64.png">
<script type="text/javascript" src="js/valida.js"></script>
</head>

<body>

	<header
		style="background-color: #4682b4; padding: 0px; margin-bottom: 20px; box-shadow: 0px 3px 5px gray;">
		<div class="container">
			<nav class="navbar navbar-default"
				style="margin-top: 0px; margin-bottom: 0px; padding: 5px; margin-left: 0px; background-color: #4682b4; border: 0px;">
				<div class="container-fluid" style="padding: 0px">
					<div class="navbar-header" style="font-size: 30px;">
						<img src="images/contatos64.png"
							style="margin-right: 0px; margin-left: 0px;"><strong>AGENDA
							DE CONTATOS</strong>
					</div>
				</div>
			</nav>
		</div>
	</header>

	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>

			<div class="col-md-8">
				
				<div class="alert alert-success">
					<p style="font-size: 18px; font-weight: bold;"><img src="images/ok128.png" style="width: 64px; height: 64px;">Usuário cadastrado com sucesso!!</p>
					<p style="margin-left: 10px;"><a href="login.jsp?pag=1">Efetuar Login</a></p>
				</div>
				
			</div>
			<div class="col-md-2"></div>
		</div>

	</div>

	<%@ include file="rodape.jsp"%>

	<script type="text/javascript" src="js/valida.js">
		
	</script>

</body>
</html>




