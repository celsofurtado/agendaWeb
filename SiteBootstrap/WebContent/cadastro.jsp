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
				<div class="panel-heading"><img src="images/userAdd24.png" style="margin-right: 10px;">Cadastro de novo contato</div>
				<div class="panel-body" style="background-color: #fafafa;">
					
					<!-- Formulário de cadastro -->
					<form method="post" action="GravarContato">
						<fieldset><legend>Dados gerais:</legend>
						<!-- LINHA 1 DO FORM -->
						<div class="form-row">							
							<div class="form-group col-md-6">
								<label for="txtNome">Nome:</label>
								<input type="text" class="form-control" name="txtNome" placeholder="Digite o nome...">
							</div>
							<div class="form-group col-md-3">
								<label for="txtDtNasc">Dt. Nasc.:</label>
								<input type="date" class="form-control" name="txtDtNasc" placeholder="Data de nascimento...">
							</div>
							<div class="form-group col-md-3">
								<label for="rdSexo">Sexo:</label>
								<select name="cbSexo" class="form-control">
									<option value="s">Selecione</option>
									<option value="f">Feminino</option>
									<option value="m">Masculino</option>
								</select>
							</div>
						</div>	
						</fieldset>
						<!-- LINHA 2 DO FORM -->
						<fieldset><legend>Endereço do contato:</legend>
						<div class="form-row">
							<div class="form-group col-md-7">
								<label for="txtLogradouro">Logradouro:</label>
								<input type="text" class="form-control" name="txtLogradouro" placeholder="Rua, Av., Trav...">
							</div>
							<div class="form-group col-md-5">
								<label for="txtBairro">Bairro:</label>
								<input type="text" class="form-control" name="txtBairro" placeholder="Bairro...">
							</div>							
						</div>	
						<!-- LINHA 3 DO FORM -->
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="txtCidade">Cidade:</label>
								<input type="text" class="form-control" name="txtCidade" placeholder="Cidade...">
							</div>
							<div class="form-group col-md-4">
								<label for="cbEstado">Estado:</label>
								<select name="cbEstado" class="form-control">
									<option value="SS">Selecione</option>
									<option value="SP">São Paulo</option>
									<option value="RJ">Rio de Janeiro</option>
									<option value="MG">Minas Gerais</option>
									<option value="ES">Espirito Santo</option>
								</select>
							</div>	
							<div class="form-group col-md-2">
								<label for="txtCep">CEP:</label>
								<input type="text" class="form-control" name="txtCep" placeholder="CEP...">
							</div>						
						</div>
						</fieldset>
						<!-- LINHA 4 DO FORM -->
						<fieldset><legend>Como entrar em contato:</legend>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="txtEmail">Email:</label>
								<input type="email" class="form-control" name="txtEmail" placeholder="E-mail...">
							</div>
							<div class="form-group col-md-3">
								<label for="txtTelefone">Telefone:</label>
								<input type="text" class="form-control" name="txtTelefone" placeholder="Telefone...">
							</div>	
							<div class="form-group col-md-3">
								<label for="txtCelular">Celular:</label>
								<input type="text" class="form-control" name="txtCelular" placeholder="Celular...">
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
								<input type="submit" value="Gravar dados do contato" class="btn btn-success">
								<input type="reset" value="Limpar formulário" class="btn btn-warning">
								<a href="index.jsp" class="btn btn-danger">Cancelar cadastro</a>
							</div>
						</div>		
					</form>
					
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
