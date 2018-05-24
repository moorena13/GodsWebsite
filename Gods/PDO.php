<?php
	$host = "dany.simmons.edu";
	$user = "moorena";
	$password = "1617655";
	$database = "33301sp16_moorena";
	$location = "mysql:host={$host};dbname={$database}";
	$options = array(PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC);
	$pdo = new PDO($location, $user, $password, $options);
?>