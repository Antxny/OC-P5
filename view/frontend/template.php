<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<meta name="Description" content="<? $description ?>">
		<meta name="keywords" content="développeur,devloper,web,étudiant,openclassrooms,oc,php,mysql,html,css,portfolio,blog,créations,js,javascript,antony,vergne,projet,1,2,3,4,5,parcours,2018,2019,contact,fr,france,paris,ile-de-france,val-de-marne">
		<meta http-equiv="content-language" content="fr" />
		<meta name="author" lang="fr" content="Antony Vergne">
		<title><?= $title ?></title>
		<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-6jHF7Z3XI3fF4XZixAuSu0gGKrXwoX/w3uFPxC56OtjChio7wtTGJWRW53Nhx6Ev" crossorigin="anonymous">
		<link rel="stylesheet" href="vendor/bootstrap-4.1.3/css/bootstrap.min.css">
		<link rel="stylesheet" href="public/css/style.css">
		<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	</head>
	<body>

		<?php include('navbar.php') ?>

        <?= $content ?>

        <?php include('footer.php') ?>

		<script src="public/js/script.js"></script>
    </body>
</html>