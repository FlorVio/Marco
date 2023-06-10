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
</head>
<body>
<table class="tabla-animals">
    <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Raza</th>
        <th>Tipo</th>
        <th>Propietario</th>
        <th>DNI</th>
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
    <label for="animal_name_save">Animal Name:</label>
    <input type="text" id="animal_name_save" name="animal_name_save" required>

    <label for="animal_raze_save">Animal Race:</label>
    <input type="text" id="animal_raze_save" name="animal_raze_save" required>

    <label for="animal_type_save">Type of animal:</label>
    <select name="animal_type_save" id="animal_type_save" required>
        <option value="perro">Perro</option>
        <option value="gato">Gato</option>
        <option value="pajaro">Pajaro</option>
    </select>
    <label for="owner_name_save">Owner Name:</label>
    <input type="text" id="owner_name_save" name="owner_name_save" required>
    <label for="owner_dni_save">Owner DNI:</label>
    <input type="text" id="owner_dni_save" name="owner_dni_save" required>
    <input type="submit" value="Save">
</form>

<form action="${pageContext.request.contextPath}/custody" method="post">
    <input class="option" name="option" type="hidden" value="false">
    <label for="animal_id_delete">Animal ID:</label>
    <input type="text" id="animal_id_delete" name="animal_id_delete" required>
    <label for="owner_dni_delete">Owner DNI:</label>
    <input type="text" id="owner_dni_delete" name="owner_dni_delete" required>
    <input type="submit" value="Delete">
</form>
</body>
</html>