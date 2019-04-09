<?php
setlocale(LC_TIME, 'fr','fr_FR','fr_FR@euro','fr_FR.utf8','fr-FR','fra');
require('controller/controller.php');

session_start();

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

	    } elseif ($_GET['action'] == 'addPost') {
	            
	    	if (!$_POST) {

	    		require('view/frontend/addPostView.php');

	    	} else {

	    		if (!empty($_POST['author']) && !empty($_POST['title']) && !empty($_POST['content'])) {

	                addPost($_POST['author'], $_POST['title'], $_POST['content']);

	            } else {

	                throw new Exception('Tous les champs ne sont pas remplis !');
                    
	            }
	    	}

	    } elseif ($_GET['action'] == 'deletePost') {

	    	if (isset($_GET['id']) && $_GET['id'] > 0) {

	        	deletePost();

	        } else {
	            // Erreur ! On arrête tout, on envoie une exception, donc au saute directement au catch
                throw new Exception('Aucun identifiant de commentaire envoyé');

	        }

	    } elseif ($_GET['action'] == 'submitComment') {

	        if (isset($_GET['id']) && $_GET['id'] > 0) {

	            if (!empty($_POST['author']) && !empty($_POST['comment'])) {

	                addComment($_GET['id'], $_POST['author'], $_POST['comment']);

	            } else {
	                // Autre exception
                    throw new Exception('Tous les champs ne sont pas remplis !');

	            }
	        } else {
	        	// Autre exception
	            throw new Exception('Aucun identifiant de billet envoyé');

	        }

	    } elseif ($_GET['action'] == 'login') {

	    	if (!$_POST) {

	    		require('view/frontend/loginView.php');

	    	} else {

	    		if (!empty($_POST['username']) && !empty($_POST['password']) ) {

	    			connectUser($_POST['username'], $_POST['password']);

	    		} else {

	    			$error = 'Veuillez completer tous les champs !';
	    			require('view/frontend/registerView.php');

	    		}

	    	}

	    } elseif ($_GET['action'] == 'register') {
	            
	    	if (!$_POST) {

	    		require('view/frontend/registerView.php');

	    	} else {
 
	    		if (!empty($_POST['username']) && !empty($_POST['email']) && !empty($_POST['password']) && !empty($_POST['password2'])) {

	                registerUser($_POST['username'], $_POST['email'], $_POST['password'], $_POST['password2']);

	            } else {

	                $error = 'Veuillez completer tous les champs !';
	                require('view/frontend/registerView.php');
                    
	            }
	    	}
	    	
	    } elseif ($_GET['action'] == 'logout') {
	            
	    	logoutUser();
	    	
	    }

	} else {

		listHomePosts();
	}

} catch(Exception $e) { // S'il y a eu une erreur, alors...

	echo 'Erreur : ' . $e->getMessage();

}