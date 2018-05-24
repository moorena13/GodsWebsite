<?php

	require "PDO.php";
	
	function make_link($linktext, $linkurl)
	{
		?>
		<li><a href="<?php echo $linkurl ?>" class="uncoloredlink"> <?php echo $linktext ?> </a></li>
		<?php
	}
?>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>GreekGods</title>
	<link rel="stylesheet" type "text/css" href="gods.css">
</head>
<body>
	<div id="content">
	
		<p><a href="gods.php"><img class="header" src="heading.png"></a></p>
		<br>
		<br>
	</div>
	<div class="container">
		<div>
			<ul class="linkbox">
				<li><a href="gods2.php" class="uncoloredlink">Greek Gods</a></li>
				<li><a href="gods3.php" class="uncoloredlink">Roman Gods</a></li>
				<li><a href="gods4.php" class="uncoloredlink">Browse By Element</a></li>
			</ul>
		</div>
		<div>
			<h1><strong>Greek Gods</strong></h1>
			<ul class="linklist">
				<?php
					$results = $pdo->query("SELECT * FROM GreekGods");
					foreach($results as $r) 
					{
						make_link($r['Name'], "g{$r['GodID']}");
					}
				?>
			</ul>
		</div>
	</div>
</body>
</html>