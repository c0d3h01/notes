# Program 40

**Question:** Program to demonstrate choice menu in AWT.

## Program

```java
import java.awt.*;
import java.awt.event.*;

public class ChoiceMenu extends Frame implements ItemListener {
    Choice choice;
    Label lblResult;

    ChoiceMenu() {
        setTitle("Choice Menu");
        setSize(350, 200);
        setLayout(new FlowLayout());

        choice = new Choice();
        choice.add("Select a subject");
        choice.add("Java");
        choice.add("Python");
        choice.add("C++");
        choice.add("DBMS");
        choice.addItemListener(this);

        lblResult = new Label("Your choice will appear here.");

        add(choice);
        add(lblResult);

        addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) { dispose(); }
        });

        setVisible(true);
    }

    public void itemStateChanged(ItemEvent e) {
        lblResult.setText("You selected: " + choice.getSelectedItem());
    }

    public static void main(String[] args) {
        new ChoiceMenu();
    }
}
```

## Output

```
[Window with a dropdown choice menu.
 Select "Java"   → You selected: Java
 Select "Python" → You selected: Python
 Select "DBMS"   → You selected: DBMS]
```
