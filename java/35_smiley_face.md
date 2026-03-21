# Program 35

**Question:** Create swing application for Smiley Face.

## Program

```java
import javax.swing.*;
import java.awt.*;

public class SmileyFace extends JPanel {

    public void paintComponent(Graphics g) {
        super.paintComponent(g);

        // Face
        g.setColor(Color.yellow);
        g.fillOval(100, 50, 200, 200);
        g.setColor(Color.black);
        g.drawOval(100, 50, 200, 200);

        // Left eye
        g.setColor(Color.black);
        g.fillOval(155, 110, 30, 30);

        // Right eye
        g.fillOval(215, 110, 30, 30);

        // Smile
        g.drawArc(145, 160, 110, 60, 0, -180);
    }

    public static void main(String[] args) {
        JFrame frame = new JFrame("Smiley Face");
        frame.setSize(400, 350);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.add(new SmileyFace());
        frame.setVisible(true);
    }
}
```

## Output

```
[Window displays a yellow smiley face with:
 - Two black filled circular eyes
 - A curved smile arc drawn at the bottom of the face]
```
