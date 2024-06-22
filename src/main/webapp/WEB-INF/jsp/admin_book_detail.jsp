<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>"${detail.name}"</title>
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
            background-image: url("img/ustclibrary2.jpg");
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-attachment: fixed;
            padding-top: 0px; /* 腾出导航栏高度 */
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

        .table th {
            width: 15%;
        }

        .table td {
            font-size: 18px;
        }

        /* 修改标题颜色为灰色 */
        .panel-title {
            color: rgb(255, 255, 255);
        }
    </style>
</head>
<body>

<div id="header"></div>

<div class="container">
    <div class="col-xs-6 col-md-offset-3">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">"${detail.name}"</h3>
            </div>
            <div class="panel-body">
                <form>
                    <div class="form-group">
                        <label for="title">Title</label> <!-- 修改标题颜色为灰色 -->
                        <input type="text" class="form-control" id="title" value="${detail.name}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="author">Author</label>
                        <input type="text" class="form-control" id="author" value="${detail.author}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="publisher">Publisher</label>
                        <input type="text" class="form-control" id="publisher" value="${detail.publish}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="isbn">ISBN</label>
                        <input type="text" class="form-control" id="isbn" value="${detail.isbn}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="introduction">Introduction</label>
                        <textarea class="form-control" id="introduction" rows="3" readonly>${detail.introduction}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="language">Language</label>
                        <input type="text" class="form-control" id="language" value="${detail.language}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="price">Price</label>
                        <input type="text" class="form-control" id="price" value="${detail.price}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="pubdate">Publication Date</label>
                        <input type="text" class="form-control" id="pubdate" value="${detail.pubdate}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="classId">Classification Number</label>
                        <input type="text" class="form-control" id="classId" value="${detail.classId}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="quantity">Quantity</label>
                        <input type="text" class="form-control" id="quantity" value="${detail.number}" readonly>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
