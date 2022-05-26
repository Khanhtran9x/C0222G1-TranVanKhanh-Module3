<%--
  Created by IntelliJ IDEA.
  User: kayli
  Date: 26/05/2022
  Time: 1:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Microsoft</title>
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
            Discount Calculation App</p>
    </div>
    <div class="row body-justify-center">
        <div class="bg-light p-3 border-radius">
            <form action="/calculate" method="get">
                <div class="form-group">
                    <label for="inputDescription">Product Description</label>
                    <input type="text" name="productDescription" class="form-control" id="inputDescription"
                           aria-describedby="emailHelp" placeholder="Enter Product Description"
                           value="${productDescription}">
                </div>
                <div class="form-group">
                    <label for="inputPrice">List Price</label>
                    <input type="text" name="listPrice" class="form-control"
                           id="inputPrice" placeholder="Enter List Price" value="${listPrice}">
                </div>
                <div class="form-group">
                    <label for="inputDiscountPercent">Discount Percent</label>
                    <input type="text" name="discountPercent" class="form-control"
                           id="inputDiscountPercent" placeholder="Enter Discount Percent" value="${discountPercent}">
                </div>
                <p>Discount Amount: ${discountAmount}$</p>
                <p>Discount Price: ${discountPrice}$</p>
                <button type="submit" class="btn btn-secondary">Calculate Discount</button>
                <button class="btn btn-secondary"><a href="index.jsp" class="text-white">Reset</a></button>
            </form>
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
