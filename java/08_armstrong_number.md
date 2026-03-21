# Program 08

**Question:** Write a program to accept a no. on the command line and check if it's an Armstrong no. or not.

## Program

```java
package practicl01;
import java.util.Scanner;

public class armstrong_num {

	public static void main(String[] args) {
		int originalNum, remainder, result = 0;
		System.out.print("Enter a number :");
		Scanner s = new Scanner(System.in);
		int num = s.nextInt();
		originalNum = num;

		while (originalNum != 0) {
			remainder = originalNum % 10;
			result += Math.pow(remainder, 3);
			originalNum /= 10;
		}

		if (result == num) {
			System.out.println("is not Armstrong num : " + num);
		} else {
			System.out.println("is a Armstrong num : " + num);
		}
	}

}
```

## Output

```
Enter a number :153
is not Armstrong num : 153
```
