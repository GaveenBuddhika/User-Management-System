
<?php session_start(); ?>
<?php require_once('inc/connection.php'); ?>
<?php 

$errors = array();

	if (isset($_POST['submit'])) {
		

		// checking required fields
		$req_fields = array('first_name', 'last_name', 'email', 'password');

		foreach ($req_fields as $field) {
			if (empty(trim($_POST[$field]))) {
				$errors[] = $field . ' is required';
			}
		}

	}
 
    if (isset($_POST['email'])) {
    //checking email adress already exists
    $email= $_POST['email'];
    $query= "SELECT * FROM user WHERE email = '{$email}' LIMIT 1" ;
    
    $result_set=mysqli_query($connection,$query);


    if ($result_set) {
        // query succesfful

        if (mysqli_num_rows($result_set) == 1){

          $errors[]= 'Email adress already exists';

        }
  
    
    
    }
}
?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/add users.css">
    <title>Add New User</title>
</head>
<body>

<header>
<div class="appname">User Managment System</div>
<div  class="loggedin">Welcome <?php echo $_SESSION['first_name']; ?>!<a href="logout.php">Log Out</a></div>




</header>

<main>
    <h1>Add New User <span><a href="users.php">Back to users list</a></span> </h1>


    <?php 

			if (!empty($errors)) {
				echo '<div class="errmsg">';
				echo '<b>There were error(s) on your form.</b><br>';
				foreach ($errors as $error) {
					echo '- ' . $error . '<br>';
				}
				echo '</div>';
			}

		 ?>


<form action="add-user.php" method="post" class="userform">
 

<label for="">First name:</label>
<input type="text" name="first_name" >
 <br>


<label for="">Last name:</label>
<input type="text" name="last_name" >
 <br>
 

<label for="">Email:</label> 
<input type="email" name="email" >
<br>
 

<label for="">New password:</label>
<input type="password" name="password" >
<br>
 
 <label for="">&nbsp;</label>
 <button type="submit" name="submit">Save</button>


</form>
    


</main>

</body>
</html>
