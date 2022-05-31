<%--
  Created by IntelliJ IDEA.
  User: kayli
  Date: 31/05/2022
  Time: 2:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New User</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/style.css">
</head>
<body>
<div class="row bg-light">
    <nav class="navbar navbar-light navbar-expand-md  navigation-clean-search">
        <div class="container-fluid">
            <a href="/user">
                <img class="header-logo"
                     src="https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE1Mu3b?ver=5c31">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggler"
                    aria-controls="navbarToggler" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarToggler">
                <ul class="nav navbar-nav">
                    <li class="nav-item" role="presentation"><a class="nav-link text-dark" href="#">Contact</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-dark" href="#" role="button" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            Services
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                    <li class="nav-item" role="presentation"><a class="nav-link text-dark" href="#">Login</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link text-dark" href="#">Sign Up</a></li>
                </ul>
            </div>
        </div>
    </nav>
</div>
<div class="container" style="margin-top: 2rem">
    <div class="row body-justify-center">
        <p class="font-weight-normal" style="font-size: 1.5rem; margin-top: 2rem; margin-bottom: 0">
            Add New User</p>
    </div>
    <div class="row body-justify-center">
        <div class="bg-light p-3 border-radius">
            <form action="/user?action=create" method="post">
                <div class="form-group">
                    <label for="inputUserName">User Name</label>
                    <input type="text" name="name" class="form-control" id="inputUserName"
                           aria-describedby="emailHelp" placeholder="Enter user name" required>
                </div>
                <div class="form-group">
                    <label for="inputUserEmail">User Email</label>
                    <input type="text" name="email" class="form-control" id="inputUserEmail"
                           aria-describedby="emailHelp" placeholder="Enter user email" required>
                </div>
                <div class="form-group">
                    <label for="inputUserCountry">User Country</label>
                    <input type="text" name="country" class="form-control" id="inputUserCountry"
                           aria-describedby="emailHelp" placeholder="Enter user country" required>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
                <button type="reset" class="btn btn-secondary">Reset</button>
            </form>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>
