# Program 34

**Question:** Demonstrate Concept of Mouse Event.

## Program

```java
package harshal;

import java.awt.*;
import java.awt.event.*;

public class program_34 extends Frame implements MouseListener {

	Label l;

	public program_34() {
		setTitle("Mouse Event Example");
		l = new Label("Perform Mouse Action");
		l.setBounds(50, 100, 200, 30);

		add(l);
		addMouseListener(this);

		setSize(300, 300);
		setLayout(null);
		setVisible(true);

		addWindowListener(new WindowAdapter() {
			public void windowClosing(WindowEvent we) {
				dispose();
			}
		});
	}

	public void mouseClicked(MouseEvent e) {
		l.setText("Mouse Clicked");
	}

	public void mousePressed(MouseEvent e) {
		l.setText("Mouse Pressed");
	}

	public void mouseReleased(MouseEvent e) {
		l.setText("Mouse Released");
	}

	public void mouseEntered(MouseEvent e) {
		l.setText("Mouse Entered");
	}

	public void mouseExited(MouseEvent e) {
		l.setText("Mouse Exited");
	}

	public static void main(String[] args) {
		new program_34();
	}

}
```

## Output

```
[Window displays label updating on each mouse action.
 Mouse enters window        → Mouse Entered the window
 Mouse clicked at (200,150) → Mouse Clicked at (200, 150)
 Mouse exits window         → Mouse Exited the window]
```
