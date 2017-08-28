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
        
        queries.put("1:1", QueryFactory.createQuery("1:1"));
        queries.put("1:2", QueryFactory.createQuery("1:2"));
        queries.put("2:1", QueryFactory.createQuery("2:1"));
        queries.put("2:2", QueryFactory.createQuery("2:2"));
        queries.put("3:1", QueryFactory.createQuery("3:1"));
        queries.put("3:2", QueryFactory.createQuery("3:2"));
        queries.put("4:1", QueryFactory.createQuery("4:1"));
        queries.put("4:2", QueryFactory.createQuery("4:2"));
        queries.put("5:1", QueryFactory.createQuery("5:1"));
        queries.put("5:3", QueryFactory.createQuery("5:3"));
        queries.put("5:4", QueryFactory.createQuery("5:4"));
        queries.put("5:5", QueryFactory.createQuery("5:5"));
        queries.put("6", QueryFactory.createQuery("6"));
        queries.put("8", QueryFactory.createQuery("8"));
        queries.put("9", QueryFactory.createQuery("9"));
        queries.put("10", QueryFactory.createQuery("10"));
        
        
        

    }
    
    public Query getQuery(String query) {
        return queries.get(query);
    }
}
