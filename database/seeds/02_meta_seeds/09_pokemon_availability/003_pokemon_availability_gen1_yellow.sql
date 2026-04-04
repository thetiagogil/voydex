-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (dex cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 1
-- Table: meta.pokemon_availability
-- Scope: version-group-specific (yellow)
-- Pokemon: 151 (VG-wide)
INSERT INTO
    meta.pokemon_availability (id, species_id, form_id, version_group_id, game_id, availability_context)
VALUES
    -- #001 Bulbasaur
    (152, 1, 100, 2, NULL, 'native'),
    -- #002 Ivysaur
    (153, 2, 200, 2, NULL, 'native'),
    -- #003 Venusaur
    (154, 3, 300, 2, NULL, 'native'),
    -- #004 Charmander
    (155, 4, 400, 2, NULL, 'native'),
    -- #005 Charmeleon
    (156, 5, 500, 2, NULL, 'native'),
    -- #006 Charizard
    (157, 6, 600, 2, NULL, 'native'),
    -- #007 Squirtle
    (158, 7, 700, 2, NULL, 'native'),
    -- #008 Wartortle
    (159, 8, 800, 2, NULL, 'native'),
    -- #009 Blastoise
    (160, 9, 900, 2, NULL, 'native'),
    -- #010 Caterpie
    (161, 10, 1000, 2, NULL, 'native'),
    -- #011 Metapod
    (162, 11, 1100, 2, NULL, 'native'),
    -- #012 Butterfree
    (163, 12, 1200, 2, NULL, 'native'),
    -- #013 Weedle
    (164, 13, 1300, 2, NULL, 'native'),
    -- #014 Kakuna
    (165, 14, 1400, 2, NULL, 'native'),
    -- #015 Beedrill
    (166, 15, 1500, 2, NULL, 'native'),
    -- #016 Pidgey
    (167, 16, 1600, 2, NULL, 'native'),
    -- #017 Pidgeotto
    (168, 17, 1700, 2, NULL, 'native'),
    -- #018 Pidgeot
    (169, 18, 1800, 2, NULL, 'native'),
    -- #019 Rattata
    (170, 19, 1900, 2, NULL, 'native'),
    -- #020 Raticate
    (171, 20, 2000, 2, NULL, 'native'),
    -- #021 Spearow
    (172, 21, 2100, 2, NULL, 'native'),
    -- #022 Fearow
    (173, 22, 2200, 2, NULL, 'native'),
    -- #023 Ekans
    (174, 23, 2300, 2, NULL, 'native'),
    -- #024 Arbok
    (175, 24, 2400, 2, NULL, 'native'),
    -- #025 Pikachu
    (176, 25, 2500, 2, NULL, 'native'),
    -- #026 Raichu
    (177, 26, 2600, 2, NULL, 'native'),
    -- #027 Sandshrew
    (178, 27, 2700, 2, NULL, 'native'),
    -- #028 Sandslash
    (179, 28, 2800, 2, NULL, 'native'),
    -- #029 Nidoran♀
    (180, 29, 2900, 2, NULL, 'native'),
    -- #030 Nidorina
    (181, 30, 3000, 2, NULL, 'native'),
    -- #031 Nidoqueen
    (182, 31, 3100, 2, NULL, 'native'),
    -- #032 Nidoran♂
    (183, 32, 3200, 2, NULL, 'native'),
    -- #033 Nidorino
    (184, 33, 3300, 2, NULL, 'native'),
    -- #034 Nidoking
    (185, 34, 3400, 2, NULL, 'native'),
    -- #035 Clefairy
    (186, 35, 3500, 2, NULL, 'native'),
    -- #036 Clefable
    (187, 36, 3600, 2, NULL, 'native'),
    -- #037 Vulpix
    (188, 37, 3700, 2, NULL, 'native'),
    -- #038 Ninetales
    (189, 38, 3800, 2, NULL, 'native'),
    -- #039 Jigglypuff
    (190, 39, 3900, 2, NULL, 'native'),
    -- #040 Wigglytuff
    (191, 40, 4000, 2, NULL, 'native'),
    -- #041 Zubat
    (192, 41, 4100, 2, NULL, 'native'),
    -- #042 Golbat
    (193, 42, 4200, 2, NULL, 'native'),
    -- #043 Oddish
    (194, 43, 4300, 2, NULL, 'native'),
    -- #044 Gloom
    (195, 44, 4400, 2, NULL, 'native'),
    -- #045 Vileplume
    (196, 45, 4500, 2, NULL, 'native'),
    -- #046 Paras
    (197, 46, 4600, 2, NULL, 'native'),
    -- #047 Parasect
    (198, 47, 4700, 2, NULL, 'native'),
    -- #048 Venonat
    (199, 48, 4800, 2, NULL, 'native'),
    -- #049 Venomoth
    (200, 49, 4900, 2, NULL, 'native'),
    -- #050 Diglett
    (201, 50, 5000, 2, NULL, 'native'),
    -- #051 Dugtrio
    (202, 51, 5100, 2, NULL, 'native'),
    -- #052 Meowth
    (203, 52, 5200, 2, NULL, 'native'),
    -- #053 Persian
    (204, 53, 5300, 2, NULL, 'native'),
    -- #054 Psyduck
    (205, 54, 5400, 2, NULL, 'native'),
    -- #055 Golduck
    (206, 55, 5500, 2, NULL, 'native'),
    -- #056 Mankey
    (207, 56, 5600, 2, NULL, 'native'),
    -- #057 Primeape
    (208, 57, 5700, 2, NULL, 'native'),
    -- #058 Growlithe
    (209, 58, 5800, 2, NULL, 'native'),
    -- #059 Arcanine
    (210, 59, 5900, 2, NULL, 'native'),
    -- #060 Poliwag
    (211, 60, 6000, 2, NULL, 'native'),
    -- #061 Poliwhirl
    (212, 61, 6100, 2, NULL, 'native'),
    -- #062 Poliwrath
    (213, 62, 6200, 2, NULL, 'native'),
    -- #063 Abra
    (214, 63, 6300, 2, NULL, 'native'),
    -- #064 Kadabra
    (215, 64, 6400, 2, NULL, 'native'),
    -- #065 Alakazam
    (216, 65, 6500, 2, NULL, 'native'),
    -- #066 Machop
    (217, 66, 6600, 2, NULL, 'native'),
    -- #067 Machoke
    (218, 67, 6700, 2, NULL, 'native'),
    -- #068 Machamp
    (219, 68, 6800, 2, NULL, 'native'),
    -- #069 Bellsprout
    (220, 69, 6900, 2, NULL, 'native'),
    -- #070 Weepinbell
    (221, 70, 7000, 2, NULL, 'native'),
    -- #071 Victreebel
    (222, 71, 7100, 2, NULL, 'native'),
    -- #072 Tentacool
    (223, 72, 7200, 2, NULL, 'native'),
    -- #073 Tentacruel
    (224, 73, 7300, 2, NULL, 'native'),
    -- #074 Geodude
    (225, 74, 7400, 2, NULL, 'native'),
    -- #075 Graveler
    (226, 75, 7500, 2, NULL, 'native'),
    -- #076 Golem
    (227, 76, 7600, 2, NULL, 'native'),
    -- #077 Ponyta
    (228, 77, 7700, 2, NULL, 'native'),
    -- #078 Rapidash
    (229, 78, 7800, 2, NULL, 'native'),
    -- #079 Slowpoke
    (230, 79, 7900, 2, NULL, 'native'),
    -- #080 Slowbro
    (231, 80, 8000, 2, NULL, 'native'),
    -- #081 Magnemite
    (232, 81, 8100, 2, NULL, 'native'),
    -- #082 Magneton
    (233, 82, 8200, 2, NULL, 'native'),
    -- #083 Farfetch
    (234, 83, 8300, 2, NULL, 'native'),
    -- #084 Doduo
    (235, 84, 8400, 2, NULL, 'native'),
    -- #085 Dodrio
    (236, 85, 8500, 2, NULL, 'native'),
    -- #086 Seel
    (237, 86, 8600, 2, NULL, 'native'),
    -- #087 Dewgong
    (238, 87, 8700, 2, NULL, 'native'),
    -- #088 Grimer
    (239, 88, 8800, 2, NULL, 'native'),
    -- #089 Muk
    (240, 89, 8900, 2, NULL, 'native'),
    -- #090 Shellder
    (241, 90, 9000, 2, NULL, 'native'),
    -- #091 Cloyster
    (242, 91, 9100, 2, NULL, 'native'),
    -- #092 Gastly
    (243, 92, 9200, 2, NULL, 'native'),
    -- #093 Haunter
    (244, 93, 9300, 2, NULL, 'native'),
    -- #094 Gengar
    (245, 94, 9400, 2, NULL, 'native'),
    -- #095 Onix
    (246, 95, 9500, 2, NULL, 'native'),
    -- #096 Drowzee
    (247, 96, 9600, 2, NULL, 'native'),
    -- #097 Hypno
    (248, 97, 9700, 2, NULL, 'native'),
    -- #098 Krabby
    (249, 98, 9800, 2, NULL, 'native'),
    -- #099 Kingler
    (250, 99, 9900, 2, NULL, 'native'),
    -- #100 Voltorb
    (251, 100, 10000, 2, NULL, 'native'),
    -- #101 Electrode
    (252, 101, 10100, 2, NULL, 'native'),
    -- #102 Exeggcute
    (253, 102, 10200, 2, NULL, 'native'),
    -- #103 Exeggutor
    (254, 103, 10300, 2, NULL, 'native'),
    -- #104 Cubone
    (255, 104, 10400, 2, NULL, 'native'),
    -- #105 Marowak
    (256, 105, 10500, 2, NULL, 'native'),
    -- #106 Hitmonlee
    (257, 106, 10600, 2, NULL, 'native'),
    -- #107 Hitmonchan
    (258, 107, 10700, 2, NULL, 'native'),
    -- #108 Lickitung
    (259, 108, 10800, 2, NULL, 'native'),
    -- #109 Koffing
    (260, 109, 10900, 2, NULL, 'native'),
    -- #110 Weezing
    (261, 110, 11000, 2, NULL, 'native'),
    -- #111 Rhyhorn
    (262, 111, 11100, 2, NULL, 'native'),
    -- #112 Rhydon
    (263, 112, 11200, 2, NULL, 'native'),
    -- #113 Chansey
    (264, 113, 11300, 2, NULL, 'native'),
    -- #114 Tangela
    (265, 114, 11400, 2, NULL, 'native'),
    -- #115 Kangaskhan
    (266, 115, 11500, 2, NULL, 'native'),
    -- #116 Horsea
    (267, 116, 11600, 2, NULL, 'native'),
    -- #117 Seadra
    (268, 117, 11700, 2, NULL, 'native'),
    -- #118 Goldeen
    (269, 118, 11800, 2, NULL, 'native'),
    -- #119 Seaking
    (270, 119, 11900, 2, NULL, 'native'),
    -- #120 Staryu
    (271, 120, 12000, 2, NULL, 'native'),
    -- #121 Starmie
    (272, 121, 12100, 2, NULL, 'native'),
    -- #122 Mr. Mime
    (273, 122, 12200, 2, NULL, 'native'),
    -- #123 Scyther
    (274, 123, 12300, 2, NULL, 'native'),
    -- #124 Jynx
    (275, 124, 12400, 2, NULL, 'native'),
    -- #125 Electabuzz
    (276, 125, 12500, 2, NULL, 'native'),
    -- #126 Magmar
    (277, 126, 12600, 2, NULL, 'native'),
    -- #127 Pinsir
    (278, 127, 12700, 2, NULL, 'native'),
    -- #128 Tauros
    (279, 128, 12800, 2, NULL, 'native'),
    -- #129 Magikarp
    (280, 129, 12900, 2, NULL, 'native'),
    -- #130 Gyarados
    (281, 130, 13000, 2, NULL, 'native'),
    -- #131 Lapras
    (282, 131, 13100, 2, NULL, 'native'),
    -- #132 Ditto
    (283, 132, 13200, 2, NULL, 'native'),
    -- #133 Eevee
    (284, 133, 13300, 2, NULL, 'native'),
    -- #134 Vaporeon
    (285, 134, 13400, 2, NULL, 'native'),
    -- #135 Jolteon
    (286, 135, 13500, 2, NULL, 'native'),
    -- #136 Flareon
    (287, 136, 13600, 2, NULL, 'native'),
    -- #137 Porygon
    (288, 137, 13700, 2, NULL, 'native'),
    -- #138 Omanyte
    (289, 138, 13800, 2, NULL, 'native'),
    -- #139 Omastar
    (290, 139, 13900, 2, NULL, 'native'),
    -- #140 Kabuto
    (291, 140, 14000, 2, NULL, 'native'),
    -- #141 Kabutops
    (292, 141, 14100, 2, NULL, 'native'),
    -- #142 Aerodactyl
    (293, 142, 14200, 2, NULL, 'native'),
    -- #143 Snorlax
    (294, 143, 14300, 2, NULL, 'native'),
    -- #144 Articuno
    (295, 144, 14400, 2, NULL, 'native'),
    -- #145 Zapdos
    (296, 145, 14500, 2, NULL, 'native'),
    -- #146 Moltres
    (297, 146, 14600, 2, NULL, 'native'),
    -- #147 Dratini
    (298, 147, 14700, 2, NULL, 'native'),
    -- #148 Dragonair
    (299, 148, 14800, 2, NULL, 'native'),
    -- #149 Dragonite
    (300, 149, 14900, 2, NULL, 'native'),
    -- #150 Mewtwo
    (301, 150, 15000, 2, NULL, 'native'),
    -- #151 Mew
    (302, 151, 15100, 2, NULL, 'native');