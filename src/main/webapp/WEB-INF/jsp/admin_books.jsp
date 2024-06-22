<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All Books Information</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <script>
        $(function () {
            $('#header').load('admin_header.html');
        })
    </script>
    <style>
        .navbar-fixed-top {
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }
        .panel-title {
            font-size: 24px;
            font-weight: bold;
        }
        .book-info {
            margin-top: 20px;
        }
        .book-info th {
            font-size: 18px;
            font-weight: bold;
        }
        .book-info td {
            font-size: 16px;
        }
        .btn-custom {
            background-color: rgba(255, 255, 255, 0.76);
            border-color: rgba(255, 255, 255, 0.76);
            color: rgb(1, 123, 245);
        }
        .btn-custom:hover {
            background-color: rgba(28, 153, 255, 0.85);
            border-color: rgb(1, 123, 245);
            color: rgba(28, 153, 255, 0.85);
        }
    </style>
</head>
<body>

<div id="header"></div>

<div style="padding-top: 70px;"></div>

<div style="padding: 20px; margin: 0 auto; max-width: 1000px;"> <!-- Increase max-width to 1000px -->
    <form method="post" action="querybook.html" class="form-inline mb-3" id="searchform">
        <div class="input-group">
            <input type="text" placeholder="Search for Book" class="form-control form-control-lg" id="search" name="searchWord">
            <span class="input-group-btn">
                <input type="submit" value="Search" class="btn btn-primary btn-lg">
            </span>
        </div>
    </form>
    <script>
        $("#searchform").submit(function () {
            var val=$("#search").val();
            if(val==''){
                alert("Please enter a keyword");
                return false;
            }
        })
    </script>

    <c:if test="${!empty succ}">
        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                ${succ}
        </div>
    </c:if>
    <c:if test="${!empty error}">
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                ${error}
        </div>
    </c:if>

    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">
                All Books
            </h3>
        </div>
        <div class="panel-body book-info">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>Book ID</th>
                    <th>Book Title</th>
                    <th>Author</th>
                    <th>Price($)</th>
                    <th>Stock</th>
                    <th>Details</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${books}" var="book">
                    <tr>
                        <td><c:out value="${book.book_id}"/></td>
                        <td><b><c:out value="${book.name}"/></b></td>
                        <td><c:out value="${book.author}"/></td>
                        <td><c:out value="${book.price}"/></td>
                        <td><c:out value="${book.number}"/></td>
                        <td><a href="admin_book_detail.html?book_id=<c:out value="${book.book_id}"/>"><button type="button" class="btn btn-custom btn-sm">Details</button></a></td>
                        <td><a href="updatebook.html?book_id=<c:out value="${book.book_id}"/>"><button type="button" class="btn btn-custom btn-sm">Edit</button></a></td>
                        <td><a href="deletebook.html?book_id=<c:out value="${book.book_id}"/>"><button type="button" class="btn btn-custom btn-sm">Delete</button></a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
