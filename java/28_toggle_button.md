# Program 28

**Question:** Write a program to create a button Ok and when clicked toggle the ok button to KO.

## Program

```java
import javax.swing.*;
import java.awt.event.*;

public class ToggleButton extends JFrame implements ActionListener {
    JButton btn;

    ToggleButton() {
        setTitle("Toggle Button");
        setSize(300, 150);
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
        new ToggleButton();
    }
}
```

## Output

```
[Window with a button labeled "Ok".
 On click: button label changes to "KO".
 On click again: button label changes back to "Ok".]
```
