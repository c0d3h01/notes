# Program 10

**Question:** Write a program to print the sum of all the odd no.s between 1-100.

## Program

```java
package practicl01;

public class odd_nums {

	public static void main(String[] args) {
		int sum = 0;
		for (int i = 1; i <= 100; i++) {
			if (i % 2 != 0) {
				sum += i;
			}
		}
		System.out.println("The sum of odd numbers between 1 and 100 is : " + sum);
	}

}
```

## Output

```
The sum of odd numbers between 1 and 100 is : 2500
```
