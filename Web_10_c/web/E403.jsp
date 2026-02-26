<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>403 - Access Denied</title>

        <!-- Bootstrap 5 CDN -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

        <style>
            body {
                background-color: #f8f9fa;
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .error-box {
                max-width: 500px;
            }
        </style>
    </head>
    <body>
        <div class="card shadow-lg border-0 error-box">
            <div class="card-body text-center p-5">
                <h1 class="display-4 text-danger fw-bold">403</h1>
                <h4 class="mb-3">Access Denied</h4>
                <p class="text-muted">
                    Tài khoản của bạn đã bị khóa (status = 0).
                </p>

                <a href="login.jsp" class="btn btn-primary mt-3">
                    Quay về trang đăng nhập
                </a>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>