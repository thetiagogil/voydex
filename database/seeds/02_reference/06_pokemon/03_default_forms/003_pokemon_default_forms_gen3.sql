-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex default-form seeds, normalized to clean schema columns and ASCII code-facing names.
-- Scope note: default forms only; regional, alternate, held-item, cosmetic, and battle forms are seeded in later reviewed batches.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 3
-- Table: reference.pokemon_forms
-- Scope: default forms for National Dex #0252-0386
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms, sprite_slug)
VALUES
  -- Treecko
  (25200, 252, 'treecko', 'Treecko', 3, TRUE, 1, NULL, NULL, 'treecko'),
  -- Grovyle
  (25300, 253, 'grovyle', 'Grovyle', 3, TRUE, 1, NULL, NULL, 'grovyle'),
  -- Sceptile
  (25400, 254, 'sceptile', 'Sceptile', 3, TRUE, 1, NULL, NULL, 'sceptile'),
  -- Torchic
  (25500, 255, 'torchic', 'Torchic', 3, TRUE, 1, NULL, NULL, 'torchic'),
  -- Combusken
  (25600, 256, 'combusken', 'Combusken', 3, TRUE, 1, NULL, NULL, 'combusken'),
  -- Blaziken
  (25700, 257, 'blaziken', 'Blaziken', 3, TRUE, 1, NULL, NULL, 'blaziken'),
  -- Mudkip
  (25800, 258, 'mudkip', 'Mudkip', 3, TRUE, 1, NULL, NULL, 'mudkip'),
  -- Marshtomp
  (25900, 259, 'marshtomp', 'Marshtomp', 3, TRUE, 1, NULL, NULL, 'marshtomp'),
  -- Swampert
  (26000, 260, 'swampert', 'Swampert', 3, TRUE, 1, NULL, NULL, 'swampert'),
  -- Poochyena
  (26100, 261, 'poochyena', 'Poochyena', 3, TRUE, 1, NULL, NULL, 'poochyena'),
  -- Mightyena
  (26200, 262, 'mightyena', 'Mightyena', 3, TRUE, 1, NULL, NULL, 'mightyena'),
  -- Zigzagoon
  (26300, 263, 'zigzagoon', 'Zigzagoon', 3, TRUE, 1, NULL, NULL, 'zigzagoon'),
  -- Linoone
  (26400, 264, 'linoone', 'Linoone', 3, TRUE, 1, NULL, NULL, 'linoone'),
  -- Wurmple
  (26500, 265, 'wurmple', 'Wurmple', 3, TRUE, 1, NULL, NULL, 'wurmple'),
  -- Silcoon
  (26600, 266, 'silcoon', 'Silcoon', 3, TRUE, 1, NULL, NULL, 'silcoon'),
  -- Beautifly
  (26700, 267, 'beautifly', 'Beautifly', 3, TRUE, 1, NULL, NULL, 'beautifly'),
  -- Cascoon
  (26800, 268, 'cascoon', 'Cascoon', 3, TRUE, 1, NULL, NULL, 'cascoon'),
  -- Dustox
  (26900, 269, 'dustox', 'Dustox', 3, TRUE, 1, NULL, NULL, 'dustox'),
  -- Lotad
  (27000, 270, 'lotad', 'Lotad', 3, TRUE, 1, NULL, NULL, 'lotad'),
  -- Lombre
  (27100, 271, 'lombre', 'Lombre', 3, TRUE, 1, NULL, NULL, 'lombre'),
  -- Ludicolo
  (27200, 272, 'ludicolo', 'Ludicolo', 3, TRUE, 1, NULL, NULL, 'ludicolo'),
  -- Seedot
  (27300, 273, 'seedot', 'Seedot', 3, TRUE, 1, NULL, NULL, 'seedot'),
  -- Nuzleaf
  (27400, 274, 'nuzleaf', 'Nuzleaf', 3, TRUE, 1, NULL, NULL, 'nuzleaf'),
  -- Shiftry
  (27500, 275, 'shiftry', 'Shiftry', 3, TRUE, 1, NULL, NULL, 'shiftry'),
  -- Taillow
  (27600, 276, 'taillow', 'Taillow', 3, TRUE, 1, NULL, NULL, 'taillow'),
  -- Swellow
  (27700, 277, 'swellow', 'Swellow', 3, TRUE, 1, NULL, NULL, 'swellow'),
  -- Wingull
  (27800, 278, 'wingull', 'Wingull', 3, TRUE, 1, NULL, NULL, 'wingull'),
  -- Pelipper
  (27900, 279, 'pelipper', 'Pelipper', 3, TRUE, 1, NULL, NULL, 'pelipper'),
  -- Ralts
  (28000, 280, 'ralts', 'Ralts', 3, TRUE, 1, NULL, NULL, 'ralts'),
  -- Kirlia
  (28100, 281, 'kirlia', 'Kirlia', 3, TRUE, 1, NULL, NULL, 'kirlia'),
  -- Gardevoir
  (28200, 282, 'gardevoir', 'Gardevoir', 3, TRUE, 1, NULL, NULL, 'gardevoir'),
  -- Surskit
  (28300, 283, 'surskit', 'Surskit', 3, TRUE, 1, NULL, NULL, 'surskit'),
  -- Masquerain
  (28400, 284, 'masquerain', 'Masquerain', 3, TRUE, 1, NULL, NULL, 'masquerain'),
  -- Shroomish
  (28500, 285, 'shroomish', 'Shroomish', 3, TRUE, 1, NULL, NULL, 'shroomish'),
  -- Breloom
  (28600, 286, 'breloom', 'Breloom', 3, TRUE, 1, NULL, NULL, 'breloom'),
  -- Slakoth
  (28700, 287, 'slakoth', 'Slakoth', 3, TRUE, 1, NULL, NULL, 'slakoth'),
  -- Vigoroth
  (28800, 288, 'vigoroth', 'Vigoroth', 3, TRUE, 1, NULL, NULL, 'vigoroth'),
  -- Slaking
  (28900, 289, 'slaking', 'Slaking', 3, TRUE, 1, NULL, NULL, 'slaking'),
  -- Nincada
  (29000, 290, 'nincada', 'Nincada', 3, TRUE, 1, NULL, NULL, 'nincada'),
  -- Ninjask
  (29100, 291, 'ninjask', 'Ninjask', 3, TRUE, 1, NULL, NULL, 'ninjask'),
  -- Shedinja
  (29200, 292, 'shedinja', 'Shedinja', 3, TRUE, 1, NULL, NULL, 'shedinja'),
  -- Whismur
  (29300, 293, 'whismur', 'Whismur', 3, TRUE, 1, NULL, NULL, 'whismur'),
  -- Loudred
  (29400, 294, 'loudred', 'Loudred', 3, TRUE, 1, NULL, NULL, 'loudred'),
  -- Exploud
  (29500, 295, 'exploud', 'Exploud', 3, TRUE, 1, NULL, NULL, 'exploud'),
  -- Makuhita
  (29600, 296, 'makuhita', 'Makuhita', 3, TRUE, 1, NULL, NULL, 'makuhita'),
  -- Hariyama
  (29700, 297, 'hariyama', 'Hariyama', 3, TRUE, 1, NULL, NULL, 'hariyama'),
  -- Azurill
  (29800, 298, 'azurill', 'Azurill', 3, TRUE, 1, NULL, NULL, 'azurill'),
  -- Nosepass
  (29900, 299, 'nosepass', 'Nosepass', 3, TRUE, 1, NULL, NULL, 'nosepass'),
  -- Skitty
  (30000, 300, 'skitty', 'Skitty', 3, TRUE, 1, NULL, NULL, 'skitty'),
  -- Delcatty
  (30100, 301, 'delcatty', 'Delcatty', 3, TRUE, 1, NULL, NULL, 'delcatty'),
  -- Sableye
  (30200, 302, 'sableye', 'Sableye', 3, TRUE, 1, NULL, NULL, 'sableye'),
  -- Mawile
  (30300, 303, 'mawile', 'Mawile', 3, TRUE, 1, NULL, NULL, 'mawile'),
  -- Aron
  (30400, 304, 'aron', 'Aron', 3, TRUE, 1, NULL, NULL, 'aron'),
  -- Lairon
  (30500, 305, 'lairon', 'Lairon', 3, TRUE, 1, NULL, NULL, 'lairon'),
  -- Aggron
  (30600, 306, 'aggron', 'Aggron', 3, TRUE, 1, NULL, NULL, 'aggron'),
  -- Meditite
  (30700, 307, 'meditite', 'Meditite', 3, TRUE, 1, NULL, NULL, 'meditite'),
  -- Medicham
  (30800, 308, 'medicham', 'Medicham', 3, TRUE, 1, NULL, NULL, 'medicham'),
  -- Electrike
  (30900, 309, 'electrike', 'Electrike', 3, TRUE, 1, NULL, NULL, 'electrike'),
  -- Manectric
  (31000, 310, 'manectric', 'Manectric', 3, TRUE, 1, NULL, NULL, 'manectric'),
  -- Plusle
  (31100, 311, 'plusle', 'Plusle', 3, TRUE, 1, NULL, NULL, 'plusle'),
  -- Minun
  (31200, 312, 'minun', 'Minun', 3, TRUE, 1, NULL, NULL, 'minun'),
  -- Volbeat
  (31300, 313, 'volbeat', 'Volbeat', 3, TRUE, 1, NULL, NULL, 'volbeat'),
  -- Illumise
  (31400, 314, 'illumise', 'Illumise', 3, TRUE, 1, NULL, NULL, 'illumise'),
  -- Roselia
  (31500, 315, 'roselia', 'Roselia', 3, TRUE, 1, NULL, NULL, 'roselia'),
  -- Gulpin
  (31600, 316, 'gulpin', 'Gulpin', 3, TRUE, 1, NULL, NULL, 'gulpin'),
  -- Swalot
  (31700, 317, 'swalot', 'Swalot', 3, TRUE, 1, NULL, NULL, 'swalot'),
  -- Carvanha
  (31800, 318, 'carvanha', 'Carvanha', 3, TRUE, 1, NULL, NULL, 'carvanha'),
  -- Sharpedo
  (31900, 319, 'sharpedo', 'Sharpedo', 3, TRUE, 1, NULL, NULL, 'sharpedo'),
  -- Wailmer
  (32000, 320, 'wailmer', 'Wailmer', 3, TRUE, 1, NULL, NULL, 'wailmer'),
  -- Wailord
  (32100, 321, 'wailord', 'Wailord', 3, TRUE, 1, NULL, NULL, 'wailord'),
  -- Numel
  (32200, 322, 'numel', 'Numel', 3, TRUE, 1, NULL, NULL, 'numel'),
  -- Camerupt
  (32300, 323, 'camerupt', 'Camerupt', 3, TRUE, 1, NULL, NULL, 'camerupt'),
  -- Torkoal
  (32400, 324, 'torkoal', 'Torkoal', 3, TRUE, 1, NULL, NULL, 'torkoal'),
  -- Spoink
  (32500, 325, 'spoink', 'Spoink', 3, TRUE, 1, NULL, NULL, 'spoink'),
  -- Grumpig
  (32600, 326, 'grumpig', 'Grumpig', 3, TRUE, 1, NULL, NULL, 'grumpig'),
  -- Spinda
  (32700, 327, 'spinda', 'Spinda', 3, TRUE, 1, NULL, NULL, 'spinda'),
  -- Trapinch
  (32800, 328, 'trapinch', 'Trapinch', 3, TRUE, 1, NULL, NULL, 'trapinch'),
  -- Vibrava
  (32900, 329, 'vibrava', 'Vibrava', 3, TRUE, 1, NULL, NULL, 'vibrava'),
  -- Flygon
  (33000, 330, 'flygon', 'Flygon', 3, TRUE, 1, NULL, NULL, 'flygon'),
  -- Cacnea
  (33100, 331, 'cacnea', 'Cacnea', 3, TRUE, 1, NULL, NULL, 'cacnea'),
  -- Cacturne
  (33200, 332, 'cacturne', 'Cacturne', 3, TRUE, 1, NULL, NULL, 'cacturne'),
  -- Swablu
  (33300, 333, 'swablu', 'Swablu', 3, TRUE, 1, NULL, NULL, 'swablu'),
  -- Altaria
  (33400, 334, 'altaria', 'Altaria', 3, TRUE, 1, NULL, NULL, 'altaria'),
  -- Zangoose
  (33500, 335, 'zangoose', 'Zangoose', 3, TRUE, 1, NULL, NULL, 'zangoose'),
  -- Seviper
  (33600, 336, 'seviper', 'Seviper', 3, TRUE, 1, NULL, NULL, 'seviper'),
  -- Lunatone
  (33700, 337, 'lunatone', 'Lunatone', 3, TRUE, 1, NULL, NULL, 'lunatone'),
  -- Solrock
  (33800, 338, 'solrock', 'Solrock', 3, TRUE, 1, NULL, NULL, 'solrock'),
  -- Barboach
  (33900, 339, 'barboach', 'Barboach', 3, TRUE, 1, NULL, NULL, 'barboach'),
  -- Whiscash
  (34000, 340, 'whiscash', 'Whiscash', 3, TRUE, 1, NULL, NULL, 'whiscash'),
  -- Corphish
  (34100, 341, 'corphish', 'Corphish', 3, TRUE, 1, NULL, NULL, 'corphish'),
  -- Crawdaunt
  (34200, 342, 'crawdaunt', 'Crawdaunt', 3, TRUE, 1, NULL, NULL, 'crawdaunt'),
  -- Baltoy
  (34300, 343, 'baltoy', 'Baltoy', 3, TRUE, 1, NULL, NULL, 'baltoy'),
  -- Claydol
  (34400, 344, 'claydol', 'Claydol', 3, TRUE, 1, NULL, NULL, 'claydol'),
  -- Lileep
  (34500, 345, 'lileep', 'Lileep', 3, TRUE, 1, NULL, NULL, 'lileep'),
  -- Cradily
  (34600, 346, 'cradily', 'Cradily', 3, TRUE, 1, NULL, NULL, 'cradily'),
  -- Anorith
  (34700, 347, 'anorith', 'Anorith', 3, TRUE, 1, NULL, NULL, 'anorith'),
  -- Armaldo
  (34800, 348, 'armaldo', 'Armaldo', 3, TRUE, 1, NULL, NULL, 'armaldo'),
  -- Feebas
  (34900, 349, 'feebas', 'Feebas', 3, TRUE, 1, NULL, NULL, 'feebas'),
  -- Milotic
  (35000, 350, 'milotic', 'Milotic', 3, TRUE, 1, NULL, NULL, 'milotic'),
  -- Castform
  (35100, 351, 'castform', 'Castform', 3, TRUE, 1, NULL, NULL, 'castform'),
  -- Kecleon
  (35200, 352, 'kecleon', 'Kecleon', 3, TRUE, 1, NULL, NULL, 'kecleon'),
  -- Shuppet
  (35300, 353, 'shuppet', 'Shuppet', 3, TRUE, 1, NULL, NULL, 'shuppet'),
  -- Banette
  (35400, 354, 'banette', 'Banette', 3, TRUE, 1, NULL, NULL, 'banette'),
  -- Duskull
  (35500, 355, 'duskull', 'Duskull', 3, TRUE, 1, NULL, NULL, 'duskull'),
  -- Dusclops
  (35600, 356, 'dusclops', 'Dusclops', 3, TRUE, 1, NULL, NULL, 'dusclops'),
  -- Tropius
  (35700, 357, 'tropius', 'Tropius', 3, TRUE, 1, NULL, NULL, 'tropius'),
  -- Chimecho
  (35800, 358, 'chimecho', 'Chimecho', 3, TRUE, 1, NULL, NULL, 'chimecho'),
  -- Absol
  (35900, 359, 'absol', 'Absol', 3, TRUE, 1, NULL, NULL, 'absol'),
  -- Wynaut
  (36000, 360, 'wynaut', 'Wynaut', 3, TRUE, 1, NULL, NULL, 'wynaut'),
  -- Snorunt
  (36100, 361, 'snorunt', 'Snorunt', 3, TRUE, 1, NULL, NULL, 'snorunt'),
  -- Glalie
  (36200, 362, 'glalie', 'Glalie', 3, TRUE, 1, NULL, NULL, 'glalie'),
  -- Spheal
  (36300, 363, 'spheal', 'Spheal', 3, TRUE, 1, NULL, NULL, 'spheal'),
  -- Sealeo
  (36400, 364, 'sealeo', 'Sealeo', 3, TRUE, 1, NULL, NULL, 'sealeo'),
  -- Walrein
  (36500, 365, 'walrein', 'Walrein', 3, TRUE, 1, NULL, NULL, 'walrein'),
  -- Clamperl
  (36600, 366, 'clamperl', 'Clamperl', 3, TRUE, 1, NULL, NULL, 'clamperl'),
  -- Huntail
  (36700, 367, 'huntail', 'Huntail', 3, TRUE, 1, NULL, NULL, 'huntail'),
  -- Gorebyss
  (36800, 368, 'gorebyss', 'Gorebyss', 3, TRUE, 1, NULL, NULL, 'gorebyss'),
  -- Relicanth
  (36900, 369, 'relicanth', 'Relicanth', 3, TRUE, 1, NULL, NULL, 'relicanth'),
  -- Luvdisc
  (37000, 370, 'luvdisc', 'Luvdisc', 3, TRUE, 1, NULL, NULL, 'luvdisc'),
  -- Bagon
  (37100, 371, 'bagon', 'Bagon', 3, TRUE, 1, NULL, NULL, 'bagon'),
  -- Shelgon
  (37200, 372, 'shelgon', 'Shelgon', 3, TRUE, 1, NULL, NULL, 'shelgon'),
  -- Salamence
  (37300, 373, 'salamence', 'Salamence', 3, TRUE, 1, NULL, NULL, 'salamence'),
  -- Beldum
  (37400, 374, 'beldum', 'Beldum', 3, TRUE, 1, NULL, NULL, 'beldum'),
  -- Metang
  (37500, 375, 'metang', 'Metang', 3, TRUE, 1, NULL, NULL, 'metang'),
  -- Metagross
  (37600, 376, 'metagross', 'Metagross', 3, TRUE, 1, NULL, NULL, 'metagross'),
  -- Regirock
  (37700, 377, 'regirock', 'Regirock', 3, TRUE, 1, NULL, NULL, 'regirock'),
  -- Regice
  (37800, 378, 'regice', 'Regice', 3, TRUE, 1, NULL, NULL, 'regice'),
  -- Registeel
  (37900, 379, 'registeel', 'Registeel', 3, TRUE, 1, NULL, NULL, 'registeel'),
  -- Latias
  (38000, 380, 'latias', 'Latias', 3, TRUE, 1, NULL, NULL, 'latias'),
  -- Latios
  (38100, 381, 'latios', 'Latios', 3, TRUE, 1, NULL, NULL, 'latios'),
  -- Kyogre
  (38200, 382, 'kyogre', 'Kyogre', 3, TRUE, 1, NULL, NULL, 'kyogre'),
  -- Groudon
  (38300, 383, 'groudon', 'Groudon', 3, TRUE, 1, NULL, NULL, 'groudon'),
  -- Rayquaza
  (38400, 384, 'rayquaza', 'Rayquaza', 3, TRUE, 1, NULL, NULL, 'rayquaza'),
  -- Jirachi
  (38500, 385, 'jirachi', 'Jirachi', 3, TRUE, 1, NULL, NULL, 'jirachi'),
  -- Deoxys
  (38600, 386, 'deoxys', 'Deoxys', 3, TRUE, 1, NULL, NULL, 'deoxys');
