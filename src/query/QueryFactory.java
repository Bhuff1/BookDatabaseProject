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
            case "1:1":
                keywords.add("TITLE");
                return new QueryImplSQL("SELECT TITLE " 
                            + "FROM BOOKS " 
                            + "ORDER BY TITLE", keywords);
            case "1:2":
                keywords.add("TITLE");
                return new QueryImplSQL("SELECT Books.Title " 
                                        + "FROM Books, BooksRead " 
                                        +"WHERE Books.ISBN = BooksRead.ISBN " 
                                        + "AND BooksRead.REREAD = 'T' " 
                                        + "ORDER BY DATEREAD", keywords);
            case "2:1":
                keywords.add("AUTHOR_NAME");
                return new QueryImplSQL("SELECT AUTHOR_FIRST_NAME || ' ' || "
                                        + "AUTHOR_LAST_NAME AS AUTHOR_NAME " 
                                        + "FROM AUTHORS "
                                        + "ORDER BY AUTHOR_LAST_NAME, "
                                        + "AUTHOR_FIRST_NAME", keywords);
            case "2:2":
                keywords.add("AUTHOR_NAME");
                return new QueryImplSQL("SELECT AUTHOR_FIRST_NAME || ' ' || "
                        + "AUTHOR_LAST_NAME AS AUTHOR_NAME " 
                        + "FROM Authors " 
                        + "WHERE AUTHOR_ID = (SELECT AUTHOR_ID " 
                        + "FROM Books " 
                        + "GROUP BY AUTHOR_ID " 
                        + "ORDER BY COUNT(*) DESC " 
                        + "FETCH FIRST 1 ROW ONLY)", keywords);
            case "2:3":
                keywords.add("AUTHOR_NATIONALITY");
                keywords.add("num_books");
                return new QueryImplSQL("SELECT AUTHOR_NATIONALITY, COUNT(*) AS num_books " 
                                    + "FROM Authors " 
                                    + "GROUP BY AUTHOR_NATIONALITY " 
                                    + "ORDER BY num_books DESC", keywords);
            case "3:1":
                keywords.add("GENRE");
                return new QueryImplSQL("SELECT DISTINCT Genre " 
                                    + "FROM Books " 
                                    + "ORDER BY Genre", keywords);
            case "3:2":
                keywords.add("GENRE");
                keywords.add("genre_frequency");
                return new QueryImplSQL("SELECT Genre, COUNT(*) AS genre_frequency "
                                    + "FROM Books "
                                    + "GROUP BY Genre "
                                    + "ORDER BY COUNT(*) DESC "
                                    + "FETCH FIRST 1 ROW ONLY", keywords);
            case "4:1":
                keywords.add("TITLE");
                return new QueryImplSQL("SELECT TITLE " 
                        + "FROM Books, BooksRead " 
                        + "WHERE Books.ISBN = BooksRead.ISBN AND "
                        + "BooksRead.RATING = 5 " 
                        + "ORDER BY TITLE", keywords);
            case "4:2":
                keywords.add("TITLE");
                return new QueryImplSQL("SELECT Title "
                                    + "FROM Books, BooksRead "
                                    + "WHERE Books.ISBN = BooksRead.ISBN AND "
                                    + "BooksRead.RATING <= 3 "
                                    + "ORDER BY Title", keywords);
            case "5:1":
                keywords.add("num_books_read");
                return new QueryImplSQL("SELECT COUNT(*) AS num_books_read "
                                    + "FROM BooksRead", keywords);
            case "5:2":
                keywords.add("average_book_per_year");
                return new QueryImplSQL("SELECT COUNT(*)/7 AS average_book_per_year " 
                                    + "FROM BooksRead " 
                                    + "WHERE DateRead BETWEEN '2011-01-01' "
                                    + "AND '2017-08-29'", keywords);
            case "5:3":
                keywords.add("TITLE");
                keywords.add("PAGECOUNT");
                return new QueryImplSQL("SELECT Title, Pagecount "
                                        + "FROM Books "
                                        + "WHERE Pagecount = (SELECT MAX(Pagecount) "
                                                + "FROM Books)", keywords);
            case "5:4":
                keywords.add("TITLE");
                keywords.add("PAGECOUNT");
                return new QueryImplSQL("SELECT Title, Pagecount "
                                    + "FROM Books "
                                    + "WHERE Pagecount = "
                                    + "(SELECT MIN(Pagecount) FROM Books)"
                                            , keywords); 
            case "5:5":
                keywords.add("average_page_count");
                return new QueryImplSQL("SELECT AVG(PAGECOUNT) AS average_page_count "
                                    + "FROM Books", keywords);
            default:
                return null;
        }
    }
}