<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body background="https://backgroundcheckall.com/wp-content/uploads/2017/12/blur-background-app-4.jpg">

<div class="container">
    <%--@elvariable id="AppDetails" type="com"--%>
    <form:form action="/putDetails" method="post" modelAttribute="AppDetails">

        <hr>
        App ID<br>
        <input path="appId" type="number"  name="appId" />
        <br>

        App Name<br>
        <input path="appName" type="text"  name="appName" />
        <br>

        App Details<br>
        <input path="appDetails" type="text"  name="appDetails" />
        <br>

        Purchase Type<br>
        <input path="purchaseType" type="text"  name="purchaseType" />
        <br>

        Price<br>
        <input path="price" type="text"  name="price" />
        <br>
        <hr>

        <button type="submit" class="button">Submit</button>

    </form:form>
</div>

</body>
</html>
