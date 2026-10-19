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
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms)
VALUES
  -- Turtwig
  (38700, 387, 'turtwig', 'Turtwig', 4, TRUE, 1, NULL, NULL),
  -- Grotle
  (38800, 388, 'grotle', 'Grotle', 4, TRUE, 1, NULL, NULL),
  -- Torterra
  (38900, 389, 'torterra', 'Torterra', 4, TRUE, 1, NULL, NULL),
  -- Chimchar
  (39000, 390, 'chimchar', 'Chimchar', 4, TRUE, 1, NULL, NULL),
  -- Monferno
  (39100, 391, 'monferno', 'Monferno', 4, TRUE, 1, NULL, NULL),
  -- Infernape
  (39200, 392, 'infernape', 'Infernape', 4, TRUE, 1, NULL, NULL),
  -- Piplup
  (39300, 393, 'piplup', 'Piplup', 4, TRUE, 1, NULL, NULL),
  -- Prinplup
  (39400, 394, 'prinplup', 'Prinplup', 4, TRUE, 1, NULL, NULL),
  -- Empoleon
  (39500, 395, 'empoleon', 'Empoleon', 4, TRUE, 1, NULL, NULL),
  -- Starly
  (39600, 396, 'starly', 'Starly', 4, TRUE, 1, NULL, NULL),
  -- Staravia
  (39700, 397, 'staravia', 'Staravia', 4, TRUE, 1, NULL, NULL),
  -- Staraptor
  (39800, 398, 'staraptor', 'Staraptor', 4, TRUE, 1, NULL, NULL),
  -- Bidoof
  (39900, 399, 'bidoof', 'Bidoof', 4, TRUE, 1, NULL, NULL),
  -- Bibarel
  (40000, 400, 'bibarel', 'Bibarel', 4, TRUE, 1, NULL, NULL),
  -- Kricketot
  (40100, 401, 'kricketot', 'Kricketot', 4, TRUE, 1, NULL, NULL),
  -- Kricketune
  (40200, 402, 'kricketune', 'Kricketune', 4, TRUE, 1, NULL, NULL),
  -- Shinx
  (40300, 403, 'shinx', 'Shinx', 4, TRUE, 1, NULL, NULL),
  -- Luxio
  (40400, 404, 'luxio', 'Luxio', 4, TRUE, 1, NULL, NULL),
  -- Luxray
  (40500, 405, 'luxray', 'Luxray', 4, TRUE, 1, NULL, NULL),
  -- Budew
  (40600, 406, 'budew', 'Budew', 4, TRUE, 1, NULL, NULL),
  -- Roserade
  (40700, 407, 'roserade', 'Roserade', 4, TRUE, 1, NULL, NULL),
  -- Cranidos
  (40800, 408, 'cranidos', 'Cranidos', 4, TRUE, 1, NULL, NULL),
  -- Rampardos
  (40900, 409, 'rampardos', 'Rampardos', 4, TRUE, 1, NULL, NULL),
  -- Shieldon
  (41000, 410, 'shieldon', 'Shieldon', 4, TRUE, 1, NULL, NULL),
  -- Bastiodon
  (41100, 411, 'bastiodon', 'Bastiodon', 4, TRUE, 1, NULL, NULL),
  -- Burmy
  (41200, 412, 'burmy', 'Burmy', 4, TRUE, 1, NULL, NULL),
  -- Wormadam
  (41300, 413, 'wormadam', 'Wormadam', 4, TRUE, 1, NULL, NULL),
  -- Mothim
  (41400, 414, 'mothim', 'Mothim', 4, TRUE, 1, NULL, NULL),
  -- Combee
  (41500, 415, 'combee', 'Combee', 4, TRUE, 1, NULL, NULL),
  -- Vespiquen
  (41600, 416, 'vespiquen', 'Vespiquen', 4, TRUE, 1, NULL, NULL),
  -- Pachirisu
  (41700, 417, 'pachirisu', 'Pachirisu', 4, TRUE, 1, NULL, NULL),
  -- Buizel
  (41800, 418, 'buizel', 'Buizel', 4, TRUE, 1, NULL, NULL),
  -- Floatzel
  (41900, 419, 'floatzel', 'Floatzel', 4, TRUE, 1, NULL, NULL),
  -- Cherubi
  (42000, 420, 'cherubi', 'Cherubi', 4, TRUE, 1, NULL, NULL),
  -- Cherrim
  (42100, 421, 'cherrim', 'Cherrim', 4, TRUE, 1, NULL, NULL),
  -- Shellos
  (42200, 422, 'shellos', 'Shellos', 4, TRUE, 1, NULL, NULL),
  -- Gastrodon
  (42300, 423, 'gastrodon', 'Gastrodon', 4, TRUE, 1, NULL, NULL),
  -- Ambipom
  (42400, 424, 'ambipom', 'Ambipom', 4, TRUE, 1, NULL, NULL),
  -- Drifloon
  (42500, 425, 'drifloon', 'Drifloon', 4, TRUE, 1, NULL, NULL),
  -- Drifblim
  (42600, 426, 'drifblim', 'Drifblim', 4, TRUE, 1, NULL, NULL),
  -- Buneary
  (42700, 427, 'buneary', 'Buneary', 4, TRUE, 1, NULL, NULL),
  -- Lopunny
  (42800, 428, 'lopunny', 'Lopunny', 4, TRUE, 1, NULL, NULL),
  -- Mismagius
  (42900, 429, 'mismagius', 'Mismagius', 4, TRUE, 1, NULL, NULL),
  -- Honchkrow
  (43000, 430, 'honchkrow', 'Honchkrow', 4, TRUE, 1, NULL, NULL),
  -- Glameow
  (43100, 431, 'glameow', 'Glameow', 4, TRUE, 1, NULL, NULL),
  -- Purugly
  (43200, 432, 'purugly', 'Purugly', 4, TRUE, 1, NULL, NULL),
  -- Chingling
  (43300, 433, 'chingling', 'Chingling', 4, TRUE, 1, NULL, NULL),
  -- Stunky
  (43400, 434, 'stunky', 'Stunky', 4, TRUE, 1, NULL, NULL),
  -- Skuntank
  (43500, 435, 'skuntank', 'Skuntank', 4, TRUE, 1, NULL, NULL),
  -- Bronzor
  (43600, 436, 'bronzor', 'Bronzor', 4, TRUE, 1, NULL, NULL),
  -- Bronzong
  (43700, 437, 'bronzong', 'Bronzong', 4, TRUE, 1, NULL, NULL),
  -- Bonsly
  (43800, 438, 'bonsly', 'Bonsly', 4, TRUE, 1, NULL, NULL),
  -- Mime Jr.
  (43900, 439, 'mime-jr', 'Mime Jr.', 4, TRUE, 1, NULL, NULL),
  -- Happiny
  (44000, 440, 'happiny', 'Happiny', 4, TRUE, 1, NULL, NULL),
  -- Chatot
  (44100, 441, 'chatot', 'Chatot', 4, TRUE, 1, NULL, NULL),
  -- Spiritomb
  (44200, 442, 'spiritomb', 'Spiritomb', 4, TRUE, 1, NULL, NULL),
  -- Gible
  (44300, 443, 'gible', 'Gible', 4, TRUE, 1, NULL, NULL),
  -- Gabite
  (44400, 444, 'gabite', 'Gabite', 4, TRUE, 1, NULL, NULL),
  -- Garchomp
  (44500, 445, 'garchomp', 'Garchomp', 4, TRUE, 1, NULL, NULL),
  -- Munchlax
  (44600, 446, 'munchlax', 'Munchlax', 4, TRUE, 1, NULL, NULL),
  -- Riolu
  (44700, 447, 'riolu', 'Riolu', 4, TRUE, 1, NULL, NULL),
  -- Lucario
  (44800, 448, 'lucario', 'Lucario', 4, TRUE, 1, NULL, NULL),
  -- Hippopotas
  (44900, 449, 'hippopotas', 'Hippopotas', 4, TRUE, 1, NULL, NULL),
  -- Hippowdon
  (45000, 450, 'hippowdon', 'Hippowdon', 4, TRUE, 1, NULL, NULL),
  -- Skorupi
  (45100, 451, 'skorupi', 'Skorupi', 4, TRUE, 1, NULL, NULL),
  -- Drapion
  (45200, 452, 'drapion', 'Drapion', 4, TRUE, 1, NULL, NULL),
  -- Croagunk
  (45300, 453, 'croagunk', 'Croagunk', 4, TRUE, 1, NULL, NULL),
  -- Toxicroak
  (45400, 454, 'toxicroak', 'Toxicroak', 4, TRUE, 1, NULL, NULL),
  -- Carnivine
  (45500, 455, 'carnivine', 'Carnivine', 4, TRUE, 1, NULL, NULL),
  -- Finneon
  (45600, 456, 'finneon', 'Finneon', 4, TRUE, 1, NULL, NULL),
  -- Lumineon
  (45700, 457, 'lumineon', 'Lumineon', 4, TRUE, 1, NULL, NULL),
  -- Mantyke
  (45800, 458, 'mantyke', 'Mantyke', 4, TRUE, 1, NULL, NULL),
  -- Snover
  (45900, 459, 'snover', 'Snover', 4, TRUE, 1, NULL, NULL),
  -- Abomasnow
  (46000, 460, 'abomasnow', 'Abomasnow', 4, TRUE, 1, NULL, NULL),
  -- Weavile
  (46100, 461, 'weavile', 'Weavile', 4, TRUE, 1, NULL, NULL),
  -- Magnezone
  (46200, 462, 'magnezone', 'Magnezone', 4, TRUE, 1, NULL, NULL),
  -- Lickilicky
  (46300, 463, 'lickilicky', 'Lickilicky', 4, TRUE, 1, NULL, NULL),
  -- Rhyperior
  (46400, 464, 'rhyperior', 'Rhyperior', 4, TRUE, 1, NULL, NULL),
  -- Tangrowth
  (46500, 465, 'tangrowth', 'Tangrowth', 4, TRUE, 1, NULL, NULL),
  -- Electivire
  (46600, 466, 'electivire', 'Electivire', 4, TRUE, 1, NULL, NULL),
  -- Magmortar
  (46700, 467, 'magmortar', 'Magmortar', 4, TRUE, 1, NULL, NULL),
  -- Togekiss
  (46800, 468, 'togekiss', 'Togekiss', 4, TRUE, 1, NULL, NULL),
  -- Yanmega
  (46900, 469, 'yanmega', 'Yanmega', 4, TRUE, 1, NULL, NULL),
  -- Leafeon
  (47000, 470, 'leafeon', 'Leafeon', 4, TRUE, 1, NULL, NULL),
  -- Glaceon
  (47100, 471, 'glaceon', 'Glaceon', 4, TRUE, 1, NULL, NULL),
  -- Gliscor
  (47200, 472, 'gliscor', 'Gliscor', 4, TRUE, 1, NULL, NULL),
  -- Mamoswine
  (47300, 473, 'mamoswine', 'Mamoswine', 4, TRUE, 1, NULL, NULL),
  -- Porygon-Z
  (47400, 474, 'porygon-z', 'Porygon-Z', 4, TRUE, 1, NULL, NULL),
  -- Gallade
  (47500, 475, 'gallade', 'Gallade', 4, TRUE, 1, NULL, NULL),
  -- Probopass
  (47600, 476, 'probopass', 'Probopass', 4, TRUE, 1, NULL, NULL),
  -- Dusknoir
  (47700, 477, 'dusknoir', 'Dusknoir', 4, TRUE, 1, NULL, NULL),
  -- Froslass
  (47800, 478, 'froslass', 'Froslass', 4, TRUE, 1, NULL, NULL),
  -- Rotom
  (47900, 479, 'rotom', 'Rotom', 4, TRUE, 1, NULL, NULL),
  -- Uxie
  (48000, 480, 'uxie', 'Uxie', 4, TRUE, 1, NULL, NULL),
  -- Mesprit
  (48100, 481, 'mesprit', 'Mesprit', 4, TRUE, 1, NULL, NULL),
  -- Azelf
  (48200, 482, 'azelf', 'Azelf', 4, TRUE, 1, NULL, NULL),
  -- Dialga
  (48300, 483, 'dialga', 'Dialga', 4, TRUE, 1, NULL, NULL),
  -- Palkia
  (48400, 484, 'palkia', 'Palkia', 4, TRUE, 1, NULL, NULL),
  -- Heatran
  (48500, 485, 'heatran', 'Heatran', 4, TRUE, 1, NULL, NULL),
  -- Regigigas
  (48600, 486, 'regigigas', 'Regigigas', 4, TRUE, 1, NULL, NULL),
  -- Giratina
  (48700, 487, 'giratina', 'Giratina', 4, TRUE, 1, NULL, NULL),
  -- Cresselia
  (48800, 488, 'cresselia', 'Cresselia', 4, TRUE, 1, NULL, NULL),
  -- Phione
  (48900, 489, 'phione', 'Phione', 4, TRUE, 1, NULL, NULL),
  -- Manaphy
  (49000, 490, 'manaphy', 'Manaphy', 4, TRUE, 1, NULL, NULL),
  -- Darkrai
  (49100, 491, 'darkrai', 'Darkrai', 4, TRUE, 1, NULL, NULL),
  -- Shaymin
  (49200, 492, 'shaymin', 'Shaymin', 4, TRUE, 1, NULL, NULL),
  -- Arceus
  (49300, 493, 'arceus', 'Arceus', 4, TRUE, 1, NULL, NULL);
