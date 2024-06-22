<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit "${detail.name}"</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js" ></script>
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
                <h3 class="panel-title">Edit "${detail.name}"</h3>
            </div>
            <div class="panel-body">
                <form action="book_edit_do.html?book_id=${detail.book_id}" method="post" id="addbook" >

                    <div class="form-group">
                        <label for="name">Title</label>
                        <input type="text" class="form-control" name="name" id="name" value="${detail.name}">
                    </div>
                    <div class="form-group">
                        <label for="author">Author</label>
                        <input type="text" class="form-control" name="author" id="author" value="${detail.author}" >
                    </div>
                    <div class="form-group">
                        <label for="publish">Publisher</label>
                        <input type="text" class="form-control" name="publish" id="publish"  value="${detail.publish}" >
                    </div>
                    <div class="form-group">
                        <label for="isbn">ISBN</label>
                        <input type="text" class="form-control" name="isbn" id="isbn"  value="${detail.isbn}" >
                    </div>
                    <div class="form-group">
                        <label for="introduction">Introduction</label>
                        <input type="text" class="form-control" name="introduction" id="introduction"  value="${detail.introduction}" >
                    </div>
                    <div class="form-group">
                        <label for="language">Language</label>
                        <input type="text" class="form-control" name="language" id="language" value="${detail.language}" >
                    </div>
                    <div class="form-group">
                        <label for="price">Price</label>
                        <input type="text" class="form-control" name="price"  id="price" value="${detail.price}">
                    </div>
                    <div class="form-group">
                        <label for="pubstr">Publication Date</label>
                        <input type="date" class="form-control" name="pubstr" id="pubstr" value="${detail.pubdate}">
                    </div>
                    <div class="form-group">
                        <label for="classId">Classification Number</label>
                        <input type="text" class="form-control" name="classId" id="classId" value="${detail.classId}">
                    </div>
                    <div class="form-group">
                        <label for="number">Quantity</label>
                        <input type="text" class="form-control" name="number"  id="number" value="${detail.number}">
                    </div>
                    <input type="submit" value="Submit" class="btn btn-primary btn-lg btn-block">
                    <script>
                        $("#addbook").submit(function () {
                            if($("#name").val()==''||$("#author").val()==''||$("#publish").val()==''||$("#isbn").val()==''||$("#introduction").val()==''||$("#language").val()==''||$("#price").val()==''||$("#pubstr").val()==''||$("#classId").val()==''||$("#number").val()==''){
                                alert("Please fill in complete book information!");
                                return false;
                            }
                        })
                    </script>
                </form>
            </div>
        </div>

    </div>
</div>

</body>
</html>
