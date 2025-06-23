<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8" />
            <title>View User</title>
            <meta name="viewport" content="width=device-width, initial-scale=1" />

            <!-- Styles -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
            <link href="/css/styles.css" rel="stylesheet" />
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
                    transition: transform 0.2s ease;
                }

                .btn-custom:hover {
                    transform: scale(1.05);
                }

                .detail-label {
                    font-weight: 600;
                    color: #343a40;
                }

                .detail-value {
                    color: #495057;
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
                                        <i class="fas fa-user me-2"></i>User Details
                                    </h5>
                                    <a href="/admin/user" class="btn btn-danger btn-sm">
                                        <i class="fas fa-arrow-left me-1"></i> Back to List
                                    </a>
                                </div>
                                <div class="card-body">
                                    <c:choose>
                                        <c:when test="${user != null}">
                                            <div class="row">
                                                <div class="col-md-6 mb-3">
                                                    <div class="detail-label">ID</div>
                                                    <div class="detail-value">${user.id}</div>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <div class="detail-label">Full Name</div>
                                                    <div class="detail-value">${user.fullName}</div>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <div class="detail-label">Email</div>
                                                    <div class="detail-value">${user.email}</div>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <div class="detail-label">Address</div>
                                                    <div class="detail-value">${user.address}</div>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <div class="detail-label">Phone</div>
                                                    <div class="detail-value">${user.phone}</div>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <div class="detail-label">Actions</div>
                                                    <div class="btn-group btn-group-sm" role="group">
                                                        <a href="/admin/user/edit/${user.id}"
                                                            class="btn btn-outline-warning btn-custom" title="Edit">
                                                            <i class="fas fa-edit"></i> Edit
                                                        </a>
                                                        <a href="/admin/user/delete/${user.id}"
                                                            class="btn btn-outline-danger btn-custom" title="Delete"
                                                            onclick="return confirm('Delete this user?')">
                                                            <i class="fas fa-trash"></i> Delete
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="alert alert-warning" role="alert">
                                                <c:out
                                                    value="${errorMessage != null ? errorMessage : 'User not found!'}" />
                                            </div>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                        </div>
                    </main>
                </div>
            </div>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        </body>

        </html>