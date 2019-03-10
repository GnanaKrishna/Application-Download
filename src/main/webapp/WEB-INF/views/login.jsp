<%@page contentType="text/html; ISO-8859-1" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>

<head>
    <title>Login Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
</head>
<!--Coded with love by Mutiullah Samim-->
<body background="https://backgroundcheckall.com/wp-content/uploads/2017/12/blur-background-app-4.jpg">

<div class="container h-100">
    <div class="header-button" style="text-align: right">
        <a href="/index.html" class="btn btn-outline-success"  style="color: #1c7430">Home Page</a>
        <a href="/signUp" class="btn btn-outline-success"  style="color: #1c7430">SignUp</a>
    </div>
    <%
        String message = request.getParameter("message");
        String message1 = request.getParameter("message1");
    %>
    <c:set var="message" value="<%=message %>"/>
    <c:if test="${(message == 'success')}">
        <div class="alert alert-success"><strong>Success!</strong> You successfully signup to this application.</div>
    </c:if>
    <c:set var="message" value="<%=message %>"/>
    <c:if test="${(message == 'notSuccess')}">
        <div class="alert alert-danger"><strong>Failure!</strong> User name or password is wrong. Please login again.</div>
    </c:if>
    <c:set var="message1" value="<%=message1 %>"/>
    <c:if test="${(message1 == 'logoutSuccess')}">
        <div class="alert alert-success"><strong>Successfully!</strong> Logout from the Application.</div>
    </c:if>

    <h2 align="center" style="color: #222222;
		    font-size: 32px;
		    font-weight: 700;
		    line-height: 60px;
		    margin-bottom: 10px;">Login page to the Application</h2>
    <div class="d-flex justify-content-center h-100">
        <div class="user_card">
            <div class="d-flex justify-content-center">
                <div class="brand_logo_container">
                    <img src="http://b2llab.in/CivilCloud/view/images/civilcloud7.png" width="140" height="110" class="brand_logo">
                </div>
                <!--<div class="brand_logo_container">-->
                <!--<img src="https://cdn.freebiesupply.com/logos/large/2x/pinterest-circle-logo-png-transparent.png" class="brand_logo" alt="Logo">-->
                <!--</div>-->
            </div>
            <br/>
            <div class="d-flex justify-content-center form_container">
                <form action="/checkLogin" method="post">
                    <div class="input-group mb-3">
                        <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <input type="text" name="userName" class="form-control input_user" value="" placeholder="username"required>
                    </div>
                    <div class="input-group mb-2">
                        <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                        </div>
                        <input type="password" name="password" class="form-control input_pass" value="" placeholder="password" required>
                    </div>
                    <div class="form-group">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customControlInline">
                            <label class="custom-control-label" for="customControlInline">Remember me</label>
                        </div>
                    </div>
                    <div class="d-flex justify-content-center mt-3 login_container">
                        <button type="submit" class="btn login_btn btn-outline-success">Login</button>
                    </div>
                </form>
            </div>

            <div class="mt-4">
                <div class="d-flex justify-content-center links">
                    Don't have an account? <a href="/signUp" class="ml-2">Sign Up</a>
                </div>
                <%--<div class="d-flex justify-content-center links">--%>
                    <%--<a href="#">Forgot your password?</a>--%>
                <%--</div>--%>
            </div>
        </div>
    </div>
</div>
</body>
</html>