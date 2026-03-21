# Program 05

**Question:** Write Java program to print following pattern.

```
5
5 4
5 4 3
5 4 3 2
5 4 3 2 1
```

## Program

```java
package practicl01;
import java.util.Scanner;

public class print_patterns {

	public static void printPattern(int n) {
		int i, j;
		for (i = 1; i <= n; i++) {
			for (j = n; j >= n-i+1; j--) {
				System.out.print(j + " ");
			}
			System.out.println();
		}
	}

	public static void main(String[] args) {
		System.out.print("Enter a number :");
		Scanner s = new Scanner(System.in);
		int num = s.nextInt();
		printPattern(num);
	}

}
```

## Output

```
Enter a number :5
5 
5 4 
5 4 3 
5 4 3 2 
5 4 3 2 1 
```
