<div class="navbar">
	<a href="index.php" class="navbar-logo">
		<img src="public/img/logo_orange.png" alt="">
	</a>
	<nav class="navbar-menu">
		<a href="index.php" class="<?php if ($page == 'home'){ echo 'active'; } ?>">Accueil</a>
		<a href="index.php?action=listPosts" class="<?php if ($page == 'blog'){ echo 'active'; } ?>">blog</a>
		<a  class="<?php if ($page == 'portfolio'){ echo 'active'; } ?>" style="cursor: not-allowed">portfolio</a>
	</nav>
</div>