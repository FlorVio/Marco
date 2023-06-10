<%--
  Created by IntelliJ IDEA.
  User: Viorel
  Date: 6/10/2023
  Time: 11:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>
        Custody
    </title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/5.3.0/css/bootstrap.min.css">
</head>
<body style="background-color: bisque;" class="container">
<a class="d-flex pt-3 fw-bold text-capitalize link-info" href="${pageContext.request.contextPath}/">Home</a>
<table class="border-3 mt-3 table table-striped">
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Nombre</th>
        <th scope="col">Raza</th>
        <th scope="col">Tipo</th>
        <th scope="col">Propietario</th>
        <th scope="col">DNI</th>
    </tr>
    <c:forEach var="animal" items="${listAnimals}">
        <tr>
            <td>${animal.id}</td>
            <td>${animal.name}</td>
            <td>${animal.raze}</td>
            <td>${animal.type}</td>
            <td>${animal.owner}</td>
            <td>${animal.dni}</td>
        </tr>
    </c:forEach>
</table>
<form action="${pageContext.request.contextPath}/custody" method="post">
    <input class="option" name="option" type="hidden" value="true">
    <div class="mb-3">
        <label for="animal_name_save" class="form-label">Animal Name:</label>
        <input type="text" class="form-control" id="animal_name_save" name="animal_name_save" required>
    </div>

    <div class="mb-3">
        <label for="animal_raze_save" class="form-label">Animal Race:</label>
        <input type="text" class="form-control" id="animal_raze_save" name="animal_raze_save" required>
    </div>

    <div class="mb-3">
        <label for="animal_type_save" class="form-label">Type of animal:</label>
        <select name="animal_type_save" class="form-control" id="animal_type_save" required>
            <option value="perro">Perro</option>
            <option value="gato">Gato</option>
            <option value="pajaro">Pajaro</option>
        </select>
    </div>

    <div class="mb-3">
        <label for="owner_name_save" class="form-label">Owner Name:</label>
        <input type="text" class="form-control" id="owner_name_save" name="owner_name_save" required>
    </div>
    <div class="mb-3">
        <label for="owner_dni_save" class="form-label">Owner DNI:</label>
        <input type="text" class="form-control" id="owner_dni_save" name="owner_dni_save" required>
    </div>


    <input type="submit" class="btn btn-primary" value="Save">
</form>

<form class="mt-5 mb-5" action="${pageContext.request.contextPath}/custody" method="post">
    <input class="option" name="option" type="hidden" value="false">

    <div class="mb-3">
        <label for="animal_id_delete" class="form-label">Animal ID:</label>
        <input type="text" class="form-control" id="animal_id_delete" name="animal_id_delete" required>
    </div>

    <div class="mb-3">
        <label for="owner_dni_delete" class="form-label">Owner DNI:</label>
        <input type="text" class="form-control" id="owner_dni_delete" name="owner_dni_delete" required>
    </div>
    <input type="submit" class="btn btn-primary" value="Delete">
</form>
</body>
</html>