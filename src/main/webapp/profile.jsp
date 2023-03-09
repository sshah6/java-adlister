<%--
  Created by IntelliJ IDEA.
  User: saidshah
  Date: 3/9/23
  Time: 3:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String username = request.getParameter("uname");
    String password = request.getParameter("psw");
    request.setAttribute("userName", username);
    request.setAttribute("Password", password);
%>

<html>
<head>
    <title>Your profile Page</title>
</head>
<body>
    <h1>Your profile page</h1>
    <h1> User name: ${userName}</h1>
    <h1> Password: ${Password}</h1>
</body>
</html>
