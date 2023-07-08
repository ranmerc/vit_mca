import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

import java.awt.*;
import java.awt.event.*;

public class Main extends JFrame {
  public Main() {
    JButton button = new JButton("Click me");
    button.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent ae) {
        openNewFrame();
      }
    });
    this.add(button);
    this.setSize(400, 400);
    this.setLayout(new GridLayout(4, 1));
    this.setDefaultCloseOperation(this.EXIT_ON_CLOSE);
  }

  public void openNewFrame() {
    JFrame newFrame = new JFrame("New Frame");
    JButton button = new JButton("Click me");
    button.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent ae) {
        JOptionPane.showMessageDialog(newFrame, "Some", "Information", JOptionPane.QUESTION_MESSAGE);
      }
    });
    newFrame.add(button);
    newFrame.setSize(200, 200);
    newFrame.setLayout(new GridLayout(4, 1));
    newFrame.setDefaultCloseOperation(newFrame.EXIT_ON_CLOSE);
    newFrame.setVisible(true);
  }

  public static void main(String[] args) {
    new Main().setVisible(true);
  }
}
