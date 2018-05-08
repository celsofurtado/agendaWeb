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
			<div class="panel panel-danger">
				<div class="panel-heading">
					<img src="images/delete_user32.png" style="margin-right: 10px; width: 24px; height: 24px;">Excluir Contato
				</div>
				<div class="panel-body" style="background-color: #fafafa;">

				<div class="alert alert-success">
					<p style="font-size: 18px; font-weight: bold;"><img src="images/ok128.png" style="width: 64px; height: 64px;">Contato excluído com sucesso!!</p>
					<p style="margin-left: 10px;"><a href="index.jsp?pag=1">Voltar a Home Page</a></p>
				</div>

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
