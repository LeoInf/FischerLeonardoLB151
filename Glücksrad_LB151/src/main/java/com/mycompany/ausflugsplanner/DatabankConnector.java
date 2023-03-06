package com.mycompany.ausflugsplanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Lefho
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.enterprise.context.ApplicationScoped;
import javax.inject.Named;

@Named(value = "databankConnector")
@ApplicationScoped

public class DatabankConnector {
    
    Statement stmt;

 public static void main(String[] args) throws SQLException{
 
 
         Connection con = null; 
        try 
    { 
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
    
    Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM antworten");
        
         while (rs.next()) {
            int id = rs.getInt("id");
            String antwort = rs.getString("antwort");
    }
 
    } 
        catch ( SQLException e ) 
        { 
          
        }
 
        
 }      
        

        
        }
                



     
 

    

