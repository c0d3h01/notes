# Program 42

**Question:** Create a simple registration form using multiple swing components.

## Program

```java
package harshal;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class program_42 extends JFrame implements ActionListener {
    JTextField tfName, tfEmail, tfPhone;
    JPasswordField tfPass;
    JRadioButton rbMale, rbFemale;
    JCheckBox chkTerms;
    JButton btnRegister;
    JLabel lblMsg;

    public program_42() {
        setTitle("Registration Form");
        setSize(400, 350);
        setLayout(new GridLayout(8, 2, 5, 5));
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        add(new JLabel("Name:"));
        tfName = new JTextField(); add(tfName);

        add(new JLabel("Email:"));
        tfEmail = new JTextField(); add(tfEmail);

        add(new JLabel("Phone:"));
        tfPhone = new JTextField(); add(tfPhone);

        add(new JLabel("Password:"));
        tfPass = new JPasswordField(); add(tfPass);

        add(new JLabel("Gender:"));
        JPanel genderPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
        rbMale   = new JRadioButton("Male");
        rbFemale = new JRadioButton("Female");
        ButtonGroup bg = new ButtonGroup();
        bg.add(rbMale); bg.add(rbFemale);
        genderPanel.add(rbMale); genderPanel.add(rbFemale);
        add(genderPanel);

        add(new JLabel(""));
        chkTerms = new JCheckBox("Accept Terms & Conditions");
        add(chkTerms);

        btnRegister = new JButton("Register");
        btnRegister.addActionListener(this);
        add(btnRegister);

        lblMsg = new JLabel("");
        add(lblMsg);

        setVisible(true);
    }

    public void actionPerformed(ActionEvent e) {
        if (!chkTerms.isSelected()) {
            lblMsg.setText("Please accept terms.");
            lblMsg.setForeground(Color.red);
        } else {
            lblMsg.setText("Registered successfully!");
            lblMsg.setForeground(Color.green);
        }
    }

    public static void main(String[] args) {
        new program_42();
    }
}
```

## Output

```
[Window with Name, Email, Phone, Password fields,
 Male/Female radio buttons, Terms checkbox, Register button.
 Click Register without accepting terms → Please accept terms.
 Accept terms and click Register        → Registered successfully!]
```
