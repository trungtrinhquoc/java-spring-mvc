<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <title>Edit User</title>
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
                    background: linear-gradient(135deg, #E2E1DF, #696C6D);
                    color: #4d4c88;
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
                        <div class="container-fluid px-5 my-5" style="max-width: 800px;">
                            <div class="card shadow fade-in">
                                <div class="card-header d-flex justify-content-between align-items-center">
                                    <h5 class="mb-0">
                                        <i class="fas fa-user-edit me-2"></i>Edit User
                                    </h5>
                                    <a href="/admin/user" class="btn btn-danger btn-sm text-white btn-custom">
                                        <i class="fas fa-arrow-left me-1"></i> Back to List
                                    </a>
                                </div>
                                <div class="card-body">
                                    <form action="/admin/user/edit" method="post">
                                        <input type="hidden" name="id" value="${user.id}" />

                                        <div class="mb-3">
                                            <label class="form-label">Full Name</label>
                                            <input type="text" name="fullName" class="form-control"
                                                value="${user.fullName}" required>
                                        </div>

                                        <div class="mb-3">
                                            <label class="form-label">Email</label>
                                            <input type="email" name="email" class="form-control" value="${user.email}"
                                                disabled required>
                                        </div>

                                        <div class="mb-3">
                                            <label class="form-label">Address</label>
                                            <input type="text" name="address" class="form-control"
                                                value="${user.address}">
                                        </div>

                                        <div class="mb-3">
                                            <label class="form-label">Phone</label>
                                            <input type="text" name="phone" class="form-control" value="${user.phone}">
                                        </div>

                                        <div class="d-flex justify-content-between">
                                            <a href="/admin/user" class="btn btn-secondary btn-custom">
                                                <i class="fas fa-times me-1"></i> Cancel
                                            </a>
                                            <button type="submit" class="btn btn-success btn-custom">
                                                <i class="fas fa-save me-1"></i> Update
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </main>
                </div>
            </div>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        </body>

        </html>