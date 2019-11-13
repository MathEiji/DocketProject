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
    <form action="/">
        <input type="submit" value="Voltar">
    </form>
</div>

<div>
    <h3>Procurar Cartorio</h3>
    <form action="getCartorio">
        <input type="text" name="id">
        <input type="submit"><br>
    </form>
</div>

</body>
</html>