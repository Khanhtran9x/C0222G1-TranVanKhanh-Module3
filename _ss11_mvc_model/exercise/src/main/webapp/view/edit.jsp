<%--
  Created by IntelliJ IDEA.
  User: kayli
  Date: 30/05/2022
  Time: 3:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Product</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/style.css">
</head>
<body>
<div class="row bg-light">
    <nav class="navbar navbar-light navbar-expand-md  navigation-clean-search">
        <div class="container-fluid">
            <a href="/product">
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
            Edit Product</p>
    </div>
    <div class="row body-justify-center">
        <div class="bg-light p-3 border-radius">
            <form action="/product?action=edit" method="post">
                <div class="form-group">
                    <label for="inputProductId">Product Id</label>
                    <input type="number" name="id" class="form-control" id="inputProductId"
                           aria-describedby="emailHelp" value=${requestScope["product"].getId()} required>
                </div>
                <div class="form-group">
                    <label for="inputProductName">Product Name</label>
                    <input type="text" name="name" class="form-control" id="inputProductName"
                           aria-describedby="emailHelp" value=${requestScope["product"].getName()} readonly="readonly">
                </div>
                <div class="form-group">
                    <label for="inputProductPrice">Product Price</label>
                    <input type="text" name="price" class="form-control" id="inputProductPrice"
                           aria-describedby="emailHelp" value="${requestScope["product"].getPrice()}" required>
                </div>
                <div class="form-group">
                    <label for="inputProductDes">Product Description</label>
                    <input type="text" name="description" class="form-control" id="inputProductDes"
                           aria-describedby="emailHelp" value="${product.description}" required>
                </div>
                <div class="form-group">
                    <label for="inputProductManu">Product Manufactory</label>
                    <input type="text" name="manufactory" class="form-control" id="inputProductManu"
                           aria-describedby="emailHelp" value="${requestScope["product"].getManufactory()}" required>
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
