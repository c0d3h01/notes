# Program 25

**Question:** Write a program to append the contents of SRC.txt file to DEST.txt file using Byte stream class.

## Program

```java
package harshal;

import java.io.*;

public class program_25 {
	public static void main(String[] args) {
		try {
			FileInputStream fin = new FileInputStream("SRC.txt");
			FileOutputStream fout = new FileOutputStream("DEST.txt", true);

			int ch;

			while ((ch = fin.read()) != -1) {
				fout.write(ch);
			}

			fin.close();
			fout.close();
			System.out.println("File content appended successfully.");
		} catch (IOException e) {
			System.out.println("Error : " + e);
		}
	}
}
```

## Output

```
Contents of SRC.txt appended to DEST.txt successfully.
```
