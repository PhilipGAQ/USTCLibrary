<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All Admins</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $('#header').load('admin_header.html');
        })
    </script>
    <style>
        .panel-title {
            font-size: 24px;
            font-weight: bold;
        }
        .admin-info {
            margin-top: 20px;
        }
        .admin-info th {
            font-size: 18px;
            font-weight: bold;
        }
        .admin-info td {
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
    <c:if test="${!empty succ}">
        <script>alert("${succ}");window.location.href="allAdmins.html"</script>
    </c:if>

    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">
                All Admins
            </h3>
        </div>
        <div class="panel-body admin-info">
            <c:if test="${!empty error}">
                <div class="alert alert-danger alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        ${error}
                </div>
            </c:if>

            <table class="table table-hover">
                <thead>
                <tr>
                    <th>Admin ID</th>
                    <th>Name</th>
                    <th>Username</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${admins}" var="admin">
                    <tr>
                        <td><c:out value="${admin.adminId}"/></td>
                        <td><c:out value="${admin.name}"/></td>
                        <td><c:out value="${admin.username}"/></td>
                        <td><a href="admin_edit.html?adminId=<c:out value="${admin.adminId}"/>"><button type="button" class="btn btn-custom btn-sm">Edit</button></a></td>
                        <td><a href="deleteAdmin.html?adminId=<c:out value="${admin.adminId}"/>"><button type="button" class="btn btn-custom btn-sm">Delete</button></a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <div style="text-align: center;">
        <a href="admin_add.html"><button type="button" class="btn btn-primary">Add Admin</button></a>
    </div>
</div>

</body>
</html>
