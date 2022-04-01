<?php
$conn = mysqli_connect('localhost','root','','order');

if(!$conn)
{
	die('Connection failed!'.mysqli_error($conn));
}
if (isset($_POST['reg']))
$name = $_POST['name'];
$category = $_POST['category'];
$description = $_POST['description'];
$lifeexp = $_POST['lifeexp'];


//image code below


$fname = $_FILES["filename"]["name"];
	
$path = "images/$fname";
$temp = $_FILES["filename"]["tmp_name"];
move_uploaded_file($temp,$path);
//echo $path;
//$imagetmp = addslashes(file_get_contents($_FILES["fname"]["tmp_name"]));

//$name = addslashes($_FILES['$_POST[image]']['name']);
//$image = file_get_contents($image);
//$image = base64_encode($image);
$sql = "INSERT INTO animaldata(name,category,description,lifeexp,imagepath)
VALUES('$name','$category','$description','$lifeexp','$path')";

if(mysqli_query($conn,$sql))
{
	$Msg = " Order Received!<br> "; 
            echo '<div class="jumbotron" class="alert alert-success" style="font-size:30px;border:2px  red;" >'.$Msg. '</div>';
            
}
else
{
	echo mysqli_error($conn);
}