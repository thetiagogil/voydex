-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Mega Evolution and Primal Reversion pages.
-- Cross-check: Serebii X / Y, Omega Ruby / Alpha Sapphire and Legends: Z-A Mega Evolution pages.
-- Machine-readable sanity: PokeAPI Mega forms (types and stats match except Mega Starmie, whose
-- PokeAPI row carries a later game's Attack of 100).
-- Scope note: Megas are battle forms: a Pokémon is never stored in one.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 6, 9
-- Table: reference.pokemon_forms
-- Scope: the Mega Evolutions of X / Y, Omega Ruby / Alpha Sapphire, Legends: Z-A
-- and Mega Dimension.
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms)
VALUES
  -- Mega Venusaur
  (301, 3, 'mega-venusaur', 'Mega Venusaur', 6, FALSE, 2, NULL, NULL),
  -- Mega Charizard X
  (601, 6, 'mega-charizard-x', 'Mega Charizard X', 6, FALSE, 2, NULL, NULL),
  -- Mega Charizard Y
  (602, 6, 'mega-charizard-y', 'Mega Charizard Y', 6, FALSE, 3, NULL, NULL),
  -- Mega Blastoise
  (901, 9, 'mega-blastoise', 'Mega Blastoise', 6, FALSE, 2, NULL, NULL),
  -- Mega Beedrill
  (1501, 15, 'mega-beedrill', 'Mega Beedrill', 6, FALSE, 2, NULL, NULL),
  -- Mega Pidgeot
  (1801, 18, 'mega-pidgeot', 'Mega Pidgeot', 6, FALSE, 2, NULL, NULL),
  -- Mega Alakazam
  (6501, 65, 'mega-alakazam', 'Mega Alakazam', 6, FALSE, 2, NULL, NULL),
  -- Mega Slowbro
  (8001, 80, 'mega-slowbro', 'Mega Slowbro', 6, FALSE, 2, NULL, NULL),
  -- Mega Gengar
  (9401, 94, 'mega-gengar', 'Mega Gengar', 6, FALSE, 2, NULL, NULL),
  -- Mega Kangaskhan
  (11501, 115, 'mega-kangaskhan', 'Mega Kangaskhan', 6, FALSE, 2, NULL, NULL),
  -- Mega Pinsir
  (12701, 127, 'mega-pinsir', 'Mega Pinsir', 6, FALSE, 2, NULL, NULL),
  -- Mega Gyarados
  (13001, 130, 'mega-gyarados', 'Mega Gyarados', 6, FALSE, 2, NULL, NULL),
  -- Mega Aerodactyl
  (14201, 142, 'mega-aerodactyl', 'Mega Aerodactyl', 6, FALSE, 2, NULL, NULL),
  -- Mega Mewtwo X
  (15001, 150, 'mega-mewtwo-x', 'Mega Mewtwo X', 6, FALSE, 2, NULL, NULL),
  -- Mega Mewtwo Y
  (15002, 150, 'mega-mewtwo-y', 'Mega Mewtwo Y', 6, FALSE, 3, NULL, NULL),
  -- Mega Ampharos
  (18101, 181, 'mega-ampharos', 'Mega Ampharos', 6, FALSE, 2, NULL, NULL),
  -- Mega Steelix
  (20801, 208, 'mega-steelix', 'Mega Steelix', 6, FALSE, 2, NULL, NULL),
  -- Mega Scizor
  (21201, 212, 'mega-scizor', 'Mega Scizor', 6, FALSE, 2, NULL, NULL),
  -- Mega Heracross
  (21401, 214, 'mega-heracross', 'Mega Heracross', 6, FALSE, 2, NULL, NULL),
  -- Mega Houndoom
  (22901, 229, 'mega-houndoom', 'Mega Houndoom', 6, FALSE, 2, NULL, NULL),
  -- Mega Tyranitar
  (24801, 248, 'mega-tyranitar', 'Mega Tyranitar', 6, FALSE, 2, NULL, NULL),
  -- Mega Sceptile
  (25401, 254, 'mega-sceptile', 'Mega Sceptile', 6, FALSE, 2, NULL, NULL),
  -- Mega Blaziken
  (25701, 257, 'mega-blaziken', 'Mega Blaziken', 6, FALSE, 2, NULL, NULL),
  -- Mega Swampert
  (26001, 260, 'mega-swampert', 'Mega Swampert', 6, FALSE, 2, NULL, NULL),
  -- Mega Gardevoir
  (28201, 282, 'mega-gardevoir', 'Mega Gardevoir', 6, FALSE, 2, NULL, NULL),
  -- Mega Sableye
  (30201, 302, 'mega-sableye', 'Mega Sableye', 6, FALSE, 2, NULL, NULL),
  -- Mega Mawile
  (30301, 303, 'mega-mawile', 'Mega Mawile', 6, FALSE, 2, NULL, NULL),
  -- Mega Aggron
  (30601, 306, 'mega-aggron', 'Mega Aggron', 6, FALSE, 2, NULL, NULL),
  -- Mega Medicham
  (30801, 308, 'mega-medicham', 'Mega Medicham', 6, FALSE, 2, NULL, NULL),
  -- Mega Manectric
  (31001, 310, 'mega-manectric', 'Mega Manectric', 6, FALSE, 2, NULL, NULL),
  -- Mega Sharpedo
  (31901, 319, 'mega-sharpedo', 'Mega Sharpedo', 6, FALSE, 2, NULL, NULL),
  -- Mega Camerupt
  (32301, 323, 'mega-camerupt', 'Mega Camerupt', 6, FALSE, 2, NULL, NULL),
  -- Mega Altaria
  (33401, 334, 'mega-altaria', 'Mega Altaria', 6, FALSE, 2, NULL, NULL),
  -- Mega Banette
  (35401, 354, 'mega-banette', 'Mega Banette', 6, FALSE, 2, NULL, NULL),
  -- Mega Absol
  (35901, 359, 'mega-absol', 'Mega Absol', 6, FALSE, 2, NULL, NULL),
  -- Mega Glalie
  (36201, 362, 'mega-glalie', 'Mega Glalie', 6, FALSE, 2, NULL, NULL),
  -- Mega Salamence
  (37301, 373, 'mega-salamence', 'Mega Salamence', 6, FALSE, 2, NULL, NULL),
  -- Mega Metagross
  (37601, 376, 'mega-metagross', 'Mega Metagross', 6, FALSE, 2, NULL, NULL),
  -- Mega Latias
  (38001, 380, 'mega-latias', 'Mega Latias', 6, FALSE, 2, NULL, NULL),
  -- Mega Latios
  (38101, 381, 'mega-latios', 'Mega Latios', 6, FALSE, 2, NULL, NULL),
  -- Mega Rayquaza
  (38401, 384, 'mega-rayquaza', 'Mega Rayquaza', 6, FALSE, 2, NULL, NULL),
  -- Mega Lopunny
  (42801, 428, 'mega-lopunny', 'Mega Lopunny', 6, FALSE, 2, NULL, NULL),
  -- Mega Garchomp
  (44501, 445, 'mega-garchomp', 'Mega Garchomp', 6, FALSE, 2, NULL, NULL),
  -- Mega Lucario
  (44801, 448, 'mega-lucario', 'Mega Lucario', 6, FALSE, 2, NULL, NULL),
  -- Mega Abomasnow
  (46001, 460, 'mega-abomasnow', 'Mega Abomasnow', 6, FALSE, 2, NULL, NULL),
  -- Mega Gallade
  (47501, 475, 'mega-gallade', 'Mega Gallade', 6, FALSE, 2, NULL, NULL),
  -- Mega Audino
  (53101, 531, 'mega-audino', 'Mega Audino', 6, FALSE, 2, NULL, NULL),
  -- Mega Diancie
  (71901, 719, 'mega-diancie', 'Mega Diancie', 6, FALSE, 2, NULL, NULL),
  -- Mega Raichu X
  (2602, 26, 'mega-raichu-x', 'Mega Raichu X', 9, FALSE, 3, NULL, NULL),
  -- Mega Raichu Y
  (2603, 26, 'mega-raichu-y', 'Mega Raichu Y', 9, FALSE, 4, NULL, NULL),
  -- Mega Clefable
  (3601, 36, 'mega-clefable', 'Mega Clefable', 9, FALSE, 2, NULL, NULL),
  -- Mega Victreebel
  (7101, 71, 'mega-victreebel', 'Mega Victreebel', 9, FALSE, 2, NULL, NULL),
  -- Mega Starmie
  (12101, 121, 'mega-starmie', 'Mega Starmie', 9, FALSE, 2, NULL, NULL),
  -- Mega Dragonite
  (14901, 149, 'mega-dragonite', 'Mega Dragonite', 9, FALSE, 2, NULL, NULL),
  -- Mega Meganium
  (15401, 154, 'mega-meganium', 'Mega Meganium', 9, FALSE, 2, NULL, NULL),
  -- Mega Feraligatr
  (16001, 160, 'mega-feraligatr', 'Mega Feraligatr', 9, FALSE, 2, NULL, NULL),
  -- Mega Skarmory
  (22701, 227, 'mega-skarmory', 'Mega Skarmory', 9, FALSE, 2, NULL, NULL),
  -- Mega Chimecho
  (35801, 358, 'mega-chimecho', 'Mega Chimecho', 9, FALSE, 2, NULL, NULL),
  -- Mega Absol Z
  (35902, 359, 'mega-absol-z', 'Mega Absol Z', 9, FALSE, 3, NULL, NULL),
  -- Mega Staraptor
  (39801, 398, 'mega-staraptor', 'Mega Staraptor', 9, FALSE, 2, NULL, NULL),
  -- Mega Garchomp Z
  (44502, 445, 'mega-garchomp-z', 'Mega Garchomp Z', 9, FALSE, 3, NULL, NULL),
  -- Mega Lucario Z
  (44802, 448, 'mega-lucario-z', 'Mega Lucario Z', 9, FALSE, 3, NULL, NULL),
  -- Mega Froslass
  (47801, 478, 'mega-froslass', 'Mega Froslass', 9, FALSE, 2, NULL, NULL),
  -- Mega Heatran
  (48501, 485, 'mega-heatran', 'Mega Heatran', 9, FALSE, 2, NULL, NULL),
  -- Mega Darkrai
  (49101, 491, 'mega-darkrai', 'Mega Darkrai', 9, FALSE, 2, NULL, NULL),
  -- Mega Emboar
  (50001, 500, 'mega-emboar', 'Mega Emboar', 9, FALSE, 2, NULL, NULL),
  -- Mega Excadrill
  (53001, 530, 'mega-excadrill', 'Mega Excadrill', 9, FALSE, 2, NULL, NULL),
  -- Mega Scolipede
  (54501, 545, 'mega-scolipede', 'Mega Scolipede', 9, FALSE, 2, NULL, NULL),
  -- Mega Scrafty
  (56001, 560, 'mega-scrafty', 'Mega Scrafty', 9, FALSE, 2, NULL, NULL),
  -- Mega Eelektross
  (60401, 604, 'mega-eelektross', 'Mega Eelektross', 9, FALSE, 2, NULL, NULL),
  -- Mega Chandelure
  (60901, 609, 'mega-chandelure', 'Mega Chandelure', 9, FALSE, 2, NULL, NULL),
  -- Mega Golurk
  (62301, 623, 'mega-golurk', 'Mega Golurk', 9, FALSE, 2, NULL, NULL),
  -- Mega Chesnaught
  (65201, 652, 'mega-chesnaught', 'Mega Chesnaught', 9, FALSE, 2, NULL, NULL),
  -- Mega Delphox
  (65501, 655, 'mega-delphox', 'Mega Delphox', 9, FALSE, 2, NULL, NULL),
  -- Mega Greninja
  (65801, 658, 'mega-greninja', 'Mega Greninja', 9, FALSE, 2, NULL, NULL),
  -- Mega Pyroar
  (66801, 668, 'mega-pyroar', 'Mega Pyroar', 9, FALSE, 2, NULL, NULL),
  -- Mega Floette
  (67001, 670, 'mega-floette', 'Mega Floette', 9, FALSE, 2, NULL, NULL),
  -- Mega Meowstic
  (67802, 678, 'mega-meowstic', 'Mega Meowstic', 9, FALSE, 3, NULL, NULL),
  -- Mega Malamar
  (68701, 687, 'mega-malamar', 'Mega Malamar', 9, FALSE, 2, NULL, NULL),
  -- Mega Barbaracle
  (68901, 689, 'mega-barbaracle', 'Mega Barbaracle', 9, FALSE, 2, NULL, NULL),
  -- Mega Dragalge
  (69101, 691, 'mega-dragalge', 'Mega Dragalge', 9, FALSE, 2, NULL, NULL),
  -- Mega Hawlucha
  (70101, 701, 'mega-hawlucha', 'Mega Hawlucha', 9, FALSE, 2, NULL, NULL),
  -- Mega Zygarde
  (71802, 718, 'mega-zygarde', 'Mega Zygarde', 9, FALSE, 3, NULL, NULL),
  -- Mega Crabominable
  (74001, 740, 'mega-crabominable', 'Mega Crabominable', 9, FALSE, 2, NULL, NULL),
  -- Mega Golisopod
  (76801, 768, 'mega-golisopod', 'Mega Golisopod', 9, FALSE, 2, NULL, NULL),
  -- Mega Drampa
  (78001, 780, 'mega-drampa', 'Mega Drampa', 9, FALSE, 2, NULL, NULL),
  -- Mega Magearna
  (80101, 801, 'mega-magearna', 'Mega Magearna', 9, FALSE, 2, NULL, NULL),
  -- Mega Zeraora
  (80701, 807, 'mega-zeraora', 'Mega Zeraora', 9, FALSE, 2, NULL, NULL),
  -- Mega Falinks
  (87001, 870, 'mega-falinks', 'Mega Falinks', 9, FALSE, 2, NULL, NULL),
  -- Mega Scovillain
  (95201, 952, 'mega-scovillain', 'Mega Scovillain', 9, FALSE, 2, NULL, NULL),
  -- Mega Glimmora
  (97001, 970, 'mega-glimmora', 'Mega Glimmora', 9, FALSE, 2, NULL, NULL),
  -- Mega Tatsugiri
  (97803, 978, 'mega-tatsugiri', 'Mega Tatsugiri', 9, FALSE, 4, NULL, NULL),
  -- Mega Tatsugiri (Droopy)
  (97804, 978, 'mega-tatsugiri-droopy', 'Mega Tatsugiri (Droopy)', 9, FALSE, 5, NULL, NULL),
  -- Mega Tatsugiri (Stretchy)
  (97805, 978, 'mega-tatsugiri-stretchy', 'Mega Tatsugiri (Stretchy)', 9, FALSE, 6, NULL, NULL),
  -- Mega Baxcalibur
  (99801, 998, 'mega-baxcalibur', 'Mega Baxcalibur', 9, FALSE, 2, NULL, NULL);
