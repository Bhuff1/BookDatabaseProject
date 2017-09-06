package database;

import bookdatabaseapplication.Output;
import query.Query;
import query.QueryManager;
import utility.NullReferenceException;
import utility.InvalidKeywordException;
import utility.EmptyKeywordsArrayException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author Ben Huff
 */
public class DatabaseQueryFacilitator {
    
    private static DatabaseQueryFacilitator instance;
    
    private DatabaseQueryFacilitator(){}
    
    public static DatabaseQueryFacilitator getInstance(){
        if(instance == null)
            instance = new DatabaseQueryFacilitator();
        return instance;
    }
    
    public void queryDatabase(Statement statement) throws NullReferenceException {
        
        if(statement == null) throw new NullReferenceException();
        
        Scanner keyboard = new Scanner(System.in);
        String response;
        do {
            
            boolean wasInvalid = false;
            
        try {
            ArrayList<String> output = new ArrayList<>();
            response = Output.getInstance().printDatabaseMenu().toString();
            Query query = QueryManager.getInstance().getQuery(response);
            ArrayList<String> keywords = new ArrayList<>();
            
            while(query.hasNextKeyword()){
                keywords.add(query.getKeyword());
            }
            
            if(keywords.isEmpty()) throw new EmptyKeywordsArrayException();
            
            ResultSet result = statement.executeQuery(query.getQuery());
            while(result.next()){
                for(String keyword : keywords) {
                    switch (keyword) {
                        case "author_frequency":
                            output.add(result.getString("author_frequency"));
                            break;
                        case "AUTHOR_NAME":
                            output.add(result.getString("AUTHOR_NAME"));
                            break;
                        case "AUTHOR_NATIONALITY":
                            output.add(result.getString("AUTHOR_NATIONALITY"));
                            break;
                        case "average_book_per_year":
                            output.add(result.getString("average_book_per_year"));
                            break;
                        case "average_page_count":
                            output.add(result.getString("average_page_count"));
                            break;
                        case "DATEREAD":
                            output.add(result.getDate("DateRead").toString());
                            break;
                        case "GENRE":
                            output.add(result.getString("GENRE"));
                            break;
                        case "genre_frequency":
                            output.add(Integer.toString(result.getInt("genre_frequency")));
                            break;
                        case "ISBN":
                            output.add(result.getString("ISBN"));
                            break;
                        case "num_books_read":
                            output.add(Integer.toString(result.getInt("num_books_read")));
                            break;
                        case "num_nationality":
                            output.add(Integer.toString(result.getInt("num_nationality")));
                            break;
                        case "num_books":
                            output.add(Integer.toString(result.getInt("num_books")));
                            break;
                        case "PAGECOUNT":
                            output.add(Integer.toString(result.getInt("PAGECOUNT")));
                            break;
                        case "TITLE":
                            output.add(result.getString("Title"));
                            break;
                        default:
                            throw new InvalidKeywordException();  
                    }
                } 
            }
            Output.getInstance().printOutput(response, output);
        } catch (SQLException | InvalidKeywordException | EmptyKeywordsArrayException e){
            e.printStackTrace();
        }
        
        do {
            System.out.print("More questions? Yes = Y No = N ");
            response = keyboard.nextLine();
            if(!response.equalsIgnoreCase("Y")&&!response.equalsIgnoreCase("N")){
               System.out.println("\nInvalid response. Try again.\n");
               wasInvalid = true; 
            } else {
                wasInvalid = false;
            }
        } while(wasInvalid);
        
        } while(!response.equalsIgnoreCase("N"));
    }
}
