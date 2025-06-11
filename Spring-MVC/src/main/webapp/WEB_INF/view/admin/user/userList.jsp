<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <title>User Management</title>
            <meta name="viewport" content="width=device-width, initial-scale=1">

            <!-- Bootstrap 5 -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
            <!-- Font Awesome -->
            <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">

            <style>
                body {
                    background-color: #f4f6f8;
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
                    background: linear-gradient(135deg, #0d6efd, #0b5ed7);
                    color: white;
                    border-bottom: 1px solid #dee2e6;
                }

                .btn-custom {
                    padding: 4px 10px;
                    font-size: 0.85rem;
                }

                .table-sm th,
                .table-sm td {
                    padding: 0.5rem 0.75rem;
                    vertical-align: middle;
                }

                .table-hover tbody tr:hover {
                    background-color: #eaf2ff;
                    transition: 0.3s;
                }
            </style>
        </head>

        <body>

            <div class="container-fluid px-5 my-5" style="max-width: 1200px; margin: auto;">
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
                        <table class="table table-sm table-striped table-hover mb-0">
                            <thead class="table-light text-dark">
                                <tr>
                                    <th style="width: 10%">ID</th>
                                    <th style="width: 30%">Full Name</th>
                                    <th style="width: 30%">Email</th>
                                    <th style="width: 30%">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="u" items="${user1}" varStatus="loop">
                                    <tr>
                                        <td>${loop.index + 1}</td>
                                        <!-- STT ID ảo -->
                                        <!-- <td>${u.id}</td> -->
                                        <td>${u.fullName}</td>
                                        <td>${u.email}</td>
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

            <!-- Bootstrap JS -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        </body>

        </html>