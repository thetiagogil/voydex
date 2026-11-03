-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex species seeds, normalized to clean schema columns and ASCII code-facing names.
-- Construction aid: PokeAPI pokemon_species CSV, restricted to National Dex 1-1025, used only for mechanical sanity checks.
-- ============================================================================
-- Category, gender ratio and egg cycles: the machine-readable species snapshot (PokeAPI), checked against Bulbapedia species pages on 2026-11-03.
-- File Scope
-- ============================================================================
-- Generation: 5
-- Table: reference.pokemon_species
-- Scope: National Dex #0494-0649
INSERT INTO reference.pokemon_species (id, national_number, slug, name, introduced_generation_id, evolution_family_id, color, category, female_ratio_eighths, egg_cycles, is_baby, is_legendary, is_mythical)
VALUES
  -- Victini
  (494, 494, 'victini', 'Victini', 5, 494, 'yellow', 'Victory', NULL, 120, FALSE, FALSE, TRUE),
  -- Snivy
  (495, 495, 'snivy', 'Snivy', 5, 495, 'green', 'Grass Snake', 1, 20, FALSE, FALSE, FALSE),
  -- Servine
  (496, 496, 'servine', 'Servine', 5, 495, 'green', 'Grass Snake', 1, 20, FALSE, FALSE, FALSE),
  -- Serperior
  (497, 497, 'serperior', 'Serperior', 5, 495, 'green', 'Regal', 1, 20, FALSE, FALSE, FALSE),
  -- Tepig
  (498, 498, 'tepig', 'Tepig', 5, 498, 'red', 'Fire Pig', 1, 20, FALSE, FALSE, FALSE),
  -- Pignite
  (499, 499, 'pignite', 'Pignite', 5, 498, 'red', 'Fire Pig', 1, 20, FALSE, FALSE, FALSE),
  -- Emboar
  (500, 500, 'emboar', 'Emboar', 5, 498, 'red', 'Mega Fire Pig', 1, 20, FALSE, FALSE, FALSE),
  -- Oshawott
  (501, 501, 'oshawott', 'Oshawott', 5, 501, 'blue', 'Sea Otter', 1, 20, FALSE, FALSE, FALSE),
  -- Dewott
  (502, 502, 'dewott', 'Dewott', 5, 501, 'blue', 'Discipline', 1, 20, FALSE, FALSE, FALSE),
  -- Samurott
  (503, 503, 'samurott', 'Samurott', 5, 501, 'blue', 'Formidable', 1, 20, FALSE, FALSE, FALSE),
  -- Patrat
  (504, 504, 'patrat', 'Patrat', 5, 504, 'brown', 'Scout', 4, 15, FALSE, FALSE, FALSE),
  -- Watchog
  (505, 505, 'watchog', 'Watchog', 5, 504, 'brown', 'Lookout', 4, 20, FALSE, FALSE, FALSE),
  -- Lillipup
  (506, 506, 'lillipup', 'Lillipup', 5, 506, 'brown', 'Puppy', 4, 15, FALSE, FALSE, FALSE),
  -- Herdier
  (507, 507, 'herdier', 'Herdier', 5, 506, 'gray', 'Loyal Dog', 4, 15, FALSE, FALSE, FALSE),
  -- Stoutland
  (508, 508, 'stoutland', 'Stoutland', 5, 506, 'white', 'Big-Hearted', 4, 15, FALSE, FALSE, FALSE),
  -- Purrloin
  (509, 509, 'purrloin', 'Purrloin', 5, 509, 'purple', 'Devious', 4, 20, FALSE, FALSE, FALSE),
  -- Liepard
  (510, 510, 'liepard', 'Liepard', 5, 509, 'purple', 'Cruel', 4, 20, FALSE, FALSE, FALSE),
  -- Pansage
  (511, 511, 'pansage', 'Pansage', 5, 511, 'green', 'Grass Monkey', 1, 20, FALSE, FALSE, FALSE),
  -- Simisage
  (512, 512, 'simisage', 'Simisage', 5, 511, 'green', 'Thorn Monkey', 1, 20, FALSE, FALSE, FALSE),
  -- Pansear
  (513, 513, 'pansear', 'Pansear', 5, 513, 'red', 'High Temp', 1, 20, FALSE, FALSE, FALSE),
  -- Simisear
  (514, 514, 'simisear', 'Simisear', 5, 513, 'red', 'Ember', 1, 20, FALSE, FALSE, FALSE),
  -- Panpour
  (515, 515, 'panpour', 'Panpour', 5, 515, 'blue', 'Spray', 1, 20, FALSE, FALSE, FALSE),
  -- Simipour
  (516, 516, 'simipour', 'Simipour', 5, 515, 'blue', 'Geyser', 1, 20, FALSE, FALSE, FALSE),
  -- Munna
  (517, 517, 'munna', 'Munna', 5, 517, 'pink', 'Dream Eater', 4, 10, FALSE, FALSE, FALSE),
  -- Musharna
  (518, 518, 'musharna', 'Musharna', 5, 517, 'pink', 'Drowsing', 4, 10, FALSE, FALSE, FALSE),
  -- Pidove
  (519, 519, 'pidove', 'Pidove', 5, 519, 'gray', 'Tiny Pigeon', 4, 15, FALSE, FALSE, FALSE),
  -- Tranquill
  (520, 520, 'tranquill', 'Tranquill', 5, 519, 'gray', 'Wild Pigeon', 4, 15, FALSE, FALSE, FALSE),
  -- Unfezant
  (521, 521, 'unfezant', 'Unfezant', 5, 519, 'gray', 'Proud', 4, 15, FALSE, FALSE, FALSE),
  -- Blitzle
  (522, 522, 'blitzle', 'Blitzle', 5, 522, 'black', 'Electrified', 4, 20, FALSE, FALSE, FALSE),
  -- Zebstrika
  (523, 523, 'zebstrika', 'Zebstrika', 5, 522, 'black', 'Thunderbolt', 4, 20, FALSE, FALSE, FALSE),
  -- Roggenrola
  (524, 524, 'roggenrola', 'Roggenrola', 5, 524, 'blue', 'Mantle', 4, 15, FALSE, FALSE, FALSE),
  -- Boldore
  (525, 525, 'boldore', 'Boldore', 5, 524, 'blue', 'Ore', 4, 15, FALSE, FALSE, FALSE),
  -- Gigalith
  (526, 526, 'gigalith', 'Gigalith', 5, 524, 'blue', 'Compressed', 4, 15, FALSE, FALSE, FALSE),
  -- Woobat
  (527, 527, 'woobat', 'Woobat', 5, 527, 'blue', 'Bat', 4, 15, FALSE, FALSE, FALSE),
  -- Swoobat
  (528, 528, 'swoobat', 'Swoobat', 5, 527, 'blue', 'Courting', 4, 15, FALSE, FALSE, FALSE),
  -- Drilbur
  (529, 529, 'drilbur', 'Drilbur', 5, 529, 'gray', 'Mole', 4, 20, FALSE, FALSE, FALSE),
  -- Excadrill
  (530, 530, 'excadrill', 'Excadrill', 5, 529, 'gray', 'Subterrene', 4, 20, FALSE, FALSE, FALSE),
  -- Audino
  (531, 531, 'audino', 'Audino', 5, 531, 'pink', 'Hearing', 4, 20, FALSE, FALSE, FALSE),
  -- Timburr
  (532, 532, 'timburr', 'Timburr', 5, 532, 'gray', 'Muscular', 2, 20, FALSE, FALSE, FALSE),
  -- Gurdurr
  (533, 533, 'gurdurr', 'Gurdurr', 5, 532, 'gray', 'Muscular', 2, 20, FALSE, FALSE, FALSE),
  -- Conkeldurr
  (534, 534, 'conkeldurr', 'Conkeldurr', 5, 532, 'brown', 'Muscular', 2, 20, FALSE, FALSE, FALSE),
  -- Tympole
  (535, 535, 'tympole', 'Tympole', 5, 535, 'blue', 'Tadpole', 4, 20, FALSE, FALSE, FALSE),
  -- Palpitoad
  (536, 536, 'palpitoad', 'Palpitoad', 5, 535, 'blue', 'Vibration', 4, 20, FALSE, FALSE, FALSE),
  -- Seismitoad
  (537, 537, 'seismitoad', 'Seismitoad', 5, 535, 'blue', 'Vibration', 4, 20, FALSE, FALSE, FALSE),
  -- Throh
  (538, 538, 'throh', 'Throh', 5, 538, 'red', 'Judo', 0, 20, FALSE, FALSE, FALSE),
  -- Sawk
  (539, 539, 'sawk', 'Sawk', 5, 539, 'blue', 'Karate', 0, 20, FALSE, FALSE, FALSE),
  -- Sewaddle
  (540, 540, 'sewaddle', 'Sewaddle', 5, 540, 'yellow', 'Sewing', 4, 15, FALSE, FALSE, FALSE),
  -- Swadloon
  (541, 541, 'swadloon', 'Swadloon', 5, 540, 'green', 'Leaf-Wrapped', 4, 15, FALSE, FALSE, FALSE),
  -- Leavanny
  (542, 542, 'leavanny', 'Leavanny', 5, 540, 'green', 'Nurturing', 4, 15, FALSE, FALSE, FALSE),
  -- Venipede
  (543, 543, 'venipede', 'Venipede', 5, 543, 'red', 'Centipede', 4, 15, FALSE, FALSE, FALSE),
  -- Whirlipede
  (544, 544, 'whirlipede', 'Whirlipede', 5, 543, 'gray', 'Curlipede', 4, 15, FALSE, FALSE, FALSE),
  -- Scolipede
  (545, 545, 'scolipede', 'Scolipede', 5, 543, 'red', 'Megapede', 4, 20, FALSE, FALSE, FALSE),
  -- Cottonee
  (546, 546, 'cottonee', 'Cottonee', 5, 546, 'green', 'Cotton Puff', 4, 20, FALSE, FALSE, FALSE),
  -- Whimsicott
  (547, 547, 'whimsicott', 'Whimsicott', 5, 546, 'green', 'Windveiled', 4, 20, FALSE, FALSE, FALSE),
  -- Petilil
  (548, 548, 'petilil', 'Petilil', 5, 548, 'green', 'Bulb', 8, 20, FALSE, FALSE, FALSE),
  -- Lilligant
  (549, 549, 'lilligant', 'Lilligant', 5, 548, 'green', 'Flowering', 8, 20, FALSE, FALSE, FALSE),
  -- Basculin
  (550, 550, 'basculin', 'Basculin', 5, 550, 'green', 'Hostile', 4, 40, FALSE, FALSE, FALSE),
  -- Sandile
  (551, 551, 'sandile', 'Sandile', 5, 551, 'brown', 'Desert Croc', 4, 20, FALSE, FALSE, FALSE),
  -- Krokorok
  (552, 552, 'krokorok', 'Krokorok', 5, 551, 'brown', 'Desert Croc', 4, 20, FALSE, FALSE, FALSE),
  -- Krookodile
  (553, 553, 'krookodile', 'Krookodile', 5, 551, 'red', 'Intimidation', 4, 20, FALSE, FALSE, FALSE),
  -- Darumaka
  (554, 554, 'darumaka', 'Darumaka', 5, 554, 'red', 'Zen Charm', 4, 20, FALSE, FALSE, FALSE),
  -- Darmanitan
  (555, 555, 'darmanitan', 'Darmanitan', 5, 554, 'red', 'Blazing', 4, 20, FALSE, FALSE, FALSE),
  -- Maractus
  (556, 556, 'maractus', 'Maractus', 5, 556, 'green', 'Cactus', 4, 20, FALSE, FALSE, FALSE),
  -- Dwebble
  (557, 557, 'dwebble', 'Dwebble', 5, 557, 'red', 'Rock Inn', 4, 20, FALSE, FALSE, FALSE),
  -- Crustle
  (558, 558, 'crustle', 'Crustle', 5, 557, 'red', 'Stone Home', 4, 20, FALSE, FALSE, FALSE),
  -- Scraggy
  (559, 559, 'scraggy', 'Scraggy', 5, 559, 'yellow', 'Shedding', 4, 15, FALSE, FALSE, FALSE),
  -- Scrafty
  (560, 560, 'scrafty', 'Scrafty', 5, 559, 'red', 'Hoodlum', 4, 15, FALSE, FALSE, FALSE),
  -- Sigilyph
  (561, 561, 'sigilyph', 'Sigilyph', 5, 561, 'black', 'Avianoid', 4, 20, FALSE, FALSE, FALSE),
  -- Yamask
  (562, 562, 'yamask', 'Yamask', 5, 562, 'black', 'Spirit', 4, 25, FALSE, FALSE, FALSE),
  -- Cofagrigus
  (563, 563, 'cofagrigus', 'Cofagrigus', 5, 562, 'yellow', 'Coffin', 4, 25, FALSE, FALSE, FALSE),
  -- Tirtouga
  (564, 564, 'tirtouga', 'Tirtouga', 5, 564, 'blue', 'Prototurtle', 1, 30, FALSE, FALSE, FALSE),
  -- Carracosta
  (565, 565, 'carracosta', 'Carracosta', 5, 564, 'blue', 'Prototurtle', 1, 30, FALSE, FALSE, FALSE),
  -- Archen
  (566, 566, 'archen', 'Archen', 5, 566, 'yellow', 'First Bird', 1, 30, FALSE, FALSE, FALSE),
  -- Archeops
  (567, 567, 'archeops', 'Archeops', 5, 566, 'yellow', 'First Bird', 1, 30, FALSE, FALSE, FALSE),
  -- Trubbish
  (568, 568, 'trubbish', 'Trubbish', 5, 568, 'green', 'Trash Bag', 4, 20, FALSE, FALSE, FALSE),
  -- Garbodor
  (569, 569, 'garbodor', 'Garbodor', 5, 568, 'green', 'Trash Heap', 4, 20, FALSE, FALSE, FALSE),
  -- Zorua
  (570, 570, 'zorua', 'Zorua', 5, 570, 'gray', 'Tricky Fox', 1, 25, FALSE, FALSE, FALSE),
  -- Zoroark
  (571, 571, 'zoroark', 'Zoroark', 5, 570, 'gray', 'Illusion Fox', 1, 20, FALSE, FALSE, FALSE),
  -- Minccino
  (572, 572, 'minccino', 'Minccino', 5, 572, 'gray', 'Chinchilla', 6, 15, FALSE, FALSE, FALSE),
  -- Cinccino
  (573, 573, 'cinccino', 'Cinccino', 5, 572, 'gray', 'Scarf', 6, 15, FALSE, FALSE, FALSE),
  -- Gothita
  (574, 574, 'gothita', 'Gothita', 5, 574, 'purple', 'Fixation', 6, 20, FALSE, FALSE, FALSE),
  -- Gothorita
  (575, 575, 'gothorita', 'Gothorita', 5, 574, 'purple', 'Manipulate', 6, 20, FALSE, FALSE, FALSE),
  -- Gothitelle
  (576, 576, 'gothitelle', 'Gothitelle', 5, 574, 'purple', 'Astral Body', 6, 20, FALSE, FALSE, FALSE),
  -- Solosis
  (577, 577, 'solosis', 'Solosis', 5, 577, 'green', 'Cell', 4, 20, FALSE, FALSE, FALSE),
  -- Duosion
  (578, 578, 'duosion', 'Duosion', 5, 577, 'green', 'Mitosis', 4, 20, FALSE, FALSE, FALSE),
  -- Reuniclus
  (579, 579, 'reuniclus', 'Reuniclus', 5, 577, 'green', 'Multiplying', 4, 20, FALSE, FALSE, FALSE),
  -- Ducklett
  (580, 580, 'ducklett', 'Ducklett', 5, 580, 'blue', 'Water Bird', 4, 20, FALSE, FALSE, FALSE),
  -- Swanna
  (581, 581, 'swanna', 'Swanna', 5, 580, 'white', 'White Bird', 4, 20, FALSE, FALSE, FALSE),
  -- Vanillite
  (582, 582, 'vanillite', 'Vanillite', 5, 582, 'white', 'Fresh Snow', 4, 20, FALSE, FALSE, FALSE),
  -- Vanillish
  (583, 583, 'vanillish', 'Vanillish', 5, 582, 'white', 'Icy Snow', 4, 20, FALSE, FALSE, FALSE),
  -- Vanilluxe
  (584, 584, 'vanilluxe', 'Vanilluxe', 5, 582, 'white', 'Snowstorm', 4, 20, FALSE, FALSE, FALSE),
  -- Deerling
  (585, 585, 'deerling', 'Deerling', 5, 585, 'pink', 'Season', 4, 20, FALSE, FALSE, FALSE),
  -- Sawsbuck
  (586, 586, 'sawsbuck', 'Sawsbuck', 5, 585, 'brown', 'Season', 4, 20, FALSE, FALSE, FALSE),
  -- Emolga
  (587, 587, 'emolga', 'Emolga', 5, 587, 'white', 'Sky Squirrel', 4, 20, FALSE, FALSE, FALSE),
  -- Karrablast
  (588, 588, 'karrablast', 'Karrablast', 5, 588, 'blue', 'Clamping', 4, 15, FALSE, FALSE, FALSE),
  -- Escavalier
  (589, 589, 'escavalier', 'Escavalier', 5, 588, 'gray', 'Cavalry', 4, 15, FALSE, FALSE, FALSE),
  -- Foongus
  (590, 590, 'foongus', 'Foongus', 5, 590, 'white', 'Mushroom', 4, 20, FALSE, FALSE, FALSE),
  -- Amoonguss
  (591, 591, 'amoonguss', 'Amoonguss', 5, 590, 'white', 'Mushroom', 4, 20, FALSE, FALSE, FALSE),
  -- Frillish
  (592, 592, 'frillish', 'Frillish', 5, 592, 'white', 'Floating', 4, 20, FALSE, FALSE, FALSE),
  -- Jellicent
  (593, 593, 'jellicent', 'Jellicent', 5, 592, 'white', 'Floating', 4, 20, FALSE, FALSE, FALSE),
  -- Alomomola
  (594, 594, 'alomomola', 'Alomomola', 5, 594, 'pink', 'Caring', 4, 40, FALSE, FALSE, FALSE),
  -- Joltik
  (595, 595, 'joltik', 'Joltik', 5, 595, 'yellow', 'Attaching', 4, 20, FALSE, FALSE, FALSE),
  -- Galvantula
  (596, 596, 'galvantula', 'Galvantula', 5, 595, 'yellow', 'EleSpider', 4, 20, FALSE, FALSE, FALSE),
  -- Ferroseed
  (597, 597, 'ferroseed', 'Ferroseed', 5, 597, 'gray', 'Thorn Seed', 4, 20, FALSE, FALSE, FALSE),
  -- Ferrothorn
  (598, 598, 'ferrothorn', 'Ferrothorn', 5, 597, 'gray', 'Thorn Pod', 4, 20, FALSE, FALSE, FALSE),
  -- Klink
  (599, 599, 'klink', 'Klink', 5, 599, 'gray', 'Gear', NULL, 20, FALSE, FALSE, FALSE),
  -- Klang
  (600, 600, 'klang', 'Klang', 5, 599, 'gray', 'Gear', NULL, 20, FALSE, FALSE, FALSE),
  -- Klinklang
  (601, 601, 'klinklang', 'Klinklang', 5, 599, 'gray', 'Gear', NULL, 20, FALSE, FALSE, FALSE),
  -- Tynamo
  (602, 602, 'tynamo', 'Tynamo', 5, 602, 'white', 'EleFish', 4, 20, FALSE, FALSE, FALSE),
  -- Eelektrik
  (603, 603, 'eelektrik', 'Eelektrik', 5, 602, 'blue', 'EleFish', 4, 20, FALSE, FALSE, FALSE),
  -- Eelektross
  (604, 604, 'eelektross', 'Eelektross', 5, 602, 'blue', 'EleFish', 4, 20, FALSE, FALSE, FALSE),
  -- Elgyem
  (605, 605, 'elgyem', 'Elgyem', 5, 605, 'blue', 'Cerebral', 4, 20, FALSE, FALSE, FALSE),
  -- Beheeyem
  (606, 606, 'beheeyem', 'Beheeyem', 5, 605, 'brown', 'Cerebral', 4, 20, FALSE, FALSE, FALSE),
  -- Litwick
  (607, 607, 'litwick', 'Litwick', 5, 607, 'white', 'Candle', 4, 20, FALSE, FALSE, FALSE),
  -- Lampent
  (608, 608, 'lampent', 'Lampent', 5, 607, 'black', 'Lamp', 4, 20, FALSE, FALSE, FALSE),
  -- Chandelure
  (609, 609, 'chandelure', 'Chandelure', 5, 607, 'black', 'Luring', 4, 20, FALSE, FALSE, FALSE),
  -- Axew
  (610, 610, 'axew', 'Axew', 5, 610, 'green', 'Tusk', 4, 40, FALSE, FALSE, FALSE),
  -- Fraxure
  (611, 611, 'fraxure', 'Fraxure', 5, 610, 'green', 'Axe Jaw', 4, 40, FALSE, FALSE, FALSE),
  -- Haxorus
  (612, 612, 'haxorus', 'Haxorus', 5, 610, 'yellow', 'Axe Jaw', 4, 40, FALSE, FALSE, FALSE),
  -- Cubchoo
  (613, 613, 'cubchoo', 'Cubchoo', 5, 613, 'white', 'Chill', 4, 20, FALSE, FALSE, FALSE),
  -- Beartic
  (614, 614, 'beartic', 'Beartic', 5, 613, 'white', 'Freezing', 4, 20, FALSE, FALSE, FALSE),
  -- Cryogonal
  (615, 615, 'cryogonal', 'Cryogonal', 5, 615, 'blue', 'Crystallizing', NULL, 25, FALSE, FALSE, FALSE),
  -- Shelmet
  (616, 616, 'shelmet', 'Shelmet', 5, 616, 'red', 'Snail', 4, 15, FALSE, FALSE, FALSE),
  -- Accelgor
  (617, 617, 'accelgor', 'Accelgor', 5, 616, 'red', 'Shell Out', 4, 15, FALSE, FALSE, FALSE),
  -- Stunfisk
  (618, 618, 'stunfisk', 'Stunfisk', 5, 618, 'brown', 'Trap', 4, 20, FALSE, FALSE, FALSE),
  -- Mienfoo
  (619, 619, 'mienfoo', 'Mienfoo', 5, 619, 'yellow', 'Martial Arts', 4, 25, FALSE, FALSE, FALSE),
  -- Mienshao
  (620, 620, 'mienshao', 'Mienshao', 5, 619, 'purple', 'Martial Arts', 4, 25, FALSE, FALSE, FALSE),
  -- Druddigon
  (621, 621, 'druddigon', 'Druddigon', 5, 621, 'red', 'Cave', 4, 30, FALSE, FALSE, FALSE),
  -- Golett
  (622, 622, 'golett', 'Golett', 5, 622, 'green', 'Automaton', NULL, 25, FALSE, FALSE, FALSE),
  -- Golurk
  (623, 623, 'golurk', 'Golurk', 5, 622, 'green', 'Automaton', NULL, 25, FALSE, FALSE, FALSE),
  -- Pawniard
  (624, 624, 'pawniard', 'Pawniard', 5, 624, 'red', 'Sharp Blade', 4, 20, FALSE, FALSE, FALSE),
  -- Bisharp
  (625, 625, 'bisharp', 'Bisharp', 5, 624, 'red', 'Sword Blade', 4, 20, FALSE, FALSE, FALSE),
  -- Bouffalant
  (626, 626, 'bouffalant', 'Bouffalant', 5, 626, 'brown', 'Bash Buffalo', 4, 20, FALSE, FALSE, FALSE),
  -- Rufflet
  (627, 627, 'rufflet', 'Rufflet', 5, 627, 'white', 'Eaglet', 0, 20, FALSE, FALSE, FALSE),
  -- Braviary
  (628, 628, 'braviary', 'Braviary', 5, 627, 'red', 'Valiant', 0, 20, FALSE, FALSE, FALSE),
  -- Vullaby
  (629, 629, 'vullaby', 'Vullaby', 5, 629, 'brown', 'Diapered', 8, 20, FALSE, FALSE, FALSE),
  -- Mandibuzz
  (630, 630, 'mandibuzz', 'Mandibuzz', 5, 629, 'brown', 'Bone Vulture', 8, 20, FALSE, FALSE, FALSE),
  -- Heatmor
  (631, 631, 'heatmor', 'Heatmor', 5, 631, 'red', 'Anteater', 4, 20, FALSE, FALSE, FALSE),
  -- Durant
  (632, 632, 'durant', 'Durant', 5, 632, 'gray', 'Iron Ant', 4, 20, FALSE, FALSE, FALSE),
  -- Deino
  (633, 633, 'deino', 'Deino', 5, 633, 'blue', 'Irate', 4, 40, FALSE, FALSE, FALSE),
  -- Zweilous
  (634, 634, 'zweilous', 'Zweilous', 5, 633, 'blue', 'Hostile', 4, 40, FALSE, FALSE, FALSE),
  -- Hydreigon
  (635, 635, 'hydreigon', 'Hydreigon', 5, 633, 'blue', 'Brutal', 4, 40, FALSE, FALSE, FALSE),
  -- Larvesta
  (636, 636, 'larvesta', 'Larvesta', 5, 636, 'white', 'Torch', 4, 40, FALSE, FALSE, FALSE),
  -- Volcarona
  (637, 637, 'volcarona', 'Volcarona', 5, 636, 'white', 'Sun', 4, 40, FALSE, FALSE, FALSE),
  -- Cobalion
  (638, 638, 'cobalion', 'Cobalion', 5, 638, 'blue', 'Iron Will', NULL, 80, FALSE, TRUE, FALSE),
  -- Terrakion
  (639, 639, 'terrakion', 'Terrakion', 5, 639, 'gray', 'Cavern', NULL, 80, FALSE, TRUE, FALSE),
  -- Virizion
  (640, 640, 'virizion', 'Virizion', 5, 640, 'green', 'Grassland', NULL, 80, FALSE, TRUE, FALSE),
  -- Tornadus
  (641, 641, 'tornadus', 'Tornadus', 5, 641, 'green', 'Cyclone', 0, 120, FALSE, TRUE, FALSE),
  -- Thundurus
  (642, 642, 'thundurus', 'Thundurus', 5, 642, 'blue', 'Bolt Strike', 0, 120, FALSE, TRUE, FALSE),
  -- Reshiram
  (643, 643, 'reshiram', 'Reshiram', 5, 643, 'white', 'Vast White', NULL, 120, FALSE, TRUE, FALSE),
  -- Zekrom
  (644, 644, 'zekrom', 'Zekrom', 5, 644, 'black', 'Deep Black', NULL, 120, FALSE, TRUE, FALSE),
  -- Landorus
  (645, 645, 'landorus', 'Landorus', 5, 645, 'brown', 'Abundance', 0, 120, FALSE, TRUE, FALSE),
  -- Kyurem
  (646, 646, 'kyurem', 'Kyurem', 5, 646, 'gray', 'Boundary', NULL, 120, FALSE, TRUE, FALSE),
  -- Keldeo
  (647, 647, 'keldeo', 'Keldeo', 5, 647, 'yellow', 'Colt', NULL, 80, FALSE, FALSE, TRUE),
  -- Meloetta
  (648, 648, 'meloetta', 'Meloetta', 5, 648, 'white', 'Melody', NULL, 120, FALSE, FALSE, TRUE),
  -- Genesect
  (649, 649, 'genesect', 'Genesect', 5, 649, 'purple', 'Paleozoic', NULL, 120, FALSE, FALSE, TRUE);
