import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

class Credentials {
  private String username;
  private String password;

  public void setPassword(String password) {
    this.password = password;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getPassword() {
    return password;
  }

  public String getUsername() {
    return username;
  }
}

public class Swing {
  public static void main(String[] args) {
    Credentials cred = new Credentials();

    JFrame loginFrame = new JFrame("Login Form");

    JLabel usernameLabel = new JLabel("Username");
    JLabel passwordLabel = new JLabel("Password");
    JTextField username = new JTextField();
    JPasswordField password = new JPasswordField();
    JButton submitButton = new JButton("Submit");

    loginFrame.add(usernameLabel);
    loginFrame.add(username);
    loginFrame.add(passwordLabel);
    loginFrame.add(password);
    loginFrame.add(submitButton);
    loginFrame.setSize(800, 800);
    loginFrame.setLayout(new GridLayout(12, 1, 20, 0));
    loginFrame.setVisible(true);
    loginFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

    JFrame detailsFrame = new JFrame("Login Details");

    JLabel tp1 = new JLabel();
    JLabel tp2 = new JLabel();

    detailsFrame.add(tp1);
    detailsFrame.add(tp2);
    detailsFrame.setSize(800, 800);
    detailsFrame.setLayout(new FlowLayout());
    detailsFrame.setVisible(false);
    detailsFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

    submitButton.addActionListener(new ActionListener() {
      @Override
      public void actionPerformed(ActionEvent e) {
        cred.setPassword(String.valueOf(password.getPassword()));
        cred.setUsername(username.getText());
        tp1.setText(cred.getUsername());
        tp2.setText(cred.getPassword());
        loginFrame.setVisible(false);
        detailsFrame.setVisible(true);
      }
    });
  }
}
