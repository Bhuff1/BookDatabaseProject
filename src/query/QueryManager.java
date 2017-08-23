package query;

import query.Query;
import java.util.HashMap;

/**
 *
 * @author Ben Huff
 */
public class QueryManager {
    private static QueryManager instance;
    private static HashMap<String, Query> queries;
    
    private QueryManager(){
        setQueries(); 
    }
    
    public static QueryManager getInstance(){
        if(instance == null)
            instance = new QueryManager();
        return instance;
    }
    
    private void setQueries(){
        queries = new HashMap<>();
        queries.put("1", QueryFactory.createQuery("1"));
        queries.put("2", QueryFactory.createQuery("2"));
        queries.put("3", QueryFactory.createQuery("3"));
        queries.put("4", QueryFactory.createQuery("4"));
        queries.put("5", QueryFactory.createQuery("5"));
        queries.put("6", QueryFactory.createQuery("6"));
        queries.put("7", QueryFactory.createQuery("7"));
        queries.put("8", QueryFactory.createQuery("8"));
        queries.put("9", QueryFactory.createQuery("9"));
    }
    
    public Query getQuery(String query) {
        return queries.get(query);
    }
}
