/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cooperativa;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author ronald.gutierrez_ama
 */
public class Conexion {
    
    public static Connection conexionDB(){
        String url = "jdbc:oracle:thin:@localhost:1521:XE";
        Connection conn;
        try {
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bases", "oracle");
            return conn;
        } catch (SQLException ex) {
            System.out.println(ex.toString());
            return null;
        }
    }
}
