package bookdatabaseapplication;

import database.DatabaseQueryFacilitator;
import database.DatabaseConnector;
import java.sql.Statement;
import utility.NullReferenceException;

/**
 *
 * @author Ben Huff
 */
public class BookDatabaseApplication {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Statement statement = DatabaseConnector.getInstance().connectToDatabase();
        try {
            DatabaseQueryFacilitator.getInstance().queryDatabase(statement);
        } catch (NullReferenceException ex) {
            ex.getMessage();
        }
    }  
}
