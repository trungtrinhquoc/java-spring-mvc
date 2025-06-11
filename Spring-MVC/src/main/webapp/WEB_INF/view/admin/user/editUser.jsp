<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Edit User</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>

        <body>
            <div class="container mt-5" style="max-width: 700px;">
                <div class="card shadow">
                    <div class="card-header bg-primary text-white">
                        <h5>Edit User</h5>
                    </div>
                    <div class="card-body">
                        <form action="/admin/user/edit" method="post">
                            <input type="hidden" name="id" value="${user.id}" />

                            <div class="mb-3">
                                <label class="form-label">Full Name</label>
                                <input type="text" name="fullName" class="form-control" value="${user.fullName}"
                                    required>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Email</label>
                                <input type="email" name="email" class="form-control" value="${user.email}" required>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Address</label>
                                <input type="text" name="address" class="form-control" value="${user.address}">
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Phone</label>
                                <input type="text" name="phone" class="form-control" value="${user.phone}">
                            </div>

                            <div class="d-flex justify-content-between">
                                <a href="/admin/user" class="btn btn-secondary">Back</a>
                                <button type="submit" class="btn btn-success">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>