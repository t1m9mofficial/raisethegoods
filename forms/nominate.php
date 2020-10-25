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

    $nominated_person                           =   $_REQUEST['nominated_person'];
    $charity_enterprise_initiative_know_how     =   $_REQUEST['charity_enterprise_initiative_know_how'];
    $charity_enterprise_initiative_name         =   $_REQUEST['charity_enterprise_initiative_name'];
    $charity_enterprise_initiative_address      =   $_REQUEST['charity_enterprise_initiative_address'];
    $email                                      =   $_REQUEST['email'];
    $phone                                      =   $_REQUEST['phone'];
    $website                                    =   $_REQUEST['website'];
    $facebook                                   =   $_REQUEST['facebook'];
    $twitter                                    =   $_REQUEST['twitter'];
    $instagram                                  =   $_REQUEST['instagram'];
    $linkedin                                   =   $_REQUEST['linkedin'];
    $nomination_reasons                         =   $_REQUEST['nomination_reasons'];
    $nomination_description                     =   $_REQUEST['nomination_description'];
    $nomination_work                            =   $_REQUEST['nomination_work'];
    $anything_else                              =   $_REQUEST['anything_else'];
    $created_on                                 =   time();

    $sql = "INSERT INTO nomination (nominated_person, charity_enterprise_initiative_know_how, charity_enterprise_initiative_name, charity_enterprise_initiative_address, email, phone, website, facebook, twitter, instagram, linkedin, nomination_reasons, nomination_description, nomination_work, anything_else, created_on)
        VALUES (
            '$nominated_person',
            '$charity_enterprise_initiative_know_how',
            '$charity_enterprise_initiative_name',
            '$charity_enterprise_initiative_address',
            '$email',
            '$phone',
            '$website',
            '$facebook',
            '$twitter',
            '$instagram',
            '$linkedin',
            '$nomination_reasons',
            '$nomination_description',
            '$nomination_work',
            '$anything_else',
            '$created_on'
        )";

    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();

    header('Location: ' . $_SERVER['HTTP_REFERER']);
?>
