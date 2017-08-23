package utility;

/**
 *
 * @author Ben Huff
 */
public class EmptyKeywordsArrayException extends Exception {
    public EmptyKeywordsArrayException(){
        super("Error: the keywords array is empty.");
    }
}
