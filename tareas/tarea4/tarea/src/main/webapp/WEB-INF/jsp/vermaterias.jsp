<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="resources/css/datatables.min.css" rel="stylesheet" type="text/css"/>
<script src="resources/js/jquery.min.js" ></script>	
<script src="resources/js/bootstrap.min.js" ></script>	
<script src="resources/js/datatables.min.js" ></script>	
<title>Ver Materias</title>
</head>
<body>
<h1>Materias</h1>
        <table id="grid" class="table table-hover" cellspacing="0" >
                <thead>
                  <tr>
                    <th class="th-sm">Nombre</th>
                    <th class="th-sm">Profesor</th>
                    <th class="th-sm">Ayudante</th>
                    <th class="th-sm">Salon</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach items="${materias}" var="materia">
                  <tr>
                    <td>${materia.nombre}</td>
                    <td>${materia.profesor}</td>
                    <td>${materia.ayudante}</td>
                    <td>${materia.salon}</td>
                  </tr>
                  </c:forEach>
                </tbody>
              </table>
              
              <button class="btn btn-primary" type="button" onclick="window.location.href='${pageContext.request.contextPath}/formulario'">Agrega otra Materia</button>

<script>
    $(document).ready(function () {
        $('#grid').DataTable();
    });</script>
</body>

</html>