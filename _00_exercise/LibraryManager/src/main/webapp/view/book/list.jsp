<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Hogwarts School| Book List</title>
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
            Book List</p>
    </div>
    <div class="row body-justify-center">
            <form class="form-inline" action="/book" method="get">
                <div class="form-group mx-sm-1">
                    <input hidden type="text" name="action" value="search">
                    <input type="text" class="form-control" name="bookSearch" placeholder="Search book name">
                </div>
                <div class="form-group mx-sm-1">
                    <input hidden type="text" name="action" value="search">
                    <input type="text" class="form-control" name="nameSearch" placeholder="Search book author">
                </div>
                <button type="submit" class="btn bg-frm-darkblue text-white">Search</button>
            </form>
    </div>
    <div class="row body-justify-center">
        <div class="bg-light p-3 border-radius">
            <table class="table table-hover table-responsive" id="bookTable" width="100%" style="width: 100%;">
                <thead>
                <tr class="bg-frm-darkblue">
                    <th scope="col" class="text-white">Book Code</th>
                    <th scope="col" class="text-white">Book Name</th>
                    <th scope="col" class="text-white">Author</th>
                    <th scope="col" class="text-white">Description</th>
                    <th scope="col" class="text-white">Numbers</th>
                    <th scope="col" class="text-white">Borrow</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${bookList}" var="book" varStatus="status">
                    <tr>
                        <td>${book.bookCode}</td>
                        <td>${book.bookName}</td>
                        <td>${book.author}</td>
                        <td>${book.description}</td>
                        <td>${book.numbers}</td>
                        <td>
                            <c:if test="${book.numbers > 0}">
                                <a class="text-white" href="/bookrent?action=add&id=${book.bookCode}&name=${book.bookName}">
                                    <button type="button" class="btn bg-frm-darkblue text-white" data-toggle="modal">
                                        Borrow
                                    </button>
                                </a>
                            </c:if>
                            <c:if test="${book.numbers == 0}">
                                <button type="button" class="btn bg-frm-darkblue text-white" data-toggle="modal"
                                        data-target="#${book.bookCode}">
                                    Borrow
                                </button>
                                <div class="modal fade" id="${book.bookCode}" tabindex="-1"
                                     aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Notification!!</h5>
                                                <button type="button" class="close" data-dismiss="modal"
                                                        aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <p>${book.bookName} is not available in shelf right now.</p>
                                                <p>Please choose another one!!</p>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-primary" data-dismiss="modal">
                                                    OK
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:if>
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
