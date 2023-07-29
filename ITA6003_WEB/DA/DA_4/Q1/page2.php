<?php

    if (isset($_GET[session_name()])) {
        session_id($_GET[session_name()]);
    }

    session_start();
    echo "<h3 style='color: red'>Session ID: " . session_id() . "</h3>";
    
    $username = isset($_SESSION['username']) ? $_SESSION['username'] : 'Guest';
?>

<!DOCTYPE html>
<html>
<head>
    <title>22MCA0223 - Page 2</title>
</head>
<body>
    <p>Session variable value on Page 2: <?php echo $username; ?></p>
    <a href="page1.php?<?php echo session_name() . '=' . session_id(); ?>">Go back to Page 1</a>
</body>
</html>
