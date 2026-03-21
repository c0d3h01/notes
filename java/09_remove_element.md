# Program 09

**Question:** Write a program to accept array of 10 nos. and remove the occurrence of the given no from the array.

## Program

```java
import java.util.Scanner;

public class RemoveElement {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        int[] arr = new int[10];

        System.out.println("Enter 10 numbers:");
        for (int i = 0; i < 10; i++) {
            arr[i] = s.nextInt();
        }

        System.out.print("Enter number to remove: ");
        int key = s.nextInt();

        System.out.print("Array after removal: ");
        for (int i = 0; i < 10; i++) {
            if (arr[i] != key) {
                System.out.print(arr[i] + " ");
            }
        }
        System.out.println();
    }
}
```

## Output

```
Enter 10 numbers:
1 2 3 4 5 3 7 8 3 10
Enter number to remove: 3
Array after removal: 1 2 4 5 7 8 10 
```
