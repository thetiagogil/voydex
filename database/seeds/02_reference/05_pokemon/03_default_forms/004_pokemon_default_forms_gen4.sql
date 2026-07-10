-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex default-form seeds, normalized to clean schema columns and ASCII code-facing names.
-- Scope note: default forms only; regional, alternate, held-item, cosmetic, and battle forms are seeded in later reviewed batches.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 4
-- Table: reference.pokemon_forms
-- Scope: default forms for National Dex #0387-0493
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms, sprite_slug)
VALUES
  -- Turtwig
  (38700, 387, 'turtwig', 'Turtwig', 4, TRUE, 1, NULL, NULL, 'turtwig'),
  -- Grotle
  (38800, 388, 'grotle', 'Grotle', 4, TRUE, 1, NULL, NULL, 'grotle'),
  -- Torterra
  (38900, 389, 'torterra', 'Torterra', 4, TRUE, 1, NULL, NULL, 'torterra'),
  -- Chimchar
  (39000, 390, 'chimchar', 'Chimchar', 4, TRUE, 1, NULL, NULL, 'chimchar'),
  -- Monferno
  (39100, 391, 'monferno', 'Monferno', 4, TRUE, 1, NULL, NULL, 'monferno'),
  -- Infernape
  (39200, 392, 'infernape', 'Infernape', 4, TRUE, 1, NULL, NULL, 'infernape'),
  -- Piplup
  (39300, 393, 'piplup', 'Piplup', 4, TRUE, 1, NULL, NULL, 'piplup'),
  -- Prinplup
  (39400, 394, 'prinplup', 'Prinplup', 4, TRUE, 1, NULL, NULL, 'prinplup'),
  -- Empoleon
  (39500, 395, 'empoleon', 'Empoleon', 4, TRUE, 1, NULL, NULL, 'empoleon'),
  -- Starly
  (39600, 396, 'starly', 'Starly', 4, TRUE, 1, NULL, NULL, 'starly'),
  -- Staravia
  (39700, 397, 'staravia', 'Staravia', 4, TRUE, 1, NULL, NULL, 'staravia'),
  -- Staraptor
  (39800, 398, 'staraptor', 'Staraptor', 4, TRUE, 1, NULL, NULL, 'staraptor'),
  -- Bidoof
  (39900, 399, 'bidoof', 'Bidoof', 4, TRUE, 1, NULL, NULL, 'bidoof'),
  -- Bibarel
  (40000, 400, 'bibarel', 'Bibarel', 4, TRUE, 1, NULL, NULL, 'bibarel'),
  -- Kricketot
  (40100, 401, 'kricketot', 'Kricketot', 4, TRUE, 1, NULL, NULL, 'kricketot'),
  -- Kricketune
  (40200, 402, 'kricketune', 'Kricketune', 4, TRUE, 1, NULL, NULL, 'kricketune'),
  -- Shinx
  (40300, 403, 'shinx', 'Shinx', 4, TRUE, 1, NULL, NULL, 'shinx'),
  -- Luxio
  (40400, 404, 'luxio', 'Luxio', 4, TRUE, 1, NULL, NULL, 'luxio'),
  -- Luxray
  (40500, 405, 'luxray', 'Luxray', 4, TRUE, 1, NULL, NULL, 'luxray'),
  -- Budew
  (40600, 406, 'budew', 'Budew', 4, TRUE, 1, NULL, NULL, 'budew'),
  -- Roserade
  (40700, 407, 'roserade', 'Roserade', 4, TRUE, 1, NULL, NULL, 'roserade'),
  -- Cranidos
  (40800, 408, 'cranidos', 'Cranidos', 4, TRUE, 1, NULL, NULL, 'cranidos'),
  -- Rampardos
  (40900, 409, 'rampardos', 'Rampardos', 4, TRUE, 1, NULL, NULL, 'rampardos'),
  -- Shieldon
  (41000, 410, 'shieldon', 'Shieldon', 4, TRUE, 1, NULL, NULL, 'shieldon'),
  -- Bastiodon
  (41100, 411, 'bastiodon', 'Bastiodon', 4, TRUE, 1, NULL, NULL, 'bastiodon'),
  -- Burmy
  (41200, 412, 'burmy', 'Burmy', 4, TRUE, 1, NULL, NULL, 'burmy'),
  -- Wormadam
  (41300, 413, 'wormadam', 'Wormadam', 4, TRUE, 1, NULL, NULL, 'wormadam'),
  -- Mothim
  (41400, 414, 'mothim', 'Mothim', 4, TRUE, 1, NULL, NULL, 'mothim'),
  -- Combee
  (41500, 415, 'combee', 'Combee', 4, TRUE, 1, NULL, NULL, 'combee'),
  -- Vespiquen
  (41600, 416, 'vespiquen', 'Vespiquen', 4, TRUE, 1, NULL, NULL, 'vespiquen'),
  -- Pachirisu
  (41700, 417, 'pachirisu', 'Pachirisu', 4, TRUE, 1, NULL, NULL, 'pachirisu'),
  -- Buizel
  (41800, 418, 'buizel', 'Buizel', 4, TRUE, 1, NULL, NULL, 'buizel'),
  -- Floatzel
  (41900, 419, 'floatzel', 'Floatzel', 4, TRUE, 1, NULL, NULL, 'floatzel'),
  -- Cherubi
  (42000, 420, 'cherubi', 'Cherubi', 4, TRUE, 1, NULL, NULL, 'cherubi'),
  -- Cherrim
  (42100, 421, 'cherrim', 'Cherrim', 4, TRUE, 1, NULL, NULL, 'cherrim'),
  -- Shellos
  (42200, 422, 'shellos', 'Shellos', 4, TRUE, 1, NULL, NULL, 'shellos'),
  -- Gastrodon
  (42300, 423, 'gastrodon', 'Gastrodon', 4, TRUE, 1, NULL, NULL, 'gastrodon'),
  -- Ambipom
  (42400, 424, 'ambipom', 'Ambipom', 4, TRUE, 1, NULL, NULL, 'ambipom'),
  -- Drifloon
  (42500, 425, 'drifloon', 'Drifloon', 4, TRUE, 1, NULL, NULL, 'drifloon'),
  -- Drifblim
  (42600, 426, 'drifblim', 'Drifblim', 4, TRUE, 1, NULL, NULL, 'drifblim'),
  -- Buneary
  (42700, 427, 'buneary', 'Buneary', 4, TRUE, 1, NULL, NULL, 'buneary'),
  -- Lopunny
  (42800, 428, 'lopunny', 'Lopunny', 4, TRUE, 1, NULL, NULL, 'lopunny'),
  -- Mismagius
  (42900, 429, 'mismagius', 'Mismagius', 4, TRUE, 1, NULL, NULL, 'mismagius'),
  -- Honchkrow
  (43000, 430, 'honchkrow', 'Honchkrow', 4, TRUE, 1, NULL, NULL, 'honchkrow'),
  -- Glameow
  (43100, 431, 'glameow', 'Glameow', 4, TRUE, 1, NULL, NULL, 'glameow'),
  -- Purugly
  (43200, 432, 'purugly', 'Purugly', 4, TRUE, 1, NULL, NULL, 'purugly'),
  -- Chingling
  (43300, 433, 'chingling', 'Chingling', 4, TRUE, 1, NULL, NULL, 'chingling'),
  -- Stunky
  (43400, 434, 'stunky', 'Stunky', 4, TRUE, 1, NULL, NULL, 'stunky'),
  -- Skuntank
  (43500, 435, 'skuntank', 'Skuntank', 4, TRUE, 1, NULL, NULL, 'skuntank'),
  -- Bronzor
  (43600, 436, 'bronzor', 'Bronzor', 4, TRUE, 1, NULL, NULL, 'bronzor'),
  -- Bronzong
  (43700, 437, 'bronzong', 'Bronzong', 4, TRUE, 1, NULL, NULL, 'bronzong'),
  -- Bonsly
  (43800, 438, 'bonsly', 'Bonsly', 4, TRUE, 1, NULL, NULL, 'bonsly'),
  -- Mime Jr.
  (43900, 439, 'mime-jr', 'Mime Jr.', 4, TRUE, 1, NULL, NULL, 'mime-jr'),
  -- Happiny
  (44000, 440, 'happiny', 'Happiny', 4, TRUE, 1, NULL, NULL, 'happiny'),
  -- Chatot
  (44100, 441, 'chatot', 'Chatot', 4, TRUE, 1, NULL, NULL, 'chatot'),
  -- Spiritomb
  (44200, 442, 'spiritomb', 'Spiritomb', 4, TRUE, 1, NULL, NULL, 'spiritomb'),
  -- Gible
  (44300, 443, 'gible', 'Gible', 4, TRUE, 1, NULL, NULL, 'gible'),
  -- Gabite
  (44400, 444, 'gabite', 'Gabite', 4, TRUE, 1, NULL, NULL, 'gabite'),
  -- Garchomp
  (44500, 445, 'garchomp', 'Garchomp', 4, TRUE, 1, NULL, NULL, 'garchomp'),
  -- Munchlax
  (44600, 446, 'munchlax', 'Munchlax', 4, TRUE, 1, NULL, NULL, 'munchlax'),
  -- Riolu
  (44700, 447, 'riolu', 'Riolu', 4, TRUE, 1, NULL, NULL, 'riolu'),
  -- Lucario
  (44800, 448, 'lucario', 'Lucario', 4, TRUE, 1, NULL, NULL, 'lucario'),
  -- Hippopotas
  (44900, 449, 'hippopotas', 'Hippopotas', 4, TRUE, 1, NULL, NULL, 'hippopotas'),
  -- Hippowdon
  (45000, 450, 'hippowdon', 'Hippowdon', 4, TRUE, 1, NULL, NULL, 'hippowdon'),
  -- Skorupi
  (45100, 451, 'skorupi', 'Skorupi', 4, TRUE, 1, NULL, NULL, 'skorupi'),
  -- Drapion
  (45200, 452, 'drapion', 'Drapion', 4, TRUE, 1, NULL, NULL, 'drapion'),
  -- Croagunk
  (45300, 453, 'croagunk', 'Croagunk', 4, TRUE, 1, NULL, NULL, 'croagunk'),
  -- Toxicroak
  (45400, 454, 'toxicroak', 'Toxicroak', 4, TRUE, 1, NULL, NULL, 'toxicroak'),
  -- Carnivine
  (45500, 455, 'carnivine', 'Carnivine', 4, TRUE, 1, NULL, NULL, 'carnivine'),
  -- Finneon
  (45600, 456, 'finneon', 'Finneon', 4, TRUE, 1, NULL, NULL, 'finneon'),
  -- Lumineon
  (45700, 457, 'lumineon', 'Lumineon', 4, TRUE, 1, NULL, NULL, 'lumineon'),
  -- Mantyke
  (45800, 458, 'mantyke', 'Mantyke', 4, TRUE, 1, NULL, NULL, 'mantyke'),
  -- Snover
  (45900, 459, 'snover', 'Snover', 4, TRUE, 1, NULL, NULL, 'snover'),
  -- Abomasnow
  (46000, 460, 'abomasnow', 'Abomasnow', 4, TRUE, 1, NULL, NULL, 'abomasnow'),
  -- Weavile
  (46100, 461, 'weavile', 'Weavile', 4, TRUE, 1, NULL, NULL, 'weavile'),
  -- Magnezone
  (46200, 462, 'magnezone', 'Magnezone', 4, TRUE, 1, NULL, NULL, 'magnezone'),
  -- Lickilicky
  (46300, 463, 'lickilicky', 'Lickilicky', 4, TRUE, 1, NULL, NULL, 'lickilicky'),
  -- Rhyperior
  (46400, 464, 'rhyperior', 'Rhyperior', 4, TRUE, 1, NULL, NULL, 'rhyperior'),
  -- Tangrowth
  (46500, 465, 'tangrowth', 'Tangrowth', 4, TRUE, 1, NULL, NULL, 'tangrowth'),
  -- Electivire
  (46600, 466, 'electivire', 'Electivire', 4, TRUE, 1, NULL, NULL, 'electivire'),
  -- Magmortar
  (46700, 467, 'magmortar', 'Magmortar', 4, TRUE, 1, NULL, NULL, 'magmortar'),
  -- Togekiss
  (46800, 468, 'togekiss', 'Togekiss', 4, TRUE, 1, NULL, NULL, 'togekiss'),
  -- Yanmega
  (46900, 469, 'yanmega', 'Yanmega', 4, TRUE, 1, NULL, NULL, 'yanmega'),
  -- Leafeon
  (47000, 470, 'leafeon', 'Leafeon', 4, TRUE, 1, NULL, NULL, 'leafeon'),
  -- Glaceon
  (47100, 471, 'glaceon', 'Glaceon', 4, TRUE, 1, NULL, NULL, 'glaceon'),
  -- Gliscor
  (47200, 472, 'gliscor', 'Gliscor', 4, TRUE, 1, NULL, NULL, 'gliscor'),
  -- Mamoswine
  (47300, 473, 'mamoswine', 'Mamoswine', 4, TRUE, 1, NULL, NULL, 'mamoswine'),
  -- Porygon-Z
  (47400, 474, 'porygon-z', 'Porygon-Z', 4, TRUE, 1, NULL, NULL, 'porygon-z'),
  -- Gallade
  (47500, 475, 'gallade', 'Gallade', 4, TRUE, 1, NULL, NULL, 'gallade'),
  -- Probopass
  (47600, 476, 'probopass', 'Probopass', 4, TRUE, 1, NULL, NULL, 'probopass'),
  -- Dusknoir
  (47700, 477, 'dusknoir', 'Dusknoir', 4, TRUE, 1, NULL, NULL, 'dusknoir'),
  -- Froslass
  (47800, 478, 'froslass', 'Froslass', 4, TRUE, 1, NULL, NULL, 'froslass'),
  -- Rotom
  (47900, 479, 'rotom', 'Rotom', 4, TRUE, 1, NULL, NULL, 'rotom'),
  -- Uxie
  (48000, 480, 'uxie', 'Uxie', 4, TRUE, 1, NULL, NULL, 'uxie'),
  -- Mesprit
  (48100, 481, 'mesprit', 'Mesprit', 4, TRUE, 1, NULL, NULL, 'mesprit'),
  -- Azelf
  (48200, 482, 'azelf', 'Azelf', 4, TRUE, 1, NULL, NULL, 'azelf'),
  -- Dialga
  (48300, 483, 'dialga', 'Dialga', 4, TRUE, 1, NULL, NULL, 'dialga'),
  -- Palkia
  (48400, 484, 'palkia', 'Palkia', 4, TRUE, 1, NULL, NULL, 'palkia'),
  -- Heatran
  (48500, 485, 'heatran', 'Heatran', 4, TRUE, 1, NULL, NULL, 'heatran'),
  -- Regigigas
  (48600, 486, 'regigigas', 'Regigigas', 4, TRUE, 1, NULL, NULL, 'regigigas'),
  -- Giratina
  (48700, 487, 'giratina', 'Giratina', 4, TRUE, 1, NULL, NULL, 'giratina'),
  -- Cresselia
  (48800, 488, 'cresselia', 'Cresselia', 4, TRUE, 1, NULL, NULL, 'cresselia'),
  -- Phione
  (48900, 489, 'phione', 'Phione', 4, TRUE, 1, NULL, NULL, 'phione'),
  -- Manaphy
  (49000, 490, 'manaphy', 'Manaphy', 4, TRUE, 1, NULL, NULL, 'manaphy'),
  -- Darkrai
  (49100, 491, 'darkrai', 'Darkrai', 4, TRUE, 1, NULL, NULL, 'darkrai'),
  -- Shaymin
  (49200, 492, 'shaymin', 'Shaymin', 4, TRUE, 1, NULL, NULL, 'shaymin'),
  -- Arceus
  (49300, 493, 'arceus', 'Arceus', 4, TRUE, 1, NULL, NULL, 'arceus');
