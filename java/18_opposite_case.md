# Program 18

**Question:** Write a Java program to accept string from user and convert it in opposite case. [Lowercase to uppercase & vice versa].

## Program

```java
package NumberOperation;
import java.util.Scanner;

public class Stringcase {

	public static void main(String[] args) {
		String a,u,l;
		System.out.println("enter any String");
		Scanner s=new Scanner(System.in);
		a=s.nextLine();
		u=a.toUpperCase();
		l=a.toLowerCase();
		System.out.println("Entered String is "+a+" in Upper Case "+u+" in Lower Case "+l);

	}

}
```

## Output

```
enter any String
Hello World
Entered String is Hello World in Upper Case HELLO WORLD in Lower Case hello world
```
