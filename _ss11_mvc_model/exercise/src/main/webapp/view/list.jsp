<%--
  Created by IntelliJ IDEA.
  User: kayli
  Date: 30/05/2022
  Time: 2:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Product List</h1>
<a href="/product?action=add">Add new product</a>
<table border="1" style="border-collapse:  collapse">
    <tr>
        <th>#</th>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Manufactory</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${productList}" var="product" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.manufactory}</td>
            <td><a href="/product?action=edit&name=${product.getName()}">Edit</a></td>
            <td><a href="/product?action=delete&name=${product.getName()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
