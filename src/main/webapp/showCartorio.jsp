<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cartorio System</title>
</head>
<body>
<div>
    <h1>Cartorio System</h1>
    <h3>by Matheus Eiji</h3>
</div>

<div>
    <c:choose>
        <c:when test="not empty cartorio">
            <h3>Cartorio encontrado:</h3>
            <div>Id: ${cartorio.id}</div>
            <div>${cartorio.nome}</div>
        </c:when>
        <c:otherwise>
            <h3>Nenhum cartorio foi encontrado.</h3>
        </c:otherwise>
    </c:choose>
</div>

</body>
</html>