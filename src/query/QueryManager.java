package query;

import java.util.HashMap;

/**
 *
 * @author Ben Huff
 */
public class QueryManager {
    private static QueryManager instance;
    private static HashMap<String, Query> queries;
    
    private QueryManager(){
        loadQueries(); 
    }
    
    public static QueryManager getInstance(){
        if(instance == null)
            instance = new QueryManager();
        return instance;
    }
    
    private void loadQueries(){
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
        queries.put("5:2", QueryFactory.createQuery("5:2"));
        queries.put("5:3", QueryFactory.createQuery("5:3"));
        queries.put("5:4", QueryFactory.createQuery("5:4"));
        queries.put("5:5", QueryFactory.createQuery("5:5"));
    }
    
    public Query getQuery(String query) {
        return queries.get(query);
    }
}
