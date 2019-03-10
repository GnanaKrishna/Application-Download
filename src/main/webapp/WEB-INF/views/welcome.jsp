<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Welcome</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body background="https://backgroundcheckall.com/wp-content/uploads/2017/12/blur-background-app-4.jpg">
<nav class="navbar navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/welcome">Application Download</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a class="dropdown-toggle btn btn-outline-success"  style="color: #1c7430" data-toggle="dropdown" href="#">Applications <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/getDetails?apps=All">All</a></li>
                        <li><a href="/getDetails?apps=Free">Free</a></li>
                        <li><a href="/getDetails?apps=Paid">Paid</a></li>
                    </ul>
                </li>
                <li><a href="#" class="btn btn-outline-success"  style="color: #1c7430">Orders</a></li>
                <li><a href="/welcome" class="btn btn-outline-success"  style="color: #1c7430">Instructions</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/logout" class="btn btn-outline-success"  style="color:#bd2130"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
            </ul>
        </div>
    </div>
</nav>
<br/><br/>
<div class="container">
    <h2 align="center">Welcome to the Application</h2><br/>
    <h3>Instructions to the applications</h3>
    <ul style="list-style-type:disc;">
        <h4>Applications</h4>
        <ul style="list-style-type:disc;">
            <li>All</li>
            <li>Free</li>
            <li>Paid</li>
        </ul>
        <h4>Orders</h4>
        <ul style="list-style-type:disc;">
            <li>Previous orders</li>
        </ul>
    </ul>
</div>

</body>
</html>