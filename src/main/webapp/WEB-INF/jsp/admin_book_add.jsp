<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Book Information</title>
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
            padding-top: 50px; /* 腾出导航栏高度 */
            max-width: 800px; /* 设置容器最大宽度 */
            margin: 0 auto; /* 水平居中 */
        }

        .card {
            margin-top: 20px;
        }

        /* 放大表单字体 */
        .form-control {
            font-size: 20px; /* 将表单字体放大 */
        }

        .btn-block {
            width: 300%;
        }
    </style>
</head>
<body>

<div id="header"></div>
<div style="padding-top: 70px;"></div>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <h4 class="text-center">Add Book Information</h4>
                </div>
                <div class="card-body">
                    <form action="book_add_do.html" method="post" id="addbook">
                        <div class="form-group">
                            <label for="name">Book Title</label>
                            <input type="text" class="form-control" name="name" id="name" placeholder="Enter book title">
                        </div>
                        <div class="form-group">
                            <label for="author">Author</label>
                            <input type="text" class="form-control" name="author" id="author" placeholder="Enter author name">
                        </div>
                        <div class="form-group">
                            <label for="publish">Publisher</label>
                            <input type="text" class="form-control" name="publish" id="publish" placeholder="Enter publisher">
                        </div>
                        <div class="form-group">
                            <label for="isbn">ISBN</label>
                            <input type="text" class="form-control" name="isbn" id="isbn" placeholder="Enter ISBN">
                        </div>
                        <div class="form-group">
                            <label for="introduction">Introduction</label>
                            <textarea class="form-control" rows="3" name="introduction" id="introduction" placeholder="Enter introduction"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="language">Language</label>
                            <input type="text" class="form-control" name="language" id="language" placeholder="Enter language">
                        </div>
                        <div class="form-group">
                            <label for="price">Price</label>
                            <input type="text" class="form-control" name="price" id="price" placeholder="Enter price">
                        </div>
                        <div class="form-group">
                            <label for="pubstr">Publication Date</label>
                            <input type="date" class="form-control" name="pubstr" id="pubstr" placeholder="Enter publication date">
                        </div>
                        <div class="form-group">
                            <label for="classId">Classification Number</label>
                            <input type="text" class="form-control" name="classId" id="classId" placeholder="Enter classification number">
                        </div>
                        <div class="form-group">
                            <label for="number">Quantity</label>
                            <input type="text" class="form-control" name="number" id="number" placeholder="Enter book quantity">
                        </div>

                        <button type="submit" class="btn btn-primary btn-block">Add</button>
                    </form>
                    <script>
                        $("#addbook").submit(function () {
                            if ($("#name").val() == '' || $("#author").val() == '' || $("#publish").val() == '' || $("#isbn").val() == '' || $("#introduction").val() == '' || $("#language").val() == '' || $("#price").val() == '' || $("#pubstr").val() == '' || $("#classId").val() == '' || $("#number").val() == '') {
                                alert("Please fill in complete book information!");
                                return false;
                            }
                        })
                    </script>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
