<!DOCTYPE html>
<html>
<head>
    <title>Hit Counter</title>
</head>
<body>
    <center>
      <h1>Welcome to our website!</h1>
      <form action="click.php" method="post">
        <button name="submit" type="submit">Click here to enter website</button>
      </form>
      <?php
        if (isset($_POST['submit'])) {
          $cookieName = 'visitCount';
          $visitCount = isset($_COOKIE[$cookieName]) ? $_COOKIE[$cookieName] : 0;
          $visitCount++;
          setcookie($cookieName, $visitCount, time() + 60 * 60 * 24 * 365);
        }

        $cookieName = 'visitCount';
        $visitCount = isset($_COOKIE[$cookieName]) ? $_COOKIE[$cookieName] : 0;
        echo "<p>This is visit number: $visitCount</p>";     
      ?>
    </center>
</body>
</html>