<%--
  Created by IntelliJ IDEA.
  User: saidshah
  Date: 3/13/23
  Time: 10:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guessing game</title>
</head>
<body>
  <h1>Enter a number between 1 and 3.</h1>

  <form action="/guess" method="post">
    <label for="number">Number:</label><br>
    <input type="number" id="number" name="number"><br>
    <input type="submit">
  </form>
</body>
</html>
