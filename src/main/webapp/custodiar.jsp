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
    <title>Tabla de animalss</title>
</head>
<body>
<table id="tabla-animalss">
    <thead>
    <tr>
        <th>Nombre</th>
        <th>Raza</th>
        <th>Tipo</th>
        <th>Propietario</th>
        <th>DNI</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="animals" items="${listAnimals}">
        <tr>
            <td>${animals.name}</td>
            <td>${animals.raze}</td>
            <td>${animals.type}</td>
            <td>${animals.owner}</td>
            <td>${animals.dni}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>