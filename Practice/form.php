<?php
    session_start();
    $time_out_duration=5;

    if(isset($_SESSION['last_active'])){
        $slipped_time = time() - $_SESSION['last_active'];

        if ($slipped_time > $time_out_duration){
            session_destroy();
            header("Location: expired.php");
            exit();
        }
    }

    $_SESSION['last_active'] = time();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>hello</h1>

    <form action="process.php" method="POST">
        <label for="">Name :</label>
        <input type="text" name="name" id="nmae" required>
        <label for="">Email :</label>
        <input type="email" name="Email" id="Email" required>
        <label for="">Password :</label>
        <input type="password" name="Password" id="Password" required>
        <br>
        <br>
        <input type="submit" value="submit">
    </form>
</body>
</html>