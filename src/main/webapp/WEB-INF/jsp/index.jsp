<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login Page</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/js.cookie.js"></script>
    <style>
        body, html {
            height: 100%;
            margin: 0;
        }
        body {
            background-image: url('img/ustclibrary.jpg'); /* Change to your desired image */
            background-size: cover;
            background-attachment: fixed;
        }
        #login {
            width: 400px;
            height: 350px;
            margin: auto;
            position: absolute;
            top: 50%;
            right: 8%;
            transform: translate(0, -50%);
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
            border-radius: 5px;
        }
        .panel-heading {
            background-color: #fff !important;
        }
        .panel-title {
            text-align: center;
        }
        #info {
            color: #000000;
            text-align: center;
            margin-top: 10px;
        }
        .login-btn {
            width: 100%;
            margin-top: 10px;
        }
        #header {
            position: absolute;
            top: 25px;
            left: 25px;
            color: rgb(62, 156, 255);
            font-size: 50px;
            font-weight: bold;
            font-family: Arial, sans-serif;
            z-index: 100;
        }
        #subHeader {
            position: absolute;
            top: 100px;
            left: 30px;
            color: rgba(0, 0, 0, 0.74);
            font-size: 14px;
            font-weight: bold;
            font-family: Arial, sans-serif;
            z-index: 100;
        }
    </style>
</head>
<body>
<div id="header">USTC</div>
<div id="subHeader">PB21020572</div>
<c:if test="${!empty error}">
    <script>
        alert("${error}");
        window.location.href = "login.html";
    </script>
</c:if>
<div id="login">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">Login</h3>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label for="id">Your Id</label>
                <input type="text" class="form-control" id="id" placeholder="Enter username">
            </div>
            <div class="form-group">
                <label for="passwd">Password</label>
                <input type="password" class="form-control" id="passwd" placeholder="Enter password">
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" id="remember"> Remember Me
                </label>
            </div>
            <p id="info"></p>
            <button id="loginButton" class="btn btn-primary login-btn">Login</button>
        </div>
    </div>
</div>
<script>
    $("#id").keyup(function () {
        if (isNaN($("#id").val())) {
            $("#info").text("Tip: Username can only contain digits");
        } else {
            $("#info").text("");
        }
    });

    function rememberLogin(username, password, checked) {
        Cookies.set('loginStatus', {
            username: username,
            password: password,
            remember: checked
        }, {expires: 30, path: ''});
    }

    function setLoginStatus() {
        var loginStatusText = Cookies.get('loginStatus');
        if (loginStatusText) {
            var loginStatus;
            try {
                loginStatus = JSON.parse(loginStatusText);
                $('#id').val(loginStatus.username);
                $('#passwd').val(loginStatus.password);
                $("#remember").prop('checked', true);
            } catch (__) {}
        }
    }

    setLoginStatus();
    $("#loginButton").click(function () {
        var id = $("#id").val();
        var passwd = $("#passwd").val();
        var remember = $("#remember").prop('checked');
        if (id == '') {
            $("#info").text("Tip: ID cannot be empty");
        } else if (passwd == '') {
            $("#info").text("Tip: Password cannot be empty");
        } else if (isNaN(id)) {
            $("#info").text("Tip: ID must be digits only");
        } else {
            $.ajax({
                type: "POST",
                url: "api/loginCheck",
                data: {
                    id: id,
                    passwd: passwd
                },
                dataType: "json",
                success: function (data) {
                    if (data.stateCode.trim() === "0") {
                        $("#info").text("Tip: Incorrect ID or password!");
                    } else if (data.stateCode.trim() === "1") {
                        $("#info").text("Tip: Login successful, redirecting...");
                        window.location.href = "admin_main.html";
                    } else if (data.stateCode.trim() === "2") {
                        if (remember) {
                            rememberLogin(id, passwd, remember);
                        } else {
                            Cookies.remove('loginStatus');
                        }
                        $("#info").text("Tip: Login successful, redirecting...");
                        window.location.href = "reader_main.html";
                    }
                }
            });
        }
    });
</script>
</body>
</html>
