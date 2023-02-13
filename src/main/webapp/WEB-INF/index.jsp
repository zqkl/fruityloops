<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tacos</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body>
    <div class="container">
        <h1>Fruit Store</h1>
        <table class="table table-dark">
            <thead>
            <tr>
                <th scope="col">Fruit Name</th>
                <th scope="col">Fruit Price</th>
            </tr>
            </thead>
            <tbody>
                <c:forEach var="fruit" items="${fruits}">
                <tr>
                        <td><c:out value="${fruit.name}"></c:out></td>
                        <td><c:out value="${fruit.price}"></c:out></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>