package query;

import query.Query;
import java.util.ArrayList;

/**
 *
 * @author Ben Huff
 */
public class QueryImplSQL implements Query {
    private String query;
    private ArrayList<String> keywords;
    private int index = 0;
    
    
    public QueryImplSQL(String query, ArrayList<String> keywords){
        setQuery(query);
        setKeywords(keywords);
    }
    
    private void setQuery(String query){
        this.query = query;
    }
    
    private void setKeywords(ArrayList<String> keywords){
        this.keywords = keywords;
    }
    
    @Override
    public String getKeyword(){
        if(index < keywords.size()){
            String temp = keywords.get(index);
            index++;
            return temp;
        } 
        return null;    
    }
    
    @Override
    public boolean hasNextKeyword(){
        if (index == keywords.size()) { index = 0; return false; }
        return true;
    }
    
    @Override
    public String getQuery(){
        return query;
    }
}
