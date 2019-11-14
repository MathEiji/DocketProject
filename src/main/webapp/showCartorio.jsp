<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cartorio System</title>
    <style>
        .container {
            width: 80%;
            display: grid;
            margin: auto;
            padding-bottom: 2%;
            background-color: lightgray;
            border-radius: 20px;
        }
        .system-name {
            margin: auto;
            text-align: center;
        }
        .system-buttons {
            margin: 2% auto 2% auto;
            display: inline-block;
        }
        .form-cartorio {
            margin: auto;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="system-name">
        <h1>Cartorio System</h1>
        <h3>by Matheus Eiji</h3>
    </div>

    <div class="system-buttons">
        <form action="/">
            <input type="submit" value="Voltar">
        </form>
    </div>

    <div class="form-cartorio">
        <h3>Cartorios encontrados:</h3>
        <div>
            <c:choose>
                <c:when test="${not empty list}">
                    <c:forEach var="cartorio" items="${list}">
                        <div>ID: <c:out value="${cartorio.getId()}"/></div>
                        <div>Nome: <c:out value="${cartorio.getNome()}"/></div><br>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <h3>Nenhum cartorio foi encontrado.</h3>
                </c:otherwise>
            </c:choose>
        </div>
    </div>

</div>

</body>
</html>