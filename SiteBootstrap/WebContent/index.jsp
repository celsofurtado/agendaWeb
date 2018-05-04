<%@page import="br.senai.sp.jandira.model.Contato"%>
<%@page import="br.senai.sp.jandira.dao.ContatoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.senai.sp.jandira.servlet.ListaContatos"%>
<%@page import="br.senai.sp.jandira.model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	
	<%
	
	ArrayList<Contato> listaContatos = new ArrayList();
	
	ContatoDAO c = new ContatoDAO();
	listaContatos = c.getContatos();

	%>

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
				<div class="panel-heading"><img src="images/lista_contatos24.png" style="margin-right: 10px;">Meus contatos</div>
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
						
						<%
							for(Contato con : listaContatos){								
						%>
						
						<tr>
							<td><%= con.getId() %></td>
							<td><a href="LerContato?id=<%= con.getId()%>"><%= con.getNome() %></a></td>
							<td><%= con.getEmail() %></td>
							<td><a href="LerContato?id=<%= con.getId()%>"><img src="images/edit_user16.png"></a></td>
							<td><img src="images/delete16.png"></td>
						</tr>
						
						<%
							}
						%>
						
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
