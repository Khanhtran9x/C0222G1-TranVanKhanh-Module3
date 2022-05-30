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
</head>
<body>
<h1>Add new product</h1>
<a href="/product">Back to product list</a>

<form action="/product?action=edit" method="post">
    <table>
        <tr>
            <td>Product ID</td>
            <td><input type="text" name="id" placeholder="Input ID"></td>
        </tr>
        <tr>
            <td>Product ID</td>
            <td><input type="text" name="name" placeholder="Input Name"></td>
        </tr>
        <tr>
            <td>Product Price</td>
            <td><input type="text" name="price" placeholder="Input Price"></td>
        </tr>
        <tr>
            <td>Product Description</td>
            <td><input type="text" name = "description" placeholder="Input Description"></td>
        </tr>
        <tr>
            <td>Product Manufactory</td>
            <td><input type="text" name = "manufactory" placeholder="Input Manufactory"></td>
        </tr>
    </table>
    <input type="submit">
</form>
</body>
</html>
