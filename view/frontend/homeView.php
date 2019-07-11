<?php 

$title = 'Antony VERGNE • Développeur Web';
$description = '';
$page = 'home';

?>

<?php ob_start(); ?>

<div class="header">
   	<div class="profil-card col-lg-4 col-md-8 col-sm-8 col-10">
   		<img src="public/img/photo.jpg" alt="">
   		<h1>Antony Vergne</h1>
   		<p>Étudiant en développement web / Openclassrooms - PHP / Symfony</p>
   		<a href="public/pdf/CV_VERGNE_Antony.pdf" target="_blank" class="open-cv"><i class="fal fa-file-pdf fa-lg"></i><span>Visionner mon CV</span></a>
   		<ul class="col-3">
			<li><a href="https://github.com/RayyZen/" target="_blank"><i class="fab fa-github fa-lg"></i></a></li>
			<li><a href="https://www.linkedin.com/in/antony-vergne1/" target="_blank"><i class="fab fa-linkedin-in fa-lg"></i></a></li>
			<li><a href="https://twitter.com/SloGyou" target="_blank"><i class="fab fa-twitter fa-lg"></i></a></li>
		</ul>
   	</div>
</div>

<div class="preview-blog">
	<div class="lasts-posts col-11 ">

		<?php 

		while ($data = $posts->fetch()){

		?>

		<div class="h-post col-12 col-md-3">
			<div class="thumbnail-post" style="background-image: url(public/img/blog/thumbnails/<?= $data['id'] ?>.jpg)"></div>
			<div class="h-post-content">
				<h1>
					<?php 

		            if (strlen($data['title']) > 50) {
		                $data['title'] = substr($data['title'], 0, 50) .'...';

		                echo htmlspecialchars($data['title']);

		            } else {
		                echo htmlspecialchars($data['title']);
		            }

		            ?>
				</h1>
				<p>
					<?php 

		            if (strlen($data['content']) > 260) {

		                $data['content'] = substr($data['content'], 0, 260) .'...';

		                echo nl2br(htmlspecialchars($data['content']));

		            } else {

		                echo nl2br(htmlspecialchars($data['content']));
		                
		            }

		            ?>
		        </p>
				<a href="index.php?action=post&amp;id=<?= $data['id'] ?>">Lire l'article</a>
			</div>
			<div class="h-post-infos">
				<span><i class="fas fa-user"></i><?= $data['author'] ?></span>
				<span><?= strftime("%d %B %Y", strtotime($data['update_date'])) ?><i class="fas fa-calendar-alt"></i></span>
			</div>
		</div>

		<?php

		}
		$posts->closeCursor();

		?>

	</div>
</div>

<div class="my-degree">
	<div class="degree-content col-10 col-lg-6">
		<img src="public/img/openclassrooms.png" alt="openclassrooms-logo">
		<h1>Spécialité PHP / Symfony</h1>
		<ul>
			<li><i class="fas fa-check-circle"></i> Intégrez un thème Wordpress pour un client</li>
			<li><i class="fas fa-check-circle"></i> Analysez les besoins de votre client pour son Festival de films</li>
			<li><i class="fas fa-check-circle"></i> Concevez la solution technique d'une application de restauration en ligne, Express Food</li>
			<li><i class="fas fa-play-circle"></i> Créez votre premier blog en PHP</li>
			<li><i class="fas fa-spinner"></i> Développez de A à Z le site communautaire SnowTricks</li>
			<li><i class="fas fa-spinner"></i> Créez un web service exposant une API</li>
			<li><i class="fas fa-spinner"></i> Améliorez une application existante de ToDo & Co</li>
			<li><i class="fas fa-spinner"></i> Effectuez un stage ou construisez une veille technologique</li>
		</ul>
		<a href="https://openclassrooms.com/fr/paths/59-developpeur-dapplication-php-symfony" target="_blank">Voir le parcours en détail</a>
	</div>
</div>

<div class="form-contact" id="contact-me">
	<form action="index.php" method="POST" class="col-10 col-lg-6 mx-auto">

        <?php if (isset($_SESSION['mail_msg'])): ?>
            
        <div class="alert alert-<?= $_SESSION['mail_msg'][1] ?> alert-explode" role="alert">
            <span><?= $_SESSION['mail_msg'][0] ?></span>
        </div>

        <?php endif ?>

		<h1>Me contacter</h1>
        <p>Les champs indiqués par un asterisque (*) sont obligatoires.</p>
        <div class="row">
            <div class="form-group col-12 col-lg-6">
                <label for="form-contact-name">Votre nom*</label>
                <input type="text" class="form-control" name="name" id="form-contact-name" required>
            </div>
            <div class="form-group col-12 col-lg-6">
                <label for="form-contact-name">Votre prénom*</label>
                <input type="text" class="form-control" name="f-name" id="form-contact-f-name" required>
            </div>
        </div>
        <div class="row">
             <div class="form-group col-12">
             	<label for="form-contact-email">Votre email*</label>
             	<input type="email" class="form-control" name="email" id="form-contact-email" required>
             </div>
        </div>
        <div class="row">
             <div class="form-group col-12">
             	<label for="form-contact-subject">Sujet*</label>
             	<input type="text" class="form-control" name="subject" id="form-contact-subject" required>
             </div>
        </div>
        <div class="form-group">
            <label for="form-contact-message">Votre message*</label>
            <textarea class="form-control" name="message" id="form-contact-message" required></textarea>
        </div>
        <button type="submit" class="col-6 col-lg-3" name="send-email" id="form-contact-send">Envoyer</button>
    </form>
</div>

<?php $content = ob_get_clean(); ?>

<?php require('template.php'); ?>