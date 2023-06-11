import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;

public class CRUDApplication extends JFrame {
  private JTextField idField, nameField, emailField;
  private JButton createButton, readButton, updateButton, deleteButton;
  private JTextArea resultArea;
  private Connection connection;

  public CRUDApplication() {
    setTitle("CRUD JDBC Application");
    setSize(500, 400);
    setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

    idField = new JTextField(10);
    nameField = new JTextField(20);
    emailField = new JTextField(20);

    createButton = new JButton("Create");
    readButton = new JButton("Read");
    updateButton = new JButton("Update");
    deleteButton = new JButton("Delete");

    resultArea = new JTextArea(10, 30);
    resultArea.setEditable(false);

    createButton.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent e) {
        createRecord();
        idField.setText("");
        nameField.setText("");
        emailField.setText("");
      }
    });

    readButton.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent e) {
        readRecords();
      }
    });

    updateButton.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent e) {
        updateRecord();
        idField.setText("");
        nameField.setText("");
        emailField.setText("");
      }
    });

    deleteButton.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent e) {
        deleteRecord();
        idField.setText("");
        nameField.setText("");
        emailField.setText("");
      }
    });

    setLayout(new BorderLayout());

    JPanel inputPanel = new JPanel();
    inputPanel.setLayout(new GridLayout(5, 2, 5, 10));
    inputPanel.add(new JLabel("ID:"));
    inputPanel.add(idField);
    inputPanel.add(new JLabel("Name:"));
    inputPanel.add(nameField);
    inputPanel.add(new JLabel("Email:"));
    inputPanel.add(emailField);
    inputPanel.add(createButton);
    inputPanel.add(readButton);
    inputPanel.add(updateButton);
    inputPanel.add(deleteButton);

    add(inputPanel, BorderLayout.NORTH);
    add(new JScrollPane(resultArea), BorderLayout.CENTER);

    try {
      Class.forName("org.postgresql.Driver");
      String url = "jdbc:postgresql://localhost:5432/employee";
      String username = "postgres";
      String password = "1234";
      connection = DriverManager.getConnection(url, username, password);
    } catch (Exception ex) {
      ex.printStackTrace();
      JOptionPane.showMessageDialog(this, "Failed to connect to the database.", "Error", JOptionPane.ERROR_MESSAGE);
      System.exit(1);
    }
  }

  private void createRecord() {
    int id = Integer.valueOf(idField.getText());
    String name = nameField.getText();
    String email = emailField.getText();

    try {
      PreparedStatement statement = connection.prepareStatement("INSERT INTO users (id, name, email) VALUES (?, ?, ?)");
      statement.setInt(1, id);
      statement.setString(2, name);
      statement.setString(3, email);
      statement.executeUpdate();

      JOptionPane.showMessageDialog(this, "Record created successfully.", "Success", JOptionPane.INFORMATION_MESSAGE);
    } catch (SQLException ex) {
      ex.printStackTrace();
      JOptionPane.showMessageDialog(this, "Failed to create the record.", "Error", JOptionPane.ERROR_MESSAGE);
    }

    readRecords();
  }

  private void readRecords() {
    try {
      Statement statement = connection.createStatement();
      ResultSet resultSet = statement.executeQuery("SELECT * FROM users");

      int i = 0;
      resultArea.setText("");
      while (resultSet.next()) {
        int id = resultSet.getInt("id");
        String name = resultSet.getString("name");
        String email = resultSet.getString("email");

        resultArea.append("Record #" + (i++) + "\n");
        resultArea.append("ID: " + id + "\n");
        resultArea.append("Name: " + name + "\n");
        resultArea.append("Email: " + email + "\n\n");
      }

      if (i == 0) {
        resultArea.setText("No records found.");
      }
    } catch (SQLException ex) {
      ex.printStackTrace();
      JOptionPane.showMessageDialog(this, "Failed to retrieve records.", "Error", JOptionPane.ERROR_MESSAGE);
    }
  }

  private void updateRecord() {
    int id = Integer.valueOf(idField.getText());
    String name = nameField.getText();
    String email = emailField.getText();

    try {
      PreparedStatement statement = connection.prepareStatement("UPDATE users SET name = ?, email = ? WHERE id = ?");
      statement.setString(1, name);
      statement.setString(2, email);
      statement.setInt(3, id);
      int rowsAffected = statement.executeUpdate();

      if (rowsAffected > 0) {
        JOptionPane.showMessageDialog(this, "Record updated successfully.", "Success", JOptionPane.INFORMATION_MESSAGE);
      } else {
        JOptionPane.showMessageDialog(this, "Record not found.", "Error", JOptionPane.ERROR_MESSAGE);
      }
    } catch (SQLException ex) {
      ex.printStackTrace();
      JOptionPane.showMessageDialog(this, "Failed to update the record.", "Error", JOptionPane.ERROR_MESSAGE);
    }

    readRecords();
  }

  private void deleteRecord() {
    int id = Integer.valueOf(idField.getText());

    try {
      PreparedStatement statement = connection.prepareStatement("DELETE FROM users WHERE id = ?");
      statement.setInt(1, id);
      int rowsAffected = statement.executeUpdate();

      if (rowsAffected > 0) {
        JOptionPane.showMessageDialog(this, "Record deleted successfully.", "Success", JOptionPane.INFORMATION_MESSAGE);
      } else {
        JOptionPane.showMessageDialog(this, "Record not found.", "Error", JOptionPane.ERROR_MESSAGE);
      }
    } catch (SQLException ex) {
      ex.printStackTrace();
      JOptionPane.showMessageDialog(this, "Failed to delete the record.", "Error", JOptionPane.ERROR_MESSAGE);
    }

    readRecords();
  }

  public static void main(String[] args) {
    new CRUDApplication().setVisible(true);
  }
}
