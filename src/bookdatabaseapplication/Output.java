package bookdatabaseapplication;

import java.util.ArrayList;
/**
 *
 * @author Ben Huff
 */
public class Output {
    private static Output instance;
    
    private Output(){}
    
    public static Output getInstance(){
        if(instance == null)
            instance = new Output();
        return instance;
    }
    
    public void printOutput(String query, ArrayList<String> output){
        switch (query) {
            case "1":
                System.out.format("\nANSWER: Ben has read a total of %s books.\n\n", output.get(0));
                break;
            case "2":
                System.out.print("\nANSWER: Ben has read the following books:\n\n");
                for(String s : output)
                    System.out.println("-" + s);
                System.out.println();
                break;
            case "3":
                System.out.format("\nANSWER: The following books have the highest rating from Ben:\n\n");
                for(String s : output)
                    System.out.println("-" + s);
                System.out.println();
                break;
            case "4":
                System.out.format("\nANSWER: The following books have the lowest rating from Ben:\n\n");
                for(String s : output)
                    System.out.println("-" + s);
                System.out.println();
                break;
            case "5":
                String bookTitle = output.get(0);
                String bookLength = output.get(1);
                System.out.format("\nANSWER: %s is the shortest book Ben's read -- %s pages.\n\n", bookTitle, bookLength);
                break;
            case "6":
                bookTitle = output.get(0);
                bookLength = output.get(1);
                System.out.format("\nANSWER: %s is the longest book Ben's read -- %s pages.\n\n", bookTitle, bookLength);
                break;
            case "7":
                System.out.format("\nANSWER: Ben has read the following books more than once:\n\n");
                for(String s : output)
                    System.out.println("-" + s);
                System.out.println();
                break;
            case "8":
                System.out.format("\nANSWER: Ben has read more than one book from the following authors:\n\n");
                for(String s : output)
                    System.out.println("-" + s);
                System.out.println();
                break;
            case "9":
                String genre = output.get(0);
                String numberOfBooks = output.get(1);
                System.out.format("\nANSWER: %s is the genre Ben has read the most -- %s books in total.\n\n", genre, numberOfBooks);
                break;
            case "10":
                System.out.println("\nANSWER: The following list:\n");
                for(int i = 0; i < output.size(); i+=2)
                    System.out.format("-%s: %s\n", output.get(i), output.get(i+1));
                System.out.println();
                break;
            default:
                System.out.println("ERROR--keyword not valid.\n\n");        
        }      
    }  
    
    public void printDatabaseMenu(){
        System.out.print("Welcome to Ben's Book Database.\n\n"
                + "What would you like to know about the books "
                    + "Ben's read?\n"
                + "\n1) How many?"
                + "\n2) Which ones?"
                + "\n3) Highest ratings?"
                + "\n4) Lowest ratings?"
                + "\n5) The shortest?"
                + "\n6) The longest?"
                + "\n7) Read more than once?"
                + "\n8) Authors he has the most books from?"
                + "\n9) Genre read the most?"
                + "\n10) How many books has he read from each author?"
                + "\n\nEnter a number 1 through 10: ");
    }
    
}
