<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: saidshah
  Date: 3/13/23
  Time: 12:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Fighters</title>
</head>
<body>
  <c:forEach var="fighter" items="${fighters}">
      <p>Name: ${fighter.name}</p>
      <p>Hitpoints: ${fighter.hitPoints}</p>
      <p>Max Damage: ${fighter.maxDamage}</p>
      <hr>
  </c:forEach>
</body>
</html>
