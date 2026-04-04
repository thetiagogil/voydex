-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (dex cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 9
-- Table: meta.pokemon_availability
-- Scope: DLC additions (sv-id)
-- DLC additions only. Base game Pokemon are in the parent VG.
-- Pokemon: 174 (DLC additions)
INSERT INTO
    meta.pokemon_availability (id, species_id, form_id, version_group_id, game_id, availability_context)
VALUES
    -- #001 Bulbasaur
    (8860, 1, 100, 25, NULL, 'native'),
    -- #002 Ivysaur
    (8861, 2, 200, 25, NULL, 'native'),
    -- #003 Venusaur
    (8862, 3, 300, 25, NULL, 'native'),
    -- #004 Charmander
    (8863, 4, 400, 25, NULL, 'native'),
    -- #005 Charmeleon
    (8864, 5, 500, 25, NULL, 'native'),
    -- #006 Charizard
    (8865, 6, 600, 25, NULL, 'native'),
    -- #007 Squirtle
    (8866, 7, 700, 25, NULL, 'native'),
    -- #008 Wartortle
    (8867, 8, 800, 25, NULL, 'native'),
    -- #009 Blastoise
    (8868, 9, 900, 25, NULL, 'native'),
    -- #027 Sandshrew
    (8869, 27, 2700, 25, NULL, 'native'),
    -- #028 Sandslash
    (8870, 28, 2800, 25, NULL, 'native'),
    -- #037 Vulpix
    (8871, 37, 3700, 25, NULL, 'native'),
    -- #038 Ninetales
    (8872, 38, 3800, 25, NULL, 'native'),
    -- #043 Oddish
    (8873, 43, 4300, 25, NULL, 'native'),
    -- #044 Gloom
    (8874, 44, 4400, 25, NULL, 'native'),
    -- #045 Vileplume
    (8875, 45, 4500, 25, NULL, 'native'),
    -- #072 Tentacool
    (8876, 72, 7200, 25, NULL, 'native'),
    -- #073 Tentacruel
    (8877, 73, 7300, 25, NULL, 'native'),
    -- #074 Geodude
    (8878, 74, 7400, 25, NULL, 'native'),
    -- #075 Graveler
    (8879, 75, 7500, 25, NULL, 'native'),
    -- #076 Golem
    (8880, 76, 7600, 25, NULL, 'native'),
    -- #084 Doduo
    (8881, 84, 8400, 25, NULL, 'native'),
    -- #085 Dodrio
    (8882, 85, 8500, 25, NULL, 'native'),
    -- #086 Seel
    (8883, 86, 8600, 25, NULL, 'native'),
    -- #087 Dewgong
    (8884, 87, 8700, 25, NULL, 'native'),
    -- #102 Exeggcute
    (8885, 102, 10200, 25, NULL, 'native'),
    -- #103 Exeggutor
    (8886, 103, 10300, 25, NULL, 'native'),
    -- #106 Hitmonlee
    (8887, 106, 10600, 25, NULL, 'native'),
    -- #107 Hitmonchan
    (8888, 107, 10700, 25, NULL, 'native'),
    -- #111 Rhyhorn
    (8889, 111, 11100, 25, NULL, 'native'),
    -- #112 Rhydon
    (8890, 112, 11200, 25, NULL, 'native'),
    -- #116 Horsea
    (8891, 116, 11600, 25, NULL, 'native'),
    -- #117 Seadra
    (8892, 117, 11700, 25, NULL, 'native'),
    -- #125 Electabuzz
    (8893, 125, 12500, 25, NULL, 'native'),
    -- #126 Magmar
    (8894, 126, 12600, 25, NULL, 'native'),
    -- #131 Lapras
    (8895, 131, 13100, 25, NULL, 'native'),
    -- #137 Porygon
    (8896, 137, 13700, 25, NULL, 'native'),
    -- #152 Chikorita
    (8897, 152, 15200, 25, NULL, 'native'),
    -- #153 Bayleef
    (8898, 153, 15300, 25, NULL, 'native'),
    -- #154 Meganium
    (8899, 154, 15400, 25, NULL, 'native'),
    -- #155 Cyndaquil
    (8900, 155, 15500, 25, NULL, 'native'),
    -- #156 Quilava
    (8901, 156, 15600, 25, NULL, 'native'),
    -- #157 Typhlosion
    (8902, 157, 15700, 25, NULL, 'native'),
    -- #158 Totodile
    (8903, 158, 15800, 25, NULL, 'native'),
    -- #159 Croconaw
    (8904, 159, 15900, 25, NULL, 'native'),
    -- #160 Feraligatr
    (8905, 160, 16000, 25, NULL, 'native'),
    -- #170 Chinchou
    (8906, 170, 17000, 25, NULL, 'native'),
    -- #171 Lanturn
    (8907, 171, 17100, 25, NULL, 'native'),
    -- #182 Bellossom
    (8908, 182, 18200, 25, NULL, 'native'),
    -- #209 Snubbull
    (8909, 209, 20900, 25, NULL, 'native'),
    -- #210 Granbull
    (8910, 210, 21000, 25, NULL, 'native'),
    -- #227 Skarmory
    (8911, 227, 22700, 25, NULL, 'native'),
    -- #230 Kingdra
    (8912, 230, 23000, 25, NULL, 'native'),
    -- #233 Porygon2
    (8913, 233, 23300, 25, NULL, 'native'),
    -- #235 Smeargle
    (8914, 235, 23500, 25, NULL, 'native'),
    -- #236 Tyrogue
    (8915, 236, 23600, 25, NULL, 'native'),
    -- #237 Hitmontop
    (8916, 237, 23700, 25, NULL, 'native'),
    -- #239 Elekid
    (8917, 239, 23900, 25, NULL, 'native'),
    -- #240 Magby
    (8918, 240, 24000, 25, NULL, 'native'),
    -- #252 Treecko
    (8919, 252, 25200, 25, NULL, 'native'),
    -- #253 Grovyle
    (8920, 253, 25300, 25, NULL, 'native'),
    -- #254 Sceptile
    (8921, 254, 25400, 25, NULL, 'native'),
    -- #255 Torchic
    (8922, 255, 25500, 25, NULL, 'native'),
    -- #256 Combusken
    (8923, 256, 25600, 25, NULL, 'native'),
    -- #257 Blaziken
    (8924, 257, 25700, 25, NULL, 'native'),
    -- #258 Mudkip
    (8925, 258, 25800, 25, NULL, 'native'),
    -- #259 Marshtomp
    (8926, 259, 25900, 25, NULL, 'native'),
    -- #260 Swampert
    (8927, 260, 26000, 25, NULL, 'native'),
    -- #311 Plusle
    (8928, 311, 31100, 25, NULL, 'native'),
    -- #312 Minun
    (8929, 312, 31200, 25, NULL, 'native'),
    -- #328 Trapinch
    (8930, 328, 32800, 25, NULL, 'native'),
    -- #329 Vibrava
    (8931, 329, 32900, 25, NULL, 'native'),
    -- #330 Flygon
    (8932, 330, 33000, 25, NULL, 'native'),
    -- #374 Beldum
    (8933, 374, 37400, 25, NULL, 'native'),
    -- #375 Metang
    (8934, 375, 37500, 25, NULL, 'native'),
    -- #376 Metagross
    (8935, 376, 37600, 25, NULL, 'native'),
    -- #387 Turtwig
    (8936, 387, 38700, 25, NULL, 'native'),
    -- #388 Grotle
    (8937, 388, 38800, 25, NULL, 'native'),
    -- #389 Torterra
    (8938, 389, 38900, 25, NULL, 'native'),
    -- #390 Chimchar
    (8939, 390, 39000, 25, NULL, 'native'),
    -- #391 Monferno
    (8940, 391, 39100, 25, NULL, 'native'),
    -- #392 Infernape
    (8941, 392, 39200, 25, NULL, 'native'),
    -- #393 Piplup
    (8942, 393, 39300, 25, NULL, 'native'),
    -- #394 Prinplup
    (8943, 394, 39400, 25, NULL, 'native'),
    -- #395 Empoleon
    (8944, 395, 39500, 25, NULL, 'native'),
    -- #408 Cranidos
    (8945, 408, 40800, 25, NULL, 'native'),
    -- #409 Rampardos
    (8946, 409, 40900, 25, NULL, 'native'),
    -- #410 Shieldon
    (8947, 410, 41000, 25, NULL, 'native'),
    -- #411 Bastiodon
    (8948, 411, 41100, 25, NULL, 'native'),
    -- #464 Rhyperior
    (8949, 464, 46400, 25, NULL, 'native'),
    -- #466 Electivire
    (8950, 466, 46600, 25, NULL, 'native'),
    -- #467 Magmortar
    (8951, 467, 46700, 25, NULL, 'native'),
    -- #474 Porygon-Z
    (8952, 474, 47400, 25, NULL, 'native'),
    -- #495 Snivy
    (8953, 495, 49500, 25, NULL, 'native'),
    -- #496 Servine
    (8954, 496, 49600, 25, NULL, 'native'),
    -- #497 Serperior
    (8955, 497, 49700, 25, NULL, 'native'),
    -- #498 Tepig
    (8956, 498, 49800, 25, NULL, 'native'),
    -- #499 Pignite
    (8957, 499, 49900, 25, NULL, 'native'),
    -- #500 Emboar
    (8958, 500, 50000, 25, NULL, 'native'),
    -- #501 Oshawott
    (8959, 501, 50100, 25, NULL, 'native'),
    -- #502 Dewott
    (8960, 502, 50200, 25, NULL, 'native'),
    -- #503 Samurott
    (8961, 503, 50300, 25, NULL, 'native'),
    -- #522 Blitzle
    (8962, 522, 52200, 25, NULL, 'native'),
    -- #523 Zebstrika
    (8963, 523, 52300, 25, NULL, 'native'),
    -- #529 Drilbur
    (8964, 529, 52900, 25, NULL, 'native'),
    -- #530 Excadrill
    (8965, 530, 53000, 25, NULL, 'native'),
    -- #546 Cottonee
    (8966, 546, 54600, 25, NULL, 'native'),
    -- #547 Whimsicott
    (8967, 547, 54700, 25, NULL, 'native'),
    -- #559 Scraggy
    (8968, 559, 55900, 25, NULL, 'native'),
    -- #560 Scrafty
    (8969, 560, 56000, 25, NULL, 'native'),
    -- #572 Minccino
    (8970, 572, 57200, 25, NULL, 'native'),
    -- #573 Cinccino
    (8971, 573, 57300, 25, NULL, 'native'),
    -- #577 Solosis
    (8972, 577, 57700, 25, NULL, 'native'),
    -- #578 Duosion
    (8973, 578, 57800, 25, NULL, 'native'),
    -- #579 Reuniclus
    (8974, 579, 57900, 25, NULL, 'native'),
    -- #595 Joltik
    (8975, 595, 59500, 25, NULL, 'native'),
    -- #596 Galvantula
    (8976, 596, 59600, 25, NULL, 'native'),
    -- #622 Golett
    (8977, 622, 62200, 25, NULL, 'native'),
    -- #623 Golurk
    (8978, 623, 62300, 25, NULL, 'native'),
    -- #629 Vullaby
    (8979, 629, 62900, 25, NULL, 'native'),
    -- #630 Mandibuzz
    (8980, 630, 63000, 25, NULL, 'native'),
    -- #650 Chespin
    (8981, 650, 65000, 25, NULL, 'native'),
    -- #651 Quilladin
    (8982, 651, 65100, 25, NULL, 'native'),
    -- #652 Chesnaught
    (8983, 652, 65200, 25, NULL, 'native'),
    -- #653 Fennekin
    (8984, 653, 65300, 25, NULL, 'native'),
    -- #654 Braixen
    (8985, 654, 65400, 25, NULL, 'native'),
    -- #655 Delphox
    (8986, 655, 65500, 25, NULL, 'native'),
    -- #656 Froakie
    (8987, 656, 65600, 25, NULL, 'native'),
    -- #657 Frogadier
    (8988, 657, 65700, 25, NULL, 'native'),
    -- #658 Greninja
    (8989, 658, 65800, 25, NULL, 'native'),
    -- #677 Espurr
    (8990, 677, 67700, 25, NULL, 'native'),
    -- #678 Meowstic
    (8991, 678, 67800, 25, NULL, 'native'),
    -- #686 Inkay
    (8992, 686, 68600, 25, NULL, 'native'),
    -- #687 Malamar
    (8993, 687, 68700, 25, NULL, 'native'),
    -- #722 Rowlet
    (8994, 722, 72200, 25, NULL, 'native'),
    -- #723 Dartrix
    (8995, 723, 72300, 25, NULL, 'native'),
    -- #724 Decidueye
    (8996, 724, 72400, 25, NULL, 'native'),
    -- #725 Litten
    (8997, 725, 72500, 25, NULL, 'native'),
    -- #726 Torracat
    (8998, 726, 72600, 25, NULL, 'native'),
    -- #727 Incineroar
    (8999, 727, 72700, 25, NULL, 'native'),
    -- #728 Popplio
    (9000, 728, 72800, 25, NULL, 'native'),
    -- #729 Brionne
    (9001, 729, 72900, 25, NULL, 'native'),
    -- #730 Primarina
    (9002, 730, 73000, 25, NULL, 'native'),
    -- #731 Pikipek
    (9003, 731, 73100, 25, NULL, 'native'),
    -- #732 Trumbeak
    (9004, 732, 73200, 25, NULL, 'native'),
    -- #733 Toucannon
    (9005, 733, 73300, 25, NULL, 'native'),
    -- #751 Dewpider
    (9006, 751, 75100, 25, NULL, 'native'),
    -- #752 Araquanid
    (9007, 752, 75200, 25, NULL, 'native'),
    -- #764 Comfey
    (9008, 764, 76400, 25, NULL, 'native'),
    -- #774 Minior
    (9009, 774, 77400, 25, NULL, 'native'),
    -- #810 Grookey
    (9010, 810, 81000, 25, NULL, 'native'),
    -- #811 Thwackey
    (9011, 811, 81100, 25, NULL, 'native'),
    -- #812 Rillaboom
    (9012, 812, 81200, 25, NULL, 'native'),
    -- #813 Scorbunny
    (9013, 813, 81300, 25, NULL, 'native'),
    -- #814 Raboot
    (9014, 814, 81400, 25, NULL, 'native'),
    -- #815 Cinderace
    (9015, 815, 81500, 25, NULL, 'native'),
    -- #816 Sobble
    (9016, 816, 81600, 25, NULL, 'native'),
    -- #817 Drizzile
    (9017, 817, 81700, 25, NULL, 'native'),
    -- #818 Inteleon
    (9018, 818, 81800, 25, NULL, 'native'),
    -- #868 Milcery
    (9019, 868, 86800, 25, NULL, 'native'),
    -- #869 Alcremie
    (9020, 869, 86900, 25, NULL, 'native'),
    -- #884 Duraludon
    (9021, 884, 88400, 25, NULL, 'native'),
    -- #900 Kleavor
    (9022, 900, 90000, 25, NULL, 'native'),
    -- #904 Overqwil
    (9023, 904, 90400, 25, NULL, 'native'),
    -- #1009 Walking Wake
    (9024, 1009, 100900, 25, NULL, 'native'),
    -- #1010 Iron Leaves
    (9025, 1010, 101000, 25, NULL, 'native'),
    -- #1018 Archaludon
    (9026, 1018, 101800, 25, NULL, 'native'),
    -- #1019 Hydrapple
    (9027, 1019, 101900, 25, NULL, 'native'),
    -- #1020 Gouging Fire
    (9028, 1020, 102000, 25, NULL, 'native'),
    -- #1021 Raging Bolt
    (9029, 1021, 102100, 25, NULL, 'native'),
    -- #1022 Iron Boulder
    (9030, 1022, 102200, 25, NULL, 'native'),
    -- #1023 Iron Crown
    (9031, 1023, 102300, 25, NULL, 'native'),
    -- #1024 Terapagos
    (9032, 1024, 102400, 25, NULL, 'native'),
    -- #1025 Pecharunt
    (9033, 1025, 102500, 25, NULL, 'native');