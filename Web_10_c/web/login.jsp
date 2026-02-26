<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>

        <!-- Bootstrap 5 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

        <style>
            body {
                background: linear-gradient(135deg, #e3f2fd, #ffffff);
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .login-card {
                width: 100%;
                max-width: 400px;
            }
        </style>
    </head>
    <body>

        <div class="card shadow-lg border-0 login-card">
            <div class="card-body p-4">
                <h3 class="text-center mb-4 fw-bold">Đăng nhập</h3>

                <form action="MainController" method="post">
                    <input type="hidden" name="action" value="login"/>

                    <div class="mb-3">
                        <label class="form-label">Username</label>
                        <input type="text" 
                               name="txtUsername" 
                               class="form-control" 
                               required />
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Password</label>
                        <input type="password" 
                               name="txtPassword" 
                               class="form-control" 
                               required />
                    </div>

                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">
                            Login
                        </button>
                    </div>
                </form>

                <!-- Thông báo lỗi -->
                <c:if test="${not empty message}">
                    <div class="alert alert-danger mt-3 mb-0 text-center">
                        ${message}
                    </div>
                </c:if>

            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>