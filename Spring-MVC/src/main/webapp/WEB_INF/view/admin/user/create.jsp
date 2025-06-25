<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8" />
                <title>Create User</title>
                <meta name="viewport" content="width=device-width, initial-scale=1" />

                <!-- Styles -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

                <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

                <!-- Dùng Jquery để upload ảnh -->
                <script>
                    $(document).ready(function () {
                        $('#avatarFile').change(function (e) {
                            const file = e.target.files[0];
                            if (file && file.type.startsWith('image/')) {
                                const reader = new FileReader();

                                reader.onload = function (e) {
                                    $('#avatarPreview').attr('src', e.target.result).show();
                                };

                                reader.readAsDataURL(file);
                            } else {
                                $('#avatarPreview').hide();
                            }
                        });
                    });
                </script>

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
                            <div class="container-fluid px-5 my-5" style="max-width: 900px;">
                                <div class="card shadow fade-in">
                                    <div class="card-header d-flex justify-content-between align-items-center">
                                        <h5 class="mb-0">
                                            <i class="fas fa-user-plus me-2"></i>Create New User
                                        </h5>
                                        <a href="/admin/user" class="btn btn-danger btn-sm text-white btn-custom">
                                            <i class="fas fa-arrow-left me-1"></i> Back to List
                                        </a>
                                    </div>
                                    <div class="card-body">
                                        <form:form method="post" action="/admin/user/create1" modelAttribute="newUser"
                                            enctype="multipart/form-data">
                                            <!-- dòng trên để upload file -->
                                            <div class="row">
                                                <!-- Cột trái -->
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label class="form-label">Email</label>
                                                        <form:input type="email" class="form-control" path="email" />
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Password</label>
                                                        <form:input type="password" class="form-control"
                                                            path="password" />
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Phone Number</label>
                                                        <form:input type="text" class="form-control" path="phone" />
                                                    </div>
                                                </div>

                                                <!-- Cột phải -->
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label class="form-label">Full Name</label>
                                                        <form:input path="fullName" type="text" class="form-control" />
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Role</label>
                                                        <form:select path="role.name" class="form-select"
                                                            id="roleSelect">
                                                            <form:option value="" label="-- Select Role --" />
                                                            <form:option value="1" label="Admin" />
                                                            <form:option value="2" label="User" />
                                                        </form:select>
                                                    </div>

                                                    <div class="mb-3">
                                                        <label class="form-label">Avatar</label>
                                                        <input type="file" name="avatarFile" id="avatarFile"
                                                            class="form-control" accept="image/*">
                                                        <img id="avatarPreview" src="#" alt="Avatar Preview"
                                                            style="max-height: 200px; margin-top: 10px; display: none;"
                                                            class="rounded shadow" />
                                                    </div>

                                                </div>

                                                <!-- Địa chỉ chiếm nguyên dòng -->
                                                <div class="col-md-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">Address</label>
                                                        <form:input type="text" class="form-control" path="address" />
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="d-flex justify-content-between">
                                                <a href="/admin/user" class="btn btn-secondary btn-custom">
                                                    <i class="fas fa-times me-1"></i> Cancel
                                                </a>
                                                <button type="submit" class="btn btn-success btn-custom">
                                                    <i class="fas fa-check me-1"></i> Create
                                                </button>
                                            </div>
                                        </form:form>

                                    </div>
                                </div>
                            </div>
                        </main>
                    </div>
                </div>

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            </body>

            </html>