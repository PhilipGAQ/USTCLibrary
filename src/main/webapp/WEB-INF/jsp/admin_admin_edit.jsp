<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Admin Information</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/custom.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $('#header').load('admin_header.html');
        })
    </script>
    <style>
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }

        .text-center {
            font-size: 24px;
            font-weight: bold;
        }

        .form-group label {
            font-size: 18px;
        }

        .form-control::placeholder {
            font-size: 16px;
        }

        .container {
            padding-top: 50px; /* Space for the navbar */
            max-width: 800px; /* Max width of container */
            margin: 0 auto; /* Center horizontally */
        }

        .card {
            margin-top: 20px;
        }

        /* Enlarge form font */
        .form-control {
            font-size: 20px; /* Enlarge form font size */
        }

        .btn-block {
            width: 100%;
        }
    </style>
</head>
<body background="img/ustc.jpg" style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed;">

<div id="header"></div>
<div style="padding-top: 70px;"></div>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <h4 class="text-center">Edit Admin Information</h4>
                </div>
                <div class="card-body">
                    <form action="admin_edit_do.html" method="post" id="adminedit">
                        <input type="hidden" name="adminId" value="${admin.adminId}">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" name="name" id="name" placeholder="Enter name" value="${admin.name}">
                        </div>
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" class="form-control" name="username" id="username" placeholder="Enter username" value="${admin.username}">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" name="password" id="password" placeholder="Enter password" value="${admin.password}">
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Update</button>
                    </form>
                    <script>
                        $("#adminedit").submit(function () {
                            if ($("#name").val() == '' || $("#username").val() == '' || $("#password").val() == '') {
                                alert("Please fill in complete admin information!");
                                return false;
                            }
                        });
                    </script>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
