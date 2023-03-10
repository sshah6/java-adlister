<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: saidshah
  Date: 3/10/23
  Time: 3:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Names</title>
</head>
<body>
    <c:forEach var="name" items="${names}">
        <h3>${name}</h3>
    </c:forEach>
</body>
</html>
