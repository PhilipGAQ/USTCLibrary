<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Change Password</title>
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
<body background="img/ustclibrary2.jpg" style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed;">

<div id="header"></div>
<div style="padding-top: 70px;"></div>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
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
            <div class="card">
                <div class="card-header">
                    <h4 class="text-center">Change Password</h4>
                </div>
                <div class="card-body">
                    <form method="post" action="admin_repasswd_do" id="repasswd">
                        <div class="form-group">
                            <label for="oldPasswd">Old Password</label>
                            <input type="password" class="form-control" name="oldPasswd" id="oldPasswd" placeholder="Enter old password">
                        </div>
                        <div class="form-group">
                            <label for="newPasswd">New Password</label>
                            <input type="password" class="form-control" name="newPasswd" id="newPasswd" placeholder="Enter new password">
                        </div>
                        <div class="form-group">
                            <label for="reNewPasswd">Confirm New Password</label>
                            <input type="password" class="form-control" name="reNewPasswd" id="reNewPasswd" placeholder="Re-enter new password">
                        </div>
                        <em id="tishi" style="color: red"></em>
                        <button type="submit" class="btn btn-primary btn-block">Submit</button>
                    </form>
                    <script>
                        $(document).keyup(function () {
                            if ($("#newPasswd").val() != $("#reNewPasswd").val() && $("#newPasswd").val() != "" && $("#reNewPasswd").val() != "" && $("#newPasswd").val().length == $("#reNewPasswd").val().length) {
                                $("#tishi").text("New passwords do not match, please check.");
                            } else {
                                $("#tishi").text("");
                            }
                        });

                        $("#repasswd").submit(function () {
                            if ($("#oldPasswd").val() == '' || $("#newPasswd").val() == '' || $("#reNewPasswd").val() == '') {
                                $("#tishi").text("Please complete all fields before submitting.");
                                return false;
                            } else if ($("#newPasswd").val() != $("#reNewPasswd").val()) {
                                $("#tishi").text("New passwords do not match, please check.");
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
