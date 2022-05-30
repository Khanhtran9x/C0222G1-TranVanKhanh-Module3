<%--
  Created by IntelliJ IDEA.
  User: kayli
  Date: 26/05/2022
  Time: 1:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Microsoft</title>
  <link rel="icon" href="https://pngroyale.com/wp-content/uploads/2021/11/Download-microsoft-logos-png-images--768x768.png" type="image/icon type">
  <link rel="stylesheet" href="bootstrap.min.css">
  <link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp" />
<div class="container">
  <div class="row body-justify-center">
    <p class="font-weight-normal" style="font-size: 1.5rem; margin-top: 2rem; margin-bottom: 0">
      Calculator</p>
  </div>
  <div class="row body-justify-center">
    <div class="bg-light p-3 border-radius">
      <form action="/calculate" method="get">
        <div class="form-group">
          <label for="inputFirstOperand">First Operand</label>
          <input type="number" name="firstOperand" class="form-control" id="inputFirstOperand"
                 aria-describedby="emailHelp" placeholder="Enter first operand"
                 value="${firstOperand}" required>
        </div>
        <div class="form-group">
          <label for="selectOperator">Operator</label>
          <select class="form-control" id="selectOperator" name="operator" value = "${operator}">
            <c:choose>
              <c:when test="${operator == 'Addition'}">
                <option selected>Addition</option>
                <option>Subtraction</option>
                <option>Multiple</option>
                <option>Division</option>
              </c:when>
              <c:when test="${operator == 'Subtraction'}">
                <option>Addition</option>
                <option selected>Subtraction</option>
                <option>Multiple</option>
                <option>Division</option>
              </c:when>
              <c:when test="${operator == 'Multiple'}">
                <option>Addition</option>
                <option>Subtraction</option>
                <option selected>Multiple</option>
                <option>Division</option>
              </c:when>
              <c:when test="${operator == 'Division'}">
                <option>Addition</option>
                <option>Subtraction</option>
                <option>Multiple</option>
                <option selected>Division</option>
              </c:when>
              <c:otherwise>
                <option>Addition</option>
                <option>Subtraction</option>
                <option>Multiple</option>
                <option>Division</option>
              </c:otherwise>
            </c:choose>
          </select>
        </div>
        <div class="form-group">
          <label for="inputSecondOperand">Second Operand</label>
          <input type="number" name="secondOperand" class="form-control"
                 id="inputSecondOperand" placeholder="Enter second operand" value="${secondOperand}" required>
        </div>
        <p>Result: ${result}</p>
        <button type="submit" class="btn btn-primary">Calculate</button>
        <button class="btn btn-primary" ><a href="index.jsp" class="text-white text-decoration-none">Reset</a></button>
      </form>
    </div>
  </div>
</div>
<jsp:include page="footer.jsp" />
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="bootstrap.min.js"></script>
</body>
</html>
