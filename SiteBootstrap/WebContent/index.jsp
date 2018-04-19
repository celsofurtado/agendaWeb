<%@page import="br.senai.sp.jandira.servlet.ListaContatos"%>
<%@page import="br.senai.sp.jandira.model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	Usuario u = new Usuario();
	u = (Usuario) session.getAttribute("usuario");

	if (u == null) {
		response.sendRedirect("login.jsp");
	} else {
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Bootstrap 101 Template</title>

<link href="css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

	<div class="container"
		style="box-shadow: 3px 3px 5px gray; border-radius: 10px; border: 1px solid; margin-top:5px; border-color: gray">

		<nav class="navbar navbar-default"
			style="margin-top: 10px; padding: 5px; background-color: #4682b4">
			<div class="container-fluid">
				<div class="navbar-header" style="font-size: 30px;">
					<a href="index.jsp"> <img src="images/contatos64.png"
						style="margin-right: 10px"><strong style="color: white;">CONTATOS</strong>
					</a>
				</div>
			</div>
		</nav>

		<div class="row">
			<div class="col-md-3">

				<!-- **** PAINEL COM OS DADOS DO USUÁRIO LOGADO -->
				<div class="panel panel-success">
					<div class="panel-heading">
						<img src="images/user24.png" style="margin-right: 10px;">Usuário
					</div>
					<div class="panel-body">
						<p>
							<strong>Usuário:</strong> <a href="editarusuario.jsp"> <%=u.getNome()%>
							</a>
						</p>
						<p>
							<strong>Dt. Nasc.:</strong> 15/05/1990
						</p>
						<p>
							<strong>Cidade:</strong> Itapevi
						</p>
						<p>
							<strong>Data:</strong> 18/04/2018
						</p>
						<a href="sair.jsp"><img src="images/logout16.png"
							style="margin-right: 10px;">Efetuar Logout</a>
					</div>
				</div>

				<!-- **** PAINEL COM O MENU DE OPÇÕES -->
				<div class="panel panel-success">
					<div class="panel-heading">Menu</div>
					<div class="panel-body">
						<ul class="nav flex-column">
							<li class="nav-item"><a href="#">Home</a></li>
							<li class="nav-item"><a href="#">Cadastrar Contato</a></li>
						</ul>
					</div>
				</div>

			</div>
			
			<div class="col-md-9">
				<div class="panel panel-success">
					<div class="panel-heading">Meus contatos</div>
					<div class="panel-body">
						<table class="table table-hover">
							<thead>
							<tr>
								<th>ID</th>
								<th>Nome</th>
								<th>E-mail</th>
							</tr>
							</thead>
							<tr>
								<td>1</td>
								<td>Pedro da Silva</td>
								<td>pedro@teste.com.br</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Maria Antonieta</td>
								<td>maria@uol.com.br</td>
							</tr>
							<tr>
								<td>3</td>
								<td>Carlos Oliveira Chagas</td>
								<td>carlos.oli@terra.com.br</td>
							</tr>
							<tr>
								<td>4</td>
								<td>Pedro da Silva</td>
								<td>pedro@teste.com.br</td>
							</tr>
							<tr>
								<td>5</td>
								<td>Maria Antonieta</td>
								<td>maria@uol.com.br</td>
							</tr>
							<tr>
								<td>6</td>
								<td>Carlos Oliveira Chagas</td>
								<td>carlos.oli@terra.com.br</td>
							</tr>
						</table>
					</div>
				</div>
			</div>

		</div>


	</div>

</body>
</html>

<%
	}
%>
