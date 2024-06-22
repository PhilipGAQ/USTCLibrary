<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light" style="position:fixed;z-index:999;width:100%;padding:15px;box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); font-size: 1.5rem;">
    <div class="container-fluid">
        <a class="navbar-brand" href="admin_main.html" style="font-size: 3rem; color:#007bff; font-weight:bold; margin-right: 20px;">USTC</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="bookManagementDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 20px;">
                        Book
                    </a>
                    <div class="dropdown-menu" aria-labelledby="bookManagementDropdown" style="font-size: 1.25rem;">
                        <a class="dropdown-item" href="admin_books.html">All Books</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="book_add.html">Add Book</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="readerManagementDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 20px;">
                        Reader
                    </a>
                    <div class="dropdown-menu" aria-labelledby="readerManagementDropdown" style="font-size: 1.25rem;">
                        <a class="dropdown-item" href="allreaders.html">All Readers</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="reader_add.html">Add Reader</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="lendManagementDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 20px;">
                        Lending Management
                    </a>
                    <div class="dropdown-menu" aria-labelledby="lendManagementDropdown" style="font-size: 1.25rem;">
                        <a class="dropdown-item" href="borrowlist.html">Lending Logs</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="overduelist.html">Fine Logs</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="reservelist.html" style="margin-right: 20px;">
                        All Reservations
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="admin_repasswd.html" style="margin-right: 20px;">
                        Change Password
                    </a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="allAdmins.html" style="margin-right: 20px;">
                        All admins
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.html">
                        Logout
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- 添加 Bootstrap 和 jQuery 的 CDN 链接 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
