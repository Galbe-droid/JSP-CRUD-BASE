<%-- 
    Document   : Cadastro_Cliente
    Created on : 13/09/2021, 09:32:42
    Author     : gabri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cadastro Cliente</h1>
        <br>
        <form action="../CRUD/Create_Cliente.jsp" method="post">
            <table>
                <tr>
                    <th>Nome</th>
                    <th>E-mail</th>
                    <th>Compras</th>
                </tr>
                <tr>
                    <td><input type="text" name="clientName"></td>
                    <td><input type="email" name="clientEmail"></td>
                    <td><input type="text" name="clientSpend"></td>
                </tr>
            </table>
            <br>
            <input type="submit" value="Adicionar">
            <a href="index.jap">Voltar</a>
        </form>
    </body>
</html>
