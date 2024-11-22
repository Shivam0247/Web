<?php
$servername="localhost";
$username="root";
$password="";
$dbname="WT";

$conn = new mysqli($servername,$username,$password,$dbname);
if($conn){
    echo "Connection done!";
}

// $name="Shivam";
// $Email="Shivam@gmail.com";
// $password="123";

// $sql = "INSERT INTO user (Name,Email,Password) VALUES ('$name','$Email','$password')";

// if($conn->query($sql) == TRUE){
//         echo "Insert done!";
// }



// $name1="Shivam1111";
// $Email1="Shivam@gmail.com1111";
// $password1="1231111";

// $sqlUpdate = "UPDATE user set Name='$name',Email='$Email1',Password='$password1' WHERE id='21'";

// if($conn->query($sqlUpdate) == TRUE){
//         echo "Update done!";
// }

$sqlDelete = "DELETE FROM user where id='21'";

if($conn->query($sqlDelete))
echo "Delete done!";
?>