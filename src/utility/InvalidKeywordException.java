package utility;

/**
 *
 * @author Ben Huff
 */
public class InvalidKeywordException extends Exception{
    public InvalidKeywordException(){
        super("Error: an invalid keyword was passed.");
    }
}
