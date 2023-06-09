<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Accounts - Product Admin Template</title>
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Roboto:400,700"
            />
        <!-- https://fonts.google.com/specimen/Roboto -->
        <link rel="stylesheet" href="css/fontawesome.min.css" />
        <!-- https://fontawesome.com/ -->
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <!-- https://getbootstrap.com/ -->
        <link rel="stylesheet" href="css/templatemo-style.css">
        <!--
            Product Admin CSS Template
            https://templatemo.com/tm-524-product-admin
        -->
    </head>

    <body id="reportsPage">
        <div class="" id="home">
            <nav class="navbar navbar-expand-xl">
                <div class="container h-100">
                    <a class="navbar-brand" href="index.jsp">
                        <h1 class="tm-site-title mb-0">Product Admin</h1>
                    </a>
                    <button
                        class="navbar-toggler ml-auto mr-0"
                        type="button"
                        data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                        >
                        <i class="fas fa-bars tm-nav-icon"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mx-auto h-100">
                            <li class="nav-item">
                                <a class="nav-link" href="index.jsp">
                                    <i class="fas fa-tachometer-alt"></i> Dashboard
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="nav-item dropdown">
                                <a
                                    class="nav-link dropdown-toggle"
                                    href="#"
                                    id="navbarDropdown"
                                    role="button"
                                    data-toggle="dropdown"
                                    aria-haspopup="true"
                                    aria-expanded="false"
                                    >
                                    <i class="far fa-file-alt"></i>
                                    <span> Reports <i class="fas fa-angle-down"></i> </span>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="#">Daily Report</a>
                                    <a class="dropdown-item" href="#">Weekly Report</a>
                                    <a class="dropdown-item" href="#">Yearly Report</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="products.jsp">
                                    <i class="fas fa-shopping-cart"></i> Products
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link active" href="accounts.jsp">
                                    <i class="far fa-user"></i> Accounts
                                </a>
                            </li>
                            <li class="nav-item dropdown">
                                <a
                                    class="nav-link dropdown-toggle"
                                    href="#"
                                    id="navbarDropdown"
                                    role="button"
                                    data-toggle="dropdown"
                                    aria-haspopup="true"
                                    aria-expanded="false"
                                    >
                                    <i class="fas fa-cog"></i>
                                    <span> Settings <i class="fas fa-angle-down"></i> </span>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="#">Profile</a>
                                    <a class="dropdown-item" href="#">Billing</a>
                                    <a class="dropdown-item" href="#">Customize</a>
                                </div>
                            </li>
                        </ul>
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link d-block" href="login.jsp">
                                    Admin, <b>Logout</b>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <form id="yourFormId" action="getAccount" method="POST">
                <div class="container mt-5">
                    <div class="row tm-content-row">
                        <div class="col-12 tm-block-col">
                            <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                                <h2 class="tm-block-title">List of Accounts</h2>
                                <p class="text-white">Accounts</p>
                                <select class="custom-select" id="accountType" onchange="handleAccountTypeChange()" name="userType">
                                    <option value="all">All</option>
                                    <option value="Admin">Admin</option>
                                    <option value="User">User</option>
                                    <option value="Staff">Staff booking</option>
                                </select>
                            </div>
                            <div class="table-responsive">

                                <table class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>User ID</th>
                                            <th>Full Name</th>
                                            <th>CMND</th>
                                            <th>Email</th>
                                            <th>Username</th>
                                            <th>Phone</th>
                                            <th>User Type</th>
                                            <th>Blocked</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="k" items="${requestScope.listAcc}">
                                            <tr>
                                                <td>${k.getUserID()}</td>
                                                <td>${k. getFullname()}</td>
                                                <td>${k.getCmnd()}</td>
                                                <td>${k.getEmail()}</td>
                                                <td>${k.getUserName()}</td>
                                                <td>${k.getPhone()}</td>
                                                <td>${k.getUserType()}</td>
                                                <td>${k.isIsBlocked()}</td>
                                            </tr>
                                        </c:forEach>

                                        <!-- Add more rows for other accounts -->
                                    </tbody>
                                </table>
                                <input type="submit" value="fillter" style="display: none"/>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

            <script>
                function handleAccountTypeChange() {
                    var accountType = document.getElementById("accountType").value;

                    // Automatically submit the form
                    document.getElementById("yourFormId").submit();
                }
            </script>




            <footer class="tm-footer row tm-mt-small">
                <div class="col-12 font-weight-light">
                    <p class="text-center text-white mb-0 px-4 small">
                        Copyright &copy; <b>2018</b> All rights reserved. 

                        Design: <a rel="nofollow noopener" href="https://templatemo.com" class="tm-footer-link">Template Mo</a>
                    </p>
                </div>
            </footer>
        </div>

        <script src="js/jquery-3.3.1.min.js"></script>
        <!-- https://jquery.com/download/ -->
        <script src="js/bootstrap.min.js"></script>
        <!-- https://getbootstrap.com/ -->

    </body>
</html>
