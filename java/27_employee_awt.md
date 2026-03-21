# Program 27

**Question:** Write a java program to accept the details of employee (Emp no, name, salary) from the user and display it on the next frame (Use AWT).

## Program

```java
import java.awt.*;
import java.awt.event.*;

public class EmployeeInput extends Frame implements ActionListener {
    TextField tfEmpNo, tfName, tfSalary;
    Button btnSubmit;

    EmployeeInput() {
        setTitle("Employee Input");
        setLayout(new FlowLayout());
        setSize(400, 200);

        add(new Label("Emp No:"));
        tfEmpNo = new TextField(15);
        add(tfEmpNo);

        add(new Label("Name:"));
        tfName = new TextField(15);
        add(tfName);

        add(new Label("Salary:"));
        tfSalary = new TextField(15);
        add(tfSalary);

        btnSubmit = new Button("Submit");
        btnSubmit.addActionListener(this);
        add(btnSubmit);

        setVisible(true);
        addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) { dispose(); }
        });
    }

    public void actionPerformed(ActionEvent e) {
        Frame display = new Frame("Employee Details");
        display.setLayout(new FlowLayout());
        display.setSize(300, 200);
        display.add(new Label("Emp No : " + tfEmpNo.getText()));
        display.add(new Label("Name   : " + tfName.getText()));
        display.add(new Label("Salary : " + tfSalary.getText()));
        display.setVisible(true);
        display.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) { display.dispose(); }
        });
    }

    public static void main(String[] args) {
        new EmployeeInput();
    }
}
```

## Output

```
[First window: Input form with Emp No, Name, Salary fields and Submit button.
 On clicking Submit: Second window displays the entered employee details.]
```
