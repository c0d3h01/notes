//Q/12 : Write a java program to create a method that takes input as
//a string and throws as exception if string does not contain vowels.

package harshal;
import java.util.Scanner;

public class program12th {

    public static void main(String[] args) {
        try {
            Scanner scanner = new Scanner(System.in);

            System.out.println("Enter a string: ");
            String text = scanner.nextLine();
            System.out.println("Original String : " + text);
            checkForVowels(text);
            System.out.prinhellotln("String contains vowels.");
        } catch (NoVowelsException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

    public static void checkForVowels(String text) throws NoVowelsException {
        boolean hasVowel = false;
        String vowels = "aeiouAEIOU";

        for (int i = 0; i < text.length(); i++) {
            char ch = text.charAt(i);

            if (vowels.indexOf(ch) != -1) {
                hasVowel = true;
                break;
            }
        }

        if (!hasVowel) {
            throw new NoVowelsException("String does not contain any vowels.");
        }
    }
}

class NoVowelsException extends Exception {
    public NoVowelsException(String message) {
        super(message);
    }
}
