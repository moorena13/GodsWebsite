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
	     <link rel="stylesheet" type "text/css" href="gods.css">
</head>
<body>     
	<div id="content">
		<p><a href="gods.php"><img class="header"     src="heading.png"></a></p>
		<br>
		<br>
	</div>
	<div class="container">     
		<div>
			<ul class="linkbox">
				<li><a href="gods2.php"     class="uncoloredlink">Greek Gods</a></li>
				<li><a href="gods3.php"     class="uncoloredlink">Roman Gods</a></li>
				<li><a href="gods4.php"     class="uncoloredlink">Browse By Element</a></li>
			</ul>
		</div>     
		<div class="float-right smallbox">
			<h1>
				<?php     
					$results = $pdo->query("SELECT * FROM GreekGods WHERE GodID =     3");
					foreach($results as $godname)
					     {
						echo $godname['Name'];
					}
				?>
			</h1>     
			<br>
			<p class="text">
				<?php
					$results =     $pdo->query("SELECT * FROM GreekGods WHERE GodID = 3");     
					foreach($results as $goddesc)
					{
						     echo $goddesc['Description'];
					}
				?>
			</p>
		     </div>
	</div>
</body>
</html>