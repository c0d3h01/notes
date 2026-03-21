# Program 17

**Question:** Write a java program to accept a number from user, If it is greater than 1000 then throw user defined exception "Number is out of Range" otherwise display the factors of that number. (Use static keyword).

## Program

```java
import java.util.Scanner;

public class FactorCheck {
    static void checkAndPrintFactors(int num) throws Exception {
        if (num > 1000) {
            throw new Exception("Number is out of Range");
        }
        System.out.print("Factors of " + num + ": ");
        for (int i = 1; i <= num; i++) {
            if (num % i == 0) {
                System.out.print(i + " ");
            }
        }
        System.out.println();
    }

    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int num = s.nextInt();
        try {
            checkAndPrintFactors(num);
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
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
