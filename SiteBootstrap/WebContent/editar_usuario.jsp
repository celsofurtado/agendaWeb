<%@page import="br.senai.sp.jandira.servlet.ListaContatos"%>
<%@page import="br.senai.sp.jandira.model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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
			<div class="panel panel-success">
				<div class="panel-heading">
					<img src="images/userAdd24.png" style="margin-right: 10px;">Alterar
					dados do usuário
				</div>
				<div class="panel-body" style="background-color: #fafafa;">

					<!-- Formulário de cadastro -->
					<form method="post"
						action="EditarUsuario?pag=<%=request.getParameter("pag")%>"
						onsubmit="return validate()" name="frmUsuario">
						<fieldset>
							<legend>Dados gerais:</legend>
							<!-- LINHA 1 DO FORM -->
							<div class="form-row">
								<div class="form-group col-md-5">
									<input type="text" name="txtIdUsuario" value="<%=u.getId()%>"
										hidden="true"> <label for="txtNome">Nome:</label><span
										id="erro_nome" class="error_message"></span> <input
										type="text" class="form-control" name="txtNome"
										value="<%=u.getNome()%>"  required="required">
								</div>
								<div class="form-group col-md-4">
									<label for="txtCidade">Cidade:</label> <input type="text"
										name="txtCidade" class="form-control"
										value="<%=u.getCidade()%>" required="required">
								</div>
								<div class="form-group col-md-3">
									<label for="txtDtNasc">Dt. Nasc.:</label> <input type="date"
										class="form-control" name="txtDtNasc"
										value="<%=u.getDtNasc()%>" required="required">
								</div>
							</div>
						</fieldset>

						<!-- LINHA 2 DO FORM -->
						<fieldset>
							<legend>Senha:</legend>
							<div class="form-row">
								<div class="form-group col-md-12">
									<label for="txtEmail">E-mail:</label> <input type="email"
										class="form-control" name="txtEmail"
										value="<%=u.getEmail()%>" required="required">
								</div>
							</div>

							<!-- LINHA 3 DO FORM -->
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="txtSenha">Senha:</label><span
										id="erro_logradouro" class="error_message"></span> <input
										type="password" class="form-control" name="txtSenha"
										value="<%=u.getSenha() %>"  required="required">
								</div>
								<div class="form-group col-md-6">
									<label for="txtConfSenha">Confirmação de senha:</label> <input
										type="password" class="form-control" name="txtConfSenha"
										value="<%=u.getSenha() %>" required="required">
								</div>
							</div>

						</fieldset>

						<hr>
						<!-- LINHA 4 DO FORM -->
						<div class="form-row">
							<div class="form-group col-md-12">
								<input type="submit" value="Atualizar dados" class="btn btn-success">
								<a href="index.jsp?pag=<%=request.getParameter("pag")%>" class="btn btn-info">Cancelar</a>
							</div>
						</div>
					</form>

				</div>
			</div>
		</div>

	</div>

</div>

<%@ include file="rodape.jsp"%>

<script type="text/javascript" src="js/valida.js">
	
</script>

</body>
</html>

<%
	}
%>




