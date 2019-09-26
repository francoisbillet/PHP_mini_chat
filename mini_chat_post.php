<?php setcookie('pseudo', $_POST['pseudo'], time() + 2*24*3600, null, null, false, true);
?>

<?php

	try {
		$db = new PDO('mysql:host=localhost;dbname=test', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
	}
			
	catch (Exception $e) {
		die('Erreur :' . $e->getMessage());
	}

	if (!empty($_POST['pseudo']) && !empty($_POST['message'])) {
		$req = $db->prepare('INSERT INTO mini_chat(pseudo, message, date_ajout) VALUES(?, ?, NOW())');
		$req->execute(array($_POST['pseudo'], $_POST['message']));
	}

	$req->closeCursor();
	header('Location: mini_chat.php');

?>