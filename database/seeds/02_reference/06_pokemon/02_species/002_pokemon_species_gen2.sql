-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex species seeds, normalized to clean schema columns and ASCII code-facing names.
-- Construction aid: PokeAPI pokemon_species CSV, restricted to National Dex 1-1025, used only for mechanical sanity checks.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 2
-- Table: reference.pokemon_species
-- Scope: National Dex #0152-0251
INSERT INTO reference.pokemon_species (id, national_number, slug, name, introduced_generation_id, evolution_family_id, color, is_baby, is_legendary, is_mythical)
VALUES
  -- Chikorita
  (152, 152, 'chikorita', 'Chikorita', 2, 152, 'green', FALSE, FALSE, FALSE),
  -- Bayleef
  (153, 153, 'bayleef', 'Bayleef', 2, 152, 'green', FALSE, FALSE, FALSE),
  -- Meganium
  (154, 154, 'meganium', 'Meganium', 2, 152, 'green', FALSE, FALSE, FALSE),
  -- Cyndaquil
  (155, 155, 'cyndaquil', 'Cyndaquil', 2, 155, 'yellow', FALSE, FALSE, FALSE),
  -- Quilava
  (156, 156, 'quilava', 'Quilava', 2, 155, 'yellow', FALSE, FALSE, FALSE),
  -- Typhlosion
  (157, 157, 'typhlosion', 'Typhlosion', 2, 155, 'yellow', FALSE, FALSE, FALSE),
  -- Totodile
  (158, 158, 'totodile', 'Totodile', 2, 158, 'blue', FALSE, FALSE, FALSE),
  -- Croconaw
  (159, 159, 'croconaw', 'Croconaw', 2, 158, 'blue', FALSE, FALSE, FALSE),
  -- Feraligatr
  (160, 160, 'feraligatr', 'Feraligatr', 2, 158, 'blue', FALSE, FALSE, FALSE),
  -- Sentret
  (161, 161, 'sentret', 'Sentret', 2, 161, 'brown', FALSE, FALSE, FALSE),
  -- Furret
  (162, 162, 'furret', 'Furret', 2, 161, 'brown', FALSE, FALSE, FALSE),
  -- Hoothoot
  (163, 163, 'hoothoot', 'Hoothoot', 2, 163, 'brown', FALSE, FALSE, FALSE),
  -- Noctowl
  (164, 164, 'noctowl', 'Noctowl', 2, 163, 'brown', FALSE, FALSE, FALSE),
  -- Ledyba
  (165, 165, 'ledyba', 'Ledyba', 2, 165, 'red', FALSE, FALSE, FALSE),
  -- Ledian
  (166, 166, 'ledian', 'Ledian', 2, 165, 'red', FALSE, FALSE, FALSE),
  -- Spinarak
  (167, 167, 'spinarak', 'Spinarak', 2, 167, 'green', FALSE, FALSE, FALSE),
  -- Ariados
  (168, 168, 'ariados', 'Ariados', 2, 167, 'red', FALSE, FALSE, FALSE),
  -- Crobat
  (169, 169, 'crobat', 'Crobat', 2, 41, 'purple', FALSE, FALSE, FALSE),
  -- Chinchou
  (170, 170, 'chinchou', 'Chinchou', 2, 170, 'blue', FALSE, FALSE, FALSE),
  -- Lanturn
  (171, 171, 'lanturn', 'Lanturn', 2, 170, 'blue', FALSE, FALSE, FALSE),
  -- Pichu
  (172, 172, 'pichu', 'Pichu', 2, 25, 'yellow', TRUE, FALSE, FALSE),
  -- Cleffa
  (173, 173, 'cleffa', 'Cleffa', 2, 35, 'pink', TRUE, FALSE, FALSE),
  -- Igglybuff
  (174, 174, 'igglybuff', 'Igglybuff', 2, 39, 'pink', TRUE, FALSE, FALSE),
  -- Togepi
  (175, 175, 'togepi', 'Togepi', 2, 175, 'white', TRUE, FALSE, FALSE),
  -- Togetic
  (176, 176, 'togetic', 'Togetic', 2, 175, 'white', FALSE, FALSE, FALSE),
  -- Natu
  (177, 177, 'natu', 'Natu', 2, 177, 'green', FALSE, FALSE, FALSE),
  -- Xatu
  (178, 178, 'xatu', 'Xatu', 2, 177, 'green', FALSE, FALSE, FALSE),
  -- Mareep
  (179, 179, 'mareep', 'Mareep', 2, 179, 'white', FALSE, FALSE, FALSE),
  -- Flaaffy
  (180, 180, 'flaaffy', 'Flaaffy', 2, 179, 'pink', FALSE, FALSE, FALSE),
  -- Ampharos
  (181, 181, 'ampharos', 'Ampharos', 2, 179, 'yellow', FALSE, FALSE, FALSE),
  -- Bellossom
  (182, 182, 'bellossom', 'Bellossom', 2, 43, 'green', FALSE, FALSE, FALSE),
  -- Marill
  (183, 183, 'marill', 'Marill', 2, 183, 'blue', FALSE, FALSE, FALSE),
  -- Azumarill
  (184, 184, 'azumarill', 'Azumarill', 2, 183, 'blue', FALSE, FALSE, FALSE),
  -- Sudowoodo
  (185, 185, 'sudowoodo', 'Sudowoodo', 2, 185, 'brown', FALSE, FALSE, FALSE),
  -- Politoed
  (186, 186, 'politoed', 'Politoed', 2, 60, 'green', FALSE, FALSE, FALSE),
  -- Hoppip
  (187, 187, 'hoppip', 'Hoppip', 2, 187, 'pink', FALSE, FALSE, FALSE),
  -- Skiploom
  (188, 188, 'skiploom', 'Skiploom', 2, 187, 'green', FALSE, FALSE, FALSE),
  -- Jumpluff
  (189, 189, 'jumpluff', 'Jumpluff', 2, 187, 'blue', FALSE, FALSE, FALSE),
  -- Aipom
  (190, 190, 'aipom', 'Aipom', 2, 190, 'purple', FALSE, FALSE, FALSE),
  -- Sunkern
  (191, 191, 'sunkern', 'Sunkern', 2, 191, 'yellow', FALSE, FALSE, FALSE),
  -- Sunflora
  (192, 192, 'sunflora', 'Sunflora', 2, 191, 'yellow', FALSE, FALSE, FALSE),
  -- Yanma
  (193, 193, 'yanma', 'Yanma', 2, 193, 'red', FALSE, FALSE, FALSE),
  -- Wooper
  (194, 194, 'wooper', 'Wooper', 2, 194, 'blue', FALSE, FALSE, FALSE),
  -- Quagsire
  (195, 195, 'quagsire', 'Quagsire', 2, 194, 'blue', FALSE, FALSE, FALSE),
  -- Espeon
  (196, 196, 'espeon', 'Espeon', 2, 133, 'purple', FALSE, FALSE, FALSE),
  -- Umbreon
  (197, 197, 'umbreon', 'Umbreon', 2, 133, 'black', FALSE, FALSE, FALSE),
  -- Murkrow
  (198, 198, 'murkrow', 'Murkrow', 2, 198, 'black', FALSE, FALSE, FALSE),
  -- Slowking
  (199, 199, 'slowking', 'Slowking', 2, 79, 'pink', FALSE, FALSE, FALSE),
  -- Misdreavus
  (200, 200, 'misdreavus', 'Misdreavus', 2, 200, 'gray', FALSE, FALSE, FALSE),
  -- Unown
  (201, 201, 'unown', 'Unown', 2, 201, 'black', FALSE, FALSE, FALSE),
  -- Wobbuffet
  (202, 202, 'wobbuffet', 'Wobbuffet', 2, 202, 'blue', FALSE, FALSE, FALSE),
  -- Girafarig
  (203, 203, 'girafarig', 'Girafarig', 2, 203, 'yellow', FALSE, FALSE, FALSE),
  -- Pineco
  (204, 204, 'pineco', 'Pineco', 2, 204, 'gray', FALSE, FALSE, FALSE),
  -- Forretress
  (205, 205, 'forretress', 'Forretress', 2, 204, 'purple', FALSE, FALSE, FALSE),
  -- Dunsparce
  (206, 206, 'dunsparce', 'Dunsparce', 2, 206, 'yellow', FALSE, FALSE, FALSE),
  -- Gligar
  (207, 207, 'gligar', 'Gligar', 2, 207, 'purple', FALSE, FALSE, FALSE),
  -- Steelix
  (208, 208, 'steelix', 'Steelix', 2, 95, 'gray', FALSE, FALSE, FALSE),
  -- Snubbull
  (209, 209, 'snubbull', 'Snubbull', 2, 209, 'pink', FALSE, FALSE, FALSE),
  -- Granbull
  (210, 210, 'granbull', 'Granbull', 2, 209, 'purple', FALSE, FALSE, FALSE),
  -- Qwilfish
  (211, 211, 'qwilfish', 'Qwilfish', 2, 211, 'gray', FALSE, FALSE, FALSE),
  -- Scizor
  (212, 212, 'scizor', 'Scizor', 2, 123, 'red', FALSE, FALSE, FALSE),
  -- Shuckle
  (213, 213, 'shuckle', 'Shuckle', 2, 213, 'yellow', FALSE, FALSE, FALSE),
  -- Heracross
  (214, 214, 'heracross', 'Heracross', 2, 214, 'blue', FALSE, FALSE, FALSE),
  -- Sneasel
  (215, 215, 'sneasel', 'Sneasel', 2, 215, 'black', FALSE, FALSE, FALSE),
  -- Teddiursa
  (216, 216, 'teddiursa', 'Teddiursa', 2, 216, 'brown', FALSE, FALSE, FALSE),
  -- Ursaring
  (217, 217, 'ursaring', 'Ursaring', 2, 216, 'brown', FALSE, FALSE, FALSE),
  -- Slugma
  (218, 218, 'slugma', 'Slugma', 2, 218, 'red', FALSE, FALSE, FALSE),
  -- Magcargo
  (219, 219, 'magcargo', 'Magcargo', 2, 218, 'red', FALSE, FALSE, FALSE),
  -- Swinub
  (220, 220, 'swinub', 'Swinub', 2, 220, 'brown', FALSE, FALSE, FALSE),
  -- Piloswine
  (221, 221, 'piloswine', 'Piloswine', 2, 220, 'brown', FALSE, FALSE, FALSE),
  -- Corsola
  (222, 222, 'corsola', 'Corsola', 2, 222, 'pink', FALSE, FALSE, FALSE),
  -- Remoraid
  (223, 223, 'remoraid', 'Remoraid', 2, 223, 'gray', FALSE, FALSE, FALSE),
  -- Octillery
  (224, 224, 'octillery', 'Octillery', 2, 223, 'red', FALSE, FALSE, FALSE),
  -- Delibird
  (225, 225, 'delibird', 'Delibird', 2, 225, 'red', FALSE, FALSE, FALSE),
  -- Mantine
  (226, 226, 'mantine', 'Mantine', 2, 226, 'purple', FALSE, FALSE, FALSE),
  -- Skarmory
  (227, 227, 'skarmory', 'Skarmory', 2, 227, 'gray', FALSE, FALSE, FALSE),
  -- Houndour
  (228, 228, 'houndour', 'Houndour', 2, 228, 'black', FALSE, FALSE, FALSE),
  -- Houndoom
  (229, 229, 'houndoom', 'Houndoom', 2, 228, 'black', FALSE, FALSE, FALSE),
  -- Kingdra
  (230, 230, 'kingdra', 'Kingdra', 2, 116, 'blue', FALSE, FALSE, FALSE),
  -- Phanpy
  (231, 231, 'phanpy', 'Phanpy', 2, 231, 'blue', FALSE, FALSE, FALSE),
  -- Donphan
  (232, 232, 'donphan', 'Donphan', 2, 231, 'gray', FALSE, FALSE, FALSE),
  -- Porygon2
  (233, 233, 'porygon2', 'Porygon2', 2, 137, 'red', FALSE, FALSE, FALSE),
  -- Stantler
  (234, 234, 'stantler', 'Stantler', 2, 234, 'brown', FALSE, FALSE, FALSE),
  -- Smeargle
  (235, 235, 'smeargle', 'Smeargle', 2, 235, 'white', FALSE, FALSE, FALSE),
  -- Tyrogue
  (236, 236, 'tyrogue', 'Tyrogue', 2, 106, 'purple', TRUE, FALSE, FALSE),
  -- Hitmontop
  (237, 237, 'hitmontop', 'Hitmontop', 2, 106, 'brown', FALSE, FALSE, FALSE),
  -- Smoochum
  (238, 238, 'smoochum', 'Smoochum', 2, 124, 'pink', TRUE, FALSE, FALSE),
  -- Elekid
  (239, 239, 'elekid', 'Elekid', 2, 125, 'yellow', TRUE, FALSE, FALSE),
  -- Magby
  (240, 240, 'magby', 'Magby', 2, 126, 'red', TRUE, FALSE, FALSE),
  -- Miltank
  (241, 241, 'miltank', 'Miltank', 2, 241, 'pink', FALSE, FALSE, FALSE),
  -- Blissey
  (242, 242, 'blissey', 'Blissey', 2, 113, 'pink', FALSE, FALSE, FALSE),
  -- Raikou
  (243, 243, 'raikou', 'Raikou', 2, 243, 'yellow', FALSE, TRUE, FALSE),
  -- Entei
  (244, 244, 'entei', 'Entei', 2, 244, 'brown', FALSE, TRUE, FALSE),
  -- Suicune
  (245, 245, 'suicune', 'Suicune', 2, 245, 'blue', FALSE, TRUE, FALSE),
  -- Larvitar
  (246, 246, 'larvitar', 'Larvitar', 2, 246, 'green', FALSE, FALSE, FALSE),
  -- Pupitar
  (247, 247, 'pupitar', 'Pupitar', 2, 246, 'gray', FALSE, FALSE, FALSE),
  -- Tyranitar
  (248, 248, 'tyranitar', 'Tyranitar', 2, 246, 'green', FALSE, FALSE, FALSE),
  -- Lugia
  (249, 249, 'lugia', 'Lugia', 2, 249, 'white', FALSE, TRUE, FALSE),
  -- Ho-Oh
  (250, 250, 'ho-oh', 'Ho-Oh', 2, 250, 'red', FALSE, TRUE, FALSE),
  -- Celebi
  (251, 251, 'celebi', 'Celebi', 2, 251, 'green', FALSE, FALSE, TRUE);
