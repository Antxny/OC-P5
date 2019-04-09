<?php
setlocale(LC_TIME, 'fr','fr_FR','fr_FR@euro','fr_FR.utf8','fr-FR','fra');
require('controller/controller.php');

try {
	
	if (isset($_GET['action'])) {

		if ($_GET['action'] == 'listPosts') {

	        listAllPosts();

	    } elseif ($_GET['action'] == 'post') {

	        if (isset($_GET['id']) && $_GET['id'] > 0) {

	        	post();

	        } else {
	            // Erreur ! On arrête tout, on envoie une exception, donc au saute directement au catch
                throw new Exception('Aucun identifiant de billet envoyé');

	        }

	    }

	} else {

		listHomePosts();
	}

} catch(Exception $e) { // S'il y a eu une erreur, alors...

	echo 'Erreur : ' . $e->getMessage();

}