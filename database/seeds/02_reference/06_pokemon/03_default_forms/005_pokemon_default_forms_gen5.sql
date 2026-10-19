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
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms, sprite_slug)
VALUES
  -- Victini
  (49400, 494, 'victini', 'Victini', 5, TRUE, 1, NULL, NULL, 'victini'),
  -- Snivy
  (49500, 495, 'snivy', 'Snivy', 5, TRUE, 1, NULL, NULL, 'snivy'),
  -- Servine
  (49600, 496, 'servine', 'Servine', 5, TRUE, 1, NULL, NULL, 'servine'),
  -- Serperior
  (49700, 497, 'serperior', 'Serperior', 5, TRUE, 1, NULL, NULL, 'serperior'),
  -- Tepig
  (49800, 498, 'tepig', 'Tepig', 5, TRUE, 1, NULL, NULL, 'tepig'),
  -- Pignite
  (49900, 499, 'pignite', 'Pignite', 5, TRUE, 1, NULL, NULL, 'pignite'),
  -- Emboar
  (50000, 500, 'emboar', 'Emboar', 5, TRUE, 1, NULL, NULL, 'emboar'),
  -- Oshawott
  (50100, 501, 'oshawott', 'Oshawott', 5, TRUE, 1, NULL, NULL, 'oshawott'),
  -- Dewott
  (50200, 502, 'dewott', 'Dewott', 5, TRUE, 1, NULL, NULL, 'dewott'),
  -- Samurott
  (50300, 503, 'samurott', 'Samurott', 5, TRUE, 1, NULL, NULL, 'samurott'),
  -- Patrat
  (50400, 504, 'patrat', 'Patrat', 5, TRUE, 1, NULL, NULL, 'patrat'),
  -- Watchog
  (50500, 505, 'watchog', 'Watchog', 5, TRUE, 1, NULL, NULL, 'watchog'),
  -- Lillipup
  (50600, 506, 'lillipup', 'Lillipup', 5, TRUE, 1, NULL, NULL, 'lillipup'),
  -- Herdier
  (50700, 507, 'herdier', 'Herdier', 5, TRUE, 1, NULL, NULL, 'herdier'),
  -- Stoutland
  (50800, 508, 'stoutland', 'Stoutland', 5, TRUE, 1, NULL, NULL, 'stoutland'),
  -- Purrloin
  (50900, 509, 'purrloin', 'Purrloin', 5, TRUE, 1, NULL, NULL, 'purrloin'),
  -- Liepard
  (51000, 510, 'liepard', 'Liepard', 5, TRUE, 1, NULL, NULL, 'liepard'),
  -- Pansage
  (51100, 511, 'pansage', 'Pansage', 5, TRUE, 1, NULL, NULL, 'pansage'),
  -- Simisage
  (51200, 512, 'simisage', 'Simisage', 5, TRUE, 1, NULL, NULL, 'simisage'),
  -- Pansear
  (51300, 513, 'pansear', 'Pansear', 5, TRUE, 1, NULL, NULL, 'pansear'),
  -- Simisear
  (51400, 514, 'simisear', 'Simisear', 5, TRUE, 1, NULL, NULL, 'simisear'),
  -- Panpour
  (51500, 515, 'panpour', 'Panpour', 5, TRUE, 1, NULL, NULL, 'panpour'),
  -- Simipour
  (51600, 516, 'simipour', 'Simipour', 5, TRUE, 1, NULL, NULL, 'simipour'),
  -- Munna
  (51700, 517, 'munna', 'Munna', 5, TRUE, 1, NULL, NULL, 'munna'),
  -- Musharna
  (51800, 518, 'musharna', 'Musharna', 5, TRUE, 1, NULL, NULL, 'musharna'),
  -- Pidove
  (51900, 519, 'pidove', 'Pidove', 5, TRUE, 1, NULL, NULL, 'pidove'),
  -- Tranquill
  (52000, 520, 'tranquill', 'Tranquill', 5, TRUE, 1, NULL, NULL, 'tranquill'),
  -- Unfezant
  (52100, 521, 'unfezant', 'Unfezant', 5, TRUE, 1, NULL, NULL, 'unfezant'),
  -- Blitzle
  (52200, 522, 'blitzle', 'Blitzle', 5, TRUE, 1, NULL, NULL, 'blitzle'),
  -- Zebstrika
  (52300, 523, 'zebstrika', 'Zebstrika', 5, TRUE, 1, NULL, NULL, 'zebstrika'),
  -- Roggenrola
  (52400, 524, 'roggenrola', 'Roggenrola', 5, TRUE, 1, NULL, NULL, 'roggenrola'),
  -- Boldore
  (52500, 525, 'boldore', 'Boldore', 5, TRUE, 1, NULL, NULL, 'boldore'),
  -- Gigalith
  (52600, 526, 'gigalith', 'Gigalith', 5, TRUE, 1, NULL, NULL, 'gigalith'),
  -- Woobat
  (52700, 527, 'woobat', 'Woobat', 5, TRUE, 1, NULL, NULL, 'woobat'),
  -- Swoobat
  (52800, 528, 'swoobat', 'Swoobat', 5, TRUE, 1, NULL, NULL, 'swoobat'),
  -- Drilbur
  (52900, 529, 'drilbur', 'Drilbur', 5, TRUE, 1, NULL, NULL, 'drilbur'),
  -- Excadrill
  (53000, 530, 'excadrill', 'Excadrill', 5, TRUE, 1, NULL, NULL, 'excadrill'),
  -- Audino
  (53100, 531, 'audino', 'Audino', 5, TRUE, 1, NULL, NULL, 'audino'),
  -- Timburr
  (53200, 532, 'timburr', 'Timburr', 5, TRUE, 1, NULL, NULL, 'timburr'),
  -- Gurdurr
  (53300, 533, 'gurdurr', 'Gurdurr', 5, TRUE, 1, NULL, NULL, 'gurdurr'),
  -- Conkeldurr
  (53400, 534, 'conkeldurr', 'Conkeldurr', 5, TRUE, 1, NULL, NULL, 'conkeldurr'),
  -- Tympole
  (53500, 535, 'tympole', 'Tympole', 5, TRUE, 1, NULL, NULL, 'tympole'),
  -- Palpitoad
  (53600, 536, 'palpitoad', 'Palpitoad', 5, TRUE, 1, NULL, NULL, 'palpitoad'),
  -- Seismitoad
  (53700, 537, 'seismitoad', 'Seismitoad', 5, TRUE, 1, NULL, NULL, 'seismitoad'),
  -- Throh
  (53800, 538, 'throh', 'Throh', 5, TRUE, 1, NULL, NULL, 'throh'),
  -- Sawk
  (53900, 539, 'sawk', 'Sawk', 5, TRUE, 1, NULL, NULL, 'sawk'),
  -- Sewaddle
  (54000, 540, 'sewaddle', 'Sewaddle', 5, TRUE, 1, NULL, NULL, 'sewaddle'),
  -- Swadloon
  (54100, 541, 'swadloon', 'Swadloon', 5, TRUE, 1, NULL, NULL, 'swadloon'),
  -- Leavanny
  (54200, 542, 'leavanny', 'Leavanny', 5, TRUE, 1, NULL, NULL, 'leavanny'),
  -- Venipede
  (54300, 543, 'venipede', 'Venipede', 5, TRUE, 1, NULL, NULL, 'venipede'),
  -- Whirlipede
  (54400, 544, 'whirlipede', 'Whirlipede', 5, TRUE, 1, NULL, NULL, 'whirlipede'),
  -- Scolipede
  (54500, 545, 'scolipede', 'Scolipede', 5, TRUE, 1, NULL, NULL, 'scolipede'),
  -- Cottonee
  (54600, 546, 'cottonee', 'Cottonee', 5, TRUE, 1, NULL, NULL, 'cottonee'),
  -- Whimsicott
  (54700, 547, 'whimsicott', 'Whimsicott', 5, TRUE, 1, NULL, NULL, 'whimsicott'),
  -- Petilil
  (54800, 548, 'petilil', 'Petilil', 5, TRUE, 1, NULL, NULL, 'petilil'),
  -- Lilligant
  (54900, 549, 'lilligant', 'Lilligant', 5, TRUE, 1, NULL, NULL, 'lilligant'),
  -- Basculin
  (55000, 550, 'basculin', 'Basculin', 5, TRUE, 1, NULL, NULL, 'basculin'),
  -- Sandile
  (55100, 551, 'sandile', 'Sandile', 5, TRUE, 1, NULL, NULL, 'sandile'),
  -- Krokorok
  (55200, 552, 'krokorok', 'Krokorok', 5, TRUE, 1, NULL, NULL, 'krokorok'),
  -- Krookodile
  (55300, 553, 'krookodile', 'Krookodile', 5, TRUE, 1, NULL, NULL, 'krookodile'),
  -- Darumaka
  (55400, 554, 'darumaka', 'Darumaka', 5, TRUE, 1, NULL, NULL, 'darumaka'),
  -- Darmanitan
  (55500, 555, 'darmanitan', 'Darmanitan', 5, TRUE, 1, NULL, NULL, 'darmanitan'),
  -- Maractus
  (55600, 556, 'maractus', 'Maractus', 5, TRUE, 1, NULL, NULL, 'maractus'),
  -- Dwebble
  (55700, 557, 'dwebble', 'Dwebble', 5, TRUE, 1, NULL, NULL, 'dwebble'),
  -- Crustle
  (55800, 558, 'crustle', 'Crustle', 5, TRUE, 1, NULL, NULL, 'crustle'),
  -- Scraggy
  (55900, 559, 'scraggy', 'Scraggy', 5, TRUE, 1, NULL, NULL, 'scraggy'),
  -- Scrafty
  (56000, 560, 'scrafty', 'Scrafty', 5, TRUE, 1, NULL, NULL, 'scrafty'),
  -- Sigilyph
  (56100, 561, 'sigilyph', 'Sigilyph', 5, TRUE, 1, NULL, NULL, 'sigilyph'),
  -- Yamask
  (56200, 562, 'yamask', 'Yamask', 5, TRUE, 1, NULL, NULL, 'yamask'),
  -- Cofagrigus
  (56300, 563, 'cofagrigus', 'Cofagrigus', 5, TRUE, 1, NULL, NULL, 'cofagrigus'),
  -- Tirtouga
  (56400, 564, 'tirtouga', 'Tirtouga', 5, TRUE, 1, NULL, NULL, 'tirtouga'),
  -- Carracosta
  (56500, 565, 'carracosta', 'Carracosta', 5, TRUE, 1, NULL, NULL, 'carracosta'),
  -- Archen
  (56600, 566, 'archen', 'Archen', 5, TRUE, 1, NULL, NULL, 'archen'),
  -- Archeops
  (56700, 567, 'archeops', 'Archeops', 5, TRUE, 1, NULL, NULL, 'archeops'),
  -- Trubbish
  (56800, 568, 'trubbish', 'Trubbish', 5, TRUE, 1, NULL, NULL, 'trubbish'),
  -- Garbodor
  (56900, 569, 'garbodor', 'Garbodor', 5, TRUE, 1, NULL, NULL, 'garbodor'),
  -- Zorua
  (57000, 570, 'zorua', 'Zorua', 5, TRUE, 1, NULL, NULL, 'zorua'),
  -- Zoroark
  (57100, 571, 'zoroark', 'Zoroark', 5, TRUE, 1, NULL, NULL, 'zoroark'),
  -- Minccino
  (57200, 572, 'minccino', 'Minccino', 5, TRUE, 1, NULL, NULL, 'minccino'),
  -- Cinccino
  (57300, 573, 'cinccino', 'Cinccino', 5, TRUE, 1, NULL, NULL, 'cinccino'),
  -- Gothita
  (57400, 574, 'gothita', 'Gothita', 5, TRUE, 1, NULL, NULL, 'gothita'),
  -- Gothorita
  (57500, 575, 'gothorita', 'Gothorita', 5, TRUE, 1, NULL, NULL, 'gothorita'),
  -- Gothitelle
  (57600, 576, 'gothitelle', 'Gothitelle', 5, TRUE, 1, NULL, NULL, 'gothitelle'),
  -- Solosis
  (57700, 577, 'solosis', 'Solosis', 5, TRUE, 1, NULL, NULL, 'solosis'),
  -- Duosion
  (57800, 578, 'duosion', 'Duosion', 5, TRUE, 1, NULL, NULL, 'duosion'),
  -- Reuniclus
  (57900, 579, 'reuniclus', 'Reuniclus', 5, TRUE, 1, NULL, NULL, 'reuniclus'),
  -- Ducklett
  (58000, 580, 'ducklett', 'Ducklett', 5, TRUE, 1, NULL, NULL, 'ducklett'),
  -- Swanna
  (58100, 581, 'swanna', 'Swanna', 5, TRUE, 1, NULL, NULL, 'swanna'),
  -- Vanillite
  (58200, 582, 'vanillite', 'Vanillite', 5, TRUE, 1, NULL, NULL, 'vanillite'),
  -- Vanillish
  (58300, 583, 'vanillish', 'Vanillish', 5, TRUE, 1, NULL, NULL, 'vanillish'),
  -- Vanilluxe
  (58400, 584, 'vanilluxe', 'Vanilluxe', 5, TRUE, 1, NULL, NULL, 'vanilluxe'),
  -- Deerling
  (58500, 585, 'deerling', 'Deerling', 5, TRUE, 1, NULL, NULL, 'deerling'),
  -- Sawsbuck
  (58600, 586, 'sawsbuck', 'Sawsbuck', 5, TRUE, 1, NULL, NULL, 'sawsbuck'),
  -- Emolga
  (58700, 587, 'emolga', 'Emolga', 5, TRUE, 1, NULL, NULL, 'emolga'),
  -- Karrablast
  (58800, 588, 'karrablast', 'Karrablast', 5, TRUE, 1, NULL, NULL, 'karrablast'),
  -- Escavalier
  (58900, 589, 'escavalier', 'Escavalier', 5, TRUE, 1, NULL, NULL, 'escavalier'),
  -- Foongus
  (59000, 590, 'foongus', 'Foongus', 5, TRUE, 1, NULL, NULL, 'foongus'),
  -- Amoonguss
  (59100, 591, 'amoonguss', 'Amoonguss', 5, TRUE, 1, NULL, NULL, 'amoonguss'),
  -- Frillish
  (59200, 592, 'frillish', 'Frillish', 5, TRUE, 1, NULL, NULL, 'frillish'),
  -- Jellicent
  (59300, 593, 'jellicent', 'Jellicent', 5, TRUE, 1, NULL, NULL, 'jellicent'),
  -- Alomomola
  (59400, 594, 'alomomola', 'Alomomola', 5, TRUE, 1, NULL, NULL, 'alomomola'),
  -- Joltik
  (59500, 595, 'joltik', 'Joltik', 5, TRUE, 1, NULL, NULL, 'joltik'),
  -- Galvantula
  (59600, 596, 'galvantula', 'Galvantula', 5, TRUE, 1, NULL, NULL, 'galvantula'),
  -- Ferroseed
  (59700, 597, 'ferroseed', 'Ferroseed', 5, TRUE, 1, NULL, NULL, 'ferroseed'),
  -- Ferrothorn
  (59800, 598, 'ferrothorn', 'Ferrothorn', 5, TRUE, 1, NULL, NULL, 'ferrothorn'),
  -- Klink
  (59900, 599, 'klink', 'Klink', 5, TRUE, 1, NULL, NULL, 'klink'),
  -- Klang
  (60000, 600, 'klang', 'Klang', 5, TRUE, 1, NULL, NULL, 'klang'),
  -- Klinklang
  (60100, 601, 'klinklang', 'Klinklang', 5, TRUE, 1, NULL, NULL, 'klinklang'),
  -- Tynamo
  (60200, 602, 'tynamo', 'Tynamo', 5, TRUE, 1, NULL, NULL, 'tynamo'),
  -- Eelektrik
  (60300, 603, 'eelektrik', 'Eelektrik', 5, TRUE, 1, NULL, NULL, 'eelektrik'),
  -- Eelektross
  (60400, 604, 'eelektross', 'Eelektross', 5, TRUE, 1, NULL, NULL, 'eelektross'),
  -- Elgyem
  (60500, 605, 'elgyem', 'Elgyem', 5, TRUE, 1, NULL, NULL, 'elgyem'),
  -- Beheeyem
  (60600, 606, 'beheeyem', 'Beheeyem', 5, TRUE, 1, NULL, NULL, 'beheeyem'),
  -- Litwick
  (60700, 607, 'litwick', 'Litwick', 5, TRUE, 1, NULL, NULL, 'litwick'),
  -- Lampent
  (60800, 608, 'lampent', 'Lampent', 5, TRUE, 1, NULL, NULL, 'lampent'),
  -- Chandelure
  (60900, 609, 'chandelure', 'Chandelure', 5, TRUE, 1, NULL, NULL, 'chandelure'),
  -- Axew
  (61000, 610, 'axew', 'Axew', 5, TRUE, 1, NULL, NULL, 'axew'),
  -- Fraxure
  (61100, 611, 'fraxure', 'Fraxure', 5, TRUE, 1, NULL, NULL, 'fraxure'),
  -- Haxorus
  (61200, 612, 'haxorus', 'Haxorus', 5, TRUE, 1, NULL, NULL, 'haxorus'),
  -- Cubchoo
  (61300, 613, 'cubchoo', 'Cubchoo', 5, TRUE, 1, NULL, NULL, 'cubchoo'),
  -- Beartic
  (61400, 614, 'beartic', 'Beartic', 5, TRUE, 1, NULL, NULL, 'beartic'),
  -- Cryogonal
  (61500, 615, 'cryogonal', 'Cryogonal', 5, TRUE, 1, NULL, NULL, 'cryogonal'),
  -- Shelmet
  (61600, 616, 'shelmet', 'Shelmet', 5, TRUE, 1, NULL, NULL, 'shelmet'),
  -- Accelgor
  (61700, 617, 'accelgor', 'Accelgor', 5, TRUE, 1, NULL, NULL, 'accelgor'),
  -- Stunfisk
  (61800, 618, 'stunfisk', 'Stunfisk', 5, TRUE, 1, NULL, NULL, 'stunfisk'),
  -- Mienfoo
  (61900, 619, 'mienfoo', 'Mienfoo', 5, TRUE, 1, NULL, NULL, 'mienfoo'),
  -- Mienshao
  (62000, 620, 'mienshao', 'Mienshao', 5, TRUE, 1, NULL, NULL, 'mienshao'),
  -- Druddigon
  (62100, 621, 'druddigon', 'Druddigon', 5, TRUE, 1, NULL, NULL, 'druddigon'),
  -- Golett
  (62200, 622, 'golett', 'Golett', 5, TRUE, 1, NULL, NULL, 'golett'),
  -- Golurk
  (62300, 623, 'golurk', 'Golurk', 5, TRUE, 1, NULL, NULL, 'golurk'),
  -- Pawniard
  (62400, 624, 'pawniard', 'Pawniard', 5, TRUE, 1, NULL, NULL, 'pawniard'),
  -- Bisharp
  (62500, 625, 'bisharp', 'Bisharp', 5, TRUE, 1, NULL, NULL, 'bisharp'),
  -- Bouffalant
  (62600, 626, 'bouffalant', 'Bouffalant', 5, TRUE, 1, NULL, NULL, 'bouffalant'),
  -- Rufflet
  (62700, 627, 'rufflet', 'Rufflet', 5, TRUE, 1, NULL, NULL, 'rufflet'),
  -- Braviary
  (62800, 628, 'braviary', 'Braviary', 5, TRUE, 1, NULL, NULL, 'braviary'),
  -- Vullaby
  (62900, 629, 'vullaby', 'Vullaby', 5, TRUE, 1, NULL, NULL, 'vullaby'),
  -- Mandibuzz
  (63000, 630, 'mandibuzz', 'Mandibuzz', 5, TRUE, 1, NULL, NULL, 'mandibuzz'),
  -- Heatmor
  (63100, 631, 'heatmor', 'Heatmor', 5, TRUE, 1, NULL, NULL, 'heatmor'),
  -- Durant
  (63200, 632, 'durant', 'Durant', 5, TRUE, 1, NULL, NULL, 'durant'),
  -- Deino
  (63300, 633, 'deino', 'Deino', 5, TRUE, 1, NULL, NULL, 'deino'),
  -- Zweilous
  (63400, 634, 'zweilous', 'Zweilous', 5, TRUE, 1, NULL, NULL, 'zweilous'),
  -- Hydreigon
  (63500, 635, 'hydreigon', 'Hydreigon', 5, TRUE, 1, NULL, NULL, 'hydreigon'),
  -- Larvesta
  (63600, 636, 'larvesta', 'Larvesta', 5, TRUE, 1, NULL, NULL, 'larvesta'),
  -- Volcarona
  (63700, 637, 'volcarona', 'Volcarona', 5, TRUE, 1, NULL, NULL, 'volcarona'),
  -- Cobalion
  (63800, 638, 'cobalion', 'Cobalion', 5, TRUE, 1, NULL, NULL, 'cobalion'),
  -- Terrakion
  (63900, 639, 'terrakion', 'Terrakion', 5, TRUE, 1, NULL, NULL, 'terrakion'),
  -- Virizion
  (64000, 640, 'virizion', 'Virizion', 5, TRUE, 1, NULL, NULL, 'virizion'),
  -- Tornadus
  (64100, 641, 'tornadus', 'Tornadus', 5, TRUE, 1, NULL, NULL, 'tornadus'),
  -- Thundurus
  (64200, 642, 'thundurus', 'Thundurus', 5, TRUE, 1, NULL, NULL, 'thundurus'),
  -- Reshiram
  (64300, 643, 'reshiram', 'Reshiram', 5, TRUE, 1, NULL, NULL, 'reshiram'),
  -- Zekrom
  (64400, 644, 'zekrom', 'Zekrom', 5, TRUE, 1, NULL, NULL, 'zekrom'),
  -- Landorus
  (64500, 645, 'landorus', 'Landorus', 5, TRUE, 1, NULL, NULL, 'landorus'),
  -- Kyurem
  (64600, 646, 'kyurem', 'Kyurem', 5, TRUE, 1, NULL, NULL, 'kyurem'),
  -- Keldeo
  (64700, 647, 'keldeo', 'Keldeo', 5, TRUE, 1, NULL, NULL, 'keldeo'),
  -- Meloetta
  (64800, 648, 'meloetta', 'Meloetta', 5, TRUE, 1, NULL, NULL, 'meloetta'),
  -- Genesect
  (64900, 649, 'genesect', 'Genesect', 5, TRUE, 1, NULL, NULL, 'genesect');
