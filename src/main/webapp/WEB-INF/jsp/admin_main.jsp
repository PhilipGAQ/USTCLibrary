<%@ page contentType="text/html;charset=UTF-8"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>管理主页</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <script>
        $(function () {
            $('#header').load('admin_header.html');
        })
    </script>
    <style>
        .vertical-navbar-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: rgba(255, 255, 255, 0); /* 背景颜色，可以根据需要调整透明度 */
            z-index: 998; /* 确保在最顶层显示 */
        }
        .vertical-navbar {
            width: 250px; /* 导航栏宽度增大 */
            background-color: rgba(255, 255, 255, 0.76); /* 导航栏背景颜色 */
            padding-top: 20px; /* 调整顶部内边距 */
            border-radius: 10px; /* 添加边框圆角 */
            /* 新增样式以调整位置 */
            margin-left: 700px; /* 向左偏移，使其更靠近中间 */
        }
        .vertical-navbar ul {
            list-style: none;
            padding-left: 0;
        }
        .vertical-navbar li {
            margin-bottom: 10px;
        }
        .vertical-navbar a {
            display: block;
            padding: 10px;
            color: #333;
            text-decoration: none;
            font-weight: bold; /* 字体加粗 */
            font-size: 16px; /* 字体大小增加 */
        }
        .vertical-navbar a:hover {
            background-color: #e9ecef;
        }
    </style>
</head>
<body background="img/ustclibrary3.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">

<div id="header"></div>

<div class="vertical-navbar-container">
    <div class="vertical-navbar">
        <ul>
            <li><a href="admin_books.html">All Books</a></li>
            <li><a href="allreaders.html">All Readers</a></li>
            <li><a href="borrowlist.html">Lending Logs</a></li>
            <li><a href="overduelist.html">Fine Logs</a></li>
            <!-- Add more links as needed -->
        </ul>
    </div>
</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    温馨提示
                </h4>
            </div>
            <div class="modal-body">
                使用结束后请安全退出。
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">知道了
                </button>
            </div>
        </div>
    </div>
</div>
<c:if test="${!empty login}">
    <script>
        $(function () {
            $("#myModal").modal({
                show: true
            })
        })
    </script>
</c:if>

</body>
</html>
