<?php

$email = $_POST['admin_email'];
$password = $_POST['admin_password'];

///connect database
$con = new mysqli("localhost","root","","import_export");
if($con->connect_error){
    die("Faild to connect: ".$con->connect_error);
} else{
    $stmt = $con->prepare("select * from admin where email = ?");
    $stmt->bind_param("s",$email);
    $stmt->execute();
    $stmt_result = $stmt->get_result();
    if($stmt_result->num_rows > 0){
        $data = $stmt_result->fetch_assoc();
        if($data['password'] === $password){
            //Login Successfully
            $myfile = fopen("admin_email.txt", "w") or die("Unable to open file!");

            fwrite($myfile, $email);

            fclose($myfile);

            header( 'Location: ../admin-page.html' );
            exit();
        }
  else{
    header( 'Location: ../404.html' );        
    }

 }
 else{
    header( 'Location: ../404.html' );  
}
}
?>