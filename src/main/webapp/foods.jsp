<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.Array" %>
<%@ page import="java.util.Arrays" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: saidshah
  Date: 3/9/23
  Time: 2:45 PM
  To change this template use File | Settings | File Templates.
--%>

<%
  String foodType = request.getParameter("food");
  request.setAttribute("foodType", foodType);

  List<String> foods = new ArrayList<>(Arrays.asList(
          "Burger",
          "Chicken",
          "Beef",
          "Sause"
  ));
  request.setAttribute("foods", foods);
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1> foodType: ${foodType}</h1>

<%--JSTL--%>
<c:forEach var="food" items="${foods}">
    <h1>${food}</h1>
    <hr>
</c:forEach>
</body>
</html>
