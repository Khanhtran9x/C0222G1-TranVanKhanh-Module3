<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Hogwarts School| Book Borrow List</title>
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/datatables/css/dataTables.bootstrap4.min.css" />
    <link rel="stylesheet" href="\bootstrap\css\style.css">
    <style>
        .page-item.active .page-link {
            background-color: #046056 !important;
            z-index: 1;
            color: #fff;
            border-color: #046056;
        }
    </style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<div class="container">
    <div class="row body-justify-center">
        <p class="font-weight-normal" style="font-size: 1.5rem; margin-bottom: 1rem">
            Book Borrow List</p>
    </div>
    <div class="row body-justify-center">
        <form class="form-inline" action="/bookrent" method="get">
            <div class="form-group mx-sm-1">
                <input hidden type="text" name="action" value="search">
                <input type="text" class="form-control" name="bookSearch" placeholder="Search book name">
            </div>
            <div class="form-group mx-sm-1">
                <input hidden type="text" name="action" value="search">
                <input type="text" class="form-control" name="studentSearch" placeholder="Search student name">
            </div>
            <button type="submit" class="btn bg-frm-darkblue text-white">Search</button>
        </form>
    </div>
    <div class="row body-justify-center">
        <div class="bg-light p-3 border-radius">
            <table class="table table-hover table-responsive" id="bookTable" width="100%" style="width: 100%;">
                <thead>
                <tr class="bg-frm-darkblue">
                    <th scope="col" class="text-white">Book Borrow Code</th>
                    <th scope="col" class="text-white">Book Name</th>
                    <th scope="col" class="text-white">Author</th>
                    <th scope="col" class="text-white">Student</th>
                    <th scope="col" class="text-white">Class</th>
                    <th scope="col" class="text-white">Borrow Date</th>
                    <th scope="col" class="text-white">Return Date</th>
                    <th scope="col" class="text-white">Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${bookRentList}" var="bookRent" varStatus="status">
                    <tr>
                        <td>${bookRent.bookRentCode}</td>
                        <td>${bookRent.bookName}</td>
                        <td>${bookRent.author}</td>
                        <td>${bookRent.studentName}</td>
                        <td>${bookRent.className}</td>
                        <td>${bookRent.rentDate}</td>
                        <td>${bookRent.returnDate}</td>
                        <td>
                            <button type="button" class="btn bg-frm-darkblue text-white" data-toggle="modal"
                                    data-target="#${bookRent.bookRentCode}">
                                Return Book
                            </button>
                            <div class="modal fade" id="${bookRent.bookRentCode}" tabindex="-1"
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
                                            <p>Does ${bookRent.studentName} return ${bookRent.bookName}?</p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">
                                                No
                                            </button>
                                            <a class="text-white"
                                               href="/bookrent?action=delete&bookRentCode=${bookRent.bookRentCode}&bookCode=${bookRent.bookCode}">
                                                <button type="button" class="btn bg-frm-darkblue text-white">Yes
                                                </button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<jsp:include page="../footer.jsp"></jsp:include>

<script src="/jquery/jquery-3.5.1.min.js"></script>
<script src="/datatables/js/jquery.dataTables.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/datatables/js/dataTables.bootstrap4.min.js"></script>

<script>
    $(document).ready(function () {
        $('#bookTable').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });
</script>

</body>
</html>
