<%@ page import="java.io.PrintWriter" %><%--
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
if(username != null && password != null){
    if(username.equals("admin") && password.equals("password")){
        response.sendRedirect("/profile.jsp?uname=" + username + "&psw=" + password);
    }else{
        PrintWriter print = response.getWriter();
        print.println("<h1 style =color:red>Invalid Username and password. </h1>");
    }
}

%>

<html>
<head>
    <title>Login page</title>
</head>
<body>
    <h1>Login in to your profile</h1>
    <form action="/login.jsp" method="POST">
        <div class="container">
            <label><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="uname" required>

            <label><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" required>
            <button type="submit">Login</button>
        </div>
    </form>
</body>
</html>
