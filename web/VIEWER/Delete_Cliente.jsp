<%-- 
    Document   : Delete_Cliente
    Created on : 14/09/2021, 00:49:00
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
        <h1>Excluir Cliente</h1>
        <form action="../CRUD/Delete_Cliente.jsp" method="post">
            <table>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                </tr>
                <tr>
                    <td><input type="number" name="cId" value="<%=request.getParameter("cId")%>" readonly></td>
                    <td><input type="text" name="cName" placeholder="<%=request.getParameter("cName")%>" readonly></td>
                    <td><input type="email" name="cEmail" placeholder="<%=request.getParameter("cEmail")%>" readonly></td>
                    <td><input type="text" name="cSpend" placeholder="<%=request.getParameter("cSpend")%>" readonly></td>
                </tr>
                <input type="submit" value="Deletar">
                <a href="Lista_Clientes.jsp">Voltar</a>
            </table>
        </form>
    </body>
</html>
