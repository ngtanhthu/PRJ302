<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>University Form</title>

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-box {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.05);
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="form-box mx-auto" style="max-width: 800px;">

        <h4 class="fw-bold mb-4">
            <c:choose>
                <c:when test="${mode == 'update'}">
                    Update University
                </c:when>
                <c:otherwise>
                    Add University
                </c:otherwise>
            </c:choose>
        </h4>

        <form action="MainController" method="POST">
            <input type="hidden" 
                   name="action" 
                   value="${mode=='update'?'saveUpdateUniversity':'addUniversity'}"/>

            <div class="row">

                <div class="col-md-6 mb-3">
                    <label class="form-label">ID</label>
                    <input type="text" 
                           name="id" 
                           value="${u.id}" 
                           class="form-control"
                           ${mode == 'update' ? 'readonly' : ''}/>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Name</label>
                    <input type="text" 
                           name="name" 
                           value="${u.name}" 
                           class="form-control"/>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Short Name</label>
                    <input type="text" 
                           name="shortName" 
                           value="${u.shortName}" 
                           class="form-control"/>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Founded Year</label>
                    <input type="number" 
                           name="foundedYear" 
                           value="${u.foundedYear}" 
                           class="form-control"
                           min="0"/>
                </div>

                <div class="col-12 mb-3">
                    <label class="form-label">Description</label>
                    <input type="text" 
                           name="description" 
                           value="${u.description}" 
                           class="form-control"/>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Address</label>
                    <input type="text" 
                           name="address" 
                           value="${u.address}" 
                           class="form-control"/>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">City</label>
                    <input type="text" 
                           name="city" 
                           value="${u.city}" 
                           class="form-control"/>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Region</label>
                    <input type="text" 
                           name="region" 
                           value="${u.region}" 
                           class="form-control"/>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Type</label>
                    <input type="text" 
                           name="type" 
                           value="${u.type}" 
                           class="form-control"/>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Total Students</label>
                    <input type="number" 
                           name="totalStudents" 
                           value="${u.totalStudents}" 
                           class="form-control"
                           min="0"/>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Total Faculties</label>
                    <input type="number" 
                           name="totalFaculties" 
                           value="${u.totalFaculties}" 
                           class="form-control"
                           min="0"/>
                </div>

                <div class="col-12 mb-3 form-check">
                    <input type="checkbox" 
                           class="form-check-input" 
                           name="isDraft"
                           ${u.isDraft ? 'checked' : ''}/>
                    <label class="form-check-label">
                        Draft Mode
                    </label>
                </div>

            </div>

            <div class="d-flex justify-content-between">
                <a href="search.jsp" class="btn btn-secondary">
                    Back
                </a>

                <c:choose>
                    <c:when test="${mode == 'update'}">
                        <button type="submit" class="btn btn-warning">
                            Update
                        </button>
                    </c:when>
                    <c:otherwise>
                        <button type="submit" class="btn btn-success">
                            Add
                        </button>
                    </c:otherwise>
                </c:choose>
            </div>

        </form>

        <!-- Message -->
        <c:if test="${not empty msg}">
            <div class="alert alert-success mt-3 mb-0">
                ${msg}
            </div>
        </c:if>

        <c:if test="${not empty error}">
            <div class="alert alert-danger mt-3 mb-0">
                ${error}
            </div>
        </c:if>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>