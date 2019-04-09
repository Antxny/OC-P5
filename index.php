<?php
setlocale(LC_TIME, 'fr','fr_FR','fr_FR@euro','fr_FR.utf8','fr-FR','fra');
require('controller/controller.php');

try {
	
	if (isset($_GET['action'])) {



	} else {

		listHomePosts();
	}

} catch(Exception $e) { // S'il y a eu une erreur, alors...

	echo 'Erreur : ' . $e->getMessage();

}