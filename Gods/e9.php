<?php

	require "PDO.php";

	function make_link($linktext,     $linkurl)
	{
		?>
		<li><a href="<?php echo $linkurl ?>" class="uncoloredlink"> <?php     echo $linktext ?> </a></li>
		<?php
	}
?>


<!DOCTYPE html>
<html>     
<head>
	<meta charset="UTF-8">
	<title>GreekGods</title>
	<link     rel="stylesheet" type "text/css" href="gods.css">
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
			<h1>Gods of
				<?php     
					$elementname = $pdo->query("SELECT * FROM Elements WHERE ElementID =     9"); 
					foreach($elementname as $efun)
					     {
						echo $efun['Name'];
					}
				?>
			</h1>     
			<ul class="linklist">
				     <?php
					$results = $pdo->query("SELECT GreekGods.Name, GreekGods.GodID     FROM GreekGods JOIN GreekElement ON GreekGods.GodID = GreekElement.GreekID JOIN     Elements ON GreekElement.ElementID = Elements.ElementID WHERE Elements.ElementID = 9;");     
					foreach($results as $r)
					{
						     make_link($r['Name'], "g{$r['GodID']}");
					}
					     $results1 = $pdo->query("SELECT RomanGods.Name, RomanGods.GodID FROM     RomanGods JOIN RomanElement ON RomanGods.GodID = RomanElement.RomanID     JOIN Elements ON RomanElement.ElementID = Elements.ElementID WHERE     Elements.ElementID = 9;");
					foreach($results1 as $r1)
					{     
						make_link($r1['Name'], "r{$r1['GodID']}");
					     }
				?>
			</ul>
		</div>
	</div>
</body>
</html>