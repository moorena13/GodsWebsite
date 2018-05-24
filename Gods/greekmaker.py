for item in range(1, 18):
    myfile = open(r'C:\Users\Natalie_2\Documents\Computer Science\Database\Gods Website\g' + str(item) + '.php', 'w')
    myfile.write('<?php\n\n\trequire "PDO.php";\n\n\tfunction make_link($linktext, \
    $linkurl)\n\t{\n\t\t?>\n\t\t<li><a href="<?php echo $linkurl ?>" class="uncoloredlink"> <?php \
    echo $linktext ?> </a></li>\n\t\t<?php\n\t}\n?>\n\n\n<!DOCTYPE html> \
    \n<html>\n<head>\n\t<meta charset="UTF-8">\n\t<title>GreekGods</title>\n\t \
    <link rel="stylesheet" type "text/css" href="gods.css">\n</head>\n<body> \
    \n\t<div id="content">\n\t\t<p><a href="gods.php"><img class="header" \
    src="heading.png"></a></p>\n\t\t<br>\n\t\t<br>\n\t</div>\n\t<div class="container"> \
    \n\t\t<div>\n\t\t\t<ul class="linkbox">\n\t\t\t\t<li><a href="gods2.php" \
    class="uncoloredlink">Greek Gods</a></li>\n\t\t\t\t<li><a href="gods3.php" \
    class="uncoloredlink">Roman Gods</a></li>\n\t\t\t\t<li><a href="gods4.php" \
    class="uncoloredlink">Browse By Element</a></li>\n\t\t\t</ul>\n\t\t</div> \
    \n\t\t<div class="float-right smallbox">\n\t\t\t<h1>\n\t\t\t\t<?php \
    \n\t\t\t\t\t$results = $pdo->query("SELECT * FROM GreekGods WHERE GodID = \
    ' + str(item) + '");\n\t\t\t\t\tforeach($results as $godname)\n\t\t\t\t\t \
    {\n\t\t\t\t\t\techo $godname[\'Name\'];\n\t\t\t\t\t}\n\t\t\t\t?>\n\t\t\t</h1> \
    \n\t\t\t<br>\n\t\t\t<p class="text">\n\t\t\t\t<?php\n\t\t\t\t\t$results = \
    $pdo->query("SELECT * FROM GreekGods WHERE GodID = ' + str(item) +'"); \
    \n\t\t\t\t\tforeach($results as $goddesc)\n\t\t\t\t\t{\n\t\t\t\t\t\t \
    echo $goddesc[\'Description\'];\n\t\t\t\t\t}\n\t\t\t\t?>\n\t\t\t</p>\n\t\t \
    </div>\n\t</div>\n</body>\n</html>')
    myfile.close()
                 
    
