CREATE TABLE GreekGods
(
GodID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(30),
Description TEXT
);

CREATE TABLE RomanGods
(
GodID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(30),
Description TEXT
);

CREATE TABLE Elements
(
ElementID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(30)
);

CREATE TABLE GreekRoman
(
GreekID INT UNSIGNED,
RomanID INT UNSIGNED,
PRIMARY KEY (GreekID, RomanID),
FOREIGN KEY (GreekID) REFERENCES GreekGods(GodID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT,
FOREIGN KEY (RomanID) REFERENCES RomanGods(GodID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT
);

CREATE TABLE GreekElement
(
GreekID INT UNSIGNED,
ElementID INT UNSIGNED,
PRIMARY KEY (GreekID, ElementID),
FOREIGN KEY (GreekID) REFERENCES GreekGods(GodID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT,
FOREIGN KEY (ElementID) REFERENCES Elements(ElementID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT
);

CREATE TABLE RomanElement
(
RomanID INT UNSIGNED,
ElementID INT UNSIGNED,
PRIMARY KEY (RomanID, ElementID),
FOREIGN KEY (RomanID) REFERENCES RomanGods(GodID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT,
FOREIGN KEY (ElementID) REFERENCES Elements(ElementID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT
);

INSERT INTO GreekGods(Name, Description) VALUES
('Gaia', 'Gaia is the mother goddess of Greek Mythology, creating and reigning over the earth and the universe. Gaia was the first deity to emerge from the nothingness of Chaos. She created the universe and the earth alone. Then she created the sky, personified as the titan Uranus, and with him  gave birth to the other titans.'),
('Uranus', 'Uranus is the first son of Gaia and also her counterpart, Father Sky to her Mother Earth. As the personification of the sky, Uranus plays only a small role in mythology as the ancestor of most of the gods and titans but rarely appearing in their tales.'),
('Cronus', 'Cronus or Kronos is the son of Uranus and Gaia and the leader of the titans. After Gaia and Uranus had many children, including the Cyclopes, Uranus imprisoned some of them in Tartarus, a deep abyss under the earth. Gaia, unhappy about this, created a stone scythe and convinced Cronus to castrate Uranus with it. Cronus then became ruler of the titans along with his sister and wife, Rhea. Because of the  scythe, Cronus is associated with the harvest. '),
('Aphrodite', 'Aphrodite is the well-known goddess of love, beauty, and sexuality. She was born  when Cronus cast the cut-off testicals of Uranus into the sea; more G-rated mythology  holds that she was born of the sea foam. Zeus married her to Hephaestus, god of the forge, out of fear that desire for her would cause the gods to war amongst themselves. Aphrodite played a major role in starting the Trojan War. Athena, Hera, and Aphrodite held a contest to determine who was the most beautiful, and they  chose Prince Paris of Troy to be the judge. Hera promised that if Paris chose her, she would make him king of Europe and Asia. Athena promised that she would make him the wisest and greatest warrior who had ever lived. And Aphrodite promised that she would give him the love of Helen of Sparta, the most beautiful woman in the  world. Paris chose Aphrodite, and when he stole Helen away from her husband, King Menelaus, the Trojan War began.'),
('Rhea', 'Rhea is the wife and sister of Cronus and daughter of Gaia and Uranus. She is known mainly as the mother of gods and plays only a small role in mythology. Her most important role is that of mothering Hestia, Hades, Demeter, Poseidon, Hera, and Zeus. Cronus feared that his own children would overthrow him the way he had overthrown his father, so he swallowed them as soon as they were born. When the  last, Zeus, was about to be born, Rhea, wishing to save him, wrapped a stone in  cloth and fed it to Cronus instead of the baby. Zeus was then raised in secret until he was old enough to defeat his father, whereupon he cut open Cronus''s stomach and his five siblings emerged. Zeus then began his rule.'),
('Zeus', 'Zeus is Cronus and Rhea''s son and the king of the Olympian gods. His ascension marked the end of the titans'' reign and the beginning of the gods''. He is commonly associated with lightning and the ability to throw lightning bolts, but is more generally the god of the sky, ruler of heaven, and also presides over law and justice. His wife is Hera, but Zeus is infamous for his many affairs, for which Hera generally resented him.'),
('Hera', 'Hera, queen of the gods, is the wife of Zeus and the goddess of women and the unity of marriage. She is a solemn and majestic figure. Despite her position as queen of the gods, she is not notable for her children, of whom only Ares is a relatively well-known figure. Hera features most prominently in myth as Zeus''s scorned wife, frequently hunting down and tormenting Zeus''s mistresses and his illegitimate children.'),
('Hestia', 'Hestia, another daughter of Cronus and Rhea, is the virgin goddess who rules over the hearth. This domain encompasses the house and the family as well as architecture and the state. These many functions made Hestia an important part of the Greek pantheon, and she received the first sacrifice made in every household. She is the oldest of Cronus and Rhea''s children based on birth order but the last of the children to be rescued from Cronus''s stomach.'),
('Demeter', 'Demeter, a daughter of Cronus and Rhea, is best-known as the goddess of the harvest. However, she also presides over sacred law and civilization, as agriculture was the mark of a civilized society. Demeter is the mother of Persephone, whose abduction by Hades is one of the most famous Greek myths. After Persephone was taken, Demeter no longer cared to look after crops, and the world fell into a perpetual winter. Only when Persephone agreed to spend half the year with Demeter did the goddess regain her happiness. Thus the crops grow when Demeter and Persephone are together and wilt and die when they are apart, creating the cycle of the seasons.'),
('Hades', 'Hades is one of the sons of Rhea and Cronus, brother to Poseidon and Zeus. After the defeat of the titans, the three brothers drew lots to determine who would rule each part of the cosmos. Hades, being the loser, ended up with the Underworld. He rules over the souls of the dead and their judgment and is frequently depicted with the three-headed guard dog Cerberus. Though modern adaptations such as Disney''s Hercules portray him as evil, Hades was just, if cold and stern, and regarded more as a jailer than a malevolent presence. Nonetheless, the Greeks avoided mentioning Hades too much, lest they draw his attention.'),
('Poseidon', 'Poseidon, brother of Zeus and Hades and son of Rhea and Cronus, is the god of the ocean, as that was the domain he was accorded when the three brothers drew lots to determine who would rule where. He also ruled over earthquakes and was known as a tamer of horses. Supposedly his chosen home was the mythical island Atlantis. He plays an important role in Homer''s Odyssey, in which he is responsible for keeping Odysseus lost at sea for twenty long years after Odysseus injures Poseidon''s cyclops son Polyphemus.'),
('Athena', 'Athena, one of the best-known gods of the Greek pantheon, has many domans. She is known as the goddess of wisdom, but the strategy of war, the justice of the state, and even various crafts, such as metalwork and especially weaving, are attributed to her. Zeus slept with the goddess Metis, but he was afraid of their potential children, so he swallowed her. Metis had already conceived, however, and Zeus grew to have a terrible headache. When he ordered another god to split his head open with an axe, Athena burst forth, fully clothed in the garb of a soldier. Athena is the patron goddess of Athens. In one myth she is responsible for the creation of the spider. Thanks, Athena.'),
('Ares', 'Ares, one of the few children of Zeus and Hera, is the well-known god of war. In contrast to his sister Athena, who rules over the strategy and craft of war, Ares governs the bloodlust, brutality, and physicality of it. Though he is fairly commonly known today, he plays a limited role in Greek mythology. He is generally a barbaric figure, and when he does appear in myths, it is usually on the losing side. During the Trojan War, Ares sided with the losing Trojans, while Athena favored the Greeks.'),
('Hephaestus', 'Hephaestus is the god of the forge, fire, and blacksmithing, as well as a son of Zeus and Hera. He is one of the more even-tempered of the Olympians, as well as being occasionally described as physically deformed or ugly. Zeus married Aphrodite to Hephaestus in order to prevent the gods from fighting for her favor, but Aphrodite was frequently unfaithful to Hephaestus, having affairs with Ares or the human Adonis.'),
('Hermes', 'Hermes is the winged messenger of the gods and one of the youngest Olympians. He is the son of Zeus, though not by Hera. Less well-known is his association with commerce and money. He is the god of transitions and boundaries, such as the border between the mortal realm and the gods, and is also the guide of souls to Hades.'),
('Apollo', 'Apollo is the son of Zeus and the twin brother of Artemis. He is one of the most important gods in the Greek pantheon, as he embodies the ideal of youth. He is associated with the sun and light, though less so than Helios, as well as medicine, music, truth, poetry, and plague. In myth, he is recognized as a skilled musician and archer. Despite Apollo''s fame, few myths about him are widely popular in this day and age.'),
('Artemis', 'Artemis is Apollo''s twin sister and Zeus''s daughter. She is the third virgin goddess, the other two being Athena and Hestia. She is the goddess of the hunt, arrows, wilderness, and women, especially girls. She is also associated with the moon, in contrast to her twin''s association with the sun. She assisted her mother with her twin Apollo''s birth, and so she is a ruler of childbirth as well.');

INSERT INTO RomanGods(Name, Description) VALUES
('Terra', 'Terra is the Roman earth goddess, known by the full name Terra Mater or Tellus Mater, both roughly translating to "Mother Earth." Her Roman mythology is sparse, and she is frequently conflated with Ceres, as both reign over motherhood, harvest, and the earth.'),
('Caelus', 'Caelus, also known as Caelum, is the Roman sky god and equivalent of Uranus. Caelum is the Latin word for sky or the heavens, and is also from where the word "celestial" comes. Similarly to his Greek counterpart, Caelus plays a small part in mythology.'),
('Saturn', 'Saturn is the Roman equivalent of Cronus, son and castrator of Caelus. He ruled over a golden age on heaven and earth. Saturn was associated with the harvest, renewal, wealth, and time. He is a prominent god in the Roman pantheon, and his importance can be seen today in the name of the planet Saturn and the day of the week Saturday, both of which are named after him.'),
('Venus', 'Venus is a more important goddess in the Roman pantheon than her counterpart Aphrodite is in the Greek. Still ruling over love, beauty, fertility, and sexuality, Venus was regarded as the mother of all Rome through her mortal son Aeneas. Aeneas was a prince who survived the fall of Troy and was an ancestor of Remus and Romulus, the brothers who founded Rome.'),
('Ops', 'Ops, wife of Saturn, is a Roman goddess ruling over the earth, the harvest, and motherhood. She shares these attributes with Terra and Ceres, and is not particularly notable on her own accord. She was required to have temples according to public decree, but her presence and importance in Roman mythology is negligible.'),
('Jupiter', 'Jupiter is a sky god, the ruler of the gods who presides over thunder. He is also known by the name Jove, hence the exclamation, "By Jove!" He is the divine witness to all oaths, making him a guardian of justice and good government. In myth, he negotiates with the second king of Rome in order to establish religious rules. The fifth planet in the Solar System bears his name.'),
('Juno', 'Juno, Jupiter''s sister and wife, is the Roman equivalent of Hera. She is queen of the gods, ruling also as a protector of women, marriage, and the state. Juno is an important goddess in the Roman pantheon, playing many roles and going by many names. She is regarded as a warlike figure, one of the Capitoline Triad, alongside Jupiter and Minerva.'),
('Vesta', 'Vesta is the Roman goddess of the hearth, the equivalent of Hestia. She was viewed as the protector of the hearth of Rome itself as well as the individual households. She was more associated with fire than her Greek counterpart was. Sacred fire burned in Vesta''s temples, guarded by women known as Vestales or the Vestal virgins, who served for thirty years, during which they took a vow of chastity and made sure Vesta''s fire never went out.'),
('Ceres', 'Ceres is the Roman equivalent of Demeter, ruling over the harvest and motherhood. She played an additional role in fertility and marriage. The dwarf planet Ceres, located in the asteroid belt between Jupiter and Mars, bears her name. In Roman myth, Ceres''s daughter is named Proserpine or Proserpina.'),
('Pluto', 'Pluto, god of the underworld, is the Roman equivalent of Hades. The dwarf planet Pluto bears his name. Pluto was also known by this name in later Greek times as well as by the name Hades. Pluto is conflated with two other minor gods in Roman tradition: Orcus, another god of the underworld, and Dis Pater, god of underground wealth.'),
('Neptune', 'Neptune, who gave his name to the eighth planet in the Solar System, is the Roman equivalent of Poseidon. Similarly to Poseidon, Neptune rules over the ocean as well as freshwater springs. He is also a tamer of horses. Neptune was a fairly minor god in Roman religion, possessing only one major temple.'),
('Minerva', 'Minerva, goddess of wisdom, craft, and the state, is the Roman equivalent of the Greek Athena. As her counterpart, she sprang fully-formed from Jupiter''s head. She was part of the Capitoline Triad along with Juno and Jupiter. Minerva''s name comes from the Etruscan goddess Menrva, and the two shared many traits.'),
('Mars', 'Mars, god of war, plays a much larger part in Roman mythology than his counterpart Ares does in Greek myth. Mars also rules over agriculture. His importance in the pantheon is second only to Jupiter. His warlike aspects were viewed as a way to secure peace rather than violence. He was the father of Rome because he was the father of the twins Romulus and Remus, who grew up to build the city.'),
('Vulcan', 'Vulcan is the god of the forge and fire, the Roman equivalent of Hephaestus. He plays a relatively minor role in Roman mythology and tradition. His festival, the Vulcanalia, occurred during the heat of the summer when crops were most likely to burn. His fire was therefore not only used for smithing but also as a weapon of destruction.'),
('Mercury', 'Mercury is the god of messages, eloquence, and trade and money. He leads souls to the underworld, similar to his Greek counterpart Hermes. Mercury gives his name to the first planet of the Solar System as well as the element mercury or "quicksilver."'),
('Apollo', 'Uniquely among the major deities, Apollo retains his Greek name in the Roman pantheon. Apollo is the son of Jupiter and the twin brother of Diana. He is one of the most important gods in the Roman pantheon, as he embodies the ideal of youth. He is associated with the sun and light, though less so than Helios, as well as medicine, music, truth, poetry, and plague. In myth, he is recognized as a skilled musician and archer. Despite Apollo''s fame, few myths about him are widely popular in this day and age.'),
('Diana', 'Diana is the Roman equivalent of Artemis, goddess of the hunt, the moon, and childbirth. Diana''s association with the moon is more pronounced. She also ruled over the wilderness and woodlands and possessed the ability to speak with wild animals.');

INSERT INTO GreekRoman VALUES
(1, 1),
(2, 2),
(3, 3),
(3, 2),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(9, 1),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17);

INSERT INTO Elements(Name) VALUES
('Earth'),
('Motherhood'),
('Sky'),
('Fatherhood'),
('Time'),
('Harvest'),
('Love'),
('State'),
('Women'),
('Marriage'),
('Home'),
('Underworld'),
('Ocean'),
('Wisdom'),
('Art'),
('War'),
('Fire'),
('Forge'),
('Money'),
('Messenger'),
('Sun'),
('Music'),
('Hunt'),
('Moon');

INSERT INTO GreekElement VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(5, 2),
(6, 3),
(6, 8),
(7, 9),
(7, 10),
(8, 11),
(8, 8),
(9, 6),
(9, 2),
(9, 8),
(10, 12),
(11, 13),
(11, 1),
(12, 14),
(12, 8),
(12, 15),
(12, 16),
(13, 16),
(14, 17),
(14, 18),
(15, 19),
(15, 20),
(16, 21),
(16, 22),
(17, 23),
(17, 9);

INSERT INTO RomanElement VALUES
(1, 1),
(1, 6),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(3, 19),
(4, 7),
(4, 2),
(5, 1),
(5, 6),
(5, 2),
(6, 3),
(6, 8),
(7, 9),
(7, 8),
(8, 11),
(8, 1),
(8, 17),
(9, 2),
(9, 6),
(10, 12),
(11, 13),
(12, 14),
(12, 15),
(13, 6),
(13, 16),
(14, 17),
(14, 18),
(15, 19),
(15, 20),
(16, 21),
(16, 22),
(17, 9),
(17, 23),
(17, 24);