package database;

import bookdatabaseapplication.Output;
import query.Query;
import query.QueryManager;
import utility.NullReferenceException;
import utility.InvalidKeywordException;
import utility.EmptyKeywordsArrayException;
import java.sql.Date;
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
                        case "BOOKTITLE":
                            String title = result.getString("BookTitle");
                            output.add(title);
                            break;
                        case "DATEREAD":
                            Date date = result.getDate("DateRead");
                            output.add(date.toString());
                            break;
                        case "AUTHORNAME":
                            String author = result.getString("AuthorName");
                            output.add(author);
                            break;
                        case "ISBN":
                            String isbn = result.getString("ISBN");
                            output.add(isbn);
                            break;
                        case "NumBooksRead":
                            String sum = Integer.toString(result.getInt("NumBooksRead"));
                            output.add(sum);
                            break;
                        case "PAGECOUNT":
                            String lowest = Integer.toString(result.getInt("PAGECOUNT"));
                            output.add(lowest);
                            break;
                        case "GENRE":
                            String genre = result.getString("GENRE");
                            output.add(genre);
                            break;
                        case "AuthorFrequency":
                            String authorFrequency = result.getString("AuthorFrequency");
                            output.add(authorFrequency);
                            break;
                        case "GenreFrequency":
                            String frequency = Integer.toString(result.getInt("GenreFrequency"));
                            output.add(frequency);
                            break;
                        case "AveragePageCount":
                            String averageCount = result.getString("AveragePageCount");
                            output.add(averageCount);
                            break;
                        case "AverageBookPerYear":
                            String averageBookPerYear = result.getString("AverageBookPerYear");
                            output.add(averageBookPerYear);
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
