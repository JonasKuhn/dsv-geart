<?php
session_start();
if (isset($_SESSION['id']) && empty($_SESSION['id']) == FALSE) {
    ?>
    <html>
        <head>
            <meta charset="utf-8">
            <title>GEART</title>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="icon" type="image/jpg" href="images/img_geart.jpg"/>
        </head>
        <body>
            AQUI VAI O HTML PRINCIPAL
        </body>
    </html>
    <?php
} else {
    header("Location: login.php");
}
?>