# Program 33

**Question:** Demonstrate Concept of Key-Board Event.

## Program

```java
package harshal;

import java.awt.*;
import java.awt.event.*;

public class program_33 extends Frame implements KeyListener {
	Label l;

	public program_33() {
		setTitle("Key Event Example");

		l = new Label("Press Any Key ... ");
		l.setBounds(50, 100, 200, 30);

		add(l);
		addKeyListener(this);
		setSize(300, 300);
		setLayout(null);
		setVisible(true);

		addWindowListener(new WindowAdapter() {
			public void WindowClosing(WindowEvent we) {
				dispose();
			}
		});
	}


    public void keyPressed(KeyEvent e) {
        l.setText("Key Pressed: " + e.getKeyChar());
    }

    public void keyReleased(KeyEvent e) {
        l.setText("Key Released: " + e.getKeyChar());
    }

    public void keyTyped(KeyEvent e) {
        l.setText("Key Typed: " + e.getKeyChar());
    }

    public static void main(String[] args) {
        new program_33();
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
