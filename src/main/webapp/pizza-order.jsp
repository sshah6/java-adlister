<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: saidshah
  Date: 3/13/23
  Time: 9:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Pizza Order</title>
</head>
<body>
<form method="post">
    <label for="cars">Select your Pizza:</label><br>
    <label for="cars">Size:</label>
    <select id="cars" name="size">
        <option value="small">Small</option>
        <option value="medium">Medium</option>
        <option value="large">Large</option>
    </select><br>
    <input type="checkbox" id="thickcrust" name="thickcrust" value="thickcrust">
    <label for="thickcrust"> Thick-crust</label><br>
    <input type="checkbox" id="thincrust" name="thincrust" value="thincrust">
    <label for="thincrust"> Thin-crust </label><br>

    <label for="address">Address:</label><br>
    <input type="text" id="address" name="address" ><br>
    <input type="submit">
</form>

</body>
</html>

