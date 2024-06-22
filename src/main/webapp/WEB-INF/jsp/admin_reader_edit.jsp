<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Reader Information: ${readerInfo.readerId}</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $('#header').load('admin_header.html');
        });
    </script>
    <style>
        body {
            background-image: url("img/book2.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
            padding-top: 0; /* 腾出导航栏高度 */
            font-size: 20px; /* 增大所有字体大小 */
        }

        .panel {
            margin-top: 20px;
        }

        .container {
            padding-top: 100px; /* 腾出导航栏高度 */
            font-size: 20px; /* 增大整个表单的字体大小 */
        }

        .panel-title {
            font-size: 24px;
            font-weight: bold;
        }

        .input-group-addon {
            width: 20%;
        }

        .form-control {
            width: 80%;
        }

        /* 修改表单的样式 */
        input[type="submit"] {
            margin-top: 20px;
            font-size: 30px;
        }
    </style>
</head>
<body>

<div id="header"></div>

<div class="container">
    <div class="col-xs-6 col-md-offset-3">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Edit Reader Information: ${readerInfo.readerId}</h3>
            </div>
            <div class="panel-body">
                <form action="reader_edit_do.html?readerId=${readerInfo.readerId}" method="post" id="readeredit">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" name="name" id="name" value="${readerInfo.name}">
                    </div>
                    <div class="form-group">
                        <label for="sex">Gender</label>
                        <input type="text" class="form-control" name="sex" id="sex" value="${readerInfo.sex}">
                    </div>
                    <div class="form-group">
                        <label for="birth">Birthday</label>
                        <input type="text" class="form-control" name="birth" id="birth" value="${readerInfo.birth}">
                    </div>
                    <div class="form-group">
                        <label for="address">Address</label>
                        <input type="text" class="form-control" name="address" id="address" value="${readerInfo.address}">
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone</label>
                        <input type="text" class="form-control" name="phone" id="phone" value="${readerInfo.phone}">
                    </div>
                    <div class="form-group">
                        <label for="profile_picture">Profile picture</label>
                        <input type="text" class="form-control" name="profile_picture" id="profile_picture" value="${readerInfo.profile_picture}">
                    </div>
                    <input type="submit" value="Submit" class="btn btn-primary btn-lg btn-block">
                </form>
                <script>
                    $("#readeredit").submit(function () {
                        if ($("#name").val() === '' || $("#sex").val() === '' || $("#birth").val() === '' || $("#address").val() === '' || $("#phone").val() === '') {
                            alert("Please fill in complete reader information!");
                            return false;
                        }
                    });
                </script>
            </div>
        </div>
    </div>
</div>

</body>
</html>
