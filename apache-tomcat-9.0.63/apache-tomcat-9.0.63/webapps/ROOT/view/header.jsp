<%--
  Created by IntelliJ IDEA.
  User: kayli
  Date: 01/06/2022
  Time: 9:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Furama Resort</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}\boostrap\css\bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}\boostrap\css\style.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2">
            <nav class="navbar navbar-light">
                <a class="navbar-brand" href="/index.jsp">
                    <img src="..\img\logo.PNG" width="85" alt="">
                </a>
            </nav>
        </div>
        <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 row p-1">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 p-1" style="justify-content: center">
                <img src="..\img\banner.jpg" width="85%"  alt="">
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 p-1" style="justify-content: center">
                <img src="..\img\banner.jpg" width="85%"  alt="">
            </div>
        </div>
        <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2" style="padding: 0.5rem 0">
            <div class="row">
                <div class="col-xl-2 col-lg-2 col-md-10 col-sm-2 m-0">
                    <img src="../img/call.PNG" width="20" alt="">
                </div>
                <div class="col-xl-10 col-lg-10 col-md-10 col-sm-10">
                    <p style="font-size: 0.8rem" class="m-0">
                        84-236-3847 333/888</p>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-2 col-lg-2 col-md-10 col-sm-2 m-0">
                    <img src="../img/reserve.PNG" width="20" alt="">
                </div>
                <div class="col-xl-10 col-lg-10 col-md-10 col-sm-10">
                    <p style="font-size: 0.8rem;" class="m-0">
                        reservation@furamavietnam.com</p>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-2 col-lg-2 col-md-10 col-sm-2 m-0">
                    <img src="../img/address.PNG" width="20" alt="">
                </div>
                <div class="col-xl-10 col-lg-10 col-md-10 col-sm-10">
                    <p style="font-size: 0.8rem;" class="m-0">
                        103 – 105 Đường Võ Nguyên Giáp, Phường Khuê Mỹ, Quận Ngũ hành Sơn, Tp. Đà Nẵng, Việt Nam</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid bg-frm-darkblue">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav" style="justify-content: center">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link text-white" href="/index.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">Features</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">Pricing</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">Event</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Customer
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="/customer">Customer list</a>
                            <a class="dropdown-item" href="/customer?action=add">Add new customer</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/customer-type">Customer type</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Employee
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                            <a class="dropdown-item" href="/employee">Employee list</a>
                            <a class="dropdown-item" href="/employee?action=add">Add new employee</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">Service</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">Entertainment</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">Location</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">Voucher</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">Sign up</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<%--<script src="${pageContext.request.contextPath}\boostrap\js\bootstrap.min.js"></script>--%>
</body>
</html>
