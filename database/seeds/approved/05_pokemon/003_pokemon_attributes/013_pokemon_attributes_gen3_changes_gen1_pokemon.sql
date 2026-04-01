-- Source: Bulbapedia — List of Pokémon by Ability
-- Generation: 3
-- Scope: changes to Gen 1 Pokémon (#001-151) — ability assignment
-- Table: meta.pokemon_attributes
-- Rows: 151
--
-- Abilities were introduced in Gen 3 (Ruby/Sapphire).
-- This file assigns ONLY Gen 3-era abilities (IDs 1-76).
-- Abilities marked "Gen IV+" on Bulbapedia are SET TO NULL here and will
-- be added in generation-specific change files (e.g. gen4_changes).
-- Hidden abilities (Gen 5+) are NULL for all Pokémon.
-- Types, egg groups, and base stats are unchanged from Gen 2.
--
-- Ability IDs (Gen 3, 1-76):
--   1=Stench 5=Sturdy 6=Damp 7=Limber 8=Sand Veil 9=Static
--   11=Water Absorb 12=Oblivious 13=Cloud Nine 14=Compound Eyes 15=Insomnia
--   18=Flash Fire 19=Shield Dust 20=Own Tempo 22=Intimidate 26=Levitate
--   27=Effect Spore 28=Synchronize 29=Clear Body 30=Natural Cure 31=Lightning Rod
--   32=Serene Grace 33=Swift Swim 34=Chlorophyll 35=Illuminate 36=Trace
--   38=Poison Point 39=Inner Focus 42=Magnet Pull 43=Soundproof 46=Pressure
--   47=Thick Fat 48=Early Bird 49=Flame Body 50=Run Away 51=Keen Eye
--   52=Hyper Cutter 53=Pickup 56=Cute Charm 60=Sticky Hold 61=Shed Skin
--   62=Guts 64=Liquid Ooze 65=Overgrow 66=Blaze 67=Torrent 68=Swarm
--   69=Rock Head 71=Arena Trap 72=Vital Spirit 75=Shell Armor
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #001-009: Kanto Starters
    (1, 100, 3, 5, 8, 65, NULL, NULL, 1, 9, 45, 49, 49, 65, 65, 45, NULL),
    (2, 200, 3, 5, 8, 65, NULL, NULL, 1, 9, 60, 62, 63, 80, 80, 60, NULL),
    (3, 300, 3, 5, 8, 65, NULL, NULL, 1, 9, 80, 82, 83, 100, 100, 80, NULL),
    (4, 400, 3, 2, NULL, 66, NULL, NULL, 1, 13, 39, 52, 43, 60, 50, 65, NULL),
    (5, 500, 3, 2, NULL, 66, NULL, NULL, 1, 13, 58, 64, 58, 80, 65, 80, NULL),
    (6, 600, 3, 2, 10, 66, NULL, NULL, 1, 13, 78, 84, 78, 109, 85, 100, NULL),
    (7, 700, 3, 3, NULL, 67, NULL, NULL, 1, 2, 44, 48, 65, 50, 64, 43, NULL),
    (8, 800, 3, 3, NULL, 67, NULL, NULL, 1, 2, 59, 63, 80, 65, 80, 58, NULL),
    (9, 900, 3, 3, NULL, 67, NULL, NULL, 1, 2, 79, 83, 100, 85, 105, 78, NULL),
    -- #010-012: Caterpie line
    (10, 1000, 3, 12, NULL, 19, NULL, NULL, 5, NULL, 45, 30, 35, 20, 20, 45, NULL),
    (11, 1100, 3, 12, NULL, 61, NULL, NULL, 5, NULL, 50, 20, 55, 25, 25, 30, NULL),
    (12, 1200, 3, 12, 10, 14, NULL, NULL, 5, NULL, 60, 45, 50, 80, 80, 70, NULL),
    -- #013-015: Weedle line
    (13, 1300, 3, 12, 8, 19, NULL, NULL, 5, NULL, 40, 35, 30, 20, 20, 50, NULL),
    (14, 1400, 3, 12, 8, 61, NULL, NULL, 5, NULL, 45, 25, 50, 25, 25, 35, NULL),
    (15, 1500, 3, 12, 8, 68, NULL, NULL, 5, NULL, 65, 80, 40, 45, 80, 75, NULL),
    -- #016-018: Pidgey line (Tangled Feet is Gen IV+, Big Pecks is Gen V+)
    (16, 1600, 3, 1, 10, 51, NULL, NULL, 6, NULL, 40, 45, 40, 35, 35, 56, NULL),
    (17, 1700, 3, 1, 10, 51, NULL, NULL, 6, NULL, 63, 60, 55, 50, 50, 71, NULL),
    (18, 1800, 3, 1, 10, 51, NULL, NULL, 6, NULL, 83, 80, 75, 70, 70, 91, NULL),
    -- #019-020: Rattata line
    (19, 1900, 3, 1, NULL, 50, 62, NULL, 7, NULL, 30, 56, 35, 25, 35, 72, NULL),
    (20, 2000, 3, 1, NULL, 50, 62, NULL, 7, NULL, 55, 81, 60, 50, 70, 97, NULL),
    -- #021-022: Spearow line
    (21, 2100, 3, 1, 10, 51, NULL, NULL, 6, NULL, 40, 60, 30, 31, 31, 70, NULL),
    (22, 2200, 3, 1, 10, 51, NULL, NULL, 6, NULL, 65, 90, 65, 61, 61, 100, NULL),
    -- #023-024: Ekans line
    (23, 2300, 3, 8, NULL, 22, 61, NULL, 7, 13, 35, 60, 44, 40, 54, 55, NULL),
    (24, 2400, 3, 8, NULL, 22, 61, NULL, 7, 13, 60, 85, 69, 65, 79, 80, NULL),
    -- #025-026: Pikachu line
    (25, 2500, 3, 4, NULL, 9, NULL, NULL, 7, 8, 35, 55, 30, 50, 40, 90, NULL),
    (26, 2600, 3, 4, NULL, 9, NULL, NULL, 7, 8, 60, 90, 55, 90, 80, 100, NULL),
    -- #027-028: Sandshrew line
    (27, 2700, 3, 9, NULL, 8, NULL, NULL, 7, NULL, 50, 75, 85, 20, 30, 40, NULL),
    (28, 2800, 3, 9, NULL, 8, NULL, NULL, 7, NULL, 75, 100, 110, 45, 55, 65, NULL),
    -- #029-031: Nidoran♀ line (Rivalry is Gen IV+)
    (29, 2900, 3, 8, NULL, 38, NULL, NULL, 1, 7, 55, 47, 52, 40, 40, 41, NULL),
    (30, 3000, 3, 8, NULL, 38, NULL, NULL, 15, NULL, 70, 62, 67, 55, 55, 56, NULL),
    (31, 3100, 3, 8, 9, 38, NULL, NULL, 15, NULL, 90, 82, 87, 75, 85, 76, NULL),
    -- #032-034: Nidoran♂ line (Rivalry is Gen IV+)
    (32, 3200, 3, 8, NULL, 38, NULL, NULL, 1, 7, 46, 57, 40, 40, 40, 50, NULL),
    (33, 3300, 3, 8, NULL, 38, NULL, NULL, 1, 7, 61, 72, 57, 55, 55, 65, NULL),
    (34, 3400, 3, 8, 9, 38, NULL, NULL, 1, 7, 81, 92, 77, 85, 75, 85, NULL),
    -- #035-036: Clefairy line (Magic Guard is Gen IV+)
    (35, 3500, 3, 1, NULL, 56, NULL, NULL, 8, NULL, 70, 45, 48, 60, 65, 35, NULL),
    (36, 3600, 3, 1, NULL, 56, NULL, NULL, 8, NULL, 95, 70, 73, 85, 90, 60, NULL),
    -- #037-038: Vulpix line
    (37, 3700, 3, 2, NULL, 18, NULL, NULL, 7, NULL, 38, 41, 40, 50, 65, 65, NULL),
    (38, 3800, 3, 2, NULL, 18, NULL, NULL, 7, NULL, 73, 76, 75, 81, 100, 100, NULL),
    -- #039-040: Jigglypuff line (Competitive is Gen VI+)
    (39, 3900, 3, 1, NULL, 56, NULL, NULL, 8, NULL, 115, 45, 20, 45, 25, 20, NULL),
    (40, 4000, 3, 1, NULL, 56, NULL, NULL, 8, NULL, 140, 70, 45, 75, 50, 45, NULL),
    -- #041-042: Zubat line
    (41, 4100, 3, 8, 10, 39, NULL, NULL, 6, NULL, 40, 45, 35, 30, 40, 55, NULL),
    (42, 4200, 3, 8, 10, 39, NULL, NULL, 6, NULL, 75, 80, 70, 65, 75, 90, NULL),
    -- #043-045: Oddish line
    (43, 4300, 3, 5, 8, 34, NULL, NULL, 9, NULL, 45, 50, 55, 75, 65, 30, NULL),
    (44, 4400, 3, 5, 8, 34, NULL, NULL, 9, NULL, 60, 65, 70, 85, 75, 40, NULL),
    (45, 4500, 3, 5, 8, 34, NULL, NULL, 9, NULL, 75, 80, 85, 100, 90, 50, NULL),
    -- #046-047: Paras line (Dry Skin is Gen IV+)
    (46, 4600, 3, 12, 5, 27, NULL, NULL, 5, 9, 35, 70, 55, 45, 55, 25, NULL),
    (47, 4700, 3, 12, 5, 27, NULL, NULL, 5, 9, 60, 95, 80, 60, 80, 30, NULL),
    -- #048-049: Venonat line (Tinted Lens is Gen IV+)
    (48, 4800, 3, 12, 8, 14, NULL, NULL, 5, NULL, 60, 55, 50, 40, 55, 45, NULL),
    (49, 4900, 3, 12, 8, 19, NULL, NULL, 5, NULL, 70, 65, 60, 90, 75, 90, NULL),
    -- #050-051: Diglett line
    (50, 5000, 3, 9, NULL, 8, 71, NULL, 7, NULL, 10, 55, 25, 35, 45, 95, NULL),
    (51, 5100, 3, 9, NULL, 8, 71, NULL, 7, NULL, 35, 80, 50, 50, 70, 120, NULL),
    -- #052-053: Meowth line (Technician is Gen IV+)
    (52, 5200, 3, 1, NULL, 53, NULL, NULL, 7, NULL, 40, 45, 35, 40, 40, 90, NULL),
    (53, 5300, 3, 1, NULL, 7, NULL, NULL, 7, NULL, 65, 70, 60, 65, 65, 115, NULL),
    -- #054-055: Psyduck line
    (54, 5400, 3, 3, NULL, 6, 13, NULL, 2, 7, 50, 52, 48, 65, 50, 55, NULL),
    (55, 5500, 3, 3, NULL, 6, 13, NULL, 2, 7, 80, 82, 78, 95, 80, 85, NULL),
    -- #056-057: Mankey line (Anger Point is Gen IV+)
    (56, 5600, 3, 7, NULL, 72, NULL, NULL, 7, NULL, 40, 80, 35, 35, 45, 70, NULL),
    (57, 5700, 3, 7, NULL, 72, NULL, NULL, 7, NULL, 65, 105, 60, 60, 70, 95, NULL),
    -- #058-059: Growlithe line
    (58, 5800, 3, 2, NULL, 22, 18, NULL, 7, NULL, 55, 70, 45, 70, 50, 60, NULL),
    (59, 5900, 3, 2, NULL, 22, 18, NULL, 7, NULL, 90, 110, 80, 100, 80, 95, NULL),
    -- #060-062: Poliwag line
    (60, 6000, 3, 3, NULL, 11, 6, NULL, 2, NULL, 40, 50, 40, 40, 40, 90, NULL),
    (61, 6100, 3, 3, NULL, 11, 6, NULL, 2, NULL, 65, 65, 65, 50, 50, 90, NULL),
    (62, 6200, 3, 3, 7, 11, 6, NULL, 2, NULL, 90, 85, 95, 70, 90, 70, NULL),
    -- #063-065: Abra line
    (63, 6300, 3, 11, NULL, 28, 39, NULL, 10, NULL, 25, 20, 15, 105, 55, 90, NULL),
    (64, 6400, 3, 11, NULL, 28, 39, NULL, 10, NULL, 40, 35, 30, 120, 70, 105, NULL),
    (65, 6500, 3, 11, NULL, 28, 39, NULL, 10, NULL, 55, 50, 45, 135, 85, 120, NULL),
    -- #066-068: Machop line (No Guard is Gen IV+)
    (66, 6600, 3, 7, NULL, 62, NULL, NULL, 10, NULL, 70, 80, 50, 35, 35, 35, NULL),
    (67, 6700, 3, 7, NULL, 62, NULL, NULL, 10, NULL, 80, 100, 70, 50, 60, 45, NULL),
    (68, 6800, 3, 7, NULL, 62, NULL, NULL, 10, NULL, 90, 130, 80, 65, 85, 55, NULL),
    -- #069-071: Bellsprout line
    (69, 6900, 3, 5, 8, 34, NULL, NULL, 9, NULL, 50, 75, 35, 70, 30, 40, NULL),
    (70, 7000, 3, 5, 8, 34, NULL, NULL, 9, NULL, 65, 90, 50, 85, 45, 55, NULL),
    (71, 7100, 3, 5, 8, 34, NULL, NULL, 9, NULL, 80, 105, 65, 100, 60, 70, NULL),
    -- #072-073: Tentacool line
    (72, 7200, 3, 3, 8, 29, 64, NULL, 4, NULL, 40, 40, 35, 50, 100, 70, NULL),
    (73, 7300, 3, 3, 8, 29, 64, NULL, 4, NULL, 80, 70, 65, 80, 120, 100, NULL),
    -- #074-076: Geodude line
    (74, 7400, 3, 13, 9, 69, 5, NULL, 11, NULL, 40, 80, 100, 30, 30, 20, NULL),
    (75, 7500, 3, 13, 9, 69, 5, NULL, 11, NULL, 55, 95, 115, 45, 45, 35, NULL),
    (76, 7600, 3, 13, 9, 69, 5, NULL, 11, NULL, 80, 110, 130, 55, 65, 45, NULL),
    -- #077-078: Ponyta line
    (77, 7700, 3, 2, NULL, 50, 18, NULL, 7, NULL, 50, 85, 55, 65, 65, 90, NULL),
    (78, 7800, 3, 2, NULL, 50, 18, NULL, 7, NULL, 65, 100, 70, 80, 80, 105, NULL),
    -- #079-080: Slowpoke line
    (79, 7900, 3, 3, 11, 12, 20, NULL, 1, 2, 90, 65, 65, 40, 40, 15, NULL),
    (80, 8000, 3, 3, 11, 12, 20, NULL, 1, 2, 95, 75, 110, 100, 80, 30, NULL),
    -- #081-082: Magnemite line (Steel type gained in Gen 2)
    (81, 8100, 3, 4, 17, 42, 5, NULL, 11, NULL, 25, 35, 70, 95, 55, 45, NULL),
    (82, 8200, 3, 4, 17, 42, 5, NULL, 11, NULL, 50, 60, 95, 120, 70, 70, NULL),
    -- #083: Farfetch'd
    (83, 8300, 3, 1, 10, 51, 39, NULL, 6, 7, 52, 65, 55, 58, 62, 60, NULL),
    -- #084-085: Doduo line
    (84, 8400, 3, 1, 10, 50, 48, NULL, 6, NULL, 35, 85, 45, 35, 35, 75, NULL),
    (85, 8500, 3, 1, 10, 50, 48, NULL, 6, NULL, 60, 110, 70, 60, 60, 100, NULL),
    -- #086-087: Seel line (Hydration is Gen IV+)
    (86, 8600, 3, 3, NULL, 47, NULL, NULL, 2, 7, 65, 45, 55, 45, 70, 45, NULL),
    (87, 8700, 3, 3, 6, 47, NULL, NULL, 2, 7, 90, 70, 80, 70, 95, 70, NULL),
    -- #088-089: Grimer line
    (88, 8800, 3, 8, NULL, 1, 60, NULL, 12, NULL, 80, 80, 50, 40, 50, 25, NULL),
    (89, 8900, 3, 8, NULL, 1, 60, NULL, 12, NULL, 105, 105, 75, 65, 100, 50, NULL),
    -- #090-091: Shellder line (Skill Link is Gen IV+)
    (90, 9000, 3, 3, NULL, 75, NULL, NULL, 4, NULL, 30, 65, 100, 45, 25, 40, NULL),
    (91, 9100, 3, 3, 6, 75, NULL, NULL, 4, NULL, 50, 95, 180, 85, 45, 70, NULL),
    -- #092-094: Gastly line (Gengar had Levitate in Gen 3-6)
    (92, 9200, 3, 14, 8, 26, NULL, NULL, 12, NULL, 30, 35, 30, 100, 35, 80, NULL),
    (93, 9300, 3, 14, 8, 26, NULL, NULL, 12, NULL, 45, 50, 45, 115, 55, 95, NULL),
    (94, 9400, 3, 14, 8, 26, NULL, NULL, 12, NULL, 60, 65, 60, 130, 75, 110, NULL),
    -- #095: Onix
    (95, 9500, 3, 13, 9, 69, 5, NULL, 11, NULL, 35, 45, 160, 30, 45, 70, NULL),
    -- #096-097: Drowzee line (Forewarn is Gen IV+)
    (96, 9600, 3, 11, NULL, 15, NULL, NULL, 10, NULL, 60, 48, 45, 43, 90, 42, NULL),
    (97, 9700, 3, 11, NULL, 15, NULL, NULL, 10, NULL, 85, 73, 70, 73, 115, 67, NULL),
    -- #098-099: Krabby line
    (98, 9800, 3, 3, NULL, 52, 75, NULL, 4, NULL, 30, 105, 90, 25, 25, 50, NULL),
    (99, 9900, 3, 3, NULL, 52, 75, NULL, 4, NULL, 55, 130, 115, 50, 50, 75, NULL),
    -- #100-101: Voltorb line
    (100, 10000, 3, 4, NULL, 43, 9, NULL, 11, NULL, 40, 30, 50, 55, 55, 100, NULL),
    (101, 10100, 3, 4, NULL, 43, 9, NULL, 11, NULL, 60, 50, 70, 80, 80, 140, NULL),
    -- #102-103: Exeggcute line
    (102, 10200, 3, 5, 11, 34, NULL, NULL, 9, NULL, 60, 40, 80, 60, 45, 40, NULL),
    (103, 10300, 3, 5, 11, 34, NULL, NULL, 9, NULL, 95, 95, 85, 125, 65, 55, NULL),
    -- #104-105: Cubone line
    (104, 10400, 3, 9, NULL, 69, 31, NULL, 1, NULL, 50, 50, 95, 40, 50, 35, NULL),
    (105, 10500, 3, 9, NULL, 69, 31, NULL, 1, NULL, 60, 80, 110, 50, 80, 45, NULL),
    -- #106: Hitmonlee (Reckless is Gen IV+)
    (106, 10600, 3, 7, NULL, 7, NULL, NULL, 10, NULL, 50, 120, 53, 35, 110, 87, NULL),
    -- #107: Hitmonchan (Iron Fist is Gen IV+)
    (107, 10700, 3, 7, NULL, 51, NULL, NULL, 10, NULL, 50, 105, 79, 35, 110, 76, NULL),
    -- #108: Lickitung
    (108, 10800, 3, 1, NULL, 20, 12, NULL, 1, NULL, 90, 55, 75, 60, 75, 30, NULL),
    -- #109-110: Koffing line (Neutralizing Gas & Stench are Gen VIII+)
    (109, 10900, 3, 8, NULL, 26, NULL, NULL, 12, NULL, 40, 65, 95, 60, 45, 35, NULL),
    (110, 11000, 3, 8, NULL, 26, NULL, NULL, 12, NULL, 65, 90, 120, 85, 70, 60, NULL),
    -- #111-112: Rhyhorn line
    (111, 11100, 3, 9, 13, 31, 69, NULL, 1, 7, 80, 85, 95, 30, 30, 25, NULL),
    (112, 11200, 3, 9, 13, 31, 69, NULL, 1, 7, 105, 130, 120, 45, 45, 40, NULL),
    -- #113: Chansey
    (113, 11300, 3, 1, NULL, 30, 32, NULL, 8, NULL, 250, 5, 5, 35, 105, 50, NULL),
    -- #114: Tangela (Leaf Guard is Gen IV+)
    (114, 11400, 3, 5, NULL, 34, NULL, NULL, 9, NULL, 65, 55, 115, 100, 40, 60, NULL),
    -- #115: Kangaskhan (Scrappy is Gen IV+)
    (115, 11500, 3, 1, NULL, 48, NULL, NULL, 1, NULL, 105, 95, 80, 40, 80, 90, NULL),
    -- #116-117: Horsea line (Sniper is Gen IV+)
    (116, 11600, 3, 3, NULL, 33, NULL, NULL, 2, 13, 30, 40, 70, 70, 25, 60, NULL),
    (117, 11700, 3, 3, NULL, 38, NULL, NULL, 2, 13, 55, 65, 95, 95, 45, 85, NULL),
    -- #118-119: Goldeen line
    (118, 11800, 3, 3, NULL, 33, 41, NULL, 3, NULL, 45, 67, 60, 35, 50, 63, NULL),
    (119, 11900, 3, 3, NULL, 33, 41, NULL, 3, NULL, 80, 92, 65, 65, 80, 68, NULL),
    -- #120-121: Staryu line
    (120, 12000, 3, 3, NULL, 35, 30, NULL, 4, NULL, 30, 45, 55, 70, 55, 85, NULL),
    (121, 12100, 3, 3, 11, 35, 30, NULL, 4, NULL, 60, 75, 85, 100, 85, 115, NULL),
    -- #122: Mr. Mime (Filter is Gen IV+)
    (122, 12200, 3, 11, NULL, 43, NULL, NULL, 10, NULL, 40, 45, 65, 100, 120, 90, NULL),
    -- #123: Scyther (Technician is Gen IV+)
    (123, 12300, 3, 12, 10, 68, NULL, NULL, 5, NULL, 70, 110, 80, 55, 80, 105, NULL),
    -- #124: Jynx (Forewarn is Gen IV+)
    (124, 12400, 3, 6, 11, 12, NULL, NULL, 10, NULL, 65, 50, 35, 115, 95, 95, NULL),
    -- #125: Electabuzz
    (125, 12500, 3, 4, NULL, 9, NULL, NULL, 10, NULL, 65, 83, 57, 95, 85, 105, NULL),
    -- #126: Magmar
    (126, 12600, 3, 2, NULL, 49, NULL, NULL, 10, NULL, 65, 95, 57, 100, 85, 93, NULL),
    -- #127: Pinsir (Mold Breaker is Gen IV+)
    (127, 12700, 3, 12, NULL, 52, NULL, NULL, 5, NULL, 65, 125, 100, 55, 70, 85, NULL),
    -- #128: Tauros (Anger Point is Gen IV+)
    (128, 12800, 3, 1, NULL, 22, NULL, NULL, 7, NULL, 75, 100, 95, 40, 70, 110, NULL),
    -- #129-130: Magikarp line
    (129, 12900, 3, 3, NULL, 33, NULL, NULL, 3, 13, 20, 10, 55, 15, 20, 80, NULL),
    (130, 13000, 3, 3, 10, 22, NULL, NULL, 3, 13, 95, 125, 79, 60, 100, 81, NULL),
    -- #131: Lapras
    (131, 13100, 3, 3, 6, 11, 75, NULL, 1, 2, 130, 85, 80, 85, 95, 60, NULL),
    -- #132: Ditto
    (132, 13200, 3, 1, NULL, 7, NULL, NULL, 14, NULL, 48, 48, 48, 48, 48, 48, NULL),
    -- #133: Eevee (Adaptability is Gen IV+)
    (133, 13300, 3, 1, NULL, 50, NULL, NULL, 7, NULL, 55, 55, 50, 45, 65, 55, NULL),
    -- #134-136: Eeveelutions (Gen 1)
    (134, 13400, 3, 3, NULL, 11, NULL, NULL, 7, NULL, 130, 65, 60, 110, 95, 65, NULL),
    (135, 13500, 3, 4, NULL, 10, NULL, NULL, 7, NULL, 65, 65, 60, 110, 95, 130, NULL),
    (136, 13600, 3, 2, NULL, 18, NULL, NULL, 7, NULL, 65, 130, 60, 95, 110, 65, NULL),
    -- #137: Porygon (Download is Gen IV+)
    (137, 13700, 3, 1, NULL, 36, NULL, NULL, 11, NULL, 65, 60, 70, 85, 75, 40, NULL),
    -- #138-139: Omanyte line
    (138, 13800, 3, 13, 3, 33, 75, NULL, 2, 4, 35, 40, 100, 90, 55, 35, NULL),
    (139, 13900, 3, 13, 3, 33, 75, NULL, 2, 4, 70, 60, 125, 115, 70, 55, NULL),
    -- #140-141: Kabuto line
    (140, 14000, 3, 13, 3, 33, 4, NULL, 2, 4, 30, 80, 90, 55, 45, 55, NULL),
    (141, 14100, 3, 13, 3, 33, 4, NULL, 2, 4, 60, 115, 105, 65, 70, 80, NULL),
    -- #142: Aerodactyl
    (142, 14200, 3, 13, 10, 69, 46, NULL, 6, NULL, 80, 105, 65, 60, 75, 130, NULL),
    -- #143: Snorlax
    (143, 14300, 3, 1, NULL, 17, 47, NULL, 1, NULL, 160, 110, 65, 65, 110, 30, NULL),
    -- #144-146: Legendary Birds
    (144, 14400, 3, 6, 10, 46, NULL, NULL, 15, NULL, 90, 85, 100, 95, 125, 85, NULL),
    (145, 14500, 3, 4, 10, 46, NULL, NULL, 15, NULL, 90, 90, 85, 125, 90, 100, NULL),
    (146, 14600, 3, 2, 10, 46, NULL, NULL, 15, NULL, 90, 100, 90, 125, 85, 90, NULL),
    -- #147-149: Dratini line
    (147, 14700, 3, 15, NULL, 61, NULL, NULL, 2, 13, 41, 64, 45, 50, 50, 50, NULL),
    (148, 14800, 3, 15, NULL, 61, NULL, NULL, 2, 13, 61, 84, 65, 70, 70, 70, NULL),
    (149, 14900, 3, 15, 10, 39, NULL, NULL, 2, 13, 91, 134, 95, 100, 100, 80, NULL),
    -- #150-151: Mewtwo, Mew
    (150, 15000, 3, 11, NULL, 46, NULL, NULL, 15, NULL, 106, 110, 90, 154, 90, 130, NULL),
    (151, 15100, 3, 11, NULL, 28, NULL, NULL, 15, NULL, 100, 100, 100, 100, 100, 100, NULL);