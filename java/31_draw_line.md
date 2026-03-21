# Program 31

**Question:** Write a program to create a swing application. When we click inside the window at two different places, the program should draw a line from point (x1, y1) to point (x2, y2).

## Program

```java
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class DrawLine extends JFrame implements MouseListener {
    int x1, y1, x2, y2;
    int clickCount = 0;

    DrawLine() {
        setTitle("Draw Line on Two Clicks");
        setSize(500, 400);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        addMouseListener(this);
        setVisible(true);
    }

    public void mouseClicked(MouseEvent e) {
        if (clickCount == 0) {
            x1 = e.getX(); y1 = e.getY();
            clickCount++;
        } else {
            x2 = e.getX(); y2 = e.getY();
            clickCount = 0;
            repaint();
        }
    }

    public void paint(Graphics g) {
        super.paint(g);
        if (x1 != 0 || y1 != 0) {
            g.drawLine(x1, y1, x2, y2);
        }
    }

    public void mousePressed(MouseEvent e) {}
    public void mouseReleased(MouseEvent e) {}
    public void mouseEntered(MouseEvent e) {}
    public void mouseExited(MouseEvent e) {}

    public static void main(String[] args) {
        new DrawLine();
    }
}
```

## Output

```
[A blank window appears.
 First click sets point (x1, y1).
 Second click sets point (x2, y2).
 A line is drawn connecting the two clicked points.]
```
