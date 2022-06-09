<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Hogwarts School| Book Borrow</title>
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/datatables/css/dataTables.bootstrap4.min.css" />
    <link rel="stylesheet" href="\bootstrap\css\style.css">
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<div class="container-fluid">
    <div class="container">
        <div class="row body-justify-center">
            <p class="font-weight-normal" style="font-size: 1.5rem; margin-top: 2rem; margin-bottom: 0">
                Borrow Book</p>
        </div>
        <div class="row body-justify-center">
            <div class="bg-light p-3 border-radius">
                <form action="/bookrent?action=add" method="post">
                    <div class="form-group">
                        <label for="inputBookRentCode">Book Rent Code</label>
                        <input type="text" name="bookRentCode" class="form-control" id="inputBookRentCode"
                               aria-describedby="emailHelp" placeholder="MS-XXXX" required>
                        <c:if test="${!checkedDataMap.isEmpty()}">
                            <p class="text-danger">${checkedDataMap.get("bookRentCode")}</p>
                        </c:if>
                    </div>
                    <div class="form-group">
                        <input type="text" id="inputBookCode" hidden class="form-control"
                               name="bookCode" value="${bookCode}">
                        <label for="inputBookName">Book Name</label>
                        <input type="text" id="inputBookName" class="form-control"
                               name="bookName" value="${bookName}" readonly = "readonly">
                        <c:if test="${!checkedDataMap.isEmpty()}">
                            <p class="text-danger">${checkedDataMap.get("bookCode")}</p>
                        </c:if>
                    </div>
                    <div class="form-group">
                        <label for="inputStudentName">Student Name</label>
                        <select class="form-control" id="inputStudentName" name="student">
                            <c:forEach items="${studentList}" var="student">
                                <option value="${student.studentCode}">${student.studentName}</option>
                            </c:forEach>
                        </select>
                        <c:if test="${!checkedDataMap.isEmpty()}">
                            <p class="text-danger">${checkedDataMap.get("studentCode")}</p>
                        </c:if>
                    </div>
                    <div class="form-group">
                        <label for="inputRentDate">Rent Date</label>
                        <input type="date" name="rentDate" class="form-control" id="inputRentDate"
                               aria-describedby="emailHelp" value="${currentDate}" readonly = "readonly">
                        <c:if test="${!checkedDataMap.isEmpty()}">
                            <p class="text-danger">${checkedDataMap.get("rentDate")}</p>
                        </c:if>
                    </div>
                    <div class="form-group">
                        <label for="inputReturnDate">Return Date</label>
                        <input type="date" name="returnDate" class="form-control" id="inputReturnDate"
                               aria-describedby="emailHelp" placeholder="Enter return date" required>
                        <c:if test="${!checkedDataMap.isEmpty()}">
                            <p class="text-danger">${checkedDataMap.get("returnDate")}</p>
                        </c:if>
                    </div>
                    <button type="submit" class="btn bg-frm-darkblue text-white">Submit</button>
                    <button type="button" class="btn bg-frm-darkblue text-white" data-toggle="modal"
                            data-target="#back">
                        Back
                    </button>
                    <div class="modal fade" id="back" tabindex="-1"
                         aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Danger</h5>
                                    <button type="button" class="close" data-dismiss="modal"
                                            aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <p>Are you sure to cancel filling the current form?</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">
                                        Close
                                    </button>
                                    <a class="text-white"
                                       href="/book">
                                        <button type="button" class="btn bg-frm-darkblue text-white">Yes
                                        </button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../footer.jsp"></jsp:include>
<script src="/jquery/jquery-3.5.1.min.js"></script>
<script src="/datatables/js/jquery.dataTables.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/datatables/js/dataTables.bootstrap4.min.js"></script>
</body>
</html>
