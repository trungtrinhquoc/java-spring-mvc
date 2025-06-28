<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8" />
            <title>User Management</title>
            <meta name="viewport" content="width=device-width, initial-scale=1" />

            <!-- Styles -->
            <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
            <link href="/css/styles.css" rel="stylesheet" />
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
            <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

            <style>
                body {
                    background-color: #f0f2f5;
                    font-family: 'Segoe UI', sans-serif;
                }

                .fade-in {
                    animation: fadeInUp 0.6s ease-in-out;
                }

                @keyframes fadeInUp {
                    from {
                        opacity: 0;
                        transform: translateY(20px);
                    }

                    to {
                        opacity: 1;
                        transform: translateY(0);
                    }
                }

                .card-header {
                    background: linear-gradient(135deg, #696C6D, #E2E1DF);
                    color: #09086E;
                    font-weight: bold;
                }

                .btn-custom {
                    padding: 4px 10px;
                    font-size: 0.85rem;
                }

                table th,
                table td {
                    border: 1px solid #dee2e6 !important;
                    /* Dòng kẻ rõ */
                    vertical-align: middle;
                }

                .table-hover tbody tr:hover {
                    background-color: #eaf2ff;
                    transition: 0.3s;
                }

                .table thead {
                    background-color: #e9ecef;
                }
            </style>
        </head>

        <body class="sb-nav-fixed">
            <jsp:include page="../layout/header.jsp"></jsp:include>

            <div id="layoutSidenav">
                <div id="layoutSidenav_nav">
                    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                        <jsp:include page="../layout/sidebar.jsp"></jsp:include>
                        <div class="sb-sidenav-footer">
                            <div class="small">Logged in as:</div>
                            Trung Trịnh
                        </div>
                    </nav>
                </div>

                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid px-5 my-5" style="max-width: 1200px;">
                            <div class="card shadow fade-in">
                                <div class="card-header d-flex justify-content-between align-items-center">
                                    <h5 class="mb-0">
                                        <i class="fas fa-users me-2"></i>User Management
                                    </h5>
                                    <a href="/admin/user/create" class="btn btn-success btn-sm">
                                        <i class="fas fa-plus me-1"></i> Add User
                                    </a>
                                </div>
                                <div class="card-body p-0">
                                    <table class="table table-sm table-hover mb-0">
                                        <thead>
                                            <tr>
                                                <th style="width: 10%">ID</th>
                                                <th style="width: 20%">Full Name</th>
                                                <th style="width: 35%">Email</th>
                                                <th style="width: 20%">Role</th>
                                                <th style="width: 150%">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="u" items="${user1}" varStatus="loop">
                                                <tr>
                                                    <td>${loop.index + 1}</td>
                                                    <td>${u.fullName}</td>
                                                    <td>${u.email}</td>
                                                    <td>${u.role.name}</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm" role="group">
                                                            <a href="/admin/user/viewUser/${u.id}"
                                                                class="btn btn-outline-primary btn-custom" title="View">
                                                                <i class="fas fa-eye"></i>
                                                            </a>
                                                            <a href="/admin/user/edit/${u.id}"
                                                                class="btn btn-outline-warning btn-custom" title="Edit">
                                                                <i class="fas fa-edit"></i>
                                                            </a>
                                                            <a href="/admin/user/delete/${u.id}"
                                                                class="btn btn-outline-danger btn-custom" title="Delete"
                                                                onclick="return confirm('Delete this user?')">
                                                                <i class="fas fa-trash"></i>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </main>
                </div>
            </div>

            <!-- Bootstrap JS -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        </body>

        </html>