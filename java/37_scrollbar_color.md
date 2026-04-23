# Program 37

**Question:** Create scrollbar in swing to change the background color when user scrolls the scrollbar.

## Program

```java
package harshal;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class program_37 extends JFrame implements AdjustmentListener {

	JScrollBar sBar;
	JPanel panel;

	program_37() {
		setTitle("Color Scrollbar");

		panel = new JPanel();

		sBar = new JScrollBar(JScrollBar.HORIZONTAL, 0, 0, 0, 360);
		sBar.addAdjustmentListener(this);

		add(panel, BorderLayout.CENTER);
		add(sBar, BorderLayout.SOUTH);

		setSize(400, 200);
		setVisible(true);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	}

	public void adjustmentValueChanged(AdjustmentEvent e) {
		int value = sBar.getValue();
		float hue = value / 360.0f;

		Color color = Color.getHSBColor(hue, 1.0f, 1.0f);
		panel.setBackground(color);
	}

	public static void main(String[] args) {
		new program_37();
	}

}
```

## Output

```
[Window with three horizontal scrollbars for Red, Green, Blue.
 Scrolling Red bar right   → background becomes more red.
 Adjusting all three bars  → background changes to the mixed RGB color.]
```
