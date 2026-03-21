# Program 25

**Question:** Write a program to append the contents of SRC.txt file to DEST.txt file using Byte stream class.

## Program

```java
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class AppendFile {
    public static void main(String[] args) {
        try {
            FileInputStream fis  = new FileInputStream("SRC.txt");
            FileOutputStream fos = new FileOutputStream("DEST.txt", true);

            int byteData;
            while ((byteData = fis.read()) != -1) {
                fos.write(byteData);
            }

            fis.close();
            fos.close();
            System.out.println("Contents of SRC.txt appended to DEST.txt successfully.");
        } catch (IOException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
```

## Output

```
Contents of SRC.txt appended to DEST.txt successfully.
```
