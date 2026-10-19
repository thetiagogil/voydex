-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex species seeds, normalized to clean schema columns and ASCII code-facing names.
-- Construction aid: PokeAPI pokemon_species CSV, restricted to National Dex 1-1025, used only for mechanical sanity checks.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 3
-- Table: reference.pokemon_species
-- Scope: National Dex #0252-0386
INSERT INTO reference.pokemon_species (id, national_number, slug, name, introduced_generation_id, evolution_family_id, color, is_baby, is_legendary, is_mythical)
VALUES
  -- Treecko
  (252, 252, 'treecko', 'Treecko', 3, 252, 'green', FALSE, FALSE, FALSE),
  -- Grovyle
  (253, 253, 'grovyle', 'Grovyle', 3, 252, 'green', FALSE, FALSE, FALSE),
  -- Sceptile
  (254, 254, 'sceptile', 'Sceptile', 3, 252, 'green', FALSE, FALSE, FALSE),
  -- Torchic
  (255, 255, 'torchic', 'Torchic', 3, 255, 'red', FALSE, FALSE, FALSE),
  -- Combusken
  (256, 256, 'combusken', 'Combusken', 3, 255, 'red', FALSE, FALSE, FALSE),
  -- Blaziken
  (257, 257, 'blaziken', 'Blaziken', 3, 255, 'red', FALSE, FALSE, FALSE),
  -- Mudkip
  (258, 258, 'mudkip', 'Mudkip', 3, 258, 'blue', FALSE, FALSE, FALSE),
  -- Marshtomp
  (259, 259, 'marshtomp', 'Marshtomp', 3, 258, 'blue', FALSE, FALSE, FALSE),
  -- Swampert
  (260, 260, 'swampert', 'Swampert', 3, 258, 'blue', FALSE, FALSE, FALSE),
  -- Poochyena
  (261, 261, 'poochyena', 'Poochyena', 3, 261, 'gray', FALSE, FALSE, FALSE),
  -- Mightyena
  (262, 262, 'mightyena', 'Mightyena', 3, 261, 'gray', FALSE, FALSE, FALSE),
  -- Zigzagoon
  (263, 263, 'zigzagoon', 'Zigzagoon', 3, 263, 'brown', FALSE, FALSE, FALSE),
  -- Linoone
  (264, 264, 'linoone', 'Linoone', 3, 263, 'white', FALSE, FALSE, FALSE),
  -- Wurmple
  (265, 265, 'wurmple', 'Wurmple', 3, 265, 'red', FALSE, FALSE, FALSE),
  -- Silcoon
  (266, 266, 'silcoon', 'Silcoon', 3, 265, 'white', FALSE, FALSE, FALSE),
  -- Beautifly
  (267, 267, 'beautifly', 'Beautifly', 3, 265, 'yellow', FALSE, FALSE, FALSE),
  -- Cascoon
  (268, 268, 'cascoon', 'Cascoon', 3, 265, 'purple', FALSE, FALSE, FALSE),
  -- Dustox
  (269, 269, 'dustox', 'Dustox', 3, 265, 'green', FALSE, FALSE, FALSE),
  -- Lotad
  (270, 270, 'lotad', 'Lotad', 3, 270, 'green', FALSE, FALSE, FALSE),
  -- Lombre
  (271, 271, 'lombre', 'Lombre', 3, 270, 'green', FALSE, FALSE, FALSE),
  -- Ludicolo
  (272, 272, 'ludicolo', 'Ludicolo', 3, 270, 'green', FALSE, FALSE, FALSE),
  -- Seedot
  (273, 273, 'seedot', 'Seedot', 3, 273, 'brown', FALSE, FALSE, FALSE),
  -- Nuzleaf
  (274, 274, 'nuzleaf', 'Nuzleaf', 3, 273, 'brown', FALSE, FALSE, FALSE),
  -- Shiftry
  (275, 275, 'shiftry', 'Shiftry', 3, 273, 'brown', FALSE, FALSE, FALSE),
  -- Taillow
  (276, 276, 'taillow', 'Taillow', 3, 276, 'blue', FALSE, FALSE, FALSE),
  -- Swellow
  (277, 277, 'swellow', 'Swellow', 3, 276, 'blue', FALSE, FALSE, FALSE),
  -- Wingull
  (278, 278, 'wingull', 'Wingull', 3, 278, 'white', FALSE, FALSE, FALSE),
  -- Pelipper
  (279, 279, 'pelipper', 'Pelipper', 3, 278, 'yellow', FALSE, FALSE, FALSE),
  -- Ralts
  (280, 280, 'ralts', 'Ralts', 3, 280, 'white', FALSE, FALSE, FALSE),
  -- Kirlia
  (281, 281, 'kirlia', 'Kirlia', 3, 280, 'white', FALSE, FALSE, FALSE),
  -- Gardevoir
  (282, 282, 'gardevoir', 'Gardevoir', 3, 280, 'white', FALSE, FALSE, FALSE),
  -- Surskit
  (283, 283, 'surskit', 'Surskit', 3, 283, 'blue', FALSE, FALSE, FALSE),
  -- Masquerain
  (284, 284, 'masquerain', 'Masquerain', 3, 283, 'blue', FALSE, FALSE, FALSE),
  -- Shroomish
  (285, 285, 'shroomish', 'Shroomish', 3, 285, 'brown', FALSE, FALSE, FALSE),
  -- Breloom
  (286, 286, 'breloom', 'Breloom', 3, 285, 'green', FALSE, FALSE, FALSE),
  -- Slakoth
  (287, 287, 'slakoth', 'Slakoth', 3, 287, 'brown', FALSE, FALSE, FALSE),
  -- Vigoroth
  (288, 288, 'vigoroth', 'Vigoroth', 3, 287, 'white', FALSE, FALSE, FALSE),
  -- Slaking
  (289, 289, 'slaking', 'Slaking', 3, 287, 'brown', FALSE, FALSE, FALSE),
  -- Nincada
  (290, 290, 'nincada', 'Nincada', 3, 290, 'gray', FALSE, FALSE, FALSE),
  -- Ninjask
  (291, 291, 'ninjask', 'Ninjask', 3, 290, 'yellow', FALSE, FALSE, FALSE),
  -- Shedinja
  (292, 292, 'shedinja', 'Shedinja', 3, 290, 'brown', FALSE, FALSE, FALSE),
  -- Whismur
  (293, 293, 'whismur', 'Whismur', 3, 293, 'pink', FALSE, FALSE, FALSE),
  -- Loudred
  (294, 294, 'loudred', 'Loudred', 3, 293, 'purple', FALSE, FALSE, FALSE),
  -- Exploud
  (295, 295, 'exploud', 'Exploud', 3, 293, 'blue', FALSE, FALSE, FALSE),
  -- Makuhita
  (296, 296, 'makuhita', 'Makuhita', 3, 296, 'yellow', FALSE, FALSE, FALSE),
  -- Hariyama
  (297, 297, 'hariyama', 'Hariyama', 3, 296, 'brown', FALSE, FALSE, FALSE),
  -- Azurill
  (298, 298, 'azurill', 'Azurill', 3, 183, 'blue', TRUE, FALSE, FALSE),
  -- Nosepass
  (299, 299, 'nosepass', 'Nosepass', 3, 299, 'gray', FALSE, FALSE, FALSE),
  -- Skitty
  (300, 300, 'skitty', 'Skitty', 3, 300, 'pink', FALSE, FALSE, FALSE),
  -- Delcatty
  (301, 301, 'delcatty', 'Delcatty', 3, 300, 'purple', FALSE, FALSE, FALSE),
  -- Sableye
  (302, 302, 'sableye', 'Sableye', 3, 302, 'purple', FALSE, FALSE, FALSE),
  -- Mawile
  (303, 303, 'mawile', 'Mawile', 3, 303, 'black', FALSE, FALSE, FALSE),
  -- Aron
  (304, 304, 'aron', 'Aron', 3, 304, 'gray', FALSE, FALSE, FALSE),
  -- Lairon
  (305, 305, 'lairon', 'Lairon', 3, 304, 'gray', FALSE, FALSE, FALSE),
  -- Aggron
  (306, 306, 'aggron', 'Aggron', 3, 304, 'gray', FALSE, FALSE, FALSE),
  -- Meditite
  (307, 307, 'meditite', 'Meditite', 3, 307, 'blue', FALSE, FALSE, FALSE),
  -- Medicham
  (308, 308, 'medicham', 'Medicham', 3, 307, 'red', FALSE, FALSE, FALSE),
  -- Electrike
  (309, 309, 'electrike', 'Electrike', 3, 309, 'green', FALSE, FALSE, FALSE),
  -- Manectric
  (310, 310, 'manectric', 'Manectric', 3, 309, 'yellow', FALSE, FALSE, FALSE),
  -- Plusle
  (311, 311, 'plusle', 'Plusle', 3, 311, 'yellow', FALSE, FALSE, FALSE),
  -- Minun
  (312, 312, 'minun', 'Minun', 3, 312, 'yellow', FALSE, FALSE, FALSE),
  -- Volbeat
  (313, 313, 'volbeat', 'Volbeat', 3, 313, 'gray', FALSE, FALSE, FALSE),
  -- Illumise
  (314, 314, 'illumise', 'Illumise', 3, 314, 'purple', FALSE, FALSE, FALSE),
  -- Roselia
  (315, 315, 'roselia', 'Roselia', 3, 315, 'green', FALSE, FALSE, FALSE),
  -- Gulpin
  (316, 316, 'gulpin', 'Gulpin', 3, 316, 'green', FALSE, FALSE, FALSE),
  -- Swalot
  (317, 317, 'swalot', 'Swalot', 3, 316, 'purple', FALSE, FALSE, FALSE),
  -- Carvanha
  (318, 318, 'carvanha', 'Carvanha', 3, 318, 'red', FALSE, FALSE, FALSE),
  -- Sharpedo
  (319, 319, 'sharpedo', 'Sharpedo', 3, 318, 'blue', FALSE, FALSE, FALSE),
  -- Wailmer
  (320, 320, 'wailmer', 'Wailmer', 3, 320, 'blue', FALSE, FALSE, FALSE),
  -- Wailord
  (321, 321, 'wailord', 'Wailord', 3, 320, 'blue', FALSE, FALSE, FALSE),
  -- Numel
  (322, 322, 'numel', 'Numel', 3, 322, 'yellow', FALSE, FALSE, FALSE),
  -- Camerupt
  (323, 323, 'camerupt', 'Camerupt', 3, 322, 'red', FALSE, FALSE, FALSE),
  -- Torkoal
  (324, 324, 'torkoal', 'Torkoal', 3, 324, 'brown', FALSE, FALSE, FALSE),
  -- Spoink
  (325, 325, 'spoink', 'Spoink', 3, 325, 'black', FALSE, FALSE, FALSE),
  -- Grumpig
  (326, 326, 'grumpig', 'Grumpig', 3, 325, 'purple', FALSE, FALSE, FALSE),
  -- Spinda
  (327, 327, 'spinda', 'Spinda', 3, 327, 'brown', FALSE, FALSE, FALSE),
  -- Trapinch
  (328, 328, 'trapinch', 'Trapinch', 3, 328, 'brown', FALSE, FALSE, FALSE),
  -- Vibrava
  (329, 329, 'vibrava', 'Vibrava', 3, 328, 'green', FALSE, FALSE, FALSE),
  -- Flygon
  (330, 330, 'flygon', 'Flygon', 3, 328, 'green', FALSE, FALSE, FALSE),
  -- Cacnea
  (331, 331, 'cacnea', 'Cacnea', 3, 331, 'green', FALSE, FALSE, FALSE),
  -- Cacturne
  (332, 332, 'cacturne', 'Cacturne', 3, 331, 'green', FALSE, FALSE, FALSE),
  -- Swablu
  (333, 333, 'swablu', 'Swablu', 3, 333, 'blue', FALSE, FALSE, FALSE),
  -- Altaria
  (334, 334, 'altaria', 'Altaria', 3, 333, 'blue', FALSE, FALSE, FALSE),
  -- Zangoose
  (335, 335, 'zangoose', 'Zangoose', 3, 335, 'white', FALSE, FALSE, FALSE),
  -- Seviper
  (336, 336, 'seviper', 'Seviper', 3, 336, 'black', FALSE, FALSE, FALSE),
  -- Lunatone
  (337, 337, 'lunatone', 'Lunatone', 3, 337, 'yellow', FALSE, FALSE, FALSE),
  -- Solrock
  (338, 338, 'solrock', 'Solrock', 3, 338, 'red', FALSE, FALSE, FALSE),
  -- Barboach
  (339, 339, 'barboach', 'Barboach', 3, 339, 'gray', FALSE, FALSE, FALSE),
  -- Whiscash
  (340, 340, 'whiscash', 'Whiscash', 3, 339, 'blue', FALSE, FALSE, FALSE),
  -- Corphish
  (341, 341, 'corphish', 'Corphish', 3, 341, 'red', FALSE, FALSE, FALSE),
  -- Crawdaunt
  (342, 342, 'crawdaunt', 'Crawdaunt', 3, 341, 'red', FALSE, FALSE, FALSE),
  -- Baltoy
  (343, 343, 'baltoy', 'Baltoy', 3, 343, 'brown', FALSE, FALSE, FALSE),
  -- Claydol
  (344, 344, 'claydol', 'Claydol', 3, 343, 'black', FALSE, FALSE, FALSE),
  -- Lileep
  (345, 345, 'lileep', 'Lileep', 3, 345, 'purple', FALSE, FALSE, FALSE),
  -- Cradily
  (346, 346, 'cradily', 'Cradily', 3, 345, 'green', FALSE, FALSE, FALSE),
  -- Anorith
  (347, 347, 'anorith', 'Anorith', 3, 347, 'gray', FALSE, FALSE, FALSE),
  -- Armaldo
  (348, 348, 'armaldo', 'Armaldo', 3, 347, 'gray', FALSE, FALSE, FALSE),
  -- Feebas
  (349, 349, 'feebas', 'Feebas', 3, 349, 'brown', FALSE, FALSE, FALSE),
  -- Milotic
  (350, 350, 'milotic', 'Milotic', 3, 349, 'pink', FALSE, FALSE, FALSE),
  -- Castform
  (351, 351, 'castform', 'Castform', 3, 351, 'gray', FALSE, FALSE, FALSE),
  -- Kecleon
  (352, 352, 'kecleon', 'Kecleon', 3, 352, 'green', FALSE, FALSE, FALSE),
  -- Shuppet
  (353, 353, 'shuppet', 'Shuppet', 3, 353, 'black', FALSE, FALSE, FALSE),
  -- Banette
  (354, 354, 'banette', 'Banette', 3, 353, 'black', FALSE, FALSE, FALSE),
  -- Duskull
  (355, 355, 'duskull', 'Duskull', 3, 355, 'black', FALSE, FALSE, FALSE),
  -- Dusclops
  (356, 356, 'dusclops', 'Dusclops', 3, 355, 'black', FALSE, FALSE, FALSE),
  -- Tropius
  (357, 357, 'tropius', 'Tropius', 3, 357, 'green', FALSE, FALSE, FALSE),
  -- Chimecho
  (358, 358, 'chimecho', 'Chimecho', 3, 358, 'blue', FALSE, FALSE, FALSE),
  -- Absol
  (359, 359, 'absol', 'Absol', 3, 359, 'white', FALSE, FALSE, FALSE),
  -- Wynaut
  (360, 360, 'wynaut', 'Wynaut', 3, 202, 'blue', TRUE, FALSE, FALSE),
  -- Snorunt
  (361, 361, 'snorunt', 'Snorunt', 3, 361, 'gray', FALSE, FALSE, FALSE),
  -- Glalie
  (362, 362, 'glalie', 'Glalie', 3, 361, 'gray', FALSE, FALSE, FALSE),
  -- Spheal
  (363, 363, 'spheal', 'Spheal', 3, 363, 'blue', FALSE, FALSE, FALSE),
  -- Sealeo
  (364, 364, 'sealeo', 'Sealeo', 3, 363, 'blue', FALSE, FALSE, FALSE),
  -- Walrein
  (365, 365, 'walrein', 'Walrein', 3, 363, 'blue', FALSE, FALSE, FALSE),
  -- Clamperl
  (366, 366, 'clamperl', 'Clamperl', 3, 366, 'blue', FALSE, FALSE, FALSE),
  -- Huntail
  (367, 367, 'huntail', 'Huntail', 3, 366, 'blue', FALSE, FALSE, FALSE),
  -- Gorebyss
  (368, 368, 'gorebyss', 'Gorebyss', 3, 366, 'pink', FALSE, FALSE, FALSE),
  -- Relicanth
  (369, 369, 'relicanth', 'Relicanth', 3, 369, 'gray', FALSE, FALSE, FALSE),
  -- Luvdisc
  (370, 370, 'luvdisc', 'Luvdisc', 3, 370, 'pink', FALSE, FALSE, FALSE),
  -- Bagon
  (371, 371, 'bagon', 'Bagon', 3, 371, 'blue', FALSE, FALSE, FALSE),
  -- Shelgon
  (372, 372, 'shelgon', 'Shelgon', 3, 371, 'white', FALSE, FALSE, FALSE),
  -- Salamence
  (373, 373, 'salamence', 'Salamence', 3, 371, 'blue', FALSE, FALSE, FALSE),
  -- Beldum
  (374, 374, 'beldum', 'Beldum', 3, 374, 'blue', FALSE, FALSE, FALSE),
  -- Metang
  (375, 375, 'metang', 'Metang', 3, 374, 'blue', FALSE, FALSE, FALSE),
  -- Metagross
  (376, 376, 'metagross', 'Metagross', 3, 374, 'blue', FALSE, FALSE, FALSE),
  -- Regirock
  (377, 377, 'regirock', 'Regirock', 3, 377, 'brown', FALSE, TRUE, FALSE),
  -- Regice
  (378, 378, 'regice', 'Regice', 3, 378, 'blue', FALSE, TRUE, FALSE),
  -- Registeel
  (379, 379, 'registeel', 'Registeel', 3, 379, 'gray', FALSE, TRUE, FALSE),
  -- Latias
  (380, 380, 'latias', 'Latias', 3, 380, 'red', FALSE, TRUE, FALSE),
  -- Latios
  (381, 381, 'latios', 'Latios', 3, 381, 'blue', FALSE, TRUE, FALSE),
  -- Kyogre
  (382, 382, 'kyogre', 'Kyogre', 3, 382, 'blue', FALSE, TRUE, FALSE),
  -- Groudon
  (383, 383, 'groudon', 'Groudon', 3, 383, 'red', FALSE, TRUE, FALSE),
  -- Rayquaza
  (384, 384, 'rayquaza', 'Rayquaza', 3, 384, 'green', FALSE, TRUE, FALSE),
  -- Jirachi
  (385, 385, 'jirachi', 'Jirachi', 3, 385, 'yellow', FALSE, FALSE, TRUE),
  -- Deoxys
  (386, 386, 'deoxys', 'Deoxys', 3, 386, 'red', FALSE, FALSE, TRUE);
