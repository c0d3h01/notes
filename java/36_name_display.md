# Program 36

**Question:** Create a form with JLabel and JTextField to accept name and display it on button click.

## Program

```java
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class NameDisplay extends JFrame implements ActionListener {
    JTextField tfName;
    JLabel lblResult;
    JButton btnSubmit;

    NameDisplay() {
        setTitle("Name Display");
        setSize(350, 200);
        setLayout(new FlowLayout());
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        add(new JLabel("Enter Name:"));
        tfName = new JTextField(15);
        add(tfName);

        btnSubmit = new JButton("Submit");
        btnSubmit.addActionListener(this);
        add(btnSubmit);

        lblResult = new JLabel("Name will appear here.");
        add(lblResult);

        setVisible(true);
    }

    public void actionPerformed(ActionEvent e) {
        lblResult.setText("Hello, " + tfName.getText() + "!");
    }

    public static void main(String[] args) {
        new NameDisplay();
    }
}
```

## Output

```
[Window with a text field and Submit button.
 Type "Harshal" and click Submit.
 Label updates to: Hello, Harshal!]
```
