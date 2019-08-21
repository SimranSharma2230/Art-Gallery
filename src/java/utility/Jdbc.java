package utility;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author dell
 */
public class Jdbc {
    
    public static Connection getConnection()
    {
        Connection con=null;
        
        String url="jdbc:mysql://localhost:3306/";
        String dbName="ArtGallery";
        String driver="com.mysql.jdbc.Driver";
        
        String uname="root";
        String pass="mysql";
        
        
        try
        {
            Class.forName(driver).newInstance();
            con=DriverManager.getConnection(url+dbName ,uname,pass);
        }
        catch(Exception e)
        {
            System.out.println("ERROR in Jdbc: " + e);
        }
        return con;
    }
    
}
