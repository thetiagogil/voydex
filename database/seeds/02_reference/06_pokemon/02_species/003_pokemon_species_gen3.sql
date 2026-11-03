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
-- Generation: 3
-- Table: reference.pokemon_species
-- Scope: National Dex #0252-0386
INSERT INTO reference.pokemon_species (id, national_number, slug, name, introduced_generation_id, evolution_family_id, color, category, female_ratio_eighths, egg_cycles, is_baby, is_legendary, is_mythical)
VALUES
  -- Treecko
  (252, 252, 'treecko', 'Treecko', 3, 252, 'green', 'Wood Gecko', 1, 20, FALSE, FALSE, FALSE),
  -- Grovyle
  (253, 253, 'grovyle', 'Grovyle', 3, 252, 'green', 'Wood Gecko', 1, 20, FALSE, FALSE, FALSE),
  -- Sceptile
  (254, 254, 'sceptile', 'Sceptile', 3, 252, 'green', 'Forest', 1, 20, FALSE, FALSE, FALSE),
  -- Torchic
  (255, 255, 'torchic', 'Torchic', 3, 255, 'red', 'Chick', 1, 20, FALSE, FALSE, FALSE),
  -- Combusken
  (256, 256, 'combusken', 'Combusken', 3, 255, 'red', 'Young Fowl', 1, 20, FALSE, FALSE, FALSE),
  -- Blaziken
  (257, 257, 'blaziken', 'Blaziken', 3, 255, 'red', 'Blaze', 1, 20, FALSE, FALSE, FALSE),
  -- Mudkip
  (258, 258, 'mudkip', 'Mudkip', 3, 258, 'blue', 'Mud Fish', 1, 20, FALSE, FALSE, FALSE),
  -- Marshtomp
  (259, 259, 'marshtomp', 'Marshtomp', 3, 258, 'blue', 'Mud Fish', 1, 20, FALSE, FALSE, FALSE),
  -- Swampert
  (260, 260, 'swampert', 'Swampert', 3, 258, 'blue', 'Mud Fish', 1, 20, FALSE, FALSE, FALSE),
  -- Poochyena
  (261, 261, 'poochyena', 'Poochyena', 3, 261, 'gray', 'Bite', 4, 15, FALSE, FALSE, FALSE),
  -- Mightyena
  (262, 262, 'mightyena', 'Mightyena', 3, 261, 'gray', 'Bite', 4, 15, FALSE, FALSE, FALSE),
  -- Zigzagoon
  (263, 263, 'zigzagoon', 'Zigzagoon', 3, 263, 'brown', 'Tiny Raccoon', 4, 15, FALSE, FALSE, FALSE),
  -- Linoone
  (264, 264, 'linoone', 'Linoone', 3, 263, 'white', 'Rushing', 4, 15, FALSE, FALSE, FALSE),
  -- Wurmple
  (265, 265, 'wurmple', 'Wurmple', 3, 265, 'red', 'Worm', 4, 15, FALSE, FALSE, FALSE),
  -- Silcoon
  (266, 266, 'silcoon', 'Silcoon', 3, 265, 'white', 'Cocoon', 4, 15, FALSE, FALSE, FALSE),
  -- Beautifly
  (267, 267, 'beautifly', 'Beautifly', 3, 265, 'yellow', 'Butterfly', 4, 15, FALSE, FALSE, FALSE),
  -- Cascoon
  (268, 268, 'cascoon', 'Cascoon', 3, 265, 'purple', 'Cocoon', 4, 15, FALSE, FALSE, FALSE),
  -- Dustox
  (269, 269, 'dustox', 'Dustox', 3, 265, 'green', 'Poison Moth', 4, 15, FALSE, FALSE, FALSE),
  -- Lotad
  (270, 270, 'lotad', 'Lotad', 3, 270, 'green', 'Water Weed', 4, 15, FALSE, FALSE, FALSE),
  -- Lombre
  (271, 271, 'lombre', 'Lombre', 3, 270, 'green', 'Jolly', 4, 15, FALSE, FALSE, FALSE),
  -- Ludicolo
  (272, 272, 'ludicolo', 'Ludicolo', 3, 270, 'green', 'Carefree', 4, 15, FALSE, FALSE, FALSE),
  -- Seedot
  (273, 273, 'seedot', 'Seedot', 3, 273, 'brown', 'Acorn', 4, 15, FALSE, FALSE, FALSE),
  -- Nuzleaf
  (274, 274, 'nuzleaf', 'Nuzleaf', 3, 273, 'brown', 'Wily', 4, 15, FALSE, FALSE, FALSE),
  -- Shiftry
  (275, 275, 'shiftry', 'Shiftry', 3, 273, 'brown', 'Wicked', 4, 15, FALSE, FALSE, FALSE),
  -- Taillow
  (276, 276, 'taillow', 'Taillow', 3, 276, 'blue', 'Tiny Swallow', 4, 15, FALSE, FALSE, FALSE),
  -- Swellow
  (277, 277, 'swellow', 'Swellow', 3, 276, 'blue', 'Swallow', 4, 15, FALSE, FALSE, FALSE),
  -- Wingull
  (278, 278, 'wingull', 'Wingull', 3, 278, 'white', 'Seagull', 4, 20, FALSE, FALSE, FALSE),
  -- Pelipper
  (279, 279, 'pelipper', 'Pelipper', 3, 278, 'yellow', 'Water Bird', 4, 20, FALSE, FALSE, FALSE),
  -- Ralts
  (280, 280, 'ralts', 'Ralts', 3, 280, 'white', 'Feeling', 4, 20, FALSE, FALSE, FALSE),
  -- Kirlia
  (281, 281, 'kirlia', 'Kirlia', 3, 280, 'white', 'Emotion', 4, 20, FALSE, FALSE, FALSE),
  -- Gardevoir
  (282, 282, 'gardevoir', 'Gardevoir', 3, 280, 'white', 'Embrace', 4, 20, FALSE, FALSE, FALSE),
  -- Surskit
  (283, 283, 'surskit', 'Surskit', 3, 283, 'blue', 'Pond Skater', 4, 15, FALSE, FALSE, FALSE),
  -- Masquerain
  (284, 284, 'masquerain', 'Masquerain', 3, 283, 'blue', 'Eyeball', 4, 15, FALSE, FALSE, FALSE),
  -- Shroomish
  (285, 285, 'shroomish', 'Shroomish', 3, 285, 'brown', 'Mushroom', 4, 15, FALSE, FALSE, FALSE),
  -- Breloom
  (286, 286, 'breloom', 'Breloom', 3, 285, 'green', 'Mushroom', 4, 15, FALSE, FALSE, FALSE),
  -- Slakoth
  (287, 287, 'slakoth', 'Slakoth', 3, 287, 'brown', 'Slacker', 4, 15, FALSE, FALSE, FALSE),
  -- Vigoroth
  (288, 288, 'vigoroth', 'Vigoroth', 3, 287, 'white', 'Wild Monkey', 4, 15, FALSE, FALSE, FALSE),
  -- Slaking
  (289, 289, 'slaking', 'Slaking', 3, 287, 'brown', 'Lazy', 4, 15, FALSE, FALSE, FALSE),
  -- Nincada
  (290, 290, 'nincada', 'Nincada', 3, 290, 'gray', 'Trainee', 4, 15, FALSE, FALSE, FALSE),
  -- Ninjask
  (291, 291, 'ninjask', 'Ninjask', 3, 290, 'yellow', 'Ninja', 4, 15, FALSE, FALSE, FALSE),
  -- Shedinja
  (292, 292, 'shedinja', 'Shedinja', 3, 290, 'brown', 'Shed', NULL, 15, FALSE, FALSE, FALSE),
  -- Whismur
  (293, 293, 'whismur', 'Whismur', 3, 293, 'pink', 'Whisper', 4, 20, FALSE, FALSE, FALSE),
  -- Loudred
  (294, 294, 'loudred', 'Loudred', 3, 293, 'purple', 'Big Voice', 4, 20, FALSE, FALSE, FALSE),
  -- Exploud
  (295, 295, 'exploud', 'Exploud', 3, 293, 'blue', 'Loud Noise', 4, 20, FALSE, FALSE, FALSE),
  -- Makuhita
  (296, 296, 'makuhita', 'Makuhita', 3, 296, 'yellow', 'Guts', 2, 20, FALSE, FALSE, FALSE),
  -- Hariyama
  (297, 297, 'hariyama', 'Hariyama', 3, 296, 'brown', 'Arm Thrust', 2, 20, FALSE, FALSE, FALSE),
  -- Azurill
  (298, 298, 'azurill', 'Azurill', 3, 183, 'blue', 'Polka Dot', 6, 10, TRUE, FALSE, FALSE),
  -- Nosepass
  (299, 299, 'nosepass', 'Nosepass', 3, 299, 'gray', 'Compass', 4, 20, FALSE, FALSE, FALSE),
  -- Skitty
  (300, 300, 'skitty', 'Skitty', 3, 300, 'pink', 'Kitten', 6, 15, FALSE, FALSE, FALSE),
  -- Delcatty
  (301, 301, 'delcatty', 'Delcatty', 3, 300, 'purple', 'Prim', 6, 15, FALSE, FALSE, FALSE),
  -- Sableye
  (302, 302, 'sableye', 'Sableye', 3, 302, 'purple', 'Darkness', 4, 25, FALSE, FALSE, FALSE),
  -- Mawile
  (303, 303, 'mawile', 'Mawile', 3, 303, 'black', 'Deceiver', 4, 20, FALSE, FALSE, FALSE),
  -- Aron
  (304, 304, 'aron', 'Aron', 3, 304, 'gray', 'Iron Armor', 4, 35, FALSE, FALSE, FALSE),
  -- Lairon
  (305, 305, 'lairon', 'Lairon', 3, 304, 'gray', 'Iron Armor', 4, 35, FALSE, FALSE, FALSE),
  -- Aggron
  (306, 306, 'aggron', 'Aggron', 3, 304, 'gray', 'Iron Armor', 4, 35, FALSE, FALSE, FALSE),
  -- Meditite
  (307, 307, 'meditite', 'Meditite', 3, 307, 'blue', 'Meditate', 4, 20, FALSE, FALSE, FALSE),
  -- Medicham
  (308, 308, 'medicham', 'Medicham', 3, 307, 'red', 'Meditate', 4, 20, FALSE, FALSE, FALSE),
  -- Electrike
  (309, 309, 'electrike', 'Electrike', 3, 309, 'green', 'Lightning', 4, 20, FALSE, FALSE, FALSE),
  -- Manectric
  (310, 310, 'manectric', 'Manectric', 3, 309, 'yellow', 'Discharge', 4, 20, FALSE, FALSE, FALSE),
  -- Plusle
  (311, 311, 'plusle', 'Plusle', 3, 311, 'yellow', 'Cheering', 4, 20, FALSE, FALSE, FALSE),
  -- Minun
  (312, 312, 'minun', 'Minun', 3, 312, 'yellow', 'Cheering', 4, 20, FALSE, FALSE, FALSE),
  -- Volbeat
  (313, 313, 'volbeat', 'Volbeat', 3, 313, 'gray', 'Firefly', 0, 15, FALSE, FALSE, FALSE),
  -- Illumise
  (314, 314, 'illumise', 'Illumise', 3, 314, 'purple', 'Firefly', 8, 15, FALSE, FALSE, FALSE),
  -- Roselia
  (315, 315, 'roselia', 'Roselia', 3, 315, 'green', 'Thorn', 4, 20, FALSE, FALSE, FALSE),
  -- Gulpin
  (316, 316, 'gulpin', 'Gulpin', 3, 316, 'green', 'Stomach', 4, 20, FALSE, FALSE, FALSE),
  -- Swalot
  (317, 317, 'swalot', 'Swalot', 3, 316, 'purple', 'Poison Bag', 4, 20, FALSE, FALSE, FALSE),
  -- Carvanha
  (318, 318, 'carvanha', 'Carvanha', 3, 318, 'red', 'Savage', 4, 20, FALSE, FALSE, FALSE),
  -- Sharpedo
  (319, 319, 'sharpedo', 'Sharpedo', 3, 318, 'blue', 'Brutal', 4, 20, FALSE, FALSE, FALSE),
  -- Wailmer
  (320, 320, 'wailmer', 'Wailmer', 3, 320, 'blue', 'Ball Whale', 4, 40, FALSE, FALSE, FALSE),
  -- Wailord
  (321, 321, 'wailord', 'Wailord', 3, 320, 'blue', 'Float Whale', 4, 40, FALSE, FALSE, FALSE),
  -- Numel
  (322, 322, 'numel', 'Numel', 3, 322, 'yellow', 'Numb', 4, 20, FALSE, FALSE, FALSE),
  -- Camerupt
  (323, 323, 'camerupt', 'Camerupt', 3, 322, 'red', 'Eruption', 4, 20, FALSE, FALSE, FALSE),
  -- Torkoal
  (324, 324, 'torkoal', 'Torkoal', 3, 324, 'brown', 'Coal', 4, 20, FALSE, FALSE, FALSE),
  -- Spoink
  (325, 325, 'spoink', 'Spoink', 3, 325, 'black', 'Bounce', 4, 20, FALSE, FALSE, FALSE),
  -- Grumpig
  (326, 326, 'grumpig', 'Grumpig', 3, 325, 'purple', 'Manipulate', 4, 20, FALSE, FALSE, FALSE),
  -- Spinda
  (327, 327, 'spinda', 'Spinda', 3, 327, 'brown', 'Spot Panda', 4, 15, FALSE, FALSE, FALSE),
  -- Trapinch
  (328, 328, 'trapinch', 'Trapinch', 3, 328, 'brown', 'Ant Pit', 4, 20, FALSE, FALSE, FALSE),
  -- Vibrava
  (329, 329, 'vibrava', 'Vibrava', 3, 328, 'green', 'Vibration', 4, 20, FALSE, FALSE, FALSE),
  -- Flygon
  (330, 330, 'flygon', 'Flygon', 3, 328, 'green', 'Mystic', 4, 20, FALSE, FALSE, FALSE),
  -- Cacnea
  (331, 331, 'cacnea', 'Cacnea', 3, 331, 'green', 'Cactus', 4, 20, FALSE, FALSE, FALSE),
  -- Cacturne
  (332, 332, 'cacturne', 'Cacturne', 3, 331, 'green', 'Scarecrow', 4, 20, FALSE, FALSE, FALSE),
  -- Swablu
  (333, 333, 'swablu', 'Swablu', 3, 333, 'blue', 'Cotton Bird', 4, 20, FALSE, FALSE, FALSE),
  -- Altaria
  (334, 334, 'altaria', 'Altaria', 3, 333, 'blue', 'Humming', 4, 20, FALSE, FALSE, FALSE),
  -- Zangoose
  (335, 335, 'zangoose', 'Zangoose', 3, 335, 'white', 'Cat Ferret', 4, 20, FALSE, FALSE, FALSE),
  -- Seviper
  (336, 336, 'seviper', 'Seviper', 3, 336, 'black', 'Fang Snake', 4, 20, FALSE, FALSE, FALSE),
  -- Lunatone
  (337, 337, 'lunatone', 'Lunatone', 3, 337, 'yellow', 'Meteorite', NULL, 25, FALSE, FALSE, FALSE),
  -- Solrock
  (338, 338, 'solrock', 'Solrock', 3, 338, 'red', 'Meteorite', NULL, 25, FALSE, FALSE, FALSE),
  -- Barboach
  (339, 339, 'barboach', 'Barboach', 3, 339, 'gray', 'Whiskers', 4, 20, FALSE, FALSE, FALSE),
  -- Whiscash
  (340, 340, 'whiscash', 'Whiscash', 3, 339, 'blue', 'Whiskers', 4, 20, FALSE, FALSE, FALSE),
  -- Corphish
  (341, 341, 'corphish', 'Corphish', 3, 341, 'red', 'Ruffian', 4, 15, FALSE, FALSE, FALSE),
  -- Crawdaunt
  (342, 342, 'crawdaunt', 'Crawdaunt', 3, 341, 'red', 'Rogue', 4, 15, FALSE, FALSE, FALSE),
  -- Baltoy
  (343, 343, 'baltoy', 'Baltoy', 3, 343, 'brown', 'Clay Doll', NULL, 20, FALSE, FALSE, FALSE),
  -- Claydol
  (344, 344, 'claydol', 'Claydol', 3, 343, 'black', 'Clay Doll', NULL, 20, FALSE, FALSE, FALSE),
  -- Lileep
  (345, 345, 'lileep', 'Lileep', 3, 345, 'purple', 'Sea Lily', 1, 30, FALSE, FALSE, FALSE),
  -- Cradily
  (346, 346, 'cradily', 'Cradily', 3, 345, 'green', 'Barnacle', 1, 30, FALSE, FALSE, FALSE),
  -- Anorith
  (347, 347, 'anorith', 'Anorith', 3, 347, 'gray', 'Old Shrimp', 1, 30, FALSE, FALSE, FALSE),
  -- Armaldo
  (348, 348, 'armaldo', 'Armaldo', 3, 347, 'gray', 'Plate', 1, 30, FALSE, FALSE, FALSE),
  -- Feebas
  (349, 349, 'feebas', 'Feebas', 3, 349, 'brown', 'Fish', 4, 20, FALSE, FALSE, FALSE),
  -- Milotic
  (350, 350, 'milotic', 'Milotic', 3, 349, 'pink', 'Tender', 4, 20, FALSE, FALSE, FALSE),
  -- Castform
  (351, 351, 'castform', 'Castform', 3, 351, 'gray', 'Weather', 4, 25, FALSE, FALSE, FALSE),
  -- Kecleon
  (352, 352, 'kecleon', 'Kecleon', 3, 352, 'green', 'Color Swap', 4, 20, FALSE, FALSE, FALSE),
  -- Shuppet
  (353, 353, 'shuppet', 'Shuppet', 3, 353, 'black', 'Puppet', 4, 25, FALSE, FALSE, FALSE),
  -- Banette
  (354, 354, 'banette', 'Banette', 3, 353, 'black', 'Marionette', 4, 25, FALSE, FALSE, FALSE),
  -- Duskull
  (355, 355, 'duskull', 'Duskull', 3, 355, 'black', 'Requiem', 4, 25, FALSE, FALSE, FALSE),
  -- Dusclops
  (356, 356, 'dusclops', 'Dusclops', 3, 355, 'black', 'Beckon', 4, 25, FALSE, FALSE, FALSE),
  -- Tropius
  (357, 357, 'tropius', 'Tropius', 3, 357, 'green', 'Fruit', 4, 25, FALSE, FALSE, FALSE),
  -- Chimecho
  (358, 358, 'chimecho', 'Chimecho', 3, 358, 'blue', 'Wind Chime', 4, 25, FALSE, FALSE, FALSE),
  -- Absol
  (359, 359, 'absol', 'Absol', 3, 359, 'white', 'Disaster', 4, 25, FALSE, FALSE, FALSE),
  -- Wynaut
  (360, 360, 'wynaut', 'Wynaut', 3, 202, 'blue', 'Bright', 4, 20, TRUE, FALSE, FALSE),
  -- Snorunt
  (361, 361, 'snorunt', 'Snorunt', 3, 361, 'gray', 'Snow Hat', 4, 20, FALSE, FALSE, FALSE),
  -- Glalie
  (362, 362, 'glalie', 'Glalie', 3, 361, 'gray', 'Face', 4, 20, FALSE, FALSE, FALSE),
  -- Spheal
  (363, 363, 'spheal', 'Spheal', 3, 363, 'blue', 'Clap', 4, 20, FALSE, FALSE, FALSE),
  -- Sealeo
  (364, 364, 'sealeo', 'Sealeo', 3, 363, 'blue', 'Ball Roll', 4, 20, FALSE, FALSE, FALSE),
  -- Walrein
  (365, 365, 'walrein', 'Walrein', 3, 363, 'blue', 'Ice Break', 4, 20, FALSE, FALSE, FALSE),
  -- Clamperl
  (366, 366, 'clamperl', 'Clamperl', 3, 366, 'blue', 'Bivalve', 4, 20, FALSE, FALSE, FALSE),
  -- Huntail
  (367, 367, 'huntail', 'Huntail', 3, 366, 'blue', 'Deep Sea', 4, 20, FALSE, FALSE, FALSE),
  -- Gorebyss
  (368, 368, 'gorebyss', 'Gorebyss', 3, 366, 'pink', 'South Sea', 4, 20, FALSE, FALSE, FALSE),
  -- Relicanth
  (369, 369, 'relicanth', 'Relicanth', 3, 369, 'gray', 'Longevity', 1, 40, FALSE, FALSE, FALSE),
  -- Luvdisc
  (370, 370, 'luvdisc', 'Luvdisc', 3, 370, 'pink', 'Rendezvous', 6, 20, FALSE, FALSE, FALSE),
  -- Bagon
  (371, 371, 'bagon', 'Bagon', 3, 371, 'blue', 'Rock Head', 4, 40, FALSE, FALSE, FALSE),
  -- Shelgon
  (372, 372, 'shelgon', 'Shelgon', 3, 371, 'white', 'Endurance', 4, 40, FALSE, FALSE, FALSE),
  -- Salamence
  (373, 373, 'salamence', 'Salamence', 3, 371, 'blue', 'Dragon', 4, 40, FALSE, FALSE, FALSE),
  -- Beldum
  (374, 374, 'beldum', 'Beldum', 3, 374, 'blue', 'Iron Ball', NULL, 40, FALSE, FALSE, FALSE),
  -- Metang
  (375, 375, 'metang', 'Metang', 3, 374, 'blue', 'Iron Claw', NULL, 40, FALSE, FALSE, FALSE),
  -- Metagross
  (376, 376, 'metagross', 'Metagross', 3, 374, 'blue', 'Iron Leg', NULL, 40, FALSE, FALSE, FALSE),
  -- Regirock
  (377, 377, 'regirock', 'Regirock', 3, 377, 'brown', 'Rock Peak', NULL, 80, FALSE, TRUE, FALSE),
  -- Regice
  (378, 378, 'regice', 'Regice', 3, 378, 'blue', 'Iceberg', NULL, 80, FALSE, TRUE, FALSE),
  -- Registeel
  (379, 379, 'registeel', 'Registeel', 3, 379, 'gray', 'Iron', NULL, 80, FALSE, TRUE, FALSE),
  -- Latias
  (380, 380, 'latias', 'Latias', 3, 380, 'red', 'Eon', 8, 120, FALSE, TRUE, FALSE),
  -- Latios
  (381, 381, 'latios', 'Latios', 3, 381, 'blue', 'Eon', 0, 120, FALSE, TRUE, FALSE),
  -- Kyogre
  (382, 382, 'kyogre', 'Kyogre', 3, 382, 'blue', 'Sea Basin', NULL, 120, FALSE, TRUE, FALSE),
  -- Groudon
  (383, 383, 'groudon', 'Groudon', 3, 383, 'red', 'Continent', NULL, 120, FALSE, TRUE, FALSE),
  -- Rayquaza
  (384, 384, 'rayquaza', 'Rayquaza', 3, 384, 'green', 'Sky High', NULL, 120, FALSE, TRUE, FALSE),
  -- Jirachi
  (385, 385, 'jirachi', 'Jirachi', 3, 385, 'yellow', 'Wish', NULL, 120, FALSE, FALSE, TRUE),
  -- Deoxys
  (386, 386, 'deoxys', 'Deoxys', 3, 386, 'red', 'DNA', NULL, 120, FALSE, FALSE, TRUE);
