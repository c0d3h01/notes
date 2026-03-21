# Program 29

**Question:** Write a Java program using Swing for Arithmetic Calculator as follows.

## Program

```java
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class Calculator extends JFrame implements ActionListener {
    JTextField tf1, tf2, tfResult;
    JButton btnAdd, btnSub, btnMul, btnDiv;

    Calculator() {
        setTitle("Arithmetic Calculator");
        setSize(350, 250);
        setLayout(new FlowLayout());
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        add(new JLabel("Number 1:"));
        tf1 = new JTextField(10); add(tf1);

        add(new JLabel("Number 2:"));
        tf2 = new JTextField(10); add(tf2);

        btnAdd = new JButton("+"); btnAdd.addActionListener(this); add(btnAdd);
        btnSub = new JButton("-"); btnSub.addActionListener(this); add(btnSub);
        btnMul = new JButton("*"); btnMul.addActionListener(this); add(btnMul);
        btnDiv = new JButton("/"); btnDiv.addActionListener(this); add(btnDiv);

        add(new JLabel("Result:"));
        tfResult = new JTextField(10);
        tfResult.setEditable(false);
        add(tfResult);

        setVisible(true);
    }

    public void actionPerformed(ActionEvent e) {
        double a = Double.parseDouble(tf1.getText());
        double b = Double.parseDouble(tf2.getText());
        double result = 0;

        if (e.getSource() == btnAdd)      result = a + b;
        else if (e.getSource() == btnSub) result = a - b;
        else if (e.getSource() == btnMul) result = a * b;
        else if (e.getSource() == btnDiv) {
            if (b != 0) result = a / b;
            else { tfResult.setText("Cannot divide by zero"); return; }
        }
        tfResult.setText(String.valueOf(result));
    }

    public static void main(String[] args) {
        new Calculator();
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
