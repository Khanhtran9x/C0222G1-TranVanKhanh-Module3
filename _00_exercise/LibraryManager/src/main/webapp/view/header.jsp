<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Furama Resort</title>
<%--    <link rel="stylesheet" href="..\boostrap\css\bootstrap.min.css">--%>
<%--    <link rel="stylesheet" href="..\boostrap\css\style.css">--%>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2">
        </div>
        <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2">
            <div class="row" style="margin-top: 1rem">
                <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2 m-0">
                    <img src="../img/call.PNG" width="20" alt="">
                </div>
                <div class="col-xl-10 col-lg-10 col-md-10 col-sm-10">
                    <p style="font-size: 0.8rem" class="m-0">
                        84-236-3847 333/888</p>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2 m-0">
                    <img src="../img/call.PNG" width="20" alt="">
                </div>
                <div class="col-xl-10 col-lg-10 col-md-10 col-sm-10">
                    <p style="font-size: 0.8rem" class="m-0">
                        84-236-3847 333/888</p>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2 m-0">
                    <img src="../img/reserve.PNG" width="20" alt="">
                </div>
                <div class="col-xl-10 col-lg-10 col-md-10 col-sm-10">
                    <p style="font-size: 0.8rem;" class="m-0">
                        slytherin@horwart.com</p>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-2 col-lg-2 col-md-10 col-sm-2 m-0">
                    <img src="../img/address.PNG" width="20" alt="">
                </div>
                <div class="col-xl-10 col-lg-10 col-md-10 col-sm-10">
                    <p style="font-size: 0.8rem;" class="m-0">
                        Horwart school, United Kingdom</p>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-2 col-lg-2 col-md-10 col-sm-2 m-0">
                    <img src="../img/address.PNG" width="20" alt="">
                </div>
                <div class="col-xl-10 col-lg-10 col-md-10 col-sm-10">
                    <p style="font-size: 0.8rem;" class="m-0">
                        Gas station 9 3/4</p>
                </div>
            </div>
        </div>
        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 row" style="justify-content: center">

            <nav class="navbar navbar-light">
                <a class="navbar-brand" href="/index.jsp">
                    <img src="..\img\logo.jpeg" width="120" alt="">
                </a>
            </nav>

        </div>
        <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2" style="padding: 0.5rem 0">
            <div class="row" style="margin-top: 1rem">
                <div class="col-xl-2 col-lg-2 col-md-10 col-sm-2 m-0">
                    <img src="../img/call.PNG" width="20" alt="">
                </div>
                <div class="col-xl-10 col-lg-10 col-md-10 col-sm-10">
                    <p style="font-size: 0.8rem" class="m-0">
                        Guest</p>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-2 col-lg-2 col-md-10 col-sm-2 m-0">
                    <img src="../img/address.PNG" width="20" alt="">
                </div>
                <div class="col-xl-10 col-lg-10 col-md-10 col-sm-10">
                    <p style="font-size: 0.8rem" class="m-0">
                        Location: Viet Nam</p>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-2 col-lg-2 col-md-10 col-sm-2 m-0">
                    <img src="../img/address.PNG" width="20" alt="">
                </div>
                <div class="col-xl-10 col-lg-10 col-md-10 col-sm-10">
                    <p style="font-size: 0.8rem" class="m-0">
                        IP: 128.128.128.60</p>
                </div>
            </div>
        </div>
        <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2" style="padding: 0.5rem 0">
        </div>
    </div>
</div>

<div class="container-fluid bg-frm-darkblue"
     style="margin-bottom: 1rem;position: sticky;top: 0;z-index: 99; margin-bottom: 1rem">
    <div class="container" style="justify-content: center">
        <nav class="navbar navbar-expand-lg navbar-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav" style="justify-content: space-around; width: 100%;">
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
                            <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Book
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="/book">Book list</a>
                                <a class="dropdown-item" href="/book?action=add">Add new book</a>
                            </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown2" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Book Borrowing
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                            <a class="dropdown-item" href="/bookrent">Book Borrowing list</a>
                        </div>
                    </li>


                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">Contact</a>
                    </li>
                    <li class="nav-item">
                        <c:if test="${userSession != null}">
                            <a class="nav-link text-white" href="#">${userSession.userName}</a>
                        </c:if>
                        <c:if test="${userSession == null}">
                            <a class="nav-link text-white" href="/login">Login</a>
                        </c:if>
                    </li>
                    <li class="nav-item">
                        <c:if test="${userSession != null}">
                            <a class="nav-link text-white" href="/logout">Logout</a>
                        </c:if>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</div>
<%--<script src="..\jquery\jquery-3.5.1.min.js"></script>--%>
<%--<script src="..\jquery\popper.min.js"></script>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"--%>
<%--        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--<script src="..\boostrap\js\bootstrap.min.js"></script>--%>
</body>
</html>
