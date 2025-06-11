<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <title>View User</title>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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

        <body>
            <div class="container-fluid px-5 my-5" style="max-width: 1200px; margin: auto;">
                <div class="card shadow fade-in">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h5 class="mb-0">
                            <i class="fas fa-user me-2"></i>User Details
                        </h5>
                        <a href="/admin/user" class="btn btn-secondary btn-sm">
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
                                    <c:out value="${errorMessage != null ? errorMessage : 'User not found!'}" />
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        </body>

        </html>