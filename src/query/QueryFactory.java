package query;

import java.util.ArrayList;

/**
 *
 * @author Ben Huff
 */
public class QueryFactory {
    
    private QueryFactory() {}
    
    public static Query createQuery(String query){
        ArrayList<String> keywords = new ArrayList<>();
        switch (query) {
            case "1":
                keywords.add("NUM_BOOKS_READ");
                return new QueryImplSQL("SELECT COUNT(*) AS NUM_BOOKS_READ "
                                    + "FROM BooksRead", keywords);
            case "2":
                keywords.add("BOOKTITLE");
                return new QueryImplSQL("SELECT BookTitle "
                                    + "FROM BooksRead "
                                    + "ORDER BY BookTitle", keywords);
            case "3":
                keywords.add("BOOKTITLE");
                return new QueryImplSQL("SELECT BookTitle "
                                    + "FROM BooksRead "
                                    + "WHERE Rating = 5 "
                                    + "ORDER BY BookTitle", keywords);
            case "4":
                keywords.add("BOOKTITLE");
                return new QueryImplSQL("SELECT BookTitle "
                                    + "FROM BooksRead "
                                    + "WHERE Rating <= 3"
                                    + "ORDER BY BookTitle", keywords);
            case "5":
                keywords.add("BOOKTITLE");
                keywords.add("PAGECOUNT");
                return new QueryImplSQL("SELECT BookTitle, PAGECOUNT "
                                    + "FROM BooksRead "
                                    + "WHERE PAGECOUNT = "
                                    + "(SELECT MIN(PAGECOUNT) FROM BooksRead)"
                                            , keywords); 
            case "6":
                keywords.add("BOOKTITLE");
                keywords.add("PAGECOUNT");
                return new QueryImplSQL("SELECT BookTitle, PAGECOUNT "
                                    + "FROM BooksRead "
                                    + "WHERE PAGECOUNT = "
                                    + "(SELECT MAX(PAGECOUNT) FROM BooksRead)", keywords);
            case "7":
                keywords.add("BOOKTITLE");
                return new QueryImplSQL("SELECT BookTitle " 
                                    + "FROM BooksRead "
                                    + "WHERE REREAD = 'T'", keywords);
            case "8":
                keywords.add("AUTHORNAME");
                return new QueryImplSQL("SELECT AUTHORNAME, COUNT(*) "
                                    + "FROM BooksRead "
                                    + "GROUP BY AUTHORNAME "
                                    + "HAVING COUNT(*) > 1", keywords);
            case "9":
                keywords.add("GENRE");
                keywords.add("Frequency");
                return new QueryImplSQL("SELECT GENRE, COUNT(*) AS Frequency "
                                    + "FROM BooksRead "
                                    + "GROUP BY GENRE "
                                    + "ORDER BY COUNT(*) DESC "
                                    + "FETCH FIRST 1 ROW ONLY", keywords);
            case "10":
                keywords.add("AUTHORNAME");
                keywords.add("Frequency");
                return new QueryImplSQL("SELECT AUTHORNAME, COUNT(*) AS Frequency\n" 
                                    + "FROM BooksRead\n" 
                                    + "GROUP BY AUTHORNAME\n" 
                                    + "ORDER BY COUNT(*) DESC", keywords);
            default:
                return null;
        }
    }
}