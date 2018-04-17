<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<title>Login</title>
		
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<h1>Login Form</h1>
					<div class="well">
						<form method="post" action="Autentica">
							<img src="images/user128.png" class="img-circle" alt="User" />
							<div class="form-group">
								<label for="txtUserName">Usuário:</label>
								<input type="text" class="form-control" name="txtUserName" >
							</div>
							<div class="form-group">
								<label for="txtPassword">Senha:</label>
								<input type="password" class="form-control" name="txtPassword" >
							</div>
							<div class="checkbox">
								<label><input type="checkbox">Lembar-me</label>
							</div>
							<button type="submit" style="position:relative;top:5px;" class="btn btn-success">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>
	</body>
</html>