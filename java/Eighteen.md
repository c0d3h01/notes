```java
import java.util.Scanner;

public class Eleven01 {

    public static void main(String[] args) {
        // Variable declaration
        int n, m, rem, rev;
        rev = 0; 
        rem = 0;

        // Input section
        System.out.println("Enter a number: ");
        Scanner s = new Scanner(System.in);
        n = s.nextInt();
        
        // Store original number in m to preserve n for the final print
        m = n;

        // Logic to reverse the number
        while (m > 0) {
            rem = m % 10;         // Get the last digit
            rev = (rev * 10) + rem; // Append digit to the reversed number
            m = m / 10;           // Remove the last digit from m
        }

        // Output section
        System.out.println("You have entered " + n + ". The reverse of your number is " + rev);
        
        s.close(); // Good practice to close the scanner
    }
}
```
