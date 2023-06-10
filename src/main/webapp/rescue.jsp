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
</head>
<body>
<table class="tabla-animals">
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Raza</th>
    <th>Type</th>
    <th>Blood Type</th>
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
  <label for="animal_id_delete">Animal ID:</label>
  <input type="text" id="animal_id_delete" name="animal_id_delete" required>
  <input type="submit" value="Delete">
</form>
</body>
</html>
