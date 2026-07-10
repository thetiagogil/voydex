-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Unova Pokedex number in Black / White.
-- Cross-check: PokemonDB Black / White Pokedex and legacy Voydex Black / White Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Unova Pokedex entries for Black / White.
-- Black / White use the original 156-entry Unova Pokedex, numbered #000-#155 with Victini at #000.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #000 Victini
  (1101, 494, NULL, 0, FALSE),
  -- #001 Snivy
  (1101, 495, NULL, 1, TRUE),
  -- #002 Servine
  (1101, 496, NULL, 2, TRUE),
  -- #003 Serperior
  (1101, 497, NULL, 3, TRUE),
  -- #004 Tepig
  (1101, 498, NULL, 4, TRUE),
  -- #005 Pignite
  (1101, 499, NULL, 5, TRUE),
  -- #006 Emboar
  (1101, 500, NULL, 6, TRUE),
  -- #007 Oshawott
  (1101, 501, NULL, 7, TRUE),
  -- #008 Dewott
  (1101, 502, NULL, 8, TRUE),
  -- #009 Samurott
  (1101, 503, NULL, 9, TRUE),
  -- #010 Patrat
  (1101, 504, NULL, 10, TRUE),
  -- #011 Watchog
  (1101, 505, NULL, 11, TRUE),
  -- #012 Lillipup
  (1101, 506, NULL, 12, TRUE),
  -- #013 Herdier
  (1101, 507, NULL, 13, TRUE),
  -- #014 Stoutland
  (1101, 508, NULL, 14, TRUE),
  -- #015 Purrloin
  (1101, 509, NULL, 15, TRUE),
  -- #016 Liepard
  (1101, 510, NULL, 16, TRUE),
  -- #017 Pansage
  (1101, 511, NULL, 17, TRUE),
  -- #018 Simisage
  (1101, 512, NULL, 18, TRUE),
  -- #019 Pansear
  (1101, 513, NULL, 19, TRUE),
  -- #020 Simisear
  (1101, 514, NULL, 20, TRUE),
  -- #021 Panpour
  (1101, 515, NULL, 21, TRUE),
  -- #022 Simipour
  (1101, 516, NULL, 22, TRUE),
  -- #023 Munna
  (1101, 517, NULL, 23, TRUE),
  -- #024 Musharna
  (1101, 518, NULL, 24, TRUE),
  -- #025 Pidove
  (1101, 519, NULL, 25, TRUE),
  -- #026 Tranquill
  (1101, 520, NULL, 26, TRUE),
  -- #027 Unfezant
  (1101, 521, NULL, 27, TRUE),
  -- #028 Blitzle
  (1101, 522, NULL, 28, TRUE),
  -- #029 Zebstrika
  (1101, 523, NULL, 29, TRUE),
  -- #030 Roggenrola
  (1101, 524, NULL, 30, TRUE),
  -- #031 Boldore
  (1101, 525, NULL, 31, TRUE),
  -- #032 Gigalith
  (1101, 526, NULL, 32, TRUE),
  -- #033 Woobat
  (1101, 527, NULL, 33, TRUE),
  -- #034 Swoobat
  (1101, 528, NULL, 34, TRUE),
  -- #035 Drilbur
  (1101, 529, NULL, 35, TRUE),
  -- #036 Excadrill
  (1101, 530, NULL, 36, TRUE),
  -- #037 Audino
  (1101, 531, NULL, 37, TRUE),
  -- #038 Timburr
  (1101, 532, NULL, 38, TRUE),
  -- #039 Gurdurr
  (1101, 533, NULL, 39, TRUE),
  -- #040 Conkeldurr
  (1101, 534, NULL, 40, TRUE),
  -- #041 Tympole
  (1101, 535, NULL, 41, TRUE),
  -- #042 Palpitoad
  (1101, 536, NULL, 42, TRUE),
  -- #043 Seismitoad
  (1101, 537, NULL, 43, TRUE),
  -- #044 Throh
  (1101, 538, NULL, 44, TRUE),
  -- #045 Sawk
  (1101, 539, NULL, 45, TRUE),
  -- #046 Sewaddle
  (1101, 540, NULL, 46, TRUE),
  -- #047 Swadloon
  (1101, 541, NULL, 47, TRUE),
  -- #048 Leavanny
  (1101, 542, NULL, 48, TRUE),
  -- #049 Venipede
  (1101, 543, NULL, 49, TRUE),
  -- #050 Whirlipede
  (1101, 544, NULL, 50, TRUE),
  -- #051 Scolipede
  (1101, 545, NULL, 51, TRUE),
  -- #052 Cottonee
  (1101, 546, NULL, 52, TRUE),
  -- #053 Whimsicott
  (1101, 547, NULL, 53, TRUE),
  -- #054 Petilil
  (1101, 548, NULL, 54, TRUE),
  -- #055 Lilligant
  (1101, 549, NULL, 55, TRUE),
  -- #056 Basculin
  (1101, 550, NULL, 56, TRUE),
  -- #057 Sandile
  (1101, 551, NULL, 57, TRUE),
  -- #058 Krokorok
  (1101, 552, NULL, 58, TRUE),
  -- #059 Krookodile
  (1101, 553, NULL, 59, TRUE),
  -- #060 Darumaka
  (1101, 554, NULL, 60, TRUE),
  -- #061 Darmanitan
  (1101, 555, NULL, 61, TRUE),
  -- #062 Maractus
  (1101, 556, NULL, 62, TRUE),
  -- #063 Dwebble
  (1101, 557, NULL, 63, TRUE),
  -- #064 Crustle
  (1101, 558, NULL, 64, TRUE),
  -- #065 Scraggy
  (1101, 559, NULL, 65, TRUE),
  -- #066 Scrafty
  (1101, 560, NULL, 66, TRUE),
  -- #067 Sigilyph
  (1101, 561, NULL, 67, TRUE),
  -- #068 Yamask
  (1101, 562, NULL, 68, TRUE),
  -- #069 Cofagrigus
  (1101, 563, NULL, 69, TRUE),
  -- #070 Tirtouga
  (1101, 564, NULL, 70, TRUE),
  -- #071 Carracosta
  (1101, 565, NULL, 71, TRUE),
  -- #072 Archen
  (1101, 566, NULL, 72, TRUE),
  -- #073 Archeops
  (1101, 567, NULL, 73, TRUE),
  -- #074 Trubbish
  (1101, 568, NULL, 74, TRUE),
  -- #075 Garbodor
  (1101, 569, NULL, 75, TRUE),
  -- #076 Zorua
  (1101, 570, NULL, 76, TRUE),
  -- #077 Zoroark
  (1101, 571, NULL, 77, TRUE),
  -- #078 Minccino
  (1101, 572, NULL, 78, TRUE),
  -- #079 Cinccino
  (1101, 573, NULL, 79, TRUE),
  -- #080 Gothita
  (1101, 574, NULL, 80, TRUE),
  -- #081 Gothorita
  (1101, 575, NULL, 81, TRUE),
  -- #082 Gothitelle
  (1101, 576, NULL, 82, TRUE),
  -- #083 Solosis
  (1101, 577, NULL, 83, TRUE),
  -- #084 Duosion
  (1101, 578, NULL, 84, TRUE),
  -- #085 Reuniclus
  (1101, 579, NULL, 85, TRUE),
  -- #086 Ducklett
  (1101, 580, NULL, 86, TRUE),
  -- #087 Swanna
  (1101, 581, NULL, 87, TRUE),
  -- #088 Vanillite
  (1101, 582, NULL, 88, TRUE),
  -- #089 Vanillish
  (1101, 583, NULL, 89, TRUE),
  -- #090 Vanilluxe
  (1101, 584, NULL, 90, TRUE),
  -- #091 Deerling
  (1101, 585, NULL, 91, TRUE),
  -- #092 Sawsbuck
  (1101, 586, NULL, 92, TRUE),
  -- #093 Emolga
  (1101, 587, NULL, 93, TRUE),
  -- #094 Karrablast
  (1101, 588, NULL, 94, TRUE),
  -- #095 Escavalier
  (1101, 589, NULL, 95, TRUE),
  -- #096 Foongus
  (1101, 590, NULL, 96, TRUE),
  -- #097 Amoonguss
  (1101, 591, NULL, 97, TRUE),
  -- #098 Frillish
  (1101, 592, NULL, 98, TRUE),
  -- #099 Jellicent
  (1101, 593, NULL, 99, TRUE),
  -- #100 Alomomola
  (1101, 594, NULL, 100, TRUE),
  -- #101 Joltik
  (1101, 595, NULL, 101, TRUE),
  -- #102 Galvantula
  (1101, 596, NULL, 102, TRUE),
  -- #103 Ferroseed
  (1101, 597, NULL, 103, TRUE),
  -- #104 Ferrothorn
  (1101, 598, NULL, 104, TRUE),
  -- #105 Klink
  (1101, 599, NULL, 105, TRUE),
  -- #106 Klang
  (1101, 600, NULL, 106, TRUE),
  -- #107 Klinklang
  (1101, 601, NULL, 107, TRUE),
  -- #108 Tynamo
  (1101, 602, NULL, 108, TRUE),
  -- #109 Eelektrik
  (1101, 603, NULL, 109, TRUE),
  -- #110 Eelektross
  (1101, 604, NULL, 110, TRUE),
  -- #111 Elgyem
  (1101, 605, NULL, 111, TRUE),
  -- #112 Beheeyem
  (1101, 606, NULL, 112, TRUE),
  -- #113 Litwick
  (1101, 607, NULL, 113, TRUE),
  -- #114 Lampent
  (1101, 608, NULL, 114, TRUE),
  -- #115 Chandelure
  (1101, 609, NULL, 115, TRUE),
  -- #116 Axew
  (1101, 610, NULL, 116, TRUE),
  -- #117 Fraxure
  (1101, 611, NULL, 117, TRUE),
  -- #118 Haxorus
  (1101, 612, NULL, 118, TRUE),
  -- #119 Cubchoo
  (1101, 613, NULL, 119, TRUE),
  -- #120 Beartic
  (1101, 614, NULL, 120, TRUE),
  -- #121 Cryogonal
  (1101, 615, NULL, 121, TRUE),
  -- #122 Shelmet
  (1101, 616, NULL, 122, TRUE),
  -- #123 Accelgor
  (1101, 617, NULL, 123, TRUE),
  -- #124 Stunfisk
  (1101, 618, NULL, 124, TRUE),
  -- #125 Mienfoo
  (1101, 619, NULL, 125, TRUE),
  -- #126 Mienshao
  (1101, 620, NULL, 126, TRUE),
  -- #127 Druddigon
  (1101, 621, NULL, 127, TRUE),
  -- #128 Golett
  (1101, 622, NULL, 128, TRUE),
  -- #129 Golurk
  (1101, 623, NULL, 129, TRUE),
  -- #130 Pawniard
  (1101, 624, NULL, 130, TRUE),
  -- #131 Bisharp
  (1101, 625, NULL, 131, TRUE),
  -- #132 Bouffalant
  (1101, 626, NULL, 132, TRUE),
  -- #133 Rufflet
  (1101, 627, NULL, 133, TRUE),
  -- #134 Braviary
  (1101, 628, NULL, 134, TRUE),
  -- #135 Vullaby
  (1101, 629, NULL, 135, TRUE),
  -- #136 Mandibuzz
  (1101, 630, NULL, 136, TRUE),
  -- #137 Heatmor
  (1101, 631, NULL, 137, TRUE),
  -- #138 Durant
  (1101, 632, NULL, 138, TRUE),
  -- #139 Deino
  (1101, 633, NULL, 139, TRUE),
  -- #140 Zweilous
  (1101, 634, NULL, 140, TRUE),
  -- #141 Hydreigon
  (1101, 635, NULL, 141, TRUE),
  -- #142 Larvesta
  (1101, 636, NULL, 142, TRUE),
  -- #143 Volcarona
  (1101, 637, NULL, 143, TRUE),
  -- #144 Cobalion
  (1101, 638, NULL, 144, TRUE),
  -- #145 Terrakion
  (1101, 639, NULL, 145, TRUE),
  -- #146 Virizion
  (1101, 640, NULL, 146, TRUE),
  -- #147 Tornadus
  (1101, 641, NULL, 147, TRUE),
  -- #148 Thundurus
  (1101, 642, NULL, 148, TRUE),
  -- #149 Reshiram
  (1101, 643, NULL, 149, TRUE),
  -- #150 Zekrom
  (1101, 644, NULL, 150, TRUE),
  -- #151 Landorus
  (1101, 645, NULL, 151, TRUE),
  -- #152 Kyurem
  (1101, 646, NULL, 152, TRUE),
  -- #153 Keldeo
  (1101, 647, NULL, 153, FALSE),
  -- #154 Meloetta
  (1101, 648, NULL, 154, FALSE),
  -- #155 Genesect
  (1101, 649, NULL, 155, FALSE);
