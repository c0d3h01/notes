# Program 26

**Question:** Write a java program using AWT to create a frame with title SYBCA background color pink. If user clicks on close button then frame should close.

## Program

```java
import java.awt.*;
import java.awt.event.*;

public class SYBCAFrame extends Frame {
    SYBCAFrame() {
        setTitle("SYBCA");
        setBackground(Color.pink);
        setSize(400, 300);
        setVisible(true);

        addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) {
                dispose();
            }
        });
    }

    public static void main(String[] args) {
        new SYBCAFrame();
    }
}
```

## Output

```
[A window appears with title "SYBCA" and pink background.
 Clicking the close button closes the window.]
```
