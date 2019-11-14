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
        <h3>Procurar Cartorio</h3>
        <form action="getCartorio">
            <input type="text" name="nome">
            <input type="submit"><br>
        </form>
    </div>
</div>

</body>
</html>