<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All Readers</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
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
        .reader-info {
            margin-top: 20px;
        }
        .reader-info th {
            font-size: 18px;
            font-weight: bold;
        }
        .reader-info td {
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

<div style="padding: 20px; margin: 0 auto; max-width: 1000px;">
    <c:if test="${!empty info}">
        <script>alert("${info}");window.location.href="allreaders.html"</script>
    </c:if>

    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">
                All Readers
            </h3>
        </div>
        <div class="panel-body reader-info">
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

            <table class="table table-hover">
                <thead>
                <tr>
                    <th>Reader ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Birthday</th>
                    <th>Address</th>
                    <th>Phone</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${readers}" var="reader">
                    <tr>
                        <td><c:out value="${reader.readerId}"></c:out></td>
                        <td><c:out value="${reader.name}"></c:out></td>
                        <td><c:out value="${reader.sex}"></c:out></td>
                        <td><c:out value="${reader.birth}"></c:out></td>
                        <td><c:out value="${reader.address}"></c:out></td>
                        <td><c:out value="${reader.phone}"></c:out></td>
                        <td><a href="reader_edit.html?readerId=<c:out value="${reader.readerId}"></c:out>"><button type="button" class="btn btn-custom btn-sm">Edit</button></a></td>
                        <td><a href="reader_delete.html?readerId=<c:out value="${reader.readerId}"></c:out>"><button type="button" class="btn btn-custom btn-sm">Delete</button></a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
