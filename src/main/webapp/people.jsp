
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="Person.Person" %><%--
  Created by IntelliJ IDEA.
  User: saidshah
  Date: 3/10/23
  Time: 10:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  Person p1 = new Person("Alex", 19);
  Person p2 = new Person("Alan", 13);
  Person p3 = new Person("Randy", 16);

  List<Person> people = new ArrayList<>(Arrays.asList(
          p1, p2, p3
  ));
  request.setAttribute("people", people);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h1>Names</h1>

<%--  <c:choose>--%>
<%--    <c:when test="${people.isempty()}">--%>
<%--      <h3>No people</h3>--%>
<%--    </c:when>--%>
<%--  </c:choose>--%>

  <c:forEach var="person" items="${people}">
    <h3>${person.name}
      <c:if test="${person.age < 16} ">
        (minor)
      </c:if>
    </h3>
    <h3>${person.age}</h3>
  </c:forEach>
</body>
</html>
