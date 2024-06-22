<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Reader Information</title>
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
                    <h4 class="text-center">Add Reader Information</h4>
                </div>
                <div class="card-body">
                    <form action="reader_add_do.html" method="post" id="readeredit">
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" name="password" id="password" placeholder="Enter password">
                        </div>
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" name="name" id="name" placeholder="Enter name">
                        </div>
                        <div class="form-group">
                            <label for="sex">Gender</label>
                            <input type="text" class="form-control" name="sex" id="sex" placeholder="Enter gender">
                        </div>
                        <div class="form-group">
                            <label for="birth">Birthday</label>
                            <input type="date" class="form-control" name="birth" id="birth" placeholder="Enter birthday">
                        </div>
                        <div class="form-group">
                            <label for="address">Address</label>
                            <input type="text" class="form-control" name="address" id="address" placeholder="Enter address">
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone</label>
                            <input type="text" class="form-control" name="phone" id="phone" placeholder="Enter phone number">
                        </div>
                        <div class="form-group">
                            <label for="profile_picture">Profile Picture</label>
                            <input type="text" class="form-control" name="profile_picture" id="profile_picture" placeholder="Choose Profile Picture">
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Add</button>
                    </form>
                    <script>
                        $("#readeredit").submit(function () {
                            if ($("#password").val() == '' || $("#name").val() == '' || $("#sex").val() == '' || $("#birth").val() == '' || $("#address").val() == '' || $("#phone").val() == '') {
                                alert("Please fill in complete reader information!");
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
