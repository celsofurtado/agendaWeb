<%@page import="br.senai.sp.jandira.model.Contato"%>
<%@page import="br.senai.sp.jandira.servlet.ListaContatos"%>
<%@page import="br.senai.sp.jandira.model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	
	<%
	
		Contato contato = new Contato();
		contato = (Contato) request.getAttribute("contato");
	
	%>

<%@ include file="cabecalho.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-md-3">

			<!-- **** PAINEL COM OS DADOS DO USUÁRIO LOGADO -->
			<%@ include file="painel_usuario.jsp"%>

			<!-- **** PAINEL COM O MENU DE OPÇÕES -->
			<%@ include file="menu_opcoes.jsp"%>

		</div>

		<div class="col-md-9">
			<div class="panel panel-warning">
				<div class="panel-heading">
					<img src="images/edit_user24.png" style="margin-right: 10px; width: 24px; height: 24px;">Editar Contato
				</div>
				<div class="panel-body" style="background-color: #fafafa;">

					<!-- Formulário de cadastro -->
					<form method="post" action="EditarContato?pag=<%=request.getParameter("pag")%>">
						<fieldset>
							<legend>Dados gerais:</legend>
							<!-- LINHA 1 DO FORM -->
							<div class="form-row">
								<div class="form-group col-md-2">
									<label for="txtId">ID:</label> <input type="text"
										class="form-control" name="txtId" value="<%=contato.getId()%>"
										readonly="readonly">
								</div>
								<div class="form-group col-md-4">
									<label for="txtNome">Nome:</label> <input type="text"
										class="form-control" name="txtNome"
										value="<%=contato.getNome()%>">
								</div>
								<div class="form-group col-md-3">
									<label for="txtDtNasc">Dt. Nasc.:</label> <input type="date"
										class="form-control" name="txtDtNasc"
										value="<%=contato.getDtNasc()%>">
								</div>
								<div class="form-group col-md-3">
									<label for="rdSexo">Sexo:</label> <select name="cbSexo"
										class="form-control">
										<option value="s" <%=contato.getSexo().equals("s") ? "selected" : "" %>>Selecione</option>
										<option value="f" <%=contato.getSexo().equals("f") ? "selected" : "" %>>Feminino</option>
										<option value="m" <%=contato.getSexo().equals("m") ? "selected" : "" %>>Masculino</option>
									</select>
								</div>
							</div>
						</fieldset>
						<!-- LINHA 2 DO FORM -->
						<fieldset>
							<legend>Endereço do contato:</legend>
							<div class="form-row">
								<div class="form-group col-md-7">
									<label for="txtLogradouro">Logradouro:</label> <input
										type="text" class="form-control" name="txtLogradouro"
										value="<%=contato.getLogradouro()%>">
								</div>
								<div class="form-group col-md-5">
									<label for="txtBairro">Bairro:</label> <input type="text"
										class="form-control" name="txtBairro" value="<%=contato.getBairro()%>">
								</div>
							</div>
							<!-- LINHA 3 DO FORM -->
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="txtCidade">Cidade:</label> <input type="text"
										class="form-control" name="txtCidade" value="<%=contato.getCidade()%>">
								</div>
								<div class="form-group col-md-4">
									<label for="cbEstado">Estado:</label> <select name="cbEstado"
										class="form-control">
										<option value="SS">Selecione</option>
										<option value="SP">São Paulo</option>
										<option value="RJ">Rio de Janeiro</option>
										<option value="MG">Minas Gerais</option>
										<option value="ES">Espirito Santo</option>
									</select>
								</div>
								<div class="form-group col-md-2">
									<label for="txtCep">CEP:</label> <input type="text"
										class="form-control" name="txtCep" value="<%=contato.getCep()%>">
								</div>
							</div>
						</fieldset>
						<!-- LINHA 4 DO FORM -->
						<fieldset>
							<legend>Como entrar em contato:</legend>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="txtEmail">Email:</label> <input type="email"
										class="form-control" name="txtEmail" value="<%=contato.getEmail()%>">
								</div>
								<div class="form-group col-md-3">
									<label for="txtTelefone">Telefone:</label> <input type="text"
										class="form-control" name="txtTelefone"
										value="<%=contato.getTelefone()%>">
								</div>
								<div class="form-group col-md-3">
									<label for="txtCelular">Celular:</label> <input type="text"
										class="form-control" name="txtCelular"
										value="<%=contato.getCelular()%>">
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
								<input type="submit" value="Atualizar dados do contato"	class="btn btn-success">
								<a href="index.jsp?pag=<%=request.getParameter("pag") %>" class="btn btn-info">Cancelar atualização</a>
							</div>
						</div>
					</form>

				</div>
			</div>
		</div>

	</div>

</div>

<%@ include file="rodape.jsp"%>

</body>
</html>

<%
	}
%>
