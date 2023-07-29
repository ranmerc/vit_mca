<?php

    if (isset($_GET[session_name()])) {
        session_id($_GET[session_name()]);
    }
    
    session_start();

    echo "<h3 style='color: red'>Session ID: " . session_id() . "</h3>";
    $_SESSION['username'] = 'Kamran';
?>

<!DOCTYPE html>
<html>
<head>
    <title>22MCA0223 - Page 1</title>
</head>
<body>
    <p>Session variable value on Page 1: <?php echo $_SESSION['username']; ?></p>
    <a href="page2.php?<?php echo session_name() . '=' . session_id(); ?>">Go to Page 2</a>
</body>
</html>
