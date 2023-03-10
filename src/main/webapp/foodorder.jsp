<%--
  Created by IntelliJ IDEA.
  User: saidshah
  Date: 3/9/23
  Time: 2:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Food order</title>

</head>
<body>

<%@ include file="partials/navbar.jsp" %>

  <h1> order food</h1>
  <form action="/foods.jsp">
    <select name="food" id="foods">
    <option value="volvo">Volvo</option>
    <option value="saab">Saab</option>
    <option value="mercedes">Mercedes</option>
    <option value="audi">Audi</option>
  </select>
    <button type="submit">submit</button>
</form>
</body>
</html>
