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
	<h3>
		Nome:
		<%=u.getNome()%>
	</h3>
	<a href="sair.jsp">Sair</a>
	<div class="container-fluid"></div>

	<div class="container">
		<div class="row">
			
			<table>
			
				<%
				
					ListaContatos listaContatos = new ListaContatos();
				
				%>
			
			</table>
			
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<h2>Conteúdo de título</h2>
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
					Morbi gravida libero nec velit. Morbi scelerisque luctus velit.
					Etiam dui sem, fermentum vitae, sagittis id, malesuada in, quam.
					Proin mattis lacinia justo. Vestibulum facilisis auctor urna.
					Aliquam in lorem sit amet leo accumsan</p>
			</div>
		</div>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>



<%
	}
%>
