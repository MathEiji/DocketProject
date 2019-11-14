<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Cartorio System</title>
</head>
<body>
<div>
    <h1>Cartorio System</h1>
    <h3>by Matheus Eiji</h3>
</div>

<div>
    <form action="editCartorio=${null}">
        <input type="submit" value="Cadastrar">
    </form>

    <form action="procurarCartorio">
        <input type="submit" value="Procurar">
    </form>

</div>

<div>
    <h3>Cartorios</h3>
    <table border="1">
        <thead>
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>Editar</th>
                <th>Deletar</th>
            </tr>
        </thead>
        <tbody>
            <c:if test="${not empty list}">
                <c:forEach var="cartorio" items="${list}">
                    <tr>
                        <td><c:out value="${cartorio.getId()}"/></td>
                        <td><c:out value="${cartorio.getNome()}"/></td>
                        <td>
                            <form action="editCartorio=${cartorio.getId()}">
                                <input type="submit" value="Editar">
                            </form>
                        </td>
                        <td>
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

</body>
</html>