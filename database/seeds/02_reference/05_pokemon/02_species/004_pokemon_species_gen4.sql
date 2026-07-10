-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex species seeds, normalized to clean schema columns and ASCII code-facing names.
-- Construction aid: PokeAPI pokemon_species CSV, restricted to National Dex 1-1025, used only for mechanical sanity checks.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 4
-- Table: reference.pokemon_species
-- Scope: National Dex #0387-0493
INSERT INTO reference.pokemon_species (id, national_number, slug, name, introduced_generation_id, evolution_family_id, color, is_baby, is_legendary, is_mythical)
VALUES
  -- Turtwig
  (387, 387, 'turtwig', 'Turtwig', 4, 387, 'green', FALSE, FALSE, FALSE),
  -- Grotle
  (388, 388, 'grotle', 'Grotle', 4, 387, 'green', FALSE, FALSE, FALSE),
  -- Torterra
  (389, 389, 'torterra', 'Torterra', 4, 387, 'green', FALSE, FALSE, FALSE),
  -- Chimchar
  (390, 390, 'chimchar', 'Chimchar', 4, 390, 'brown', FALSE, FALSE, FALSE),
  -- Monferno
  (391, 391, 'monferno', 'Monferno', 4, 390, 'brown', FALSE, FALSE, FALSE),
  -- Infernape
  (392, 392, 'infernape', 'Infernape', 4, 390, 'brown', FALSE, FALSE, FALSE),
  -- Piplup
  (393, 393, 'piplup', 'Piplup', 4, 393, 'blue', FALSE, FALSE, FALSE),
  -- Prinplup
  (394, 394, 'prinplup', 'Prinplup', 4, 393, 'blue', FALSE, FALSE, FALSE),
  -- Empoleon
  (395, 395, 'empoleon', 'Empoleon', 4, 393, 'blue', FALSE, FALSE, FALSE),
  -- Starly
  (396, 396, 'starly', 'Starly', 4, 396, 'brown', FALSE, FALSE, FALSE),
  -- Staravia
  (397, 397, 'staravia', 'Staravia', 4, 396, 'brown', FALSE, FALSE, FALSE),
  -- Staraptor
  (398, 398, 'staraptor', 'Staraptor', 4, 396, 'brown', FALSE, FALSE, FALSE),
  -- Bidoof
  (399, 399, 'bidoof', 'Bidoof', 4, 399, 'brown', FALSE, FALSE, FALSE),
  -- Bibarel
  (400, 400, 'bibarel', 'Bibarel', 4, 399, 'brown', FALSE, FALSE, FALSE),
  -- Kricketot
  (401, 401, 'kricketot', 'Kricketot', 4, 401, 'red', FALSE, FALSE, FALSE),
  -- Kricketune
  (402, 402, 'kricketune', 'Kricketune', 4, 401, 'red', FALSE, FALSE, FALSE),
  -- Shinx
  (403, 403, 'shinx', 'Shinx', 4, 403, 'blue', FALSE, FALSE, FALSE),
  -- Luxio
  (404, 404, 'luxio', 'Luxio', 4, 403, 'blue', FALSE, FALSE, FALSE),
  -- Luxray
  (405, 405, 'luxray', 'Luxray', 4, 403, 'blue', FALSE, FALSE, FALSE),
  -- Budew
  (406, 406, 'budew', 'Budew', 4, 315, 'green', TRUE, FALSE, FALSE),
  -- Roserade
  (407, 407, 'roserade', 'Roserade', 4, 315, 'green', FALSE, FALSE, FALSE),
  -- Cranidos
  (408, 408, 'cranidos', 'Cranidos', 4, 408, 'blue', FALSE, FALSE, FALSE),
  -- Rampardos
  (409, 409, 'rampardos', 'Rampardos', 4, 408, 'blue', FALSE, FALSE, FALSE),
  -- Shieldon
  (410, 410, 'shieldon', 'Shieldon', 4, 410, 'gray', FALSE, FALSE, FALSE),
  -- Bastiodon
  (411, 411, 'bastiodon', 'Bastiodon', 4, 410, 'gray', FALSE, FALSE, FALSE),
  -- Burmy
  (412, 412, 'burmy', 'Burmy', 4, 412, 'green', FALSE, FALSE, FALSE),
  -- Wormadam
  (413, 413, 'wormadam', 'Wormadam', 4, 412, 'green', FALSE, FALSE, FALSE),
  -- Mothim
  (414, 414, 'mothim', 'Mothim', 4, 412, 'yellow', FALSE, FALSE, FALSE),
  -- Combee
  (415, 415, 'combee', 'Combee', 4, 415, 'yellow', FALSE, FALSE, FALSE),
  -- Vespiquen
  (416, 416, 'vespiquen', 'Vespiquen', 4, 415, 'yellow', FALSE, FALSE, FALSE),
  -- Pachirisu
  (417, 417, 'pachirisu', 'Pachirisu', 4, 417, 'white', FALSE, FALSE, FALSE),
  -- Buizel
  (418, 418, 'buizel', 'Buizel', 4, 418, 'brown', FALSE, FALSE, FALSE),
  -- Floatzel
  (419, 419, 'floatzel', 'Floatzel', 4, 418, 'brown', FALSE, FALSE, FALSE),
  -- Cherubi
  (420, 420, 'cherubi', 'Cherubi', 4, 420, 'pink', FALSE, FALSE, FALSE),
  -- Cherrim
  (421, 421, 'cherrim', 'Cherrim', 4, 420, 'purple', FALSE, FALSE, FALSE),
  -- Shellos
  (422, 422, 'shellos', 'Shellos', 4, 422, 'purple', FALSE, FALSE, FALSE),
  -- Gastrodon
  (423, 423, 'gastrodon', 'Gastrodon', 4, 422, 'purple', FALSE, FALSE, FALSE),
  -- Ambipom
  (424, 424, 'ambipom', 'Ambipom', 4, 190, 'purple', FALSE, FALSE, FALSE),
  -- Drifloon
  (425, 425, 'drifloon', 'Drifloon', 4, 425, 'purple', FALSE, FALSE, FALSE),
  -- Drifblim
  (426, 426, 'drifblim', 'Drifblim', 4, 425, 'purple', FALSE, FALSE, FALSE),
  -- Buneary
  (427, 427, 'buneary', 'Buneary', 4, 427, 'brown', FALSE, FALSE, FALSE),
  -- Lopunny
  (428, 428, 'lopunny', 'Lopunny', 4, 427, 'brown', FALSE, FALSE, FALSE),
  -- Mismagius
  (429, 429, 'mismagius', 'Mismagius', 4, 200, 'purple', FALSE, FALSE, FALSE),
  -- Honchkrow
  (430, 430, 'honchkrow', 'Honchkrow', 4, 198, 'black', FALSE, FALSE, FALSE),
  -- Glameow
  (431, 431, 'glameow', 'Glameow', 4, 431, 'gray', FALSE, FALSE, FALSE),
  -- Purugly
  (432, 432, 'purugly', 'Purugly', 4, 431, 'gray', FALSE, FALSE, FALSE),
  -- Chingling
  (433, 433, 'chingling', 'Chingling', 4, 358, 'yellow', TRUE, FALSE, FALSE),
  -- Stunky
  (434, 434, 'stunky', 'Stunky', 4, 434, 'purple', FALSE, FALSE, FALSE),
  -- Skuntank
  (435, 435, 'skuntank', 'Skuntank', 4, 434, 'purple', FALSE, FALSE, FALSE),
  -- Bronzor
  (436, 436, 'bronzor', 'Bronzor', 4, 436, 'green', FALSE, FALSE, FALSE),
  -- Bronzong
  (437, 437, 'bronzong', 'Bronzong', 4, 436, 'green', FALSE, FALSE, FALSE),
  -- Bonsly
  (438, 438, 'bonsly', 'Bonsly', 4, 185, 'brown', TRUE, FALSE, FALSE),
  -- Mime Jr.
  (439, 439, 'mime-jr', 'Mime Jr.', 4, 122, 'pink', TRUE, FALSE, FALSE),
  -- Happiny
  (440, 440, 'happiny', 'Happiny', 4, 113, 'pink', TRUE, FALSE, FALSE),
  -- Chatot
  (441, 441, 'chatot', 'Chatot', 4, 441, 'black', FALSE, FALSE, FALSE),
  -- Spiritomb
  (442, 442, 'spiritomb', 'Spiritomb', 4, 442, 'purple', FALSE, FALSE, FALSE),
  -- Gible
  (443, 443, 'gible', 'Gible', 4, 443, 'blue', FALSE, FALSE, FALSE),
  -- Gabite
  (444, 444, 'gabite', 'Gabite', 4, 443, 'blue', FALSE, FALSE, FALSE),
  -- Garchomp
  (445, 445, 'garchomp', 'Garchomp', 4, 443, 'blue', FALSE, FALSE, FALSE),
  -- Munchlax
  (446, 446, 'munchlax', 'Munchlax', 4, 143, 'black', TRUE, FALSE, FALSE),
  -- Riolu
  (447, 447, 'riolu', 'Riolu', 4, 447, 'blue', TRUE, FALSE, FALSE),
  -- Lucario
  (448, 448, 'lucario', 'Lucario', 4, 447, 'blue', FALSE, FALSE, FALSE),
  -- Hippopotas
  (449, 449, 'hippopotas', 'Hippopotas', 4, 449, 'brown', FALSE, FALSE, FALSE),
  -- Hippowdon
  (450, 450, 'hippowdon', 'Hippowdon', 4, 449, 'brown', FALSE, FALSE, FALSE),
  -- Skorupi
  (451, 451, 'skorupi', 'Skorupi', 4, 451, 'purple', FALSE, FALSE, FALSE),
  -- Drapion
  (452, 452, 'drapion', 'Drapion', 4, 451, 'purple', FALSE, FALSE, FALSE),
  -- Croagunk
  (453, 453, 'croagunk', 'Croagunk', 4, 453, 'blue', FALSE, FALSE, FALSE),
  -- Toxicroak
  (454, 454, 'toxicroak', 'Toxicroak', 4, 453, 'blue', FALSE, FALSE, FALSE),
  -- Carnivine
  (455, 455, 'carnivine', 'Carnivine', 4, 455, 'green', FALSE, FALSE, FALSE),
  -- Finneon
  (456, 456, 'finneon', 'Finneon', 4, 456, 'blue', FALSE, FALSE, FALSE),
  -- Lumineon
  (457, 457, 'lumineon', 'Lumineon', 4, 456, 'blue', FALSE, FALSE, FALSE),
  -- Mantyke
  (458, 458, 'mantyke', 'Mantyke', 4, 226, 'blue', TRUE, FALSE, FALSE),
  -- Snover
  (459, 459, 'snover', 'Snover', 4, 459, 'white', FALSE, FALSE, FALSE),
  -- Abomasnow
  (460, 460, 'abomasnow', 'Abomasnow', 4, 459, 'white', FALSE, FALSE, FALSE),
  -- Weavile
  (461, 461, 'weavile', 'Weavile', 4, 215, 'black', FALSE, FALSE, FALSE),
  -- Magnezone
  (462, 462, 'magnezone', 'Magnezone', 4, 81, 'gray', FALSE, FALSE, FALSE),
  -- Lickilicky
  (463, 463, 'lickilicky', 'Lickilicky', 4, 108, 'pink', FALSE, FALSE, FALSE),
  -- Rhyperior
  (464, 464, 'rhyperior', 'Rhyperior', 4, 111, 'gray', FALSE, FALSE, FALSE),
  -- Tangrowth
  (465, 465, 'tangrowth', 'Tangrowth', 4, 114, 'blue', FALSE, FALSE, FALSE),
  -- Electivire
  (466, 466, 'electivire', 'Electivire', 4, 125, 'yellow', FALSE, FALSE, FALSE),
  -- Magmortar
  (467, 467, 'magmortar', 'Magmortar', 4, 126, 'red', FALSE, FALSE, FALSE),
  -- Togekiss
  (468, 468, 'togekiss', 'Togekiss', 4, 175, 'white', FALSE, FALSE, FALSE),
  -- Yanmega
  (469, 469, 'yanmega', 'Yanmega', 4, 193, 'green', FALSE, FALSE, FALSE),
  -- Leafeon
  (470, 470, 'leafeon', 'Leafeon', 4, 133, 'green', FALSE, FALSE, FALSE),
  -- Glaceon
  (471, 471, 'glaceon', 'Glaceon', 4, 133, 'blue', FALSE, FALSE, FALSE),
  -- Gliscor
  (472, 472, 'gliscor', 'Gliscor', 4, 207, 'purple', FALSE, FALSE, FALSE),
  -- Mamoswine
  (473, 473, 'mamoswine', 'Mamoswine', 4, 220, 'brown', FALSE, FALSE, FALSE),
  -- Porygon-Z
  (474, 474, 'porygon-z', 'Porygon-Z', 4, 137, 'red', FALSE, FALSE, FALSE),
  -- Gallade
  (475, 475, 'gallade', 'Gallade', 4, 280, 'white', FALSE, FALSE, FALSE),
  -- Probopass
  (476, 476, 'probopass', 'Probopass', 4, 299, 'gray', FALSE, FALSE, FALSE),
  -- Dusknoir
  (477, 477, 'dusknoir', 'Dusknoir', 4, 355, 'black', FALSE, FALSE, FALSE),
  -- Froslass
  (478, 478, 'froslass', 'Froslass', 4, 361, 'white', FALSE, FALSE, FALSE),
  -- Rotom
  (479, 479, 'rotom', 'Rotom', 4, 479, 'red', FALSE, FALSE, FALSE),
  -- Uxie
  (480, 480, 'uxie', 'Uxie', 4, 480, 'yellow', FALSE, TRUE, FALSE),
  -- Mesprit
  (481, 481, 'mesprit', 'Mesprit', 4, 481, 'pink', FALSE, TRUE, FALSE),
  -- Azelf
  (482, 482, 'azelf', 'Azelf', 4, 482, 'blue', FALSE, TRUE, FALSE),
  -- Dialga
  (483, 483, 'dialga', 'Dialga', 4, 483, 'white', FALSE, TRUE, FALSE),
  -- Palkia
  (484, 484, 'palkia', 'Palkia', 4, 484, 'purple', FALSE, TRUE, FALSE),
  -- Heatran
  (485, 485, 'heatran', 'Heatran', 4, 485, 'brown', FALSE, TRUE, FALSE),
  -- Regigigas
  (486, 486, 'regigigas', 'Regigigas', 4, 486, 'white', FALSE, TRUE, FALSE),
  -- Giratina
  (487, 487, 'giratina', 'Giratina', 4, 487, 'black', FALSE, TRUE, FALSE),
  -- Cresselia
  (488, 488, 'cresselia', 'Cresselia', 4, 488, 'yellow', FALSE, TRUE, FALSE),
  -- Phione
  (489, 489, 'phione', 'Phione', 4, 489, 'blue', FALSE, FALSE, TRUE),
  -- Manaphy
  (490, 490, 'manaphy', 'Manaphy', 4, 490, 'blue', FALSE, FALSE, TRUE),
  -- Darkrai
  (491, 491, 'darkrai', 'Darkrai', 4, 491, 'black', FALSE, FALSE, TRUE),
  -- Shaymin
  (492, 492, 'shaymin', 'Shaymin', 4, 492, 'green', FALSE, FALSE, TRUE),
  -- Arceus
  (493, 493, 'arceus', 'Arceus', 4, 493, 'white', FALSE, FALSE, TRUE);
