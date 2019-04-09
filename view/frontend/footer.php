<div class="footer"
<?php if (isset($page_size) AND $page_size == 1){
	echo "style='position: absolute; bottom: 0;width: 100%;'";
}?>
>
	<div class="footer-content row col-md-8">
		<div class="links col-md-4">
			<h1>Navigation</h1>
			<hr>
			<ul>
				<li><a href="index.php">Blog</a></li>
				<li><a href="#">Portfolio</a></li>
				<li><a href="#">A propos</a></li>
				<li><a href="index.php?action=contact">Contact</a></li>
				<li><a href="#">Administration</a></li>
			</ul>
		</div>
		<div class="social col-md-4">
			<h1>Réseaux sociaux</h1>
			<hr>
			<ul>
				<li><a href="https://github.com/RayyZen/" target="_blank"><i class="fab fa-github fa-2x"></i></a></li>
				<li><a href="https://www.linkedin.com/in/antony-vergne1/" target="_blank"><i class="fab fa-linkedin-in fa-2x"></i></a></li>
				<li><a href="https://twitter.com/SloGyou" target="_blank"><i class="fab fa-twitter fa-2x"></i></a></li>
			</ul>
			<span>© 2019 A. VERGNE</span>
		</div>
		<div class="newsletter  col-md-4">
			<h1>Newsletter</h1>
			<hr>
			<label for="btn-newsletter">Inscrivez-vous à la newsletter !</label>
			<input type="text" id="newsletter">
			<button type="submit"><i class="fal fa-check"></i></button>
		</div>
	</div>
</div>