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
    <form action="/">
        <input type="submit" value="Voltar">
    </form>
</div>

<div>
    <h3>Cartorio encontrado:</h3>
</div>

<div>
    <c:choose>
        <c:when test="${not empty list}">
            <c:forEach var="cartorio" items="${list}">
                <div>ID: <c:out value="${cartorio.getId()}"/></div>
                <div>Nome: <c:out value="${cartorio.getNome()}"/></div>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <h3>Nenhum cartorio foi encontrado.</h3>
        </c:otherwise>
    </c:choose>
</div>

</body>
</html>