<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="models.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<c:choose>
    <c:when test="${not empty user}">

        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark px-4">
            <div class="container-fluid">

                <span class="navbar-brand fw-semibold">
                    University Management
                </span>

                <div class="d-flex align-items-center ms-auto text-white">
                    <span class="me-3">
                        Welcome, <strong>${user.fullName}</strong>
                    </span>

                    <a href="search.jsp" class="btn btn-outline-light btn-sm me-2">
                        Search
                    </a>

                    <a href="MainController?action=logout" 
                       class="btn btn-danger btn-sm">
                        Logout
                    </a>
                </div>

            </div>
        </nav>

    </c:when>

    <c:otherwise>
        <c:redirect url="login.jsp"/>
    </c:otherwise>
</c:choose>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>