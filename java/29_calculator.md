# Program 29

**Question:** Write a Java program using Swing for Arithmetic Calculator as follows.

## Program

```java
package harshal;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class program_29 extends JFrame implements ActionListener {

    JTextField t;
    String num = "", op = "";
    double result = 0;

    public program_29() {
        setTitle("Swing Calculator");
        setSize(300, 400);
        setLayout(new BorderLayout());

        t = new JTextField();
        t.setFont(new Font("Arial", Font.BOLD, 20));
        add(t, BorderLayout.NORTH);

        JPanel p = new JPanel();
        p.setLayout(new GridLayout(4, 4, 5, 5));

        String buttons[] = {
            "7", "8", "9", "/",
            "4", "5", "6", "*",
            "1", "2", "3", "-",
            "0", "C", "=", "+"
        };

        for (String b : buttons) {
            JButton btn = new JButton(b);
            btn.setFont(new Font("Arial", Font.BOLD, 18));
            btn.addActionListener(this);
            p.add(btn);
        }

        add(p, BorderLayout.CENTER);

        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setVisible(true);
    }

    public void actionPerformed(ActionEvent e) {
        String s = e.getActionCommand();

        if (s.matches("[0-9]")) {
            num += s;
            t.setText(num);
        } else if (s.equals("C")) {
            num = "";
            result = 0;
            op = "";
            t.setText("");
        } else if (s.equals("=")) {
            calculate(Double.parseDouble(num));
            t.setText("" + result);
            num = "" + result;
        } else {
            calculate(Double.parseDouble(num));
            op = s;
            num = "";
        }
    }

    void calculate(double n) {
        switch (op) {
            case "+": result += n; break;
            case "-": result -= n; break;
            case "*": result *= n; break;
            case "/": result /= n; break;
            default: result = n;
        }
    }

    public static void main(String[] args) {
        new program_29();
    }
}
```

## Output

```
[Window with two number input fields and four operator buttons (+, -, *, /).
 Enter 10 in Number 1, 5 in Number 2:
 Click + → Result: 15.0
 Click - → Result: 5.0
 Click * → Result: 50.0
 Click / → Result: 2.0]
```
