<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: saidshah
  Date: 3/10/23
  Time: 4:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>People</title>
</head>
<body>
    <c:forEach var="people" items="${peoples}">
        <h3>${people}</h3>
    </c:forEach>
</body>
</html>
