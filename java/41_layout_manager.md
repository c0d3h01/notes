# Program 41

**Question:** Program to demonstrate Layout manager in AWT.

## Program

```java
import java.awt.*;
import java.awt.event.*;

public class LayoutDemo extends Frame {

    LayoutDemo() {
        setTitle("Layout Manager Demo");
        setSize(500, 400);

        // BorderLayout panel
        Panel borderPanel = new Panel(new BorderLayout());
        borderPanel.add(new Button("North"),  BorderLayout.NORTH);
        borderPanel.add(new Button("South"),  BorderLayout.SOUTH);
        borderPanel.add(new Button("East"),   BorderLayout.EAST);
        borderPanel.add(new Button("West"),   BorderLayout.WEST);
        borderPanel.add(new Button("Center"), BorderLayout.CENTER);

        // FlowLayout panel
        Panel flowPanel = new Panel(new FlowLayout());
        flowPanel.add(new Button("One"));
        flowPanel.add(new Button("Two"));
        flowPanel.add(new Button("Three"));

        // GridLayout panel
        Panel gridPanel = new Panel(new GridLayout(2, 3));
        for (int i = 1; i <= 6; i++) {
            gridPanel.add(new Button("G" + i));
        }

        setLayout(new GridLayout(3, 1));
        add(borderPanel);
        add(flowPanel);
        add(gridPanel);

        addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) { dispose(); }
        });

        setVisible(true);
    }

    public static void main(String[] args) {
        new LayoutDemo();
    }
}
```

## Output

```
[Window split into 3 sections:
 Top    (BorderLayout) → Buttons at North, South, East, West, Center
 Middle (FlowLayout)   → Buttons One, Two, Three arranged in a row
 Bottom (GridLayout)   → 6 buttons in a 2x3 grid (G1 to G6)]
```
