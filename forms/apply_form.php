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

    $video_file             =   null;

    $errors     =   array();
    $file_name  =   $_FILES['video']['name'];
    $file_tmp   =   $_FILES['video']['tmp_name'];
    $file_ext   =   strtolower(end(explode('.', $_FILES['video']['name'])));

    $expensions  =   array("mp4", "avi", "3gp", "mov", "mpeg", "flv", "mkv", "webm", "wmv", "ogg");

    if(in_array($file_ext,$expensions)=== false){
        $errors[]="extension not allowed, please choose a video file.";
    }

    if(empty($errors)==true){
        move_uploaded_file($file_tmp, "../videos/" . $file_name);
        echo "Success" . "<br>";
        $video_file = $file_name;
        echo $file_name . '<br>' . $file_tmp . '<br>' . $file_ext;
    } else {
        print_r($errors);
    }

    $applied_person                             =   $_REQUEST['applied_person'];
    $applied_person_role                        =   $_REQUEST['applied_person_role'];
    $charity_enterprise_initiative_name         =   $_REQUEST['charity_enterprise_initiative_name'];
    $charity_enterprise_initiative_address      =   $_REQUEST['charity_enterprise_initiative_address'];
    $email                                      =   $_REQUEST['email'];
    $phone                                      =   $_REQUEST['phone'];
    $website                                    =   $_REQUEST['website'];
    $facebook                                   =   $_REQUEST['facebook'];
    $twitter                                    =   $_REQUEST['twitter'];
    $instagram                                  =   $_REQUEST['instagram'];
    $linkedin                                   =   $_REQUEST['linkedin'];
    $charity_enterprise_initiative_description  =   $_REQUEST['charity_enterprise_initiative_description'];
    $charity_enterprise_initiative_team         =   $_REQUEST['charity_enterprise_initiative_team'];
    $charity_enterprise_initiative_work         =   $_REQUEST['charity_enterprise_initiative_work'];
    $charity_enterprise_initiative_why          =   $_REQUEST['charity_enterprise_initiative_why'];
    $charity_enterprise_initiative_innovation   =   $_REQUEST['charity_enterprise_initiative_innovation'];
    $charity_enterprise_initiative_solutions    =   $_REQUEST['charity_enterprise_initiative_solutions'];
    $anything_else                              =   $_REQUEST['anything_else'];
    $video                                      =   $video_file;
    $created_on                                 =   time();

    $sql = "INSERT INTO application (applied_person, applied_person_role, charity_enterprise_initiative_name, charity_enterprise_initiative_address, email, phone, website, facebook, twitter, instagram, linkedin, charity_enterprise_initiative_description, charity_enterprise_initiative_team, charity_enterprise_initiative_work, charity_enterprise_initiative_why, charity_enterprise_initiative_innovation, charity_enterprise_initiative_solutions, anything_else, video, created_on)
        VALUES (
            '$applied_person',
            '$applied_person_role',
            '$charity_enterprise_initiative_name',
            '$charity_enterprise_initiative_address',
            '$email',
            '$phone',
            '$website',
            '$facebook',
            '$twitter',
            '$instagram',
            '$linkedin',
            '$charity_enterprise_initiative_description',
            '$charity_enterprise_initiative_team',
            '$charity_enterprise_initiative_work',
            '$charity_enterprise_initiative_why',
            '$charity_enterprise_initiative_innovation',
            '$charity_enterprise_initiative_solutions',
            '$anything_else',
            '$video',
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
