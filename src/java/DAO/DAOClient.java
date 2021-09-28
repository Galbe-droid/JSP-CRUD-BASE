/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import MODEL.Client;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author gabri
 */
public class DAOClient {
    
    private Connection con; 
    private PreparedStatement pst;
    private Statement state;
    private ResultSet result;
    private final ArrayList<Client> clientList = new ArrayList<>();
    
    
    public DAOClient()
    {
        con = new Connect().getConnection();
    }
    
    public void createClient(Client client)
    {
        String sql = "INSERT INTO Clients (name, email, spend) VALUES (?,?,?)";
        
        try{
            pst = con.prepareStatement(sql);
            
            pst.setString(1, client.getName());
            pst.setString(2, client.getEmail());
            pst.setString(3, client.getSpend());            
            
            pst.execute();
            pst.close();
            
        }catch(Exception e)
        {
            throw new RuntimeException("Error em createClient: " + e);
        }        
    }
    
    public ArrayList<Client> readClient()
    {
        String sql = "SELECT * FROM Clients";
        
        try{
            state = con.createStatement();
            result = state.executeQuery(sql); 
            
            while(result.next())
            {
                Client client = new Client();
                
                client.setId(result.getInt("id"));
                client.setName(result.getString("name"));
                client.setEmail(result.getString("email"));
                client.setSpend(result.getString("spend"));
                client.setIsDeleted(result.getInt("isDeleted"));
                
                clientList.add(client);
            }
        }catch(SQLException e)
        {
            throw new RuntimeException("Erro em readClient: " + e);
        }
        
        return clientList;
    }
    
    public ArrayList<Client> readClientByName(String name)
    {
        
        if (name.equals("")) {
            return null;
        }
        
        String sql = "SELECT * FROM Clients WHERE Name LIKE '%" + name + "%'";
        
        try{
            state = con.createStatement();
            result = state.executeQuery(sql);
            
            while(result.next())
            {
                Client client = new Client();
                
                client.setId(result.getInt("Id"));
                client.setName(result.getString("Name"));
                client.setEmail(result.getString("Email"));
                client.setSpend(result.getString("Spend"));
                client.setIsDeleted(result.getInt("isDeleted"));
                
                clientList.add(client);
            }
            
        }catch(Exception e)
        {
            throw new RuntimeException("Erro em readClientByName: " + e);
        }
        return clientList;
    }
    
    public Client updateClient(Client client)
    {
        String sql = "UPDATE Clients SET name = ?, email = ?, spend = ? WHERE Id = ?";
        
        try{
            pst = con.prepareStatement(sql);
            
            pst.setString(1, client.getName());
            pst.setString(2, client.getEmail());
            pst.setString(3, client.getSpend());
            pst.setInt(4, client.getId());
            
            pst.execute();
            pst.close();           
        }catch(Exception e)
        {
            throw new RuntimeException("Erro em updateClient: " + e);
        }
        
        return client;
    }
    
    public Client deleteClient(Client client)
    {
        String sql = "UPDATE Clients SET isDeleted = ? WHERE Id = ?";
        
        try{
            pst = con.prepareStatement(sql);
            
            pst.setInt(1, client.getIsDeleted());
            pst.setInt(2, client.getId());
            
            pst.execute();
            pst.close();  
        }catch(Exception e)
        {
            throw new RuntimeException("Erro em deleteClient: " + e);
        }
        
        return client;
    }
    
}
