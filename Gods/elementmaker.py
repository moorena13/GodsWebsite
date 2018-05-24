for item in range(2, 25):
    myfile = open(r'C:\Users\Natalie_2\Documents\Computer Science\Database\Gods Website\e' + str(item) + '.php', 'w')
    myfile.write('<?php\n\n\trequire "PDO.php";\n\n\tfunction make_link($linktext, \
    $linkurl)\n\t{\n\t\t?>\n\t\t<li><a href="<?php echo $linkurl ?>" class="uncoloredlink"> <?php \
    echo $linktext ?> </a></li>\n\t\t<?php\n\t}\n?>\n\n\n<!DOCTYPE html>\n<html> \
    \n<head>\n\t<meta charset="UTF-8">\n\t<title>GreekGods</title>\n\t<link \
    rel="stylesheet" type "text/css" href="gods.css">\n</head>\n<body>\n\t \
    <div id="content">\n\n\t\t<p><a href="gods.php"><img class="header" src="heading.png"></a></p> \
    \n\t\t<br>\n\t\t<br>\n\t</div>\n\t<div class="container">\n\t\t<div>\n\t\t\t \
    <ul class="linkbox">\n\t\t\t\t<li><a href="gods2.php" class="uncoloredlink">Greek Gods</a></li> \
    \n\t\t\t\t<li><a href="gods3.php" class="uncoloredlink">Roman Gods</a></li> \
    \n\t\t\t\t<li><a href="gods4.php" class="uncoloredlink">Browse By Element</a></li> \
    \n\t\t\t</ul>\n\t\t</div>\n\t\t<div>\n\t\t\t<h1>Gods of\n\t\t\t\t<?php \
    \n\t\t\t\t\t$elementname = $pdo->query("SELECT * FROM Elements WHERE ElementID = \
    ' + str(item) + '"); \n\t\t\t\t\tforeach($elementname as $efun)\n\t\t\t\t\t \
    {\n\t\t\t\t\t\techo $efun[\'Name\'];\n\t\t\t\t\t}\n\t\t\t\t?>\n\t\t\t</h1> \
    \n\t\t\t<ul class="linklist">\n\t\t\t\t \
    <?php\n\t\t\t\t\t$results = $pdo->query("SELECT GreekGods.Name, GreekGods.GodID \
    FROM GreekGods JOIN GreekElement ON GreekGods.GodID = GreekElement.GreekID JOIN \
    Elements ON GreekElement.ElementID = Elements.ElementID WHERE Elements.ElementID = ' + str(item) + ';"); \
    \n\t\t\t\t\tforeach($results as $r)\n\t\t\t\t\t{\n\t\t\t\t\t\t \
    make_link($r[\'Name\'], "g{$r[\'GodID\']}");\n\t\t\t\t\t}\n\t\t\t\t\t \
    $results1 = $pdo->query("SELECT RomanGods.Name, RomanGods.GodID FROM \
    RomanGods JOIN RomanElement ON RomanGods.GodID = RomanElement.RomanID \
    JOIN Elements ON RomanElement.ElementID = Elements.ElementID WHERE \
    Elements.ElementID = ' + str(item) + ';");\n\t\t\t\t\tforeach($results1 as $r1)\n\t\t\t\t\t{ \
    \n\t\t\t\t\t\tmake_link($r1[\'Name\'], "r{$r1[\'GodID\']}");\n\t\t\t\t\t \
    }\n\t\t\t\t?>\n\t\t\t</ul>\n\t\t</div>\n\t</div>\n</body>\n</html>')
    myfile.close() 
