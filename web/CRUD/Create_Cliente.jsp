<%-- 
    Document   : Create_Cliente
    Created on : 13/09/2021, 10:09:23
    Author     : gabri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOClient"%>
<%@page import="MODEL.Client"%>

<%
    try{
        DAOClient clientDAO = new DAOClient();
        Client client = new Client();
        
        client.setName(request.getParameter("clientName"));
        client.setEmail(request.getParameter("clientEmail"));
        client.setSpend(request.getParameter("clientSpend"));
        
        clientDAO.createClient(client);
        
        response.sendRedirect("../index.jsp");
        
    }catch(Exception e)
    {
        throw new Exception("Erro em Create_Client.jsp: " + e);
    }
%>