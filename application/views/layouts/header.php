<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<title><?= $title; ?></title>

	<!--<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>-->
	<link href='http://fonts.googleapis.com/css?family=Roboto:300,100,400' rel='stylesheet' type='text/css'>
	
	<link rel="stylesheet" type="text/css" href="<?= base_url(); ?>stylesheet/normalize.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url(); ?>stylesheet/jquery-ui.min.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url(); ?>stylesheet/all.css">
	<script src="<?= base_url(); ?>js/vendor/jquery-1.11.1.min.js"></script>
	<script src="<?= base_url(); ?>js/vendor/jquery-ui.min.js"></script>
	<script src="<?= base_url(); ?>js/main.js"></script>
</head>
<body>
	<div class="containerPage">

		<header>
			<div class="container">
				<a href="<?= base_url(); ?>" class="logo">Logo</a>
				<nav>
					<ul>
						<li><a href="<?= base_url(); ?>product/sell">Sell product</a></li>
						<li><a href="<?= base_url(); ?>product/add">Add product</a></li>
						<li><a href="<?= base_url(); ?>product/modify">Modify product</a></li>
						<li><a href="<?= base_url(); ?>product/delete">Delete product</a></li>
					</ul>
				</nav>
			</div>
		</header>

		<!--.mainContent-->
		<div class="mainContent">
		
	