
```java
import java.util.Scanner;

public class eleven01 {

    public static void main(String[] args) {
        int n, m, rem, rev;
        rev = 0; rem = 0;

        System.out.println("Enter a number");
        Scanner s = new Scanner(System.in);
        n = s.nextInt();
        m = n;

        while(m > 0) {
            rem = m % 10;
            rev = rev * 10 + rem;
            m = m / 10;
        }

        System.out.println("You have entered " + n + " reverse of your number is " + rev);
    }
}
```
