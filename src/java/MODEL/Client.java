/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODEL;

public class Client {
    private int id;
    private String name;
    private String email;
    private String spend;
    private int isDeleted;
    
    public int getId()
    {
        return this.id;
    }
    
    public void setId(int clientId)
    {
        this.id = clientId;
    }
      
    public String getName()
    {
        return this.name;
    }
    
    public void setName(String clientName)
    {
        this.name = clientName;
    }
    
    public String getEmail()
    {
        return this.email;
    }
    
    public void setEmail(String clientEmail)
    {
        this.email = clientEmail;
    }
    
    public String getSpend()
    {
        return this.spend;
    }
    
    public void setSpend(String clientSpend)
    {
        this.spend = clientSpend;
    } 
    
    public void setIsDeleted(int deleted)
    {
        this.isDeleted = deleted;
    }
    
    public int getIsDeleted()
    {
        return isDeleted;
    }
}
