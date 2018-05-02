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
				<div class="panel-heading">Cadastro de novo contato</div>
				<div class="panel-body">
					<p>Cadastro de contato</p>
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
