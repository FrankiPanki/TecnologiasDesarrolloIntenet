<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<html>
<head>
<meta charset="UTF-8">
<title>Agrega Materia</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="resources/estilos/agregamateria.css" rel="stylesheet" type="text/css"/>
</head>
<body>


	<div id="contenedor">
		<div id="header">

			<h1>Agrega una materia</h1>
		</div>
		<form:form id="cuadro" modelAttribute="materia" method="POST" action="${pageContext.request.contextPath}/agrega">

			<div class="form-group" id="col1" >
				<label for="nombre">Nombre</label> 
				<form:input path="nombre" required="true" maxlength="15"
				type="text" class="form-control" id="nombre" 
                />
			</div>
			<div class="form-group" id="col2">
				<label for="profesor">Profesor</label> 
				<form:input path="profesor" required="true"
					type="text" class="form-control" id="profesor" name="profesor" maxlength="15"
					/>
			</div>
			<div class="form-group" id="col3">
				<label for="ayudante">Ayudante</label> <form:input path="ayudante" required="true" maxlength="15"
					type="text" class="form-control" id="ayudante" name="ayudante" 
					/>
			</div>
			<div class="form-group" id="col4">
				<label for="salon">Numero Salon (unicamente numeros)</label> <form:input path="salon" pattern="$"
					type="text" class="form-control" id="salon" name="salon" 
					/>
			</div>
			<div class="form-group" id="col5">
				<button type="submit" class="btn btn-primary">Enviar</button>
			</div>
		</form:form>
	</div>

</body>
</html>