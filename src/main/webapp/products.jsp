<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.Model" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: saidshah
  Date: 3/10/23
  Time: 10:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Model model1 = new Model("Cars", 10000);
    Model model2 = new Model("Engines", 765);
    Model model3 = new Model("Bikes", 9866);

    List<Model> products = new ArrayList<>(Arrays.asList(
            model1,
            model2,
            model3
    ));
    request.setAttribute("products", products);
%>

<html>
<head>
    <title>Products</title>
</head>
<body>
    <h1>Products with costs in cent</h1>
    <c:forEach var="product" items="${products}">
        <div>
            <h3>Product name: ${product.name}</h3>
            <h3>Cost: ${product.costInCents}</h3>
        </div>
    </c:forEach>
</body>
</html>
