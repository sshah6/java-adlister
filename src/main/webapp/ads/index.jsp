<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: saidshah
  Date: 3/14/23
  Time: 11:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Ads</title>
</head>
<body>
    <h2> List of all ads: </h2>
<c:forEach var="ad" items="${ads}">
    <h3>${ad.title}</h3>
    <p>${ad.description}</p>
</c:forEach>
</body>
</html>
