<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: saidshah
  Date: 3/10/23
  Time: 9:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
  List<String> names = new ArrayList<>(Arrays.asList("Alex", "Alan", "John"));
 request.setAttribute("names", names);
%>
<html>
<head>
    <title>names</title>
</head>
<body>

<%@ include file="partials/navbar.jsp" %>

<c:forEach var="name" items="${names}">
  <li>${name}</li>
</c:forEach>

</body>
</html>
