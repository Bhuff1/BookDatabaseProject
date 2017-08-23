package utility;

/**
 *
 * @author Ben Huff
 */
public class NullReferenceException extends Exception{
    public NullReferenceException(){
        super("Error: a null reference was passed as an argument.");
    }
}
