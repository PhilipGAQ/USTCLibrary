<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All Books</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $('#header').load('reader_header.html');
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
<body background="img" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">

<div id="header"></div>
<div style="padding-top: 70px;"></div>
<div style="padding: 20px; margin: 0 auto; max-width: 1000px;"> <!-- Increase max-width to 1000px -->
    <form method="post" action="reader_querybook_do.html" class="form-inline mb-3" id="searchform">
        <div class="input-group">
            <input type="text" placeholder="Enter Book Title" class="form-control form-control-lg" id="search" name="searchWord">
            <span class="input-group-btn">
                <input type="submit" value="Search" class="btn btn-primary btn-lg">
            </span>
        </div>
    </form>
    <script>
        $("#searchform").submit(function () {
            var val = $("#search").val();
            if (val == '') {
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
                    <th>Title</th>
                    <th>Author</th>
                    <th>Publisher</th>
                    <th>ISBN</th>
                    <th>Price</th>
                    <th>Remaining</th>
                    <th>Borrow</th>
                    <th>Details</th>
                    <th>Reserve</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${books}" var="book">
                    <tr>
                        <td><c:out value="${book.book_id}"/></td>
                        <td><c:out value="${book.name}"/></td>
                        <td><c:out value="${book.author}"/></td>
                        <td><c:out value="${book.publish}"/></td>
                        <td><c:out value="${book.isbn}"/></td>
                        <td><c:out value="${book.price}"/></td>
                        <td><c:out value="${book.number}"/></td>

                        <c:set var="flag" value="false"/>
                        <c:forEach var="lend" items="${myLendList}">
                            <c:if test="${lend eq book.book_id}">
                                <c:set var="flag" value="true"/>
                            </c:if>
                        </c:forEach>
                        <c:if test="${flag}">
                            <td><a href="borrowbook.html?book_id=<c:out value="${book.book_id}"></c:out>">
                                <button type="button" class="btn btn-primary btn-xs" disabled="disabled">Borrow</button>
                            </a></td>
                        </c:if>
                        <c:if test="${not flag}">
                            <c:if test="${book.number>0}">
                                <td><a href="borrowbook.html?book_id=<c:out value="${book.book_id}"></c:out>">
                                    <button type="button" class="btn btn-primary btn-xs">Borrow</button>
                                </a></td>
                            </c:if>
                            <c:if test="${book.number==0}">
                                <td>
                                    <button type="button" class="btn btn-defalut btn-xs" disabled="disabled">Out of Stock</button>
                                </td>
                            </c:if>
                        </c:if>
                        <td><a href="reader_book_detail.html?book_id=<c:out value="${book.book_id}"></c:out>">
                            <button type="button" class="btn btn-success btn-xs">Details</button>
                        </a></td>
                        <td>
                            <c:set var="isReserved" value="false"/>
                            <c:forEach var="reserve" items="${myReserveList}">
                                <c:if test="${reserve.book_id == book.book_id}">
                                    <c:set var="isReserved" value="true"/>
                                </c:if>
                            </c:forEach>

                            <c:choose>
                                <c:when test="${book.number > 0}">
                                    <button type="button" class="btn btn-primary btn-xs" disabled="disabled">Reserve</button>
                                </c:when>
                                <c:otherwise>
                                    <c:choose>
                                        <c:when test="${isReserved}">
                                            <button type="button" class="btn btn-primary btn-xs" disabled="disabled">Reserved</button>
                                        </c:when>
                                        <c:otherwise>
                                            <a href="reservebook.html?book_id=<c:out value='${book.book_id}'></c:out>">
                                                <button type="button" class="btn btn-primary btn-xs">Reserve</button>
                                            </a>
                                        </c:otherwise>
                                    </c:choose>
                                </c:otherwise>
                            </c:choose>
                        </td>

                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div
