# Program 37

**Question:** Create scrollbar in swing to change the background color when user scrolls the scrollbar.

## Program

```java
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class ScrollbarColor extends JFrame implements AdjustmentListener {
    JScrollBar redBar, greenBar, blueBar;

    ScrollbarColor() {
        setTitle("Scrollbar Color Changer");
        setSize(400, 200);
        setLayout(new GridLayout(3, 2, 5, 5));
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        redBar   = new JScrollBar(JScrollBar.HORIZONTAL, 0, 1, 0, 255);
        greenBar = new JScrollBar(JScrollBar.HORIZONTAL, 0, 1, 0, 255);
        blueBar  = new JScrollBar(JScrollBar.HORIZONTAL, 0, 1, 0, 255);

        redBar.addAdjustmentListener(this);
        greenBar.addAdjustmentListener(this);
        blueBar.addAdjustmentListener(this);

        add(new JLabel("Red"));   add(redBar);
        add(new JLabel("Green")); add(greenBar);
        add(new JLabel("Blue"));  add(blueBar);

        setVisible(true);
    }

    public void adjustmentValueChanged(AdjustmentEvent e) {
        int r = redBar.getValue();
        int g = greenBar.getValue();
        int b = blueBar.getValue();
        getContentPane().setBackground(new Color(r, g, b));
    }

    public static void main(String[] args) {
        new ScrollbarColor();
    }
}
```

## Output

```
[Window with three horizontal scrollbars for Red, Green, Blue.
 Scrolling Red bar right   → background becomes more red.
 Adjusting all three bars  → background changes to the mixed RGB color.]
```
