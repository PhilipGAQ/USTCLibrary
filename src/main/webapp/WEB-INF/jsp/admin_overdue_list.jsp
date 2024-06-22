<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Current Fines</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $('#header').load('admin_header.html');
        })
    </script>
    <style>
        body {
            background-image: url("img/ustclibrary4.jpg");
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-attachment: fixed;
            padding-top: 0px; /* 腾出导航栏高度 */
        }

        #header {
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }

        .panel {
            margin-top: 20px;
        }

        .panel-title {
            font-size: 24px;
            font-weight: bold;
        }

        .table th, .table td {
            font-size: 18px;
        }
    </style>
</head>
<body>

<div id="header"></div>

<div style="padding-top: 100px">
    <c:if test="${!empty succ}">
        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
                ${succ}
        </div>
    </c:if>
    <c:if test="${!empty error}">
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
                ${error}
        </div>
    </c:if>
</div>

<div class="panel panel-default" style="width: 90%;margin-left: 5%">
    <div class="panel-heading">
        <h3 class="panel-title">
            Current Fines
        </h3>
    </div>
    <div class="panel-body">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>Fine ID</th>
                <th>Borrow ID</th>
                <th>Student ID</th>
                <th>Due Date</th>
                <th>Return Date</th>
                <th>Overdue Days</th>
                <th>Fine Amount</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list}" var="alog">
                <tr>
                    <td><c:out value="${alog.overdue_id}"></c:out></td>
                    <td><c:out value="${alog.borrow_id}"></c:out></td>
                    <td><c:out value="${alog.student_id}"></c:out></td>
                    <td><c:out value="${alog.due_date}"></c:out></td>
                    <td><c:out value="${alog.return_date}"></c:out></td>
                    <td><c:out value="${alog.overdue_days}"></c:out></td>
                    <td><c:out value="${alog.fine_amount}"></c:out></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
