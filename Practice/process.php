<?php
$servername="localhost";
$username="root";
$password="";
$dbname="WT";

$conn= new mysqli($servername,$username,$password,$dbname);

if($conn){
    echo "connection is successful";
}

if($_SERVER["REQUEST_METHOD"]=="POST"){
    $name=$_POST['name'];
    $email=$_POST['Email'];
    $password=$_POST['Password'];


    $sql="INSERT INTO user(Name,Email,Password) VALUES ('$name','$email','$password')";

    if($conn->query($sql) == TRUE){
        echo "<br>inserted Success";
    }
}
?>