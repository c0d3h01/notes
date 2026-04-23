# Program 39

**Question:** Illustrate the use of check boxes and display status of each box. Every time you change the status of the check box, the status display will be updated.

## Program

```java
package harshal;

import java.awt.*;
import java.awt.event.*;

public class program_39 extends Frame implements ItemListener {
	Checkbox cBox0, cBox1, cBox2;
	Label l;

	program_39() {
		setLayout(new FlowLayout());

		cBox0 = new Checkbox("Nix");
		cBox1 = new Checkbox("Rust");
		cBox2 = new Checkbox("Go");

		l = new Label("Select options");


		add(cBox0);
		add(cBox1);
		add(cBox2);
		add(l);

		cBox0.addItemListener(this);
		cBox1.addItemListener(this);
		cBox2.addItemListener(this);

		setSize(400, 400);
		setVisible(true);

		addWindowListener(new WindowAdapter() {
			public void windowClosing(WindowEvent we) {
				dispose();
			}
		});
	}

	public void itemStateChanged(ItemEvent e) {
		String status = "Nix: " + cBox0.getState() + " | Rust: " + cBox1.getState() + " | Go: " + cBox2.getState();
		l.setText(status);
	}

	public static void main(String[] args) {
		new program_39();
	}
}
```

## Output

```
[Window with three checkboxes: Java, Python, C++.
 Check Java            → Selected: Java
 Check Java and Python → Selected: Java Python
 Uncheck Java          → Selected: Python
 Uncheck all           → No selection.]
```
