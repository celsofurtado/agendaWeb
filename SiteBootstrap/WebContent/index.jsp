<%@page import="br.senai.sp.jandira.servlet.ListaContatos"%>
<%@page import="br.senai.sp.jandira.model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="cabecalho.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-md-3">

			<!-- **** PAINEL COM OS DADOS DO USUÁRIO LOGADO -->
			<%@ include file="painel_usuario.jsp" %>

			<!-- **** PAINEL COM O MENU DE OPÇÕES -->
			<%@ include file="menu_opcoes.jsp" %>

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
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tr>
							<td>1</td>
							<td>Pedro da Silva</td>
							<td>pedro@teste.com.br</td>
							<td><img src="images/edit_user16.png"></td>
							<td><img src="images/delete16.png"></td>
						</tr>
						<tr>
							<td>2</td>
							<td>Maria Antonieta</td>
							<td>maria@uol.com.br</td>
							<td><img src="images/edit_user16.png"></td>
							<td><img src="images/delete16.png"></td>
						</tr>
						<tr>
							<td>3</td>
							<td>Carlos Oliveira Chagas</td>
							<td>carlos.oli@terra.com.br</td>
							<td><img src="images/edit_user16.png"></td>
							<td><img src="images/delete16.png"></td>
						</tr>
						<tr>
							<td>4</td>
							<td>Pedro da Silva</td>
							<td>pedro@teste.com.br</td>
							<td><img src="images/edit_user16.png"></td>
							<td><img src="images/delete16.png"></td>
						</tr>
						<tr>
							<td>5</td>
							<td>Maria Antonieta</td>
							<td>maria@uol.com.br</td>
							<td><img src="images/edit_user16.png"></td>
							<td><img src="images/delete16.png"></td>
						</tr>
						<tr>
							<td>6</td>
							<td>Carlos Oliveira Chagas</td>
							<td>carlos.oli@terra.com.br</td>
							<td><img src="images/edit_user16.png"></td>
							<td><img src="images/delete16.png"></td>
						</tr>
					</table>
				</div>
			</div>
		</div>

	</div>

</div>

<%@ include file = "rodape.jsp" %>

</body>
</html>

<%
	}
%>
