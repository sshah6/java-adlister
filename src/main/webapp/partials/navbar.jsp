<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
<%--Shows the login and logout button respectively to the page--%>
        <c:if test="${sessionScope.user == null}">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/login">Login</a></li>
            </ul>
        </c:if>
        <c:if test="${sessionScope.user == null}">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/logout">Logout</a></li>
            </ul>
        </c:if>

    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
