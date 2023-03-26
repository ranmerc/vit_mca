class UsernameException extends Exception {
  public String toString() {
    return "Error: Username less than 6 characters";
  }
}

class PasswordException extends Exception {
  public String toString() {
    return "Error: Password does not match";
  }
}

public class Q2 {
  public static void main(String[] args) throws UsernameException, PasswordException {
    String username = "username1", password = "pass1";

    try {
      if (!username.equals("expected")) {
        throw new UsernameException();
      }

      if (!password.equals("expected")) {
        throw new PasswordException();
      }
    } catch (UsernameException ue) {
      System.out.println(ue);
    } catch (PasswordException pe) {
      System.out.println(pe);
    } finally {
      System.out.println("Login procedure completed");
    }

  }
}
