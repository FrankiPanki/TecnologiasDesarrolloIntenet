<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Tecnologias de la Informacion</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<style>
html, body {
	margin: 0%;
	padding: 0%;
}

#contenedor {
	width: 100%;
	height: 100%;
	display: grid;
	grid-template-columns: 1fr 3fr;
	grid-template-rows: 10% 85% 5%;
	grid-template-areas: "nav nav" "lateral principal" "footer footer";
}

#menu {
	grid-column-start: nav;
	grid-column-end: nav;
	padding-top: 1%;
}

#informacion {
	padding: 2%;
	grid-column-start: lateral;
	grid-row-end: lateral;
}

#principal {
	grid-column-start: principal;
	grid-column-end: principal;
}

#foter {
	grid-column-start: footer;
	grid-column-end: footer;
}

#bienvenida {
	padding-top: 0%;
	background-color: white;
}
</style>
<body>

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Registro</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form action="${pageContext.request.contextPath}/agrega">
					<div class="modal-body">
						<div class="form-group">
							<label for="email" class="col-form-label">Email</label> <input
								type="email" class="form-control" id="email" name="email">
						</div>
						<div class="form-group">
							<label for="contrasena" class="col-form-label">Password:</label>
							<input type="password" class="form-control" id="contrasena"
								name="contrasena">
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Registrate</button>
					</div>
				</form>
			</div>
		</div>
	</div>



	<div id="contenedor">
		<nav class="navbar navbar-light bg-light" id="menu">
			<a class="navbar-brand">Tecnologias de la Informacion</a>
			<form class="form-inline">
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#exampleModal" data-whatever="@mdo">Registrate</button>

			</form>
		</nav>
		<aside id="informacion">
			<div class="accordion" id="accordionExample">
				<div class="card">
					<div class="card-header" id="headingOne">
						<h2 class="mb-0">
							<button class="btn btn-link" type="button" data-toggle="collapse"
								data-target="#collapseOne" aria-expanded="true"
								aria-controls="collapseOne">Examenes</button>
						</h2>
					</div>

					<div id="collapseOne" class="collapse show"
						aria-labelledby="headingOne" data-parent="#accordionExample">
						<div class="card-body">El siguiente examen es el lunes</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingTwo">
						<h2 class="mb-0">
							<button class="btn btn-link collapsed" type="button"
								data-toggle="collapse" data-target="#collapseTwo"
								aria-expanded="false" aria-controls="collapseTwo">
								Tareas</button>
						</h2>
					</div>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
						data-parent="#accordionExample">
						<div class="card-body">La siguiente tarea es para el viernes
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingThree">
						<h2 class="mb-0">
							<button class="btn btn-link collapsed" type="button"
								data-toggle="collapse" data-target="#collapseThree"
								aria-expanded="false" aria-controls="collapseThree">
								Practicas</button>
						</h2>
					</div>
					<div id="collapseThree" class="collapse"
						aria-labelledby="headingThree" data-parent="#accordionExample">
						<div class="card-body">La siguiente practica se entrega hoy
						</div>
					</div>
				</div>
			</div>

		</aside>

		<div id="principal">
			<div class="jumbotron jumbotron-fluid" id="bienvenida">
				<div class="container">
					<h1 class="display-4">Bienvenido</h1>
					<p class="lead">Profesor
					<p class="lead">Ayudante
					<p class="lead">Laboratorio</p>
				</div>
			</div>
		</div>


		<div id="foter">
			<div class="card">
				<div class="card-header">Clase de Tecnologias de la
					informacion©</div>
				<div class="card-body">
					<h5 class="card-title">Tlauzcalpan</h5>
					Taller de Ingenieria de Software
				</div>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>

</html>