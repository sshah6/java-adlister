<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: saidshah
  Date: 3/10/23
  Time: 4:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String color = request.getParameter("color");
    request.setAttribute("color", color);
    if(color != null){
        response.sendRedirect("/viewcolor.jsp?color=" + color);
    }

%>

<html>
<head>
    <title>Entered Color</title>
</head>
<body>
<form action="/pickcolor.jsp" method="POST">
  <label for="color">Enter a color:</label><br>
  <input type="text" id="color" name="color"><br>
  <button type="submit">Submit</button>
</form>

</body>
</html>
