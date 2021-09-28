<%-- 
    Document   : Deletar_Clientes
    Created on : 14/09/2021, 01:00:13
    Author     : gabri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOClient"%>
<%@page import="MODEL.Client"%>

<%
    try{
        Client cliente = new Client();
        DAOClient clientDAO = new DAOClient();
        
        String strId = request.getParameter("cId");
        
        cliente.setId(Integer.parseInt(strId));
        cliente.setName("cName");
        cliente.setEmail(request.getParameter("cEmail"));
        cliente.setSpend(request.getParameter("cSpend"));
        cliente.setIsDeleted(10);
        
        clientDAO.deleteClient(cliente);
        
        response.sendRedirect("../index.jsp");
        
    }catch(Exception e)
    {
        throw new RuntimeException("Erro em CRUD/Delete_Cliente: " + e);
    }
%>