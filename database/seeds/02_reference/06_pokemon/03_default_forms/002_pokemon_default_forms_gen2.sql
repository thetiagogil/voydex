-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex default-form seeds, normalized to clean schema columns and ASCII code-facing names.
-- Scope note: default forms only; regional, alternate, held-item, cosmetic, and battle forms are seeded in later reviewed batches.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 2
-- Table: reference.pokemon_forms
-- Scope: default forms for National Dex #0152-0251
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms, sprite_slug)
VALUES
  -- Chikorita
  (15200, 152, 'chikorita', 'Chikorita', 2, TRUE, 1, NULL, NULL, 'chikorita'),
  -- Bayleef
  (15300, 153, 'bayleef', 'Bayleef', 2, TRUE, 1, NULL, NULL, 'bayleef'),
  -- Meganium
  (15400, 154, 'meganium', 'Meganium', 2, TRUE, 1, NULL, NULL, 'meganium'),
  -- Cyndaquil
  (15500, 155, 'cyndaquil', 'Cyndaquil', 2, TRUE, 1, NULL, NULL, 'cyndaquil'),
  -- Quilava
  (15600, 156, 'quilava', 'Quilava', 2, TRUE, 1, NULL, NULL, 'quilava'),
  -- Typhlosion
  (15700, 157, 'typhlosion', 'Typhlosion', 2, TRUE, 1, NULL, NULL, 'typhlosion'),
  -- Totodile
  (15800, 158, 'totodile', 'Totodile', 2, TRUE, 1, NULL, NULL, 'totodile'),
  -- Croconaw
  (15900, 159, 'croconaw', 'Croconaw', 2, TRUE, 1, NULL, NULL, 'croconaw'),
  -- Feraligatr
  (16000, 160, 'feraligatr', 'Feraligatr', 2, TRUE, 1, NULL, NULL, 'feraligatr'),
  -- Sentret
  (16100, 161, 'sentret', 'Sentret', 2, TRUE, 1, NULL, NULL, 'sentret'),
  -- Furret
  (16200, 162, 'furret', 'Furret', 2, TRUE, 1, NULL, NULL, 'furret'),
  -- Hoothoot
  (16300, 163, 'hoothoot', 'Hoothoot', 2, TRUE, 1, NULL, NULL, 'hoothoot'),
  -- Noctowl
  (16400, 164, 'noctowl', 'Noctowl', 2, TRUE, 1, NULL, NULL, 'noctowl'),
  -- Ledyba
  (16500, 165, 'ledyba', 'Ledyba', 2, TRUE, 1, NULL, NULL, 'ledyba'),
  -- Ledian
  (16600, 166, 'ledian', 'Ledian', 2, TRUE, 1, NULL, NULL, 'ledian'),
  -- Spinarak
  (16700, 167, 'spinarak', 'Spinarak', 2, TRUE, 1, NULL, NULL, 'spinarak'),
  -- Ariados
  (16800, 168, 'ariados', 'Ariados', 2, TRUE, 1, NULL, NULL, 'ariados'),
  -- Crobat
  (16900, 169, 'crobat', 'Crobat', 2, TRUE, 1, NULL, NULL, 'crobat'),
  -- Chinchou
  (17000, 170, 'chinchou', 'Chinchou', 2, TRUE, 1, NULL, NULL, 'chinchou'),
  -- Lanturn
  (17100, 171, 'lanturn', 'Lanturn', 2, TRUE, 1, NULL, NULL, 'lanturn'),
  -- Pichu
  (17200, 172, 'pichu', 'Pichu', 2, TRUE, 1, NULL, NULL, 'pichu'),
  -- Cleffa
  (17300, 173, 'cleffa', 'Cleffa', 2, TRUE, 1, NULL, NULL, 'cleffa'),
  -- Igglybuff
  (17400, 174, 'igglybuff', 'Igglybuff', 2, TRUE, 1, NULL, NULL, 'igglybuff'),
  -- Togepi
  (17500, 175, 'togepi', 'Togepi', 2, TRUE, 1, NULL, NULL, 'togepi'),
  -- Togetic
  (17600, 176, 'togetic', 'Togetic', 2, TRUE, 1, NULL, NULL, 'togetic'),
  -- Natu
  (17700, 177, 'natu', 'Natu', 2, TRUE, 1, NULL, NULL, 'natu'),
  -- Xatu
  (17800, 178, 'xatu', 'Xatu', 2, TRUE, 1, NULL, NULL, 'xatu'),
  -- Mareep
  (17900, 179, 'mareep', 'Mareep', 2, TRUE, 1, NULL, NULL, 'mareep'),
  -- Flaaffy
  (18000, 180, 'flaaffy', 'Flaaffy', 2, TRUE, 1, NULL, NULL, 'flaaffy'),
  -- Ampharos
  (18100, 181, 'ampharos', 'Ampharos', 2, TRUE, 1, NULL, NULL, 'ampharos'),
  -- Bellossom
  (18200, 182, 'bellossom', 'Bellossom', 2, TRUE, 1, NULL, NULL, 'bellossom'),
  -- Marill
  (18300, 183, 'marill', 'Marill', 2, TRUE, 1, NULL, NULL, 'marill'),
  -- Azumarill
  (18400, 184, 'azumarill', 'Azumarill', 2, TRUE, 1, NULL, NULL, 'azumarill'),
  -- Sudowoodo
  (18500, 185, 'sudowoodo', 'Sudowoodo', 2, TRUE, 1, NULL, NULL, 'sudowoodo'),
  -- Politoed
  (18600, 186, 'politoed', 'Politoed', 2, TRUE, 1, NULL, NULL, 'politoed'),
  -- Hoppip
  (18700, 187, 'hoppip', 'Hoppip', 2, TRUE, 1, NULL, NULL, 'hoppip'),
  -- Skiploom
  (18800, 188, 'skiploom', 'Skiploom', 2, TRUE, 1, NULL, NULL, 'skiploom'),
  -- Jumpluff
  (18900, 189, 'jumpluff', 'Jumpluff', 2, TRUE, 1, NULL, NULL, 'jumpluff'),
  -- Aipom
  (19000, 190, 'aipom', 'Aipom', 2, TRUE, 1, NULL, NULL, 'aipom'),
  -- Sunkern
  (19100, 191, 'sunkern', 'Sunkern', 2, TRUE, 1, NULL, NULL, 'sunkern'),
  -- Sunflora
  (19200, 192, 'sunflora', 'Sunflora', 2, TRUE, 1, NULL, NULL, 'sunflora'),
  -- Yanma
  (19300, 193, 'yanma', 'Yanma', 2, TRUE, 1, NULL, NULL, 'yanma'),
  -- Wooper
  (19400, 194, 'wooper', 'Wooper', 2, TRUE, 1, NULL, NULL, 'wooper'),
  -- Quagsire
  (19500, 195, 'quagsire', 'Quagsire', 2, TRUE, 1, NULL, NULL, 'quagsire'),
  -- Espeon
  (19600, 196, 'espeon', 'Espeon', 2, TRUE, 1, NULL, NULL, 'espeon'),
  -- Umbreon
  (19700, 197, 'umbreon', 'Umbreon', 2, TRUE, 1, NULL, NULL, 'umbreon'),
  -- Murkrow
  (19800, 198, 'murkrow', 'Murkrow', 2, TRUE, 1, NULL, NULL, 'murkrow'),
  -- Slowking
  (19900, 199, 'slowking', 'Slowking', 2, TRUE, 1, NULL, NULL, 'slowking'),
  -- Misdreavus
  (20000, 200, 'misdreavus', 'Misdreavus', 2, TRUE, 1, NULL, NULL, 'misdreavus'),
  -- Unown
  (20100, 201, 'unown', 'Unown', 2, TRUE, 1, NULL, NULL, 'unown'),
  -- Wobbuffet
  (20200, 202, 'wobbuffet', 'Wobbuffet', 2, TRUE, 1, NULL, NULL, 'wobbuffet'),
  -- Girafarig
  (20300, 203, 'girafarig', 'Girafarig', 2, TRUE, 1, NULL, NULL, 'girafarig'),
  -- Pineco
  (20400, 204, 'pineco', 'Pineco', 2, TRUE, 1, NULL, NULL, 'pineco'),
  -- Forretress
  (20500, 205, 'forretress', 'Forretress', 2, TRUE, 1, NULL, NULL, 'forretress'),
  -- Dunsparce
  (20600, 206, 'dunsparce', 'Dunsparce', 2, TRUE, 1, NULL, NULL, 'dunsparce'),
  -- Gligar
  (20700, 207, 'gligar', 'Gligar', 2, TRUE, 1, NULL, NULL, 'gligar'),
  -- Steelix
  (20800, 208, 'steelix', 'Steelix', 2, TRUE, 1, NULL, NULL, 'steelix'),
  -- Snubbull
  (20900, 209, 'snubbull', 'Snubbull', 2, TRUE, 1, NULL, NULL, 'snubbull'),
  -- Granbull
  (21000, 210, 'granbull', 'Granbull', 2, TRUE, 1, NULL, NULL, 'granbull'),
  -- Qwilfish
  (21100, 211, 'qwilfish', 'Qwilfish', 2, TRUE, 1, NULL, NULL, 'qwilfish'),
  -- Scizor
  (21200, 212, 'scizor', 'Scizor', 2, TRUE, 1, NULL, NULL, 'scizor'),
  -- Shuckle
  (21300, 213, 'shuckle', 'Shuckle', 2, TRUE, 1, NULL, NULL, 'shuckle'),
  -- Heracross
  (21400, 214, 'heracross', 'Heracross', 2, TRUE, 1, NULL, NULL, 'heracross'),
  -- Sneasel
  (21500, 215, 'sneasel', 'Sneasel', 2, TRUE, 1, NULL, NULL, 'sneasel'),
  -- Teddiursa
  (21600, 216, 'teddiursa', 'Teddiursa', 2, TRUE, 1, NULL, NULL, 'teddiursa'),
  -- Ursaring
  (21700, 217, 'ursaring', 'Ursaring', 2, TRUE, 1, NULL, NULL, 'ursaring'),
  -- Slugma
  (21800, 218, 'slugma', 'Slugma', 2, TRUE, 1, NULL, NULL, 'slugma'),
  -- Magcargo
  (21900, 219, 'magcargo', 'Magcargo', 2, TRUE, 1, NULL, NULL, 'magcargo'),
  -- Swinub
  (22000, 220, 'swinub', 'Swinub', 2, TRUE, 1, NULL, NULL, 'swinub'),
  -- Piloswine
  (22100, 221, 'piloswine', 'Piloswine', 2, TRUE, 1, NULL, NULL, 'piloswine'),
  -- Corsola
  (22200, 222, 'corsola', 'Corsola', 2, TRUE, 1, NULL, NULL, 'corsola'),
  -- Remoraid
  (22300, 223, 'remoraid', 'Remoraid', 2, TRUE, 1, NULL, NULL, 'remoraid'),
  -- Octillery
  (22400, 224, 'octillery', 'Octillery', 2, TRUE, 1, NULL, NULL, 'octillery'),
  -- Delibird
  (22500, 225, 'delibird', 'Delibird', 2, TRUE, 1, NULL, NULL, 'delibird'),
  -- Mantine
  (22600, 226, 'mantine', 'Mantine', 2, TRUE, 1, NULL, NULL, 'mantine'),
  -- Skarmory
  (22700, 227, 'skarmory', 'Skarmory', 2, TRUE, 1, NULL, NULL, 'skarmory'),
  -- Houndour
  (22800, 228, 'houndour', 'Houndour', 2, TRUE, 1, NULL, NULL, 'houndour'),
  -- Houndoom
  (22900, 229, 'houndoom', 'Houndoom', 2, TRUE, 1, NULL, NULL, 'houndoom'),
  -- Kingdra
  (23000, 230, 'kingdra', 'Kingdra', 2, TRUE, 1, NULL, NULL, 'kingdra'),
  -- Phanpy
  (23100, 231, 'phanpy', 'Phanpy', 2, TRUE, 1, NULL, NULL, 'phanpy'),
  -- Donphan
  (23200, 232, 'donphan', 'Donphan', 2, TRUE, 1, NULL, NULL, 'donphan'),
  -- Porygon2
  (23300, 233, 'porygon2', 'Porygon2', 2, TRUE, 1, NULL, NULL, 'porygon2'),
  -- Stantler
  (23400, 234, 'stantler', 'Stantler', 2, TRUE, 1, NULL, NULL, 'stantler'),
  -- Smeargle
  (23500, 235, 'smeargle', 'Smeargle', 2, TRUE, 1, NULL, NULL, 'smeargle'),
  -- Tyrogue
  (23600, 236, 'tyrogue', 'Tyrogue', 2, TRUE, 1, NULL, NULL, 'tyrogue'),
  -- Hitmontop
  (23700, 237, 'hitmontop', 'Hitmontop', 2, TRUE, 1, NULL, NULL, 'hitmontop'),
  -- Smoochum
  (23800, 238, 'smoochum', 'Smoochum', 2, TRUE, 1, NULL, NULL, 'smoochum'),
  -- Elekid
  (23900, 239, 'elekid', 'Elekid', 2, TRUE, 1, NULL, NULL, 'elekid'),
  -- Magby
  (24000, 240, 'magby', 'Magby', 2, TRUE, 1, NULL, NULL, 'magby'),
  -- Miltank
  (24100, 241, 'miltank', 'Miltank', 2, TRUE, 1, NULL, NULL, 'miltank'),
  -- Blissey
  (24200, 242, 'blissey', 'Blissey', 2, TRUE, 1, NULL, NULL, 'blissey'),
  -- Raikou
  (24300, 243, 'raikou', 'Raikou', 2, TRUE, 1, NULL, NULL, 'raikou'),
  -- Entei
  (24400, 244, 'entei', 'Entei', 2, TRUE, 1, NULL, NULL, 'entei'),
  -- Suicune
  (24500, 245, 'suicune', 'Suicune', 2, TRUE, 1, NULL, NULL, 'suicune'),
  -- Larvitar
  (24600, 246, 'larvitar', 'Larvitar', 2, TRUE, 1, NULL, NULL, 'larvitar'),
  -- Pupitar
  (24700, 247, 'pupitar', 'Pupitar', 2, TRUE, 1, NULL, NULL, 'pupitar'),
  -- Tyranitar
  (24800, 248, 'tyranitar', 'Tyranitar', 2, TRUE, 1, NULL, NULL, 'tyranitar'),
  -- Lugia
  (24900, 249, 'lugia', 'Lugia', 2, TRUE, 1, NULL, NULL, 'lugia'),
  -- Ho-Oh
  (25000, 250, 'ho-oh', 'Ho-Oh', 2, TRUE, 1, NULL, NULL, 'ho-oh'),
  -- Celebi
  (25100, 251, 'celebi', 'Celebi', 2, TRUE, 1, NULL, NULL, 'celebi');
