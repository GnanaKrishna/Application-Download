<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Applications</title>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .btn1 {
                background-color: DodgerBlue;
                border: none;
                color: white;
                padding: 12px 30px;
                cursor: pointer;
                font-size: 16px;
            }

            /* Darker background on mouse-over */
            .btn1:hover {
                background-color: RoyalBlue;
            }
        </style>
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
    <h2 align="center"> <strong>Application Information</strong></h2>
    <br/>
    <%
        String apps = request.getParameter("apps");
    %>
    <c:set var="apps" value="<%=apps %>"/>
    <table class="table table-bordered table-active">
        <thead>
        <tr>
            <th>App Name</th>
            <th>App Details</th>
            <th>Purchase Type</th>
            <th>Price</th>
        </tr>
        </thead>
        <tbody>
        <c:if test="${(apps == 'All')}">
            <c:forEach items="${appDetails}" var="appDetail">
                <tr>
                    <td> ${appDetail.appName} </td>
                    <td> ${appDetail.appDetails} </td>
                    <td> ${appDetail.purchaseType} </td>
                    <td>$ ${appDetail.price} </td>
                    <c:if test="${appDetail.purchaseType =='Free'}">
                        <td><a href="/download"> <button class="btn1"><i class="fa fa-download"></i>Download</button></a></td>
                    </c:if>
                    <c:if test="${appDetail.purchaseType =='Paid'}">
                        <td> <button class="btn1"><i class="fa fa-download"></i>Pay & Download</button></td>
                    </c:if>
                </tr>
            </c:forEach>
        </c:if>
        <c:if test="${(apps == 'Free')}">
            <c:forEach items="${appDetails}" var="appDetail">
                <c:if test="${appDetail.purchaseType =='Free'}">
                    <tr>
                        <td> ${appDetail.appName} </td>
                        <td> ${appDetail.appDetails} </td>
                        <td> ${appDetail.purchaseType} </td>
                        <td>$ ${appDetail.price} </td>
                        <td> <button class="btn1"><i class="fa fa-download"></i> Download</button></td>
                    </tr>
                </c:if>
            </c:forEach>
        </c:if>
        <c:if test="${(apps == 'Paid')}">
            <c:forEach items="${appDetails}" var="appDetail">
                <c:if test="${appDetail.purchaseType =='Paid'}">
                    <tr>
                        <td> ${appDetail.appName} </td>
                        <td> ${appDetail.appDetails} </td>
                        <td> ${appDetail.purchaseType} </td>
                        <td>$ ${appDetail.price} </td>
                        <td> <button class="btn1"><i class="fa fa-download"></i>Pay & Download</button></td>
                    </tr>
                </c:if>
            </c:forEach>
        </c:if>
        </tbody>

    </table>
</div>



</body>
</html>