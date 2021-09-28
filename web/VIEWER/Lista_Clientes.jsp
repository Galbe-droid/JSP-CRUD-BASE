<%-- 
    Document   : Lista_Clientes
    Created on : 13/09/2021, 10:50:48
    Author     : gabri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOClient"%>
<%@page import="MODEL.Client"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Lista_Clientes.jsp" method="post">
            <label>Pesquisa por nome</label>
            <br>
            <input type="text" name="clientName">
            <input type="submit" value="Pesquisar">
            <br>
        </form>          
    </body>
</html>


<%
    out.print("<table border='1'>");
    out.print("<tr>");
        out.print("<th>Id</th>");
        out.print("<th>Nome</th>");
        out.print("<th>Email</th>");
        out.print("<th>Consumo</th>");
        out.print("<th>Editar</th>");
        out.print("<th>Excluir</th>");
    out.print("</tr>");
    
    DAOClient clientDAO = new DAOClient();
    if(request.getParameter("clientName") == "" || request.getParameter("clientName") == null)
    {
        ArrayList<Client> ListaClientes = clientDAO.readClient();
        for (int i = 0; i < ListaClientes.size(); i++) {
            if(ListaClientes.get(i).getIsDeleted() == 0)
            {
                out.print("<tr>");
                   out.print("<td>"+ListaClientes.get(i).getId()+"</td>");
                   out.print("<td>"+ListaClientes.get(i).getName()+"</td>");
                   out.print("<td>"+ListaClientes.get(i).getEmail()+"</td>");
                   out.print("<td>"+ListaClientes.get(i).getSpend()+"</td>");
                   out.print("<td><a href='Update_Cliente.jsp?cId=" + ListaClientes.get(i).getId()
                                                                    + "&cName=" + ListaClientes.get(i).getName()
                                                                    + "&cEmail=" + ListaClientes.get(i).getEmail()
                                                                    + "&cSpend=" + ListaClientes.get(i).getSpend()
                                                                    + "'>Editar</a></td>");
                   out.print("<td><a href='Delete_Cliente.jsp?cId=" + ListaClientes.get(i).getId()
                                                                    + "&cName=" + ListaClientes.get(i).getName()
                                                                    + "&cEmail=" + ListaClientes.get(i).getEmail()
                                                                    + "&cSpend=" + ListaClientes.get(i).getSpend()
                                                                    + "'>Excluir</a></td>");
            }               
        }        
    }
    else
    {
        ArrayList<Client> Lista_Cliente_Por_Nome = clientDAO.readClientByName(request.getParameter("clientName"));
        for (int i = 0; i < Lista_Cliente_Por_Nome.size(); i++) {
            if(Lista_Cliente_Por_Nome.get(i).getIsDeleted() == 0)
            {
                out.print("<tr>");
                   out.print("<td>"+Lista_Cliente_Por_Nome.get(i).getId()+"</td>");
                   out.print("<td>"+Lista_Cliente_Por_Nome.get(i).getName()+"</td>");
                   out.print("<td>"+Lista_Cliente_Por_Nome.get(i).getEmail()+"</td>");
                   out.print("<td>"+Lista_Cliente_Por_Nome.get(i).getSpend()+"</td>");
                   out.print("<td><a href='Update_Cliente.jsp?cId=" + Lista_Cliente_Por_Nome.get(i).getId()
                                                                    + "&cName=" + Lista_Cliente_Por_Nome.get(i).getName()
                                                                    + "&cEmail=" + Lista_Cliente_Por_Nome.get(i).getEmail()
                                                                    + "&cSpend=" + Lista_Cliente_Por_Nome.get(i).getSpend()
                                                                    + "'>Editar</a></td>");
                   out.print("<td><a href='Delete_Cliente.jsp?cId=" + Lista_Cliente_Por_Nome.get(i).getId()
                                                                    + "&cName=" + Lista_Cliente_Por_Nome.get(i).getName()
                                                                    + "&cEmail=" + Lista_Cliente_Por_Nome.get(i).getEmail()
                                                                    + "&cSpend=" + Lista_Cliente_Por_Nome.get(i).getSpend()
                                                                    + "'>Excluir</a></td>");
            }               
        } 
    }
%>