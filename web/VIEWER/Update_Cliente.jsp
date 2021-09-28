<%-- 
    Document   : Update_Cliente
    Created on : 13/09/2021, 14:00:18
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
        <h1>Atualizar Cliente</h1>
        
        <form method="post" action="../CRUD/Update_Cliente.jsp">
            <table>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>E-mail</th>
                    <th>Compras</th>
                </tr>
                <tr>
                    <td><input type="number" name="cId" value="<%=request.getParameter("cId")%>" readonly></td>
                    <td><input type="text" name="cName" placeholder="<%=request.getParameter("cName")%>" required></td>
                    <td><input type="email" name="cEmail" placeholder="<%=request.getParameter("cEmail")%>" required></td>
                    <td><input type="text" name="cSpend" placeholder="<%=request.getParameter("cSpend")%>" required></td>
                </tr>
            </table>
            <input type="submit" value="Atualizar">
            <a href="Lista_Clientes.jsp">Voltar</a>
        </form>
    </body>
</html>
