/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;
import java.sql.*;
import java.util.InputMismatchException;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
/**
 *
 * @author bentom
 */
public class Conexion {
   public DriverManagerDataSource Conectar(){
                 
       
//     DriverManagerDataSource datasource = new DriverManagerDataSource();
      DriverManagerDataSource ds = new DriverManagerDataSource();
     try 
     {
//        datasource.setDriverClassName("com.mysql.jdbc.Driver");
//        datasource.setUrl("jdbc:mysql://localhost:3306/abmpoo2");
//        datasource.setUrl("root");
//        datasource.setPassword("");
         
         
        
      //ds.setDriverClassName(com.mysql.jdbc.Driver.class.getName());
      ds.setDriverClassName("com.mysql.jdbc.Driver");
      ds.setUrl("jdbc:mysql://localhost:3308/abmpoo2");
      ds.setUsername("root");
      ds.setPassword("Password1");
      return ds;
     }
      catch (InputMismatchException e)
     {
           System.out.println("Error");
     }
//     return datasource;
      return ds;
       
   }
    
    
}
