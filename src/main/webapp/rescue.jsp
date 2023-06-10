<%--
  Created by IntelliJ IDEA.
  User: Viorel
  Date: 6/10/2023
  Time: 3:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Rescue Animals</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/5.3.0/css/bootstrap.min.css">
</head>
<body style="background-color: bisque;" class="container">
<a class="d-flex pt-3 fw-bold text-capitalize link-info" href="${pageContext.request.contextPath}/">Home</a>
<table class="border-3 mt-3 table table-striped">
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Raza</th>
        <th scope="col">Type</th>
        <th scope="col">Blood Type</th>
    </tr>
    <c:forEach var="animal" items="${listAnimals}">
        <tr>
            <td>${animal.id}</td>
            <td>${animal.name}</td>
            <td>${animal.raze}</td>
            <td>${animal.type}</td>
            <td>${animal.bloodType}</td>
        </tr>
    </c:forEach>
</table>
<form action="${pageContext.request.contextPath}/rescue" method="post">
    <div class="mb-3">
        <label for="animal_id_delete" class="form-label">Animal ID:</label>
        <input type="text" class="form-control" id="animal_id_delete" name="animal_id_delete" required>
    </div>
    <input type="submit" class="btn btn-primary" value="Delete">
</form>
</body>
</html>
