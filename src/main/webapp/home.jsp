<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
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
            margin: auto;
            display: inline-block;
        }
        .tabela {
            margin: auto;
        }
        .tabela-titulo, .table-buttons {
            text-align: center;
        }
        .column-id, .column-editar, .column-deletar {
            padding: 5px 20px 5px 20px;
        }
        .column-nome {
            padding: 5px 40px 5px 40px;
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
        <form action="editCartorio=${null}" class="button-cadastrar">
            <input type="submit" value="Cadastrar">
        </form>

        <form action="procurarCartorio" class="button-procurar">
            <input type="submit" value="Procurar">
        </form>
    </div>

    <div class="tabela">
        <h3 class="tabela-titulo">Cartorios</h3>
        <table border="1">
            <thead>
            <tr>
                <th class="column-id">Id</th>
                <th class="column-nome">Nome</th>
                <th class="column-editar">Editar</th>
                <th class="column-deletar">Deletar</th>
            </tr>
            </thead>
            <tbody>
            <c:if test="${not empty list}">
                <c:forEach var="cartorio" items="${list}">
                    <tr>
                        <td><c:out value="${cartorio.getId()}"/></td>
                        <td><c:out value="${cartorio.getNome()}"/></td>
                        <td class="table-buttons">
                            <form action="editCartorio=${cartorio.getId()}">
                                <input type="submit" value="Editar">
                            </form>
                        </td>
                        <td class="table-buttons">
                            <form action="deleteCartorio=${cartorio.getId()}">
                                <input type="submit" value="Deletar">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>