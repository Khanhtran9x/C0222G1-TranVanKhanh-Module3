<%--
  Created by IntelliJ IDEA.
  User: kayli
  Date: 31/05/2022
  Time: 2:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Product List</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/style.css">
    <script src="https://kit.fontawesome.com/b29d237812.js" crossorigin="anonymous"></script>
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

<div class="container">
    <div class="row body-justify-center">
        <p class="font-weight-normal" style="font-size: 1.5rem; margin-top: 2rem; margin-bottom: 2rem">
            User List</p>
    </div>
    <div class="row body-justify-center">
        <a href="/user?action=create"><button type="submit" class="btn btn-primary mb-2">Add new user</button></a>
        <form class="form-inline" action="/user?action=search" method="post">
            <div class="form-group mx-sm-3 mb-2">
                <label for="inputCountry" class="sr-only">Search</label>
                <input type="search" name="country" class="form-control" id="inputCountry" placeholder="Search by country">
            </div>
            <button type="submit" class="btn btn-primary mb-2">Search</button>
        </form>
    </div>
    <div class="row body-justify-center">
        <div class="bg-light p-3 border-radius">
            <table class="table">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">
                        Name
                        <a class="text-white"
                           href="/user?action=sort">
                            <button type="button" class="btn btn-light"><i class="fa-solid fa-filter"></i></button>
                        </a>
                    </th>
                    <th scope="col">Email</th>
                    <th scope="col">Country</th>
                    <th scope="col">Edit</th>
                    <th scope="col">Delete</th>
                </tr>
                <c:forEach items="${userList}" var="user" varStatus="status">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.email}</td>
                        <td>${user.country}</td>
                        <td>
                            <a class="text-white" href="/user?action=edit&id=${user.id}">
                                <button type="button" class="btn btn-primary" data-toggle="modal">Edit
                                </button>
                            </a>
                        <td>
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                                data-target="#${user.name}">
                            Delete
                        </button>
                        <div class="modal fade" id="${user.name}" tabindex="-1"
                             aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Danger</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <p>Are you sure to delete ${user.name}?</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close
                                        </button>
                                        <a class="text-white"
                                           href="/user?action=delete&id=${user.id}">
                                            <button type="button" class="btn btn-primary">Yes</button></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </td>
                    </tr>
                </c:forEach>
            </table>
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
