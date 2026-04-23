# Program 27

**Question:** Write a java program to accept the details of employee (Emp no, name, salary) from the user and display it on the next frame (Use AWT).

## Program

```java
package harshal;

import java.awt.*;
import java.awt.event.*;

public class program_27 extends Frame implements ActionListener {

    Label label0, label1, label2;
    TextField Txt0, Txt1, Txt2;
    Button btn;

    public program_27() {
        setTitle("Employee Form");

        label0 = new Label("Emp No : ");
        label1 = new Label("Emp Name : ");
        label2 = new Label("Emp Salary : ");

        Txt0 = new TextField(15);
        Txt1 = new TextField(15);
        Txt2 = new TextField(15);

        btn = new Button("Submit ;)");
        btn.addActionListener(this);

        setLayout(new GridLayout(4, 2));

        add(label0); add(Txt0);
        add(label1); add(Txt1);
        add(label2); add(Txt2);

        add(new Label(" "));
        add(btn);

        setSize(300, 200);
        setVisible(true);

        addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent we) {
                dispose();
            }
        });
    }

    public void actionPerformed(ActionEvent e) {
        String empNo = Txt0.getText();
        String name = Txt1.getText();
        String salary = Txt2.getText();

        new DisplayFrameAWT(empNo, name, salary);
    }

    public static void main(String[] args) {
        new program_27();
    }
}

class DisplayFrameAWT extends Frame {
    public DisplayFrameAWT(String empNo, String name, String salary) {
        setTitle("Employee Details");

        Label label0 = new Label("Emp No : " + empNo);
        Label label1 = new Label("Emp Name : " + name);
        Label label2 = new Label("Emp Salary : " + salary);

        setLayout(new GridLayout(3, 1));

        add(label0);
        add(label1);
        add(label2);

        setSize(300, 150);
        setVisible(true);

        addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent we) {
                dispose();
            }
        });
    }
}
```

## Output

```
[First window: Input form with Emp No, Name, Salary fields and Submit button.
 On clicking Submit: Second window displays the entered employee details.]
```
