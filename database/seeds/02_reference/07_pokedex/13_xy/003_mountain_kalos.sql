-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Mountain Kalos Pokedex number.
-- Cross-check: PokemonDB X / Y Pokedex and legacy Voydex Mountain Kalos Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Mountain Kalos Pokedex entries for X / Y.
-- Mountain Kalos contains 151 species; Mewtwo is source-visible but not required for regional completion.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Diglett
  (1303, 50, NULL, 1, TRUE),
  -- #002 Dugtrio
  (1303, 51, NULL, 2, TRUE),
  -- #003 Trapinch
  (1303, 328, NULL, 3, TRUE),
  -- #004 Vibrava
  (1303, 329, NULL, 4, TRUE),
  -- #005 Flygon
  (1303, 330, NULL, 5, TRUE),
  -- #006 Gible
  (1303, 443, NULL, 6, TRUE),
  -- #007 Gabite
  (1303, 444, NULL, 7, TRUE),
  -- #008 Garchomp
  (1303, 445, NULL, 8, TRUE),
  -- #009 Geodude
  (1303, 74, NULL, 9, TRUE),
  -- #010 Graveler
  (1303, 75, NULL, 10, TRUE),
  -- #011 Golem
  (1303, 76, NULL, 11, TRUE),
  -- #012 Slugma
  (1303, 218, NULL, 12, TRUE),
  -- #013 Magcargo
  (1303, 219, NULL, 13, TRUE),
  -- #014 Shuckle
  (1303, 213, NULL, 14, TRUE),
  -- #015 Skorupi
  (1303, 451, NULL, 15, TRUE),
  -- #016 Drapion
  (1303, 452, NULL, 16, TRUE),
  -- #017 Wooper
  (1303, 194, NULL, 17, TRUE),
  -- #018 Quagsire
  (1303, 195, NULL, 18, TRUE),
  -- #019 Goomy
  (1303, 704, NULL, 19, TRUE),
  -- #020 Sliggoo
  (1303, 705, NULL, 20, TRUE),
  -- #021 Goodra
  (1303, 706, NULL, 21, TRUE),
  -- #022 Karrablast
  (1303, 588, NULL, 22, TRUE),
  -- #023 Escavalier
  (1303, 589, NULL, 23, TRUE),
  -- #024 Shelmet
  (1303, 616, NULL, 24, TRUE),
  -- #025 Accelgor
  (1303, 617, NULL, 25, TRUE),
  -- #026 Bellsprout
  (1303, 69, NULL, 26, TRUE),
  -- #027 Weepinbell
  (1303, 70, NULL, 27, TRUE),
  -- #028 Victreebel
  (1303, 71, NULL, 28, TRUE),
  -- #029 Carnivine
  (1303, 455, NULL, 29, TRUE),
  -- #030 Gastly
  (1303, 92, NULL, 30, TRUE),
  -- #031 Haunter
  (1303, 93, NULL, 31, TRUE),
  -- #032 Gengar
  (1303, 94, NULL, 32, TRUE),
  -- #033 Poliwag
  (1303, 60, NULL, 33, TRUE),
  -- #034 Poliwhirl
  (1303, 61, NULL, 34, TRUE),
  -- #035 Poliwrath
  (1303, 62, NULL, 35, TRUE),
  -- #036 Politoed
  (1303, 186, NULL, 36, TRUE),
  -- #037 Ekans
  (1303, 23, NULL, 37, TRUE),
  -- #038 Arbok
  (1303, 24, NULL, 38, TRUE),
  -- #039 Stunfisk
  (1303, 618, NULL, 39, TRUE),
  -- #040 Barboach
  (1303, 339, NULL, 40, TRUE),
  -- #041 Whiscash
  (1303, 340, NULL, 41, TRUE),
  -- #042 Purrloin
  (1303, 509, NULL, 42, TRUE),
  -- #043 Liepard
  (1303, 510, NULL, 43, TRUE),
  -- #044 Poochyena
  (1303, 261, NULL, 44, TRUE),
  -- #045 Mightyena
  (1303, 262, NULL, 45, TRUE),
  -- #046 Patrat
  (1303, 504, NULL, 46, TRUE),
  -- #047 Watchog
  (1303, 505, NULL, 47, TRUE),
  -- #048 Pawniard
  (1303, 624, NULL, 48, TRUE),
  -- #049 Bisharp
  (1303, 625, NULL, 49, TRUE),
  -- #050 Klefki
  (1303, 707, NULL, 50, TRUE),
  -- #051 Murkrow
  (1303, 198, NULL, 51, TRUE),
  -- #052 Honchkrow
  (1303, 430, NULL, 52, TRUE),
  -- #053 Foongus
  (1303, 590, NULL, 53, TRUE),
  -- #054 Amoonguss
  (1303, 591, NULL, 54, TRUE),
  -- #055 Lotad
  (1303, 270, NULL, 55, TRUE),
  -- #056 Lombre
  (1303, 271, NULL, 56, TRUE),
  -- #057 Ludicolo
  (1303, 272, NULL, 57, TRUE),
  -- #058 Buizel
  (1303, 418, NULL, 58, TRUE),
  -- #059 Floatzel
  (1303, 419, NULL, 59, TRUE),
  -- #060 Basculin
  (1303, 550, NULL, 60, TRUE),
  -- #061 Phantump
  (1303, 708, NULL, 61, TRUE),
  -- #062 Trevenant
  (1303, 709, NULL, 62, TRUE),
  -- #063 Pumpkaboo
  (1303, 710, NULL, 63, TRUE),
  -- #064 Gourgeist
  (1303, 711, NULL, 64, TRUE),
  -- #065 Litwick
  (1303, 607, NULL, 65, TRUE),
  -- #066 Lampent
  (1303, 608, NULL, 66, TRUE),
  -- #067 Chandelure
  (1303, 609, NULL, 67, TRUE),
  -- #068 Rotom
  (1303, 479, NULL, 68, TRUE),
  -- #069 Magnemite
  (1303, 81, NULL, 69, TRUE),
  -- #070 Magneton
  (1303, 82, NULL, 70, TRUE),
  -- #071 Magnezone
  (1303, 462, NULL, 71, TRUE),
  -- #072 Voltorb
  (1303, 100, NULL, 72, TRUE),
  -- #073 Electrode
  (1303, 101, NULL, 73, TRUE),
  -- #074 Trubbish
  (1303, 568, NULL, 74, TRUE),
  -- #075 Garbodor
  (1303, 569, NULL, 75, TRUE),
  -- #076 Swinub
  (1303, 220, NULL, 76, TRUE),
  -- #077 Piloswine
  (1303, 221, NULL, 77, TRUE),
  -- #078 Mamoswine
  (1303, 473, NULL, 78, TRUE),
  -- #079 Bergmite
  (1303, 712, NULL, 79, TRUE),
  -- #080 Avalugg
  (1303, 713, NULL, 80, TRUE),
  -- #081 Cubchoo
  (1303, 613, NULL, 81, TRUE),
  -- #082 Beartic
  (1303, 614, NULL, 82, TRUE),
  -- #083 Smoochum
  (1303, 238, NULL, 83, TRUE),
  -- #084 Jynx
  (1303, 124, NULL, 84, TRUE),
  -- #085 Vanillite
  (1303, 582, NULL, 85, TRUE),
  -- #086 Vanillish
  (1303, 583, NULL, 86, TRUE),
  -- #087 Vanilluxe
  (1303, 584, NULL, 87, TRUE),
  -- #088 Snover
  (1303, 459, NULL, 88, TRUE),
  -- #089 Abomasnow
  (1303, 460, NULL, 89, TRUE),
  -- #090 Delibird
  (1303, 225, NULL, 90, TRUE),
  -- #091 Sneasel
  (1303, 215, NULL, 91, TRUE),
  -- #092 Weavile
  (1303, 461, NULL, 92, TRUE),
  -- #093 Timburr
  (1303, 532, NULL, 93, TRUE),
  -- #094 Gurdurr
  (1303, 533, NULL, 94, TRUE),
  -- #095 Conkeldurr
  (1303, 534, NULL, 95, TRUE),
  -- #096 Torkoal
  (1303, 324, NULL, 96, TRUE),
  -- #097 Sandshrew
  (1303, 27, NULL, 97, TRUE),
  -- #098 Sandslash
  (1303, 28, NULL, 98, TRUE),
  -- #099 Aron
  (1303, 304, NULL, 99, TRUE),
  -- #100 Lairon
  (1303, 305, NULL, 100, TRUE),
  -- #101 Aggron
  (1303, 306, NULL, 101, TRUE),
  -- #102 Larvitar
  (1303, 246, NULL, 102, TRUE),
  -- #103 Pupitar
  (1303, 247, NULL, 103, TRUE),
  -- #104 Tyranitar
  (1303, 248, NULL, 104, TRUE),
  -- #105 Heatmor
  (1303, 631, NULL, 105, TRUE),
  -- #106 Durant
  (1303, 632, NULL, 106, TRUE),
  -- #107 Spinarak
  (1303, 167, NULL, 107, TRUE),
  -- #108 Ariados
  (1303, 168, NULL, 108, TRUE),
  -- #109 Spearow
  (1303, 21, NULL, 109, TRUE),
  -- #110 Fearow
  (1303, 22, NULL, 110, TRUE),
  -- #111 Cryogonal
  (1303, 615, NULL, 111, TRUE),
  -- #112 Skarmory
  (1303, 227, NULL, 112, TRUE),
  -- #113 Noibat
  (1303, 714, NULL, 113, TRUE),
  -- #114 Noivern
  (1303, 715, NULL, 114, TRUE),
  -- #115 Gligar
  (1303, 207, NULL, 115, TRUE),
  -- #116 Gliscor
  (1303, 472, NULL, 116, TRUE),
  -- #117 Hoothoot
  (1303, 163, NULL, 117, TRUE),
  -- #118 Noctowl
  (1303, 164, NULL, 118, TRUE),
  -- #119 Igglybuff
  (1303, 174, NULL, 119, TRUE),
  -- #120 Jigglypuff
  (1303, 39, NULL, 120, TRUE),
  -- #121 Wigglytuff
  (1303, 40, NULL, 121, TRUE),
  -- #122 Shuppet
  (1303, 353, NULL, 122, TRUE),
  -- #123 Banette
  (1303, 354, NULL, 123, TRUE),
  -- #124 Zorua
  (1303, 570, NULL, 124, TRUE),
  -- #125 Zoroark
  (1303, 571, NULL, 125, TRUE),
  -- #126 Gothita
  (1303, 574, NULL, 126, TRUE),
  -- #127 Gothorita
  (1303, 575, NULL, 127, TRUE),
  -- #128 Gothitelle
  (1303, 576, NULL, 128, TRUE),
  -- #129 Bonsly
  (1303, 438, NULL, 129, TRUE),
  -- #130 Sudowoodo
  (1303, 185, NULL, 130, TRUE),
  -- #131 Spinda
  (1303, 327, NULL, 131, TRUE),
  -- #132 Teddiursa
  (1303, 216, NULL, 132, TRUE),
  -- #133 Ursaring
  (1303, 217, NULL, 133, TRUE),
  -- #134 Lickitung
  (1303, 108, NULL, 134, TRUE),
  -- #135 Lickilicky
  (1303, 463, NULL, 135, TRUE),
  -- #136 Scyther
  (1303, 123, NULL, 136, TRUE),
  -- #137 Scizor
  (1303, 212, NULL, 137, TRUE),
  -- #138 Ditto
  (1303, 132, NULL, 138, TRUE),
  -- #139 Swablu
  (1303, 333, NULL, 139, TRUE),
  -- #140 Altaria
  (1303, 334, NULL, 140, TRUE),
  -- #141 Druddigon
  (1303, 621, NULL, 141, TRUE),
  -- #142 Deino
  (1303, 633, NULL, 142, TRUE),
  -- #143 Zweilous
  (1303, 634, NULL, 143, TRUE),
  -- #144 Hydreigon
  (1303, 635, NULL, 144, TRUE),
  -- #145 Dratini
  (1303, 147, NULL, 145, TRUE),
  -- #146 Dragonair
  (1303, 148, NULL, 146, TRUE),
  -- #147 Dragonite
  (1303, 149, NULL, 147, TRUE),
  -- #148 Xerneas
  (1303, 716, NULL, 148, TRUE),
  -- #149 Yveltal
  (1303, 717, NULL, 149, TRUE),
  -- #150 Zygarde
  (1303, 718, NULL, 150, TRUE),
  -- #151 Mewtwo
  (1303, 150, NULL, 151, FALSE);
