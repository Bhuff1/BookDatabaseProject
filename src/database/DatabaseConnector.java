package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


/**
 *
 * @author Ben Huff
 */
public class DatabaseConnector {
    private static DatabaseConnector instance;
    
    private DatabaseConnector() { }
    
    public static DatabaseConnector getInstance() {
        if(instance == null) 
            instance = new DatabaseConnector();
        return instance;     
    }
    
    public Statement connectToDatabase() {
        try {
            Connection connection = DriverManager.getConnection
                                ("jdbc:derby://localhost:1527/BookDatabase", 
                                 "Bhuff1", 
                                 "booksAreAwesome"); 
            return connection.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        } 
        return null;
    }
}
