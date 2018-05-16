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
				<div class="panel panel-success">
					<div class="panel-heading">
						<p style="font-size: 24px; font-weight: normal;">Vamos efetuar
							o seu cadastro</p>
						<p style="font-size: 18px; font-weight: bold;">Vamos começar!</p>
					</div>
					<div class="panel-body" style="background-color: #fafafa;">

						<div class="alert" id="alerta"></div>

						<!-- Formulário de cadastro -->
						<form method="post" action="GravarUsuario"
							onsubmit="return validate()" name="frmUsuario">
							<fieldset>
								<legend>Dados gerais:</legend>
								<!-- LINHA 1 DO FORM -->
								<div class="form-row">
									<div class="form-group col-md-6">

										<label for="txtNome">Nome:</label><span id="erro_nome"
											class="error_message"></span> <input type="text"
											class="form-control" name="txtNome" placeholder="Nome..."
											required="required">
									</div>
									<div class="form-group col-md-3">
										<label for="txtDtNasc">Cidade</label> <input type="text"
											class="form-control" name="txtCidade" placeholder="Cidade..."
											required="required">
									</div>
									<div class="form-group col-md-3">
										<label for="txtDtNasc">Dt. Nasc.:</label> <input type="date"
											class="form-control" name="txtDtNasc"
											placeholder="Data de nascimento..." required="required">
									</div>
								</div>
							</fieldset>

							<!-- LINHA 4 DO FORM -->
							<fieldset>
								<legend>Dados para autenticação:</legend>
								<div class="form-row">
									<div class="form-group col-md-6">
										<label for="txtEmail">Email:</label> <input type="email"
											class="form-control" name="txtEmail" placeholder="E-mail..."
											required="required">
									</div>
									<div class="form-group col-md-3">
										<label for="txtSenha">Senha:</label><span class="error_message" id="erroSenha"></span>
										<input type="password" class="form-control" name="txtSenha"
											placeholder="Senha..." required="required">
									</div>
									<div class="form-group col-md-3">
										<label for="txtConfSenha">Conf. senha:</label><span class="error_message" id="erroConfSenha"></span>
										<input type="password" class="form-control" name="txtConfSenha"
											placeholder="Confirmação..." required="required">
									</div>
								</div>
							</fieldset>
							<!-- LINHA 5 DO FORM -->
							<div class="form-row">
								<div class="form-group col-md-12"></div>
							</div>
							<hr>
							<!-- LINHA 6 DO FORM -->
							<div class="form-row">
								<div class="form-group col-md-12">
									<input type="submit" value=">> Criar Usuário " class="btn btn-success">
									<a href="index.jsp?pag=<%=request.getParameter("pag")%>"
										class="btn btn-info">X Cancelar</a>
								</div>
							</div>
						</form>

					</div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>

	</div>

	<%@ include file="rodape.jsp"%>

	<script type="text/javascript">
	
		var senha = document.forms["frmUsuario"]["txtSenha"];
		var confSenha = document.forms["frmUsuario"]["txtConfSenha"];
		var erroSenha = document.getElementById("erroSenha");
		var erroConfSenha = document.getElementById("erroConfSenha");
		var alerta = document.getElementById("alerta");
		
		function validate(){
			if (senha.value != confSenha.value){
				senha.style.border = "1px solid red";
				confSenha.style.border = "1px solid red";
				erroSenha.textContent = "*";
				erroConfSenha.textContent = "*";
				alerta.style.border = "1px solid red";
				alerta.style.background = "#FF7F50"
				alerta.style.color = "white";
				alerta.textContent = "Erro: As senhas não conferem!"
				senha.focus();
				return false;
			} else {
				return true;
			}
		}
		
	</script>

</body>
</html>




