<%-- 
    Document   : Update_Cliente
    Created on : 13/09/2021, 14:00:18
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
        cliente.setName(request.getParameter("cName"));
        cliente.setEmail(request.getParameter("cEmail"));
        cliente.setSpend(request.getParameter("cSpend"));
        
        clientDAO.updateClient(cliente);
        
        response.sendRedirect("../index.jsp");
        
    }catch(Exception e)
    {
        throw new RuntimeException("Erro em CRUD/Update_Cliente: " + e);
    }
%>