package bookdatabaseapplication;

import java.util.ArrayList;
import java.util.Scanner;
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
            case "1:1":
                System.out.print("\nANSWER: Ben has read the following "
                        + "books:\n\n");
                for(String s : output)
                    System.out.println("-" + s);
                System.out.println();
                break;
            case "1:2":
                System.out.format("\nANSWER: Ben has read the following books "
                        + "more than once:\n\n");
                for(String s : output)
                    System.out.println("-" + s);
                System.out.println();
                break;
            case "2:1":
                System.out.println("\nANSWER: Ben has read books from the "
                        + "following authors:\n\n");
                for(String s : output)
                    System.out.println("-" + s);
                System.out.println();
                break;
            case "2:2":
                System.out.format("\nANSWER: Ben has read %s the most -- %s "
                        + "books total.\n", output.get(0), output.get(1));
                System.out.println();
                break;
            case "3:1":
                System.out.println("\nANSWER: Ben has read the following "
                        + "genres:\n\n");
                for(String s: output)
                    System.out.println("-" + s);
                System.out.println();
                break;
            case "3:2":
                System.out.format("\nANSWER: %s is the genre Ben has read "
                        + "the most -- %s books in total.\n\n", output.get(0)
                        , output.get(1));
                break;
            case "4:1":
                System.out.format("\nANSWER: The following books have "
                        + "a 5 star rating from Ben:\n\n");
                for(String s : output)
                    System.out.println("-" + s);
                System.out.println();
                break;
            case "4:2":
                System.out.format("\nANSWER: The following books have less "
                        + "than a 3 star rating from Ben:\n\n");
                for(String s : output)
                    System.out.println("-" + s);
                System.out.println();
                break;
            case "5:1":
                System.out.format("\nANSWER: Ben has read a total of %s "
                        + "books.\n\n", output.get(0));
                break;
            case "5:2":
                System.out.format("\nANSWER: Ben reads an average of %s books "
                        + "a year.\n\n", output.get(0));
                break;
            case "5:3":
                System.out.format("\nANSWER: %s is the longest book Ben's "
                        + "read -- %s pages.\n\n", output.get(0), output.get(1));
                break;
             case "5:4":
                System.out.format("\nANSWER: %s is the shortest book Ben's "
                        + "read -- %s pages.\n\n", output.get(0), output.get(1));
                break;
             case "5:5":
                 System.out.format("\nANSWER: On average, the length of books "
                         + "Ben reads is %s pages.\n\n", output.get(0));
                break;
            default:
                System.out.println("ERROR--keyword not valid.\n\n"); 
                
        }      
    }  
    
    public StringBuilder printDatabaseMenu(){
        boolean wasInvalid = false;
        String input;
        Scanner keyboard;
        do {
        System.out.print("Welcome to Ben's Book Database.\n\n"
                + "How would you like to begin your query?\n"
                + "\n1) Title"
                + "\n2) Author"
                + "\n3) Genre"
                + "\n4) Rating"
                + "\n5) Other"
                + "\n\nEnter a number 1 through 5: ");
        keyboard = new Scanner(System.in);
        input = keyboard.nextLine();
        
        if(!input.equals("1")&&!input.equals("2")&&
           !input.equals("3")&&!input.equals("4")&&     
           !input.equals("5")){
                    System.out.println("\nInvalid response. Please try again.\n");
                    wasInvalid = true;
                }  else {
                    wasInvalid = false;
                }
        
        } while(wasInvalid);
        
        StringBuilder returnString = new StringBuilder();
        returnString.append(input).append(":");
        
        switch(input) {
            case "1": 
                do {
                System.out.print("\nTitle:\n"
                + "\n1) Which books has he read?"
                + "\n2) Which books has he read more than once?"
                + "\n\nEnter a number 1 through 2: ");
                input = keyboard.nextLine();
                
                if(!input.equals("1")&&!input.equals("2")){
                    System.out.println("\nInvalid response. Please try again.\n");
                    wasInvalid = true;
                }  else {
                    wasInvalid = false;
                }
                
                } while(wasInvalid);
                returnString.append(input);
                break;
            case "2":
                do {
                System.out.print("\nAuthor:\n"
                + "\n1) Which authors has he read?"
                + "\n2) Which author has he read the most from?"
                + "\n\nEnter a number 1 through 2: ");
                input = keyboard.nextLine();
                
                if(!input.equals("1")&&!input.equals("2")){
                    System.out.println("\nInvalid response. Please try again.\n");
                    wasInvalid = true;
                }  else {
                    wasInvalid = false;
                }
                
                } while(wasInvalid);
                returnString.append(input);

                break;
            case "3":
                do {
                System.out.print("\nGenre:\n"
                + "\n1) Which genres has he read?"
                + "\n2) Which genres has he read the most?"
                + "\n\nEnter a number 1 through 2: ");
                input = keyboard.nextLine();
                
                if(!input.equals("1")&&!input.equals("2")){
                    System.out.println("\nInvalid response. Please try again.\n");
                    wasInvalid = true;
                }  else {
                    wasInvalid = false;
                }
                } while(wasInvalid);
                returnString.append(input);
                break;
            case "4":
                do {
                System.out.print("\nRating (1 - 5 stars):\n"
                + "\n1) Which books did he give 5 stars?"
                + "\n2) Which books got 3 stars or less?"
                + "\n\nEnter a number 1 through 2: ");
                input = keyboard.nextLine();
                
                if(!input.equals("1")&&!input.equals("2")){
                    System.out.println("\nInvalid response. Please try again.\n");
                    wasInvalid = true;
                }  else {
                    wasInvalid = false;
                }
                
                } while(wasInvalid);
                returnString.append(input);
                break;
            case "5":
                do {
                System.out.print("\nOther:\n"
                + "\n1) How many books has he read?"
                + "\n2) On average, how many books does he read a year?"
                + "\n3) What's the longest book he's read?"
                + "\n4) What's the shortest book he's read?"
                + "\n5) What's the average length of books he reads?"
                + "\n\nEnter a number 1 through 5: ");
                input = keyboard.nextLine();
                
                if(!input.equals("1")&&!input.equals("2")&&
                   !input.equals("3")&&!input.equals("4")&&
                   !input.equals("5")){
                    System.out.println("\nInvalid response. Please try again.\n");
                    wasInvalid = true;
                }  else {
                    wasInvalid = false;
                }
                
                } while(wasInvalid);
                returnString.append(input);
                break;
            default:
                System.out.println("ERROR--invalid entry.");
        }
        return returnString; 
    }   
}
