# Program 17

**Question:** Write a java program to accept a number from user, If it is greater than 1000 then throw user defined exception "Number is out of Range" otherwise display the factors of that number. (Use static keyword).

## Program

```java
package harshal;

import java.util.Scanner;

class NumberOutOfRangeException extends Exception {
    public NumberOutOfRangeException(String message) {
        super(message);
    }
}

public class program_17 {


    static void findFactors(int n) {
        System.out.println("Factors of " + n + " are:");
        for (int i = 1; i <= n; i++) {
            if (n % i == 0) {
                System.out.print(i + " ");
            }
        }
        System.out.println();
    }

    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);

        try {
            System.out.print("Enter a number: ");
            int num = s.nextInt();

            if (num > 1000) {
                throw new NumberOutOfRangeException("Number out of range (>1000)");
            }

            findFactors(num);

        } catch (NumberOutOfRangeException e) {
            System.out.println("Exception: " + e.getMessage());
        } catch (Exception e) {
            System.out.println("Invalid input!");
        } finally {
            s.close();
        }
    }
}
```

## Output

```
Enter a number: 12
Factors of 12: 1 2 3 4 6 12
```

```
Enter a number: 1500
Error: Number is out of Range
```
