<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: saidshah
  Date: 3/14/23
  Time: 9:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Products</title>
</head>
<body>
    <form action="/products" method="post">
        <label for="name">Name: </label>
        <input type="text" name="name" id="name">
        <label for="price">Price: </label>
        <input type="text" name="price" id="price">
        <input type="submit">
    </form>

<h1>Here are all the products: </h1>
<c:forEach var="product" items="${products}">
    <div class="products">
        <h3>Products name: ${product.name}</h3>
        <p>Products Price: $${product.price}</p>
    </div>
</c:forEach>

</body>
</html>
