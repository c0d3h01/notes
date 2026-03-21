# Program 38

**Question:** Java program to create a login window and also verify the user name and password of the user.

## Program

```java
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class LoginWindow extends JFrame implements ActionListener {
    JTextField tfUser;
    JPasswordField tfPass;
    JButton btnLogin;
    JLabel lblMsg;

    LoginWindow() {
        setTitle("Login");
        setSize(350, 200);
        setLayout(new FlowLayout());
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        add(new JLabel("Username:"));
        tfUser = new JTextField(15);
        add(tfUser);

        add(new JLabel("Password:"));
        tfPass = new JPasswordField(15);
        add(tfPass);

        btnLogin = new JButton("Login");
        btnLogin.addActionListener(this);
        add(btnLogin);

        lblMsg = new JLabel("");
        add(lblMsg);

        setVisible(true);
    }

    public void actionPerformed(ActionEvent e) {
        String user = tfUser.getText();
        String pass = new String(tfPass.getPassword());

        if (user.equals("admin") && pass.equals("1234")) {
            lblMsg.setText("Login Successful!");
            lblMsg.setForeground(Color.green);
        } else {
            lblMsg.setText("Invalid username or password.");
            lblMsg.setForeground(Color.red);
        }
    }

    public static void main(String[] args) {
        new LoginWindow();
    }
}
```

## Output

```
[Window with Username and Password fields and Login button.
 Enter username: admin, password: 1234 → Login Successful!
 Enter wrong credentials               → Invalid username or password.]
```
