<%--
  Created by IntelliJ IDEA.
  User: saidshah
  Date: 3/9/23
  Time: 1:56 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
String myName = "Alan";
request.setAttribute("myName", myName);

String method = request.getMethod();
if(method.equals("GET")){
  request.setAttribute("message", "The method is GET");
}else if(method.equals("POST")){
  request.setAttribute("message", "The method is POST");
}

%>
<html>
<head>
    <title>Implicit jsp Object</title>
</head>
<body>
  <h1> <%=request.getAttribute("myName")%></h1>
  <h1>Path: <%=request.getQueryString()%></h1>
  <h1>"name" parameter: <%=request.getParameter("name")%></h1>
  <h1> "method" attribute: <%=request.getMethod()%></h1>
  <h1> "User-agent" header: <%= request.getHeader("user-agent")%></h1>

  <h1>Some input: <%=request.getAttribute("someInput")%></h1>
<%--  Instead of the above we use the expression language below--%>
  <h1> Some input: ${"someInput"}</h1>


</body>
</html>
