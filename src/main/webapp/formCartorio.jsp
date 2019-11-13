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
    <h3>Adicionar Cartorios</h3>
    <form action="addCartorio">
        <input type="text" name="id"><br>
        <input type="text" name="nome"><br>
        <input type="submit"><br>
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