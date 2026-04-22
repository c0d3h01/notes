# Program 28

**Question:** Write a program to create a button Ok and when clicked toggle the ok button to KO.

## Program

```java
package harshal;

import javax.swing.*;
import java.awt.event.*;

public class program_28 extends JFrame implements ActionListener {

	JButton btn;

	public program_28() {
		setTitle("Toggle Button");
		setSize(300, 500);
		setLayout(null);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		btn = new JButton("Ok");
		btn.setBounds(100, 50, 80, 30);
		btn.addActionListener(this);
		add(btn);

		setVisible(true);
	}

	public void actionPerformed(ActionEvent e) {
		if (btn.getText().equals("Ok")) {
			btn.setText("KO");
		} else {
			btn.setText("Ok");
		}
	}

	public static void main(String[] args) {
		new program_28();
	}
}
```

## Output

```
[Window with a button labeled "Ok".
 On click: button label changes to "KO".
 On click again: button label changes back to "Ok".]
```
