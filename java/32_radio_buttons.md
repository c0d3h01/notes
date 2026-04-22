# Program 32

**Question:** Create three radio buttons labeled Red, Blue, and Green to change the background color of window when the respective radio button is clicked.

## Program

```java
package harshal;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class program_32 extends JFrame implements ActionListener {

    JRadioButton red, blue, green;

    public program_32() {
        setTitle("Color Changer");
        setSize(400, 300);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLayout(new FlowLayout());

        red   = new JRadioButton("Red");
        blue  = new JRadioButton("Blue");
        green = new JRadioButton("Green");

        ButtonGroup group = new ButtonGroup();
        group.add(red); group.add(blue); group.add(green);

        red.addActionListener(this);
        blue.addActionListener(this);
        green.addActionListener(this);

        add(red); add(blue); add(green);
        setVisible(true);
    }

    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == red)
            getContentPane().setBackground(Color.red);
        else if (e.getSource() == blue)
            getContentPane().setBackground(Color.blue);
        else if (e.getSource() == green)
            getContentPane().setBackground(Color.green);
    }

    public static void main(String[] args) {
        new program_32();
    }
}
```

## Output

```
[Window with three radio buttons: Red, Blue, Green.
 Clicking Red   → background turns Red.
 Clicking Blue  → background turns Blue.
 Clicking Green → background turns Green.]
```
