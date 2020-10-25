<?php
    $servername     =   "localhost";
    $username       =   "root";
    $password       =   "thinkpad";
    $dbname         =   "raisethegoods";

    // Create connection
    $conn           =   new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $where_from                     =   $_REQUEST['where_from'];
    $heard_about                    =   $_REQUEST['heard_about'];
    $charity_enterprise_initiative  =   $_REQUEST['charity_enterprise_initiative'];
    $why_goods                      =   $_REQUEST['why_goods'];
    $name                           =   $_REQUEST['name'];
    $email                          =   $_REQUEST['email'];
    $phone                          =   $_REQUEST['phone'];
    $anything_else                  =   $_REQUEST['anything_else'];
    $created_on                     =   time();

    $sql = "INSERT INTO not_in_ireland (where_from, heard_about, charity_enterprise_initiative, why_goods, name, email, phone, anything_else, created_on)
        VALUES ('$where_from', '$heard_about', '$charity_enterprise_initiative', '$why_goods', '$name', '$email', '$phone', '$anything_else', '$created_on')";

    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();

    header('Location: ' . $_SERVER['HTTP_REFERER']);
?>
