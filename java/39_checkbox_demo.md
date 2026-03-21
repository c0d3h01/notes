# Program 39

**Question:** Illustrate the use of check boxes and display status of each box. Every time you change the status of the check box, the status display will be updated.

## Program

```java
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class CheckBoxDemo extends JFrame implements ItemListener {
    JCheckBox chkJava, chkPython, chkC;
    JLabel lblStatus;

    CheckBoxDemo() {
        setTitle("CheckBox Demo");
        setSize(350, 200);
        setLayout(new FlowLayout());
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        chkJava   = new JCheckBox("Java");
        chkPython = new JCheckBox("Python");
        chkC      = new JCheckBox("C++");

        chkJava.addItemListener(this);
        chkPython.addItemListener(this);
        chkC.addItemListener(this);

        add(chkJava); add(chkPython); add(chkC);

        lblStatus = new JLabel("No selection.");
        add(lblStatus);

        setVisible(true);
    }

    public void itemStateChanged(ItemEvent e) {
        String status = "Selected: ";
        if (chkJava.isSelected())   status += "Java ";
        if (chkPython.isSelected()) status += "Python ";
        if (chkC.isSelected())      status += "C++ ";
        if (status.equals("Selected: ")) status = "No selection.";
        lblStatus.setText(status);
    }

    public static void main(String[] args) {
        new CheckBoxDemo();
    }
}
```

## Output

```
[Window with three checkboxes: Java, Python, C++.
 Check Java            → Selected: Java
 Check Java and Python → Selected: Java Python
 Uncheck Java          → Selected: Python
 Uncheck all           → No selection.]
```
