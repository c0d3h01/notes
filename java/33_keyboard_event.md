# Program 33

**Question:** Demonstrate Concept of Key-Board Event.

## Program

```java
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class KeyboardEvent extends JFrame implements KeyListener {
    JLabel label;
    JTextField tf;

    KeyboardEvent() {
        setTitle("Keyboard Event Demo");
        setSize(400, 200);
        setLayout(new FlowLayout());
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        tf = new JTextField(20);
        tf.addKeyListener(this);

        label = new JLabel("Press any key...");

        add(tf);
        add(label);
        setVisible(true);
    }

    public void keyPressed(KeyEvent e) {
        label.setText("Key Pressed: " + e.getKeyChar());
    }

    public void keyReleased(KeyEvent e) {
        label.setText("Key Released: " + e.getKeyChar());
    }

    public void keyTyped(KeyEvent e) {
        label.setText("Key Typed: " + e.getKeyChar());
    }

    public static void main(String[] args) {
        new KeyboardEvent();
    }
}
```

## Output

```
[Window with a text field and a label.
 On pressing key 'A'  → Key Pressed: A
 On releasing key 'A' → Key Released: A
 On typing 'A'        → Key Typed: A]
```
