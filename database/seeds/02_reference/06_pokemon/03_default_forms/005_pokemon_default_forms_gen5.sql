-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex default-form seeds, normalized to clean schema columns and ASCII code-facing names.
-- Scope note: default forms only; regional, alternate, held-item, cosmetic, and battle forms are seeded in later reviewed batches.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 5
-- Table: reference.pokemon_forms
-- Scope: default forms for National Dex #0494-0649
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms)
VALUES
  -- Victini
  (49400, 494, 'victini', 'Victini', 5, TRUE, 1, NULL, NULL),
  -- Snivy
  (49500, 495, 'snivy', 'Snivy', 5, TRUE, 1, NULL, NULL),
  -- Servine
  (49600, 496, 'servine', 'Servine', 5, TRUE, 1, NULL, NULL),
  -- Serperior
  (49700, 497, 'serperior', 'Serperior', 5, TRUE, 1, NULL, NULL),
  -- Tepig
  (49800, 498, 'tepig', 'Tepig', 5, TRUE, 1, NULL, NULL),
  -- Pignite
  (49900, 499, 'pignite', 'Pignite', 5, TRUE, 1, NULL, NULL),
  -- Emboar
  (50000, 500, 'emboar', 'Emboar', 5, TRUE, 1, NULL, NULL),
  -- Oshawott
  (50100, 501, 'oshawott', 'Oshawott', 5, TRUE, 1, NULL, NULL),
  -- Dewott
  (50200, 502, 'dewott', 'Dewott', 5, TRUE, 1, NULL, NULL),
  -- Samurott
  (50300, 503, 'samurott', 'Samurott', 5, TRUE, 1, NULL, NULL),
  -- Patrat
  (50400, 504, 'patrat', 'Patrat', 5, TRUE, 1, NULL, NULL),
  -- Watchog
  (50500, 505, 'watchog', 'Watchog', 5, TRUE, 1, NULL, NULL),
  -- Lillipup
  (50600, 506, 'lillipup', 'Lillipup', 5, TRUE, 1, NULL, NULL),
  -- Herdier
  (50700, 507, 'herdier', 'Herdier', 5, TRUE, 1, NULL, NULL),
  -- Stoutland
  (50800, 508, 'stoutland', 'Stoutland', 5, TRUE, 1, NULL, NULL),
  -- Purrloin
  (50900, 509, 'purrloin', 'Purrloin', 5, TRUE, 1, NULL, NULL),
  -- Liepard
  (51000, 510, 'liepard', 'Liepard', 5, TRUE, 1, NULL, NULL),
  -- Pansage
  (51100, 511, 'pansage', 'Pansage', 5, TRUE, 1, NULL, NULL),
  -- Simisage
  (51200, 512, 'simisage', 'Simisage', 5, TRUE, 1, NULL, NULL),
  -- Pansear
  (51300, 513, 'pansear', 'Pansear', 5, TRUE, 1, NULL, NULL),
  -- Simisear
  (51400, 514, 'simisear', 'Simisear', 5, TRUE, 1, NULL, NULL),
  -- Panpour
  (51500, 515, 'panpour', 'Panpour', 5, TRUE, 1, NULL, NULL),
  -- Simipour
  (51600, 516, 'simipour', 'Simipour', 5, TRUE, 1, NULL, NULL),
  -- Munna
  (51700, 517, 'munna', 'Munna', 5, TRUE, 1, NULL, NULL),
  -- Musharna
  (51800, 518, 'musharna', 'Musharna', 5, TRUE, 1, NULL, NULL),
  -- Pidove
  (51900, 519, 'pidove', 'Pidove', 5, TRUE, 1, NULL, NULL),
  -- Tranquill
  (52000, 520, 'tranquill', 'Tranquill', 5, TRUE, 1, NULL, NULL),
  -- Unfezant
  (52100, 521, 'unfezant', 'Unfezant', 5, TRUE, 1, NULL, NULL),
  -- Blitzle
  (52200, 522, 'blitzle', 'Blitzle', 5, TRUE, 1, NULL, NULL),
  -- Zebstrika
  (52300, 523, 'zebstrika', 'Zebstrika', 5, TRUE, 1, NULL, NULL),
  -- Roggenrola
  (52400, 524, 'roggenrola', 'Roggenrola', 5, TRUE, 1, NULL, NULL),
  -- Boldore
  (52500, 525, 'boldore', 'Boldore', 5, TRUE, 1, NULL, NULL),
  -- Gigalith
  (52600, 526, 'gigalith', 'Gigalith', 5, TRUE, 1, NULL, NULL),
  -- Woobat
  (52700, 527, 'woobat', 'Woobat', 5, TRUE, 1, NULL, NULL),
  -- Swoobat
  (52800, 528, 'swoobat', 'Swoobat', 5, TRUE, 1, NULL, NULL),
  -- Drilbur
  (52900, 529, 'drilbur', 'Drilbur', 5, TRUE, 1, NULL, NULL),
  -- Excadrill
  (53000, 530, 'excadrill', 'Excadrill', 5, TRUE, 1, NULL, NULL),
  -- Audino
  (53100, 531, 'audino', 'Audino', 5, TRUE, 1, NULL, NULL),
  -- Timburr
  (53200, 532, 'timburr', 'Timburr', 5, TRUE, 1, NULL, NULL),
  -- Gurdurr
  (53300, 533, 'gurdurr', 'Gurdurr', 5, TRUE, 1, NULL, NULL),
  -- Conkeldurr
  (53400, 534, 'conkeldurr', 'Conkeldurr', 5, TRUE, 1, NULL, NULL),
  -- Tympole
  (53500, 535, 'tympole', 'Tympole', 5, TRUE, 1, NULL, NULL),
  -- Palpitoad
  (53600, 536, 'palpitoad', 'Palpitoad', 5, TRUE, 1, NULL, NULL),
  -- Seismitoad
  (53700, 537, 'seismitoad', 'Seismitoad', 5, TRUE, 1, NULL, NULL),
  -- Throh
  (53800, 538, 'throh', 'Throh', 5, TRUE, 1, NULL, NULL),
  -- Sawk
  (53900, 539, 'sawk', 'Sawk', 5, TRUE, 1, NULL, NULL),
  -- Sewaddle
  (54000, 540, 'sewaddle', 'Sewaddle', 5, TRUE, 1, NULL, NULL),
  -- Swadloon
  (54100, 541, 'swadloon', 'Swadloon', 5, TRUE, 1, NULL, NULL),
  -- Leavanny
  (54200, 542, 'leavanny', 'Leavanny', 5, TRUE, 1, NULL, NULL),
  -- Venipede
  (54300, 543, 'venipede', 'Venipede', 5, TRUE, 1, NULL, NULL),
  -- Whirlipede
  (54400, 544, 'whirlipede', 'Whirlipede', 5, TRUE, 1, NULL, NULL),
  -- Scolipede
  (54500, 545, 'scolipede', 'Scolipede', 5, TRUE, 1, NULL, NULL),
  -- Cottonee
  (54600, 546, 'cottonee', 'Cottonee', 5, TRUE, 1, NULL, NULL),
  -- Whimsicott
  (54700, 547, 'whimsicott', 'Whimsicott', 5, TRUE, 1, NULL, NULL),
  -- Petilil
  (54800, 548, 'petilil', 'Petilil', 5, TRUE, 1, NULL, NULL),
  -- Lilligant
  (54900, 549, 'lilligant', 'Lilligant', 5, TRUE, 1, NULL, NULL),
  -- Basculin
  (55000, 550, 'basculin', 'Basculin', 5, TRUE, 1, NULL, NULL),
  -- Sandile
  (55100, 551, 'sandile', 'Sandile', 5, TRUE, 1, NULL, NULL),
  -- Krokorok
  (55200, 552, 'krokorok', 'Krokorok', 5, TRUE, 1, NULL, NULL),
  -- Krookodile
  (55300, 553, 'krookodile', 'Krookodile', 5, TRUE, 1, NULL, NULL),
  -- Darumaka
  (55400, 554, 'darumaka', 'Darumaka', 5, TRUE, 1, NULL, NULL),
  -- Darmanitan
  (55500, 555, 'darmanitan', 'Darmanitan', 5, TRUE, 1, NULL, NULL),
  -- Maractus
  (55600, 556, 'maractus', 'Maractus', 5, TRUE, 1, NULL, NULL),
  -- Dwebble
  (55700, 557, 'dwebble', 'Dwebble', 5, TRUE, 1, NULL, NULL),
  -- Crustle
  (55800, 558, 'crustle', 'Crustle', 5, TRUE, 1, NULL, NULL),
  -- Scraggy
  (55900, 559, 'scraggy', 'Scraggy', 5, TRUE, 1, NULL, NULL),
  -- Scrafty
  (56000, 560, 'scrafty', 'Scrafty', 5, TRUE, 1, NULL, NULL),
  -- Sigilyph
  (56100, 561, 'sigilyph', 'Sigilyph', 5, TRUE, 1, NULL, NULL),
  -- Yamask
  (56200, 562, 'yamask', 'Yamask', 5, TRUE, 1, NULL, NULL),
  -- Cofagrigus
  (56300, 563, 'cofagrigus', 'Cofagrigus', 5, TRUE, 1, NULL, NULL),
  -- Tirtouga
  (56400, 564, 'tirtouga', 'Tirtouga', 5, TRUE, 1, NULL, NULL),
  -- Carracosta
  (56500, 565, 'carracosta', 'Carracosta', 5, TRUE, 1, NULL, NULL),
  -- Archen
  (56600, 566, 'archen', 'Archen', 5, TRUE, 1, NULL, NULL),
  -- Archeops
  (56700, 567, 'archeops', 'Archeops', 5, TRUE, 1, NULL, NULL),
  -- Trubbish
  (56800, 568, 'trubbish', 'Trubbish', 5, TRUE, 1, NULL, NULL),
  -- Garbodor
  (56900, 569, 'garbodor', 'Garbodor', 5, TRUE, 1, NULL, NULL),
  -- Zorua
  (57000, 570, 'zorua', 'Zorua', 5, TRUE, 1, NULL, NULL),
  -- Zoroark
  (57100, 571, 'zoroark', 'Zoroark', 5, TRUE, 1, NULL, NULL),
  -- Minccino
  (57200, 572, 'minccino', 'Minccino', 5, TRUE, 1, NULL, NULL),
  -- Cinccino
  (57300, 573, 'cinccino', 'Cinccino', 5, TRUE, 1, NULL, NULL),
  -- Gothita
  (57400, 574, 'gothita', 'Gothita', 5, TRUE, 1, NULL, NULL),
  -- Gothorita
  (57500, 575, 'gothorita', 'Gothorita', 5, TRUE, 1, NULL, NULL),
  -- Gothitelle
  (57600, 576, 'gothitelle', 'Gothitelle', 5, TRUE, 1, NULL, NULL),
  -- Solosis
  (57700, 577, 'solosis', 'Solosis', 5, TRUE, 1, NULL, NULL),
  -- Duosion
  (57800, 578, 'duosion', 'Duosion', 5, TRUE, 1, NULL, NULL),
  -- Reuniclus
  (57900, 579, 'reuniclus', 'Reuniclus', 5, TRUE, 1, NULL, NULL),
  -- Ducklett
  (58000, 580, 'ducklett', 'Ducklett', 5, TRUE, 1, NULL, NULL),
  -- Swanna
  (58100, 581, 'swanna', 'Swanna', 5, TRUE, 1, NULL, NULL),
  -- Vanillite
  (58200, 582, 'vanillite', 'Vanillite', 5, TRUE, 1, NULL, NULL),
  -- Vanillish
  (58300, 583, 'vanillish', 'Vanillish', 5, TRUE, 1, NULL, NULL),
  -- Vanilluxe
  (58400, 584, 'vanilluxe', 'Vanilluxe', 5, TRUE, 1, NULL, NULL),
  -- Deerling
  (58500, 585, 'deerling', 'Deerling', 5, TRUE, 1, NULL, NULL),
  -- Sawsbuck
  (58600, 586, 'sawsbuck', 'Sawsbuck', 5, TRUE, 1, NULL, NULL),
  -- Emolga
  (58700, 587, 'emolga', 'Emolga', 5, TRUE, 1, NULL, NULL),
  -- Karrablast
  (58800, 588, 'karrablast', 'Karrablast', 5, TRUE, 1, NULL, NULL),
  -- Escavalier
  (58900, 589, 'escavalier', 'Escavalier', 5, TRUE, 1, NULL, NULL),
  -- Foongus
  (59000, 590, 'foongus', 'Foongus', 5, TRUE, 1, NULL, NULL),
  -- Amoonguss
  (59100, 591, 'amoonguss', 'Amoonguss', 5, TRUE, 1, NULL, NULL),
  -- Frillish
  (59200, 592, 'frillish', 'Frillish', 5, TRUE, 1, NULL, NULL),
  -- Jellicent
  (59300, 593, 'jellicent', 'Jellicent', 5, TRUE, 1, NULL, NULL),
  -- Alomomola
  (59400, 594, 'alomomola', 'Alomomola', 5, TRUE, 1, NULL, NULL),
  -- Joltik
  (59500, 595, 'joltik', 'Joltik', 5, TRUE, 1, NULL, NULL),
  -- Galvantula
  (59600, 596, 'galvantula', 'Galvantula', 5, TRUE, 1, NULL, NULL),
  -- Ferroseed
  (59700, 597, 'ferroseed', 'Ferroseed', 5, TRUE, 1, NULL, NULL),
  -- Ferrothorn
  (59800, 598, 'ferrothorn', 'Ferrothorn', 5, TRUE, 1, NULL, NULL),
  -- Klink
  (59900, 599, 'klink', 'Klink', 5, TRUE, 1, NULL, NULL),
  -- Klang
  (60000, 600, 'klang', 'Klang', 5, TRUE, 1, NULL, NULL),
  -- Klinklang
  (60100, 601, 'klinklang', 'Klinklang', 5, TRUE, 1, NULL, NULL),
  -- Tynamo
  (60200, 602, 'tynamo', 'Tynamo', 5, TRUE, 1, NULL, NULL),
  -- Eelektrik
  (60300, 603, 'eelektrik', 'Eelektrik', 5, TRUE, 1, NULL, NULL),
  -- Eelektross
  (60400, 604, 'eelektross', 'Eelektross', 5, TRUE, 1, NULL, NULL),
  -- Elgyem
  (60500, 605, 'elgyem', 'Elgyem', 5, TRUE, 1, NULL, NULL),
  -- Beheeyem
  (60600, 606, 'beheeyem', 'Beheeyem', 5, TRUE, 1, NULL, NULL),
  -- Litwick
  (60700, 607, 'litwick', 'Litwick', 5, TRUE, 1, NULL, NULL),
  -- Lampent
  (60800, 608, 'lampent', 'Lampent', 5, TRUE, 1, NULL, NULL),
  -- Chandelure
  (60900, 609, 'chandelure', 'Chandelure', 5, TRUE, 1, NULL, NULL),
  -- Axew
  (61000, 610, 'axew', 'Axew', 5, TRUE, 1, NULL, NULL),
  -- Fraxure
  (61100, 611, 'fraxure', 'Fraxure', 5, TRUE, 1, NULL, NULL),
  -- Haxorus
  (61200, 612, 'haxorus', 'Haxorus', 5, TRUE, 1, NULL, NULL),
  -- Cubchoo
  (61300, 613, 'cubchoo', 'Cubchoo', 5, TRUE, 1, NULL, NULL),
  -- Beartic
  (61400, 614, 'beartic', 'Beartic', 5, TRUE, 1, NULL, NULL),
  -- Cryogonal
  (61500, 615, 'cryogonal', 'Cryogonal', 5, TRUE, 1, NULL, NULL),
  -- Shelmet
  (61600, 616, 'shelmet', 'Shelmet', 5, TRUE, 1, NULL, NULL),
  -- Accelgor
  (61700, 617, 'accelgor', 'Accelgor', 5, TRUE, 1, NULL, NULL),
  -- Stunfisk
  (61800, 618, 'stunfisk', 'Stunfisk', 5, TRUE, 1, NULL, NULL),
  -- Mienfoo
  (61900, 619, 'mienfoo', 'Mienfoo', 5, TRUE, 1, NULL, NULL),
  -- Mienshao
  (62000, 620, 'mienshao', 'Mienshao', 5, TRUE, 1, NULL, NULL),
  -- Druddigon
  (62100, 621, 'druddigon', 'Druddigon', 5, TRUE, 1, NULL, NULL),
  -- Golett
  (62200, 622, 'golett', 'Golett', 5, TRUE, 1, NULL, NULL),
  -- Golurk
  (62300, 623, 'golurk', 'Golurk', 5, TRUE, 1, NULL, NULL),
  -- Pawniard
  (62400, 624, 'pawniard', 'Pawniard', 5, TRUE, 1, NULL, NULL),
  -- Bisharp
  (62500, 625, 'bisharp', 'Bisharp', 5, TRUE, 1, NULL, NULL),
  -- Bouffalant
  (62600, 626, 'bouffalant', 'Bouffalant', 5, TRUE, 1, NULL, NULL),
  -- Rufflet
  (62700, 627, 'rufflet', 'Rufflet', 5, TRUE, 1, NULL, NULL),
  -- Braviary
  (62800, 628, 'braviary', 'Braviary', 5, TRUE, 1, NULL, NULL),
  -- Vullaby
  (62900, 629, 'vullaby', 'Vullaby', 5, TRUE, 1, NULL, NULL),
  -- Mandibuzz
  (63000, 630, 'mandibuzz', 'Mandibuzz', 5, TRUE, 1, NULL, NULL),
  -- Heatmor
  (63100, 631, 'heatmor', 'Heatmor', 5, TRUE, 1, NULL, NULL),
  -- Durant
  (63200, 632, 'durant', 'Durant', 5, TRUE, 1, NULL, NULL),
  -- Deino
  (63300, 633, 'deino', 'Deino', 5, TRUE, 1, NULL, NULL),
  -- Zweilous
  (63400, 634, 'zweilous', 'Zweilous', 5, TRUE, 1, NULL, NULL),
  -- Hydreigon
  (63500, 635, 'hydreigon', 'Hydreigon', 5, TRUE, 1, NULL, NULL),
  -- Larvesta
  (63600, 636, 'larvesta', 'Larvesta', 5, TRUE, 1, NULL, NULL),
  -- Volcarona
  (63700, 637, 'volcarona', 'Volcarona', 5, TRUE, 1, NULL, NULL),
  -- Cobalion
  (63800, 638, 'cobalion', 'Cobalion', 5, TRUE, 1, NULL, NULL),
  -- Terrakion
  (63900, 639, 'terrakion', 'Terrakion', 5, TRUE, 1, NULL, NULL),
  -- Virizion
  (64000, 640, 'virizion', 'Virizion', 5, TRUE, 1, NULL, NULL),
  -- Tornadus
  (64100, 641, 'tornadus', 'Tornadus', 5, TRUE, 1, NULL, NULL),
  -- Thundurus
  (64200, 642, 'thundurus', 'Thundurus', 5, TRUE, 1, NULL, NULL),
  -- Reshiram
  (64300, 643, 'reshiram', 'Reshiram', 5, TRUE, 1, NULL, NULL),
  -- Zekrom
  (64400, 644, 'zekrom', 'Zekrom', 5, TRUE, 1, NULL, NULL),
  -- Landorus
  (64500, 645, 'landorus', 'Landorus', 5, TRUE, 1, NULL, NULL),
  -- Kyurem
  (64600, 646, 'kyurem', 'Kyurem', 5, TRUE, 1, NULL, NULL),
  -- Keldeo
  (64700, 647, 'keldeo', 'Keldeo', 5, TRUE, 1, NULL, NULL),
  -- Meloetta
  (64800, 648, 'meloetta', 'Meloetta', 5, TRUE, 1, NULL, NULL),
  -- Genesect
  (64900, 649, 'genesect', 'Genesect', 5, TRUE, 1, NULL, NULL);
