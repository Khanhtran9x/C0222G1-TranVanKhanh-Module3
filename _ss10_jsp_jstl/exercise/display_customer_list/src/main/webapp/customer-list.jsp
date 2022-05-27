<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kayli
  Date: 27/05/2022
  Time: 1:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="icon" href="https://pngroyale.com/wp-content/uploads/2021/11/Download-microsoft-logos-png-images--768x768.png" type="image/icon type">
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="style.css">

</head>
<body>
<div class="row bg-light">
    <nav class="navbar navbar-light navbar-expand-md navigation-clean-search">
        <div class="container-fluid">
            <img class="header-logo"
                 src="https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE1Mu3b?ver=5c31">
            <div class="collapse navbar-collapse" id="navcol-1">
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
<div class="container">
    <div class="row body-justify-center">
        <p class="font-weight-normal" style="font-size: 1.5rem; margin-top: 2rem; margin-bottom: 0">
            Customer List</p>
    </div>
    <div class="row body-justify-center">
        <div class="bg-light p-3 border-radius">
            <table class="table">
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Customer Name</th>
                    <th scope="col">Date Of Birth</th>
                    <th scope="col">Address</th>
                    <th scope="col">Image</th>
                </tr>
                <c:forEach items="${customers}" var="customer" varStatus="customerCount">
                    <tr>
                        <td>${customerCount.count}</td>
                        <td>${customer.customerName}</td>
                        <td>${customer.customerDateOfBirth}</td>
                        <td>${customer.customerAddress}</td>
                        <td>
                            <img src="${customer.customerImagePath}" style="width: 2.3rem">
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
