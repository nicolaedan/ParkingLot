<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Login">

    <c:if test="${message!=null}">
        <div class="alert alert-warning" role="alert">
            ${message}
        </div>
    </c:if>

    <form class="form-signin" method="GET" action="1_security_check">
        <h1 class="h3 nb-3 font-weight-normal">Sign in</h1>
        <label for="username" class="sr-only">Username</label>
        <input type="text" id="username" name="j_username" class="form-control" placeholder="Username" required autofocus />
        <label for="password" class="sr-only">Password</label>
         <input type="text" id="password" name="j_password" class="form-control" placeholder="Password" required autofocus />
   <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>
</t:pageTemplate>