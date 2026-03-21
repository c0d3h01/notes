# Program 34

**Question:** Demonstrate Concept of Mouse Event.

## Program

```java
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class MouseEventDemo extends JFrame implements MouseListener {
    JLabel label;

    MouseEventDemo() {
        setTitle("Mouse Event Demo");
        setSize(400, 300);
        setLayout(new FlowLayout());
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        label = new JLabel("Perform a mouse action...");
        add(label);

        addMouseListener(this);
        setVisible(true);
    }

    public void mouseClicked(MouseEvent e) {
        label.setText("Mouse Clicked at (" + e.getX() + ", " + e.getY() + ")");
    }

    public void mousePressed(MouseEvent e) {
        label.setText("Mouse Pressed at (" + e.getX() + ", " + e.getY() + ")");
    }

    public void mouseReleased(MouseEvent e) {
        label.setText("Mouse Released at (" + e.getX() + ", " + e.getY() + ")");
    }

    public void mouseEntered(MouseEvent e) {
        label.setText("Mouse Entered the window");
    }

    public void mouseExited(MouseEvent e) {
        label.setText("Mouse Exited the window");
    }

    public static void main(String[] args) {
        new MouseEventDemo();
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
