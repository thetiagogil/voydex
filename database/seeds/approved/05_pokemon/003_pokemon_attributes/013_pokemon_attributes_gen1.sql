-- Source: Bulbapedia — List of Pokémon by base stats in Generation I
-- Generation: 1
-- Scope: base generation seed
-- Table: meta.pokemon_attributes
-- Rows: 151
--
-- Gen 1 uses the single "Special" stat column (special_attack and special_defense are NULL).
-- Abilities did not exist in Gen 1 (ability columns are NULL).
-- Egg groups are included retroactively (biological properties that always existed).
-- Types reflect Gen 1 state: no Fairy, Steel, or Dark types.
--   Clefairy/Clefable: Normal (becomes Fairy in Gen 6)
--   Jigglypuff/Wigglytuff: Normal (becomes Normal/Fairy in Gen 6)
--   Mr. Mime: Psychic (becomes Psychic/Fairy in Gen 6)
--   Magnemite/Magneton: Electric (becomes Electric/Steel in Gen 2)
--
-- Type IDs: 1=Normal 2=Fire 3=Water 4=Electric 5=Grass 6=Ice 7=Fighting
--   8=Poison 9=Ground 10=Flying 11=Psychic 12=Bug 13=Rock 14=Ghost 15=Dragon
-- Egg Group IDs: 1=Monster 2=Water1 3=Water2 4=Water3 5=Bug 6=Flying 7=Field
--   8=Fairy 9=Grass 10=Human-Like 11=Mineral 12=Amorphous 13=Dragon 14=Ditto 15=Undiscovered
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk  sdef  spd  spc
    -- #001-009: Kanto Starters
    (1, 100, 1, 5, 8, NULL, NULL, NULL, 1, 9, 45, 49, 49, NULL, NULL, 45, 65),
    (2, 200, 1, 5, 8, NULL, NULL, NULL, 1, 9, 60, 62, 63, NULL, NULL, 60, 80),
    (3, 300, 1, 5, 8, NULL, NULL, NULL, 1, 9, 80, 82, 83, NULL, NULL, 80, 100),
    (4, 400, 1, 2, NULL, NULL, NULL, NULL, 1, 13, 39, 52, 43, NULL, NULL, 65, 50),
    (5, 500, 1, 2, NULL, NULL, NULL, NULL, 1, 13, 58, 64, 58, NULL, NULL, 80, 65),
    (6, 600, 1, 2, 10, NULL, NULL, NULL, 1, 13, 78, 84, 78, NULL, NULL, 100, 85),
    (7, 700, 1, 3, NULL, NULL, NULL, NULL, 1, 2, 44, 48, 65, NULL, NULL, 43, 50),
    (8, 800, 1, 3, NULL, NULL, NULL, NULL, 1, 2, 59, 63, 80, NULL, NULL, 58, 65),
    (9, 900, 1, 3, NULL, NULL, NULL, NULL, 1, 2, 79, 83, 100, NULL, NULL, 78, 85),
    -- #010-012: Caterpie line
    (10, 1000, 1, 12, NULL, NULL, NULL, NULL, 5, NULL, 45, 30, 35, NULL, NULL, 45, 20),
    (11, 1100, 1, 12, NULL, NULL, NULL, NULL, 5, NULL, 50, 20, 55, NULL, NULL, 30, 25),
    (12, 1200, 1, 12, 10, NULL, NULL, NULL, 5, NULL, 60, 45, 50, NULL, NULL, 70, 80),
    -- #013-015: Weedle line
    (13, 1300, 1, 12, 8, NULL, NULL, NULL, 5, NULL, 40, 35, 30, NULL, NULL, 50, 20),
    (14, 1400, 1, 12, 8, NULL, NULL, NULL, 5, NULL, 45, 25, 50, NULL, NULL, 35, 25),
    (15, 1500, 1, 12, 8, NULL, NULL, NULL, 5, NULL, 65, 80, 40, NULL, NULL, 75, 45),
    -- #016-018: Pidgey line
    (16, 1600, 1, 1, 10, NULL, NULL, NULL, 6, NULL, 40, 45, 40, NULL, NULL, 56, 35),
    (17, 1700, 1, 1, 10, NULL, NULL, NULL, 6, NULL, 63, 60, 55, NULL, NULL, 71, 50),
    (18, 1800, 1, 1, 10, NULL, NULL, NULL, 6, NULL, 83, 80, 75, NULL, NULL, 91, 70),
    -- #019-020: Rattata line
    (19, 1900, 1, 1, NULL, NULL, NULL, NULL, 7, NULL, 30, 56, 35, NULL, NULL, 72, 25),
    (20, 2000, 1, 1, NULL, NULL, NULL, NULL, 7, NULL, 55, 81, 60, NULL, NULL, 97, 50),
    -- #021-022: Spearow line
    (21, 2100, 1, 1, 10, NULL, NULL, NULL, 6, NULL, 40, 60, 30, NULL, NULL, 70, 31),
    (22, 2200, 1, 1, 10, NULL, NULL, NULL, 6, NULL, 65, 90, 65, NULL, NULL, 100, 61),
    -- #023-024: Ekans line
    (23, 2300, 1, 8, NULL, NULL, NULL, NULL, 7, 13, 35, 60, 44, NULL, NULL, 55, 40),
    (24, 2400, 1, 8, NULL, NULL, NULL, NULL, 7, 13, 60, 85, 69, NULL, NULL, 80, 65),
    -- #025-026: Pikachu line
    (25, 2500, 1, 4, NULL, NULL, NULL, NULL, 7, 8, 35, 55, 30, NULL, NULL, 90, 50),
    (26, 2600, 1, 4, NULL, NULL, NULL, NULL, 7, 8, 60, 90, 55, NULL, NULL, 100, 90),
    -- #027-028: Sandshrew line
    (27, 2700, 1, 9, NULL, NULL, NULL, NULL, 7, NULL, 50, 75, 85, NULL, NULL, 40, 30),
    (28, 2800, 1, 9, NULL, NULL, NULL, NULL, 7, NULL, 75, 100, 110, NULL, NULL, 65, 55),
    -- #029-031: Nidoran♀ line
    (29, 2900, 1, 8, NULL, NULL, NULL, NULL, 1, 7, 55, 47, 52, NULL, NULL, 41, 40),
    (30, 3000, 1, 8, NULL, NULL, NULL, NULL, 15, NULL, 70, 62, 67, NULL, NULL, 56, 55),
    (31, 3100, 1, 8, 9, NULL, NULL, NULL, 15, NULL, 90, 82, 87, NULL, NULL, 76, 75),
    -- #032-034: Nidoran♂ line
    (32, 3200, 1, 8, NULL, NULL, NULL, NULL, 1, 7, 46, 57, 40, NULL, NULL, 50, 40),
    (33, 3300, 1, 8, NULL, NULL, NULL, NULL, 1, 7, 61, 72, 57, NULL, NULL, 65, 55),
    (34, 3400, 1, 8, 9, NULL, NULL, NULL, 1, 7, 81, 92, 77, NULL, NULL, 85, 75),
    -- #035-036: Clefairy line (Normal in Gen 1, Fairy in Gen 6)
    (35, 3500, 1, 1, NULL, NULL, NULL, NULL, 8, NULL, 70, 45, 48, NULL, NULL, 35, 60),
    (36, 3600, 1, 1, NULL, NULL, NULL, NULL, 8, NULL, 95, 70, 73, NULL, NULL, 60, 85),
    -- #037-038: Vulpix line
    (37, 3700, 1, 2, NULL, NULL, NULL, NULL, 7, NULL, 38, 41, 40, NULL, NULL, 65, 65),
    (38, 3800, 1, 2, NULL, NULL, NULL, NULL, 7, NULL, 73, 76, 75, NULL, NULL, 100, 100),
    -- #039-040: Jigglypuff line (Normal in Gen 1, Normal/Fairy in Gen 6)
    (39, 3900, 1, 1, NULL, NULL, NULL, NULL, 8, NULL, 115, 45, 20, NULL, NULL, 20, 25),
    (40, 4000, 1, 1, NULL, NULL, NULL, NULL, 8, NULL, 140, 70, 45, NULL, NULL, 45, 50),
    -- #041-042: Zubat line
    (41, 4100, 1, 8, 10, NULL, NULL, NULL, 6, NULL, 40, 45, 35, NULL, NULL, 55, 40),
    (42, 4200, 1, 8, 10, NULL, NULL, NULL, 6, NULL, 75, 80, 70, NULL, NULL, 90, 75),
    -- #043-045: Oddish line
    (43, 4300, 1, 5, 8, NULL, NULL, NULL, 9, NULL, 45, 50, 55, NULL, NULL, 30, 75),
    (44, 4400, 1, 5, 8, NULL, NULL, NULL, 9, NULL, 60, 65, 70, NULL, NULL, 40, 85),
    (45, 4500, 1, 5, 8, NULL, NULL, NULL, 9, NULL, 75, 80, 85, NULL, NULL, 50, 100),
    -- #046-047: Paras line
    (46, 4600, 1, 12, 5, NULL, NULL, NULL, 5, 9, 35, 70, 55, NULL, NULL, 25, 55),
    (47, 4700, 1, 12, 5, NULL, NULL, NULL, 5, 9, 60, 95, 80, NULL, NULL, 30, 80),
    -- #048-049: Venonat line
    (48, 4800, 1, 12, 8, NULL, NULL, NULL, 5, NULL, 60, 55, 50, NULL, NULL, 45, 40),
    (49, 4900, 1, 12, 8, NULL, NULL, NULL, 5, NULL, 70, 65, 60, NULL, NULL, 90, 90),
    -- #050-051: Diglett line
    (50, 5000, 1, 9, NULL, NULL, NULL, NULL, 7, NULL, 10, 55, 25, NULL, NULL, 95, 45),
    (51, 5100, 1, 9, NULL, NULL, NULL, NULL, 7, NULL, 35, 80, 50, NULL, NULL, 120, 70),
    -- #052-053: Meowth line
    (52, 5200, 1, 1, NULL, NULL, NULL, NULL, 7, NULL, 40, 45, 35, NULL, NULL, 90, 40),
    (53, 5300, 1, 1, NULL, NULL, NULL, NULL, 7, NULL, 65, 70, 60, NULL, NULL, 115, 65),
    -- #054-055: Psyduck line
    (54, 5400, 1, 3, NULL, NULL, NULL, NULL, 2, 7, 50, 52, 48, NULL, NULL, 55, 50),
    (55, 5500, 1, 3, NULL, NULL, NULL, NULL, 2, 7, 80, 82, 78, NULL, NULL, 85, 80),
    -- #056-057: Mankey line
    (56, 5600, 1, 7, NULL, NULL, NULL, NULL, 7, NULL, 40, 80, 35, NULL, NULL, 70, 35),
    (57, 5700, 1, 7, NULL, NULL, NULL, NULL, 7, NULL, 65, 105, 60, NULL, NULL, 95, 60),
    -- #058-059: Growlithe line
    (58, 5800, 1, 2, NULL, NULL, NULL, NULL, 7, NULL, 55, 70, 45, NULL, NULL, 60, 50),
    (59, 5900, 1, 2, NULL, NULL, NULL, NULL, 7, NULL, 90, 110, 80, NULL, NULL, 95, 80),
    -- #060-062: Poliwag line
    (60, 6000, 1, 3, NULL, NULL, NULL, NULL, 2, NULL, 40, 50, 40, NULL, NULL, 90, 40),
    (61, 6100, 1, 3, NULL, NULL, NULL, NULL, 2, NULL, 65, 65, 65, NULL, NULL, 90, 50),
    (62, 6200, 1, 3, 7, NULL, NULL, NULL, 2, NULL, 90, 85, 95, NULL, NULL, 70, 70),
    -- #063-065: Abra line
    (63, 6300, 1, 11, NULL, NULL, NULL, NULL, 10, NULL, 25, 20, 15, NULL, NULL, 90, 105),
    (64, 6400, 1, 11, NULL, NULL, NULL, NULL, 10, NULL, 40, 35, 30, NULL, NULL, 105, 120),
    (65, 6500, 1, 11, NULL, NULL, NULL, NULL, 10, NULL, 55, 50, 45, NULL, NULL, 120, 135),
    -- #066-068: Machop line
    (66, 6600, 1, 7, NULL, NULL, NULL, NULL, 10, NULL, 70, 80, 50, NULL, NULL, 35, 35),
    (67, 6700, 1, 7, NULL, NULL, NULL, NULL, 10, NULL, 80, 100, 70, NULL, NULL, 45, 50),
    (68, 6800, 1, 7, NULL, NULL, NULL, NULL, 10, NULL, 90, 130, 80, NULL, NULL, 55, 65),
    -- #069-071: Bellsprout line
    (69, 6900, 1, 5, 8, NULL, NULL, NULL, 9, NULL, 50, 75, 35, NULL, NULL, 40, 70),
    (70, 7000, 1, 5, 8, NULL, NULL, NULL, 9, NULL, 65, 90, 50, NULL, NULL, 55, 85),
    (71, 7100, 1, 5, 8, NULL, NULL, NULL, 9, NULL, 80, 105, 65, NULL, NULL, 70, 100),
    -- #072-073: Tentacool line
    (72, 7200, 1, 3, 8, NULL, NULL, NULL, 4, NULL, 40, 40, 35, NULL, NULL, 70, 100),
    (73, 7300, 1, 3, 8, NULL, NULL, NULL, 4, NULL, 80, 70, 65, NULL, NULL, 100, 120),
    -- #074-076: Geodude line
    (74, 7400, 1, 13, 9, NULL, NULL, NULL, 11, NULL, 40, 80, 100, NULL, NULL, 20, 30),
    (75, 7500, 1, 13, 9, NULL, NULL, NULL, 11, NULL, 55, 95, 115, NULL, NULL, 35, 45),
    (76, 7600, 1, 13, 9, NULL, NULL, NULL, 11, NULL, 80, 110, 130, NULL, NULL, 45, 55),
    -- #077-078: Ponyta line
    (77, 7700, 1, 2, NULL, NULL, NULL, NULL, 7, NULL, 50, 85, 55, NULL, NULL, 90, 65),
    (78, 7800, 1, 2, NULL, NULL, NULL, NULL, 7, NULL, 65, 100, 70, NULL, NULL, 105, 80),
    -- #079-080: Slowpoke line
    (79, 7900, 1, 3, 11, NULL, NULL, NULL, 1, 2, 90, 65, 65, NULL, NULL, 15, 40),
    (80, 8000, 1, 3, 11, NULL, NULL, NULL, 1, 2, 95, 75, 110, NULL, NULL, 30, 80),
    -- #081-082: Magnemite line (Electric only in Gen 1; becomes Electric/Steel in Gen 2)
    (81, 8100, 1, 4, NULL, NULL, NULL, NULL, 11, NULL, 25, 35, 70, NULL, NULL, 45, 95),
    (82, 8200, 1, 4, NULL, NULL, NULL, NULL, 11, NULL, 50, 60, 95, NULL, NULL, 70, 120),
    -- #083: Farfetch'd
    (83, 8300, 1, 1, 10, NULL, NULL, NULL, 6, 7, 52, 65, 55, NULL, NULL, 60, 58),
    -- #084-085: Doduo line
    (84, 8400, 1, 1, 10, NULL, NULL, NULL, 6, NULL, 35, 85, 45, NULL, NULL, 75, 35),
    (85, 8500, 1, 1, 10, NULL, NULL, NULL, 6, NULL, 60, 110, 70, NULL, NULL, 100, 60),
    -- #086-087: Seel line
    (86, 8600, 1, 3, NULL, NULL, NULL, NULL, 2, 7, 65, 45, 55, NULL, NULL, 45, 70),
    (87, 8700, 1, 3, 6, NULL, NULL, NULL, 2, 7, 90, 70, 80, NULL, NULL, 70, 95),
    -- #088-089: Grimer line
    (88, 8800, 1, 8, NULL, NULL, NULL, NULL, 12, NULL, 80, 80, 50, NULL, NULL, 25, 40),
    (89, 8900, 1, 8, NULL, NULL, NULL, NULL, 12, NULL, 105, 105, 75, NULL, NULL, 50, 65),
    -- #090-091: Shellder line
    (90, 9000, 1, 3, NULL, NULL, NULL, NULL, 4, NULL, 30, 65, 100, NULL, NULL, 40, 45),
    (91, 9100, 1, 3, 6, NULL, NULL, NULL, 4, NULL, 50, 95, 180, NULL, NULL, 70, 85),
    -- #092-094: Gastly line
    (92, 9200, 1, 14, 8, NULL, NULL, NULL, 12, NULL, 30, 35, 30, NULL, NULL, 80, 100),
    (93, 9300, 1, 14, 8, NULL, NULL, NULL, 12, NULL, 45, 50, 45, NULL, NULL, 95, 115),
    (94, 9400, 1, 14, 8, NULL, NULL, NULL, 12, NULL, 60, 65, 60, NULL, NULL, 110, 130),
    -- #095: Onix
    (95, 9500, 1, 13, 9, NULL, NULL, NULL, 11, NULL, 35, 45, 160, NULL, NULL, 70, 30),
    -- #096-097: Drowzee line
    (96, 9600, 1, 11, NULL, NULL, NULL, NULL, 10, NULL, 60, 48, 45, NULL, NULL, 42, 90),
    (97, 9700, 1, 11, NULL, NULL, NULL, NULL, 10, NULL, 85, 73, 70, NULL, NULL, 67, 115),
    -- #098-099: Krabby line
    (98, 9800, 1, 3, NULL, NULL, NULL, NULL, 4, NULL, 30, 105, 90, NULL, NULL, 50, 25),
    (99, 9900, 1, 3, NULL, NULL, NULL, NULL, 4, NULL, 55, 130, 115, NULL, NULL, 75, 50),
    -- #100-101: Voltorb line
    (100, 10000, 1, 4, NULL, NULL, NULL, NULL, 11, NULL, 40, 30, 50, NULL, NULL, 100, 55),
    (101, 10100, 1, 4, NULL, NULL, NULL, NULL, 11, NULL, 60, 50, 70, NULL, NULL, 140, 80),
    -- #102-103: Exeggcute line
    (102, 10200, 1, 5, 11, NULL, NULL, NULL, 9, NULL, 60, 40, 80, NULL, NULL, 40, 60),
    (103, 10300, 1, 5, 11, NULL, NULL, NULL, 9, NULL, 95, 95, 85, NULL, NULL, 55, 125),
    -- #104-105: Cubone line
    (104, 10400, 1, 9, NULL, NULL, NULL, NULL, 1, NULL, 50, 50, 95, NULL, NULL, 35, 40),
    (105, 10500, 1, 9, NULL, NULL, NULL, NULL, 1, NULL, 60, 80, 110, NULL, NULL, 45, 50),
    -- #106-107: Hitmonlee, Hitmonchan
    (106, 10600, 1, 7, NULL, NULL, NULL, NULL, 10, NULL, 50, 120, 53, NULL, NULL, 87, 35),
    (107, 10700, 1, 7, NULL, NULL, NULL, NULL, 10, NULL, 50, 105, 79, NULL, NULL, 76, 35),
    -- #108: Lickitung
    (108, 10800, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, 90, 55, 75, NULL, NULL, 30, 60),
    -- #109-110: Koffing line
    (109, 10900, 1, 8, NULL, NULL, NULL, NULL, 12, NULL, 40, 65, 95, NULL, NULL, 35, 60),
    (110, 11000, 1, 8, NULL, NULL, NULL, NULL, 12, NULL, 65, 90, 120, NULL, NULL, 60, 85),
    -- #111-112: Rhyhorn line
    (111, 11100, 1, 9, 13, NULL, NULL, NULL, 1, 7, 80, 85, 95, NULL, NULL, 25, 30),
    (112, 11200, 1, 9, 13, NULL, NULL, NULL, 1, 7, 105, 130, 120, NULL, NULL, 40, 45),
    -- #113: Chansey
    (113, 11300, 1, 1, NULL, NULL, NULL, NULL, 8, NULL, 250, 5, 5, NULL, NULL, 50, 105),
    -- #114: Tangela
    (114, 11400, 1, 5, NULL, NULL, NULL, NULL, 9, NULL, 65, 55, 115, NULL, NULL, 60, 100),
    -- #115: Kangaskhan
    (115, 11500, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, 105, 95, 80, NULL, NULL, 90, 40),
    -- #116-117: Horsea line
    (116, 11600, 1, 3, NULL, NULL, NULL, NULL, 2, 13, 30, 40, 70, NULL, NULL, 60, 70),
    (117, 11700, 1, 3, NULL, NULL, NULL, NULL, 2, 13, 55, 65, 95, NULL, NULL, 85, 95),
    -- #118-119: Goldeen line
    (118, 11800, 1, 3, NULL, NULL, NULL, NULL, 3, NULL, 45, 67, 60, NULL, NULL, 63, 50),
    (119, 11900, 1, 3, NULL, NULL, NULL, NULL, 3, NULL, 80, 92, 65, NULL, NULL, 68, 80),
    -- #120-121: Staryu line
    (120, 12000, 1, 3, NULL, NULL, NULL, NULL, 4, NULL, 30, 45, 55, NULL, NULL, 85, 70),
    (121, 12100, 1, 3, 11, NULL, NULL, NULL, 4, NULL, 60, 75, 85, NULL, NULL, 115, 100),
    -- #122: Mr. Mime (Psychic only in Gen 1; becomes Psychic/Fairy in Gen 6)
    (122, 12200, 1, 11, NULL, NULL, NULL, NULL, 10, NULL, 40, 45, 65, NULL, NULL, 90, 100),
    -- #123: Scyther
    (123, 12300, 1, 12, 10, NULL, NULL, NULL, 5, NULL, 70, 110, 80, NULL, NULL, 105, 55),
    -- #124: Jynx
    (124, 12400, 1, 6, 11, NULL, NULL, NULL, 10, NULL, 65, 50, 35, NULL, NULL, 95, 95),
    -- #125: Electabuzz
    (125, 12500, 1, 4, NULL, NULL, NULL, NULL, 10, NULL, 65, 83, 57, NULL, NULL, 105, 85),
    -- #126: Magmar
    (126, 12600, 1, 2, NULL, NULL, NULL, NULL, 10, NULL, 65, 95, 57, NULL, NULL, 93, 85),
    -- #127: Pinsir
    (127, 12700, 1, 12, NULL, NULL, NULL, NULL, 5, NULL, 65, 125, 100, NULL, NULL, 85, 55),
    -- #128: Tauros
    (128, 12800, 1, 1, NULL, NULL, NULL, NULL, 7, NULL, 75, 100, 95, NULL, NULL, 110, 70),
    -- #129-130: Magikarp line
    (129, 12900, 1, 3, NULL, NULL, NULL, NULL, 3, 13, 20, 10, 55, NULL, NULL, 80, 20),
    (130, 13000, 1, 3, 10, NULL, NULL, NULL, 3, 13, 95, 125, 79, NULL, NULL, 81, 100),
    -- #131: Lapras
    (131, 13100, 1, 3, 6, NULL, NULL, NULL, 1, 2, 130, 85, 80, NULL, NULL, 60, 95),
    -- #132: Ditto
    (132, 13200, 1, 1, NULL, NULL, NULL, NULL, 14, NULL, 48, 48, 48, NULL, NULL, 48, 48),
    -- #133: Eevee
    (133, 13300, 1, 1, NULL, NULL, NULL, NULL, 7, NULL, 55, 55, 50, NULL, NULL, 55, 65),
    -- #134-136: Eeveelutions (Gen 1)
    (134, 13400, 1, 3, NULL, NULL, NULL, NULL, 7, NULL, 130, 65, 60, NULL, NULL, 65, 110),
    (135, 13500, 1, 4, NULL, NULL, NULL, NULL, 7, NULL, 65, 65, 60, NULL, NULL, 130, 110),
    (136, 13600, 1, 2, NULL, NULL, NULL, NULL, 7, NULL, 65, 130, 60, NULL, NULL, 65, 110),
    -- #137: Porygon
    (137, 13700, 1, 1, NULL, NULL, NULL, NULL, 11, NULL, 65, 60, 70, NULL, NULL, 40, 75),
    -- #138-139: Omanyte line
    (138, 13800, 1, 13, 3, NULL, NULL, NULL, 2, 4, 35, 40, 100, NULL, NULL, 35, 90),
    (139, 13900, 1, 13, 3, NULL, NULL, NULL, 2, 4, 70, 60, 125, NULL, NULL, 55, 115),
    -- #140-141: Kabuto line
    (140, 14000, 1, 13, 3, NULL, NULL, NULL, 2, 4, 30, 80, 90, NULL, NULL, 55, 45),
    (141, 14100, 1, 13, 3, NULL, NULL, NULL, 2, 4, 60, 115, 105, NULL, NULL, 80, 70),
    -- #142: Aerodactyl
    (142, 14200, 1, 13, 10, NULL, NULL, NULL, 6, NULL, 80, 105, 65, NULL, NULL, 130, 60),
    -- #143: Snorlax
    (143, 14300, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, 160, 110, 65, NULL, NULL, 30, 65),
    -- #144-146: Legendary Birds
    (144, 14400, 1, 6, 10, NULL, NULL, NULL, 15, NULL, 90, 85, 100, NULL, NULL, 85, 125),
    (145, 14500, 1, 4, 10, NULL, NULL, NULL, 15, NULL, 90, 90, 85, NULL, NULL, 100, 125),
    (146, 14600, 1, 2, 10, NULL, NULL, NULL, 15, NULL, 90, 100, 90, NULL, NULL, 90, 125),
    -- #147-149: Dratini line
    (147, 14700, 1, 15, NULL, NULL, NULL, NULL, 2, 13, 41, 64, 45, NULL, NULL, 50, 50),
    (148, 14800, 1, 15, NULL, NULL, NULL, NULL, 2, 13, 61, 84, 65, NULL, NULL, 70, 70),
    (149, 14900, 1, 15, 10, NULL, NULL, NULL, 2, 13, 91, 134, 95, NULL, NULL, 80, 100),
    -- #150-151: Mewtwo, Mew
    (150, 15000, 1, 11, NULL, NULL, NULL, NULL, 15, NULL, 106, 110, 90, NULL, NULL, 130, 154),
    (151, 15100, 1, 11, NULL, NULL, NULL, NULL, 15, NULL, 100, 100, 100, NULL, NULL, 100, 100);