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
        <form action="addCartorio">
            <c:choose>
                <c:when test="${ca.getId() == null}">
                    <h3>Cadastrar Cartorios</h3>
                    <span>Nome: <input type="text" name="nome"></span>
                </c:when>
                <c:otherwise>
                    <h3>Editar Cartorio</h3>
                    <input type="text" name="id" value="${ca.getId()}" hidden>
                    <span>Nome: <input type="text" name="nome" value="${ca.getNome()}"></span>
                </c:otherwise>
            </c:choose>
            <div class="system-buttons"><input type="submit"></div>
        </form>
    </div>
</div>

</body>
</html>