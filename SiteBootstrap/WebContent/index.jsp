<%@page import="br.senai.sp.jandira.model.Contato"%>
<%@page import="br.senai.sp.jandira.dao.ContatoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.senai.sp.jandira.servlet.ListaContatos"%>
<%@page import="br.senai.sp.jandira.model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="cabecalho.jsp"%>

<%
	ArrayList<Contato> listaContatos = new ArrayList();
	int pagina = 0;
	
	if (request.getParameter("pag").equals(null)){
		pagina = 0;
	} else {
		pagina = Integer.parseInt(request.getParameter("pag"));
	}
	
	ContatoDAO c = new ContatoDAO();
	listaContatos = c.getContatos(12, pagina, u.getId());
	
	int paginas = c.getPaginas(u.getId());
	
%>


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
					<img src="images/lista_contatos24.png" style="margin-right: 10px;">Meus
					contatos
				</div>
				<div class="panel-body">
					<nav aria-label="Page navigation">
						<ul class="pagination">
							<% for (int pag = 1; pag <= paginas; pag++) { %>
								<li><a <%=pag == pagina ? "style=\"background-color: #B0E0E6;\"" : "" %> href="index.jsp?pag=<%=pag%>"><%=pag%></a></li>
							<% } %>
						</ul>
					</nav>
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
							for (Contato con : listaContatos) {
						%>

						<tr>
							<td width="10%"><%=con.getId()%></td>
							<td width="40%"><a
								href="LerContato?id=<%=con.getId()%>&operacao=editar&pag=<%=pagina%>"><%=con.getNome()%></a></td>
							<td width="30%"><%=con.getEmail()%></td>
							<td width="10%"><a
								href="LerContato?id=<%=con.getId()%>&operacao=editar&pag=<%=pagina%>"><img
									src="images/edit_user16.png" alt="Editar"></a></td>
							<td width="10%"><a
								href="LerContato?id=<%=con.getId()%>&operacao=excluir&pag=<%=pagina%>"><img
									src="images/delete16.png" alt="Excluir"></a></td>
						</tr>

						<%
							}
						%>

					</table>
					<hr>
					
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
