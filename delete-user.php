<?php session_start(); ?>
<?php require_once('inc/connection.php'); ?>
<?php require_once('inc/functions.php'); ?>
<?php 
	// checking if a user is logged in
	if (!isset($_SESSION['user_id'])) {
		header('Location: index.php');
	}

	if (isset($_GET['user_id'])) {
		// getting the user information
		$user_id = mysqli_real_escape_string($connection, $_GET['user_id']);

		if ( $user_id == $_SESSION['user_id'] ) {
			// should not delete current user
			header('Location: users.php?err=cannot_delete_current_user');
		} else {
			// deleting the user
			$query = "UPDATE user SET is_deleted = 1 WHERE id = {$user_id} LIMIT 1";

			$result = mysqli_query($connection, $query);

			if ($result) {
				// user deleted
				header('Location: users.php?msg=user_deleted');
			} else {
				header('Location: users.php?err=delete_failed');
			}
		}
		
	} else {
		header('Location: users.php');
	}
?>