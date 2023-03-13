<%--
  Created by IntelliJ IDEA.
  User: saidshah
  Date: 3/10/23
  Time: 4:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String color = request.getParameter("color");
    request.setAttribute("color", color);
%>
<html>
<head>
    <title>View Color</title>
</head>
<body>
<style>
    body{
        background-color: ${color};
    }
</style>

</body>
</html>
