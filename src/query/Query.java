package query;

/**
 *
 * @author Ben Huff
 */
public interface Query {
    public String getKeyword();
    public boolean hasNextKeyword();
    public String getQuery();
}
