<?php

try {
    //host
    $HOST = "localhost";

    //dbname
    $DBNAME = "anime";

    //user
    $USER = "root";

    //pass
    $PASS = "";

    $conn = new PDO("mysql:host=".$HOST.";dbname=".$DBNAME."",$USER,$PASS);

    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // if($conn == true) {
    //     echo "Connected to database";
    // }
    // else {
    //     echo "Failed to connect to database";
    // }
}
catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}