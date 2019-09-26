<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title> Mini-chat </title>

		<style>

			a {
				text-decoration: none;
			}

		</style>

	</head>

	<body>
		<form method="post" action="mini_chat_post.php">
			<p>
				<label for="pseudo"> Pseudo : </label> <input type="text" id="pseudo" name="pseudo" value="<?php 

				if (isset($_COOKIE['pseudo'])) {
					echo htmlspecialchars($_COOKIE['pseudo']); 
				}

				?>" /> <br />
				<label for="message"> Message : </label> <input type="text" id="message" name="message" /> <br />
				<input type="submit" value="Envoyer" />
			</p>
		</form>

		<p> <a href="mini_chat.php">Rafraîchir</a> </p>

<?php

	try {
		$db = new PDO('mysql:host=localhost;dbname=test;charset=utf8', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
	}

	catch (Exception $e) {
		die('Erreur :' . $e->getMessage());
	}

	if (!isset($_GET['page'])) {
		$_GET['page']=1;
	}

	// Affichage des messages
	$request = $db->prepare('SELECT pseudo, message, DATE_FORMAT(date_ajout, "le %d/%m/%Y à %Hh%imin%ss") as date_modifiee FROM mini_chat ORDER BY date_ajout DESC LIMIT ?, 10');
	$request->bindValue(1, ($_GET['page']-1)*10, PDO::PARAM_INT); 
	$request->execute();
		
	while($data = $request->fetch()) {
		echo '<p> [' . $data['date_modifiee'] .  '] <strong>' . htmlspecialchars($data['pseudo']) . '</strong> : ' . htmlspecialchars($data['message']) . '</p>';
	}

	$request->closeCursor();

	// On compte le nombre de messages
	$request = $db->query('SELECT COUNT(*) AS nb_messages FROM mini_chat');
	// $request->execute();

	$data = $request->fetch();
	$nb_messages = $data['nb_messages'];

	// On compte le nombre de pages
	if ($nb_messages%10==0) {
		$nb_pages = $nb_messages / 10;
	}

	else {
		$nb_pages = (int) ($nb_messages / 10 + 1);
	}
	
	?>

	<p> Page :
		<?php
			for ($i=1;$i<=$nb_pages;$i++) {
				?>
				<a href="mini_chat.php?page=<?php echo $i; ?>"> <?php echo $i; ?> </a>
				<?php
			}
?>

	</body>
</html>