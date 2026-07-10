-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation I Pokémon learnset raw pages, using the RGB
-- level column and RB-gated TM/HM rows for Red / Blue scope.
-- Cross-check: Serebii Gen I Pokedex learnset pages and PokemonDB Generation
-- 1 Red / Blue learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Red / Blue
-- Pokémon: #001-#050
-- Rows: 1269
-- Scope: direct level-up, TM, and HM acquisition rows only. Yellow-only,
-- reminder, prior-evolution, event, and transfer sections are intentionally
-- excluded from this Red / Blue direct learnset seed.
-- ============================================================================
INSERT INTO reference.pokemon_learnsets (
  species_id,
  form_id,
  move_id,
  version_group_id,
  game_id,
  learn_method_id,
  level_learned_at,
  source_item_id,
  move_machine_id,
  condition_summary,
  sort_order
)
VALUES
  -- Bulbasaur - Tackle - Level 1
  (1, 100, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bulbasaur - Growl - Level 1
  (1, 100, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bulbasaur - Leech Seed - Level 7
  (1, 100, 73, 1, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Bulbasaur - Vine Whip - Level 13
  (1, 100, 22, 1, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Bulbasaur - Poison Powder - Level 20
  (1, 100, 77, 1, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Bulbasaur - Razor Leaf - Level 27
  (1, 100, 75, 1, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Bulbasaur - Growth - Level 34
  (1, 100, 74, 1, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Bulbasaur - Sleep Powder - Level 41
  (1, 100, 79, 1, NULL, 1, 41, NULL, NULL, NULL, 8),
  -- Bulbasaur - Solar Beam - Level 48
  (1, 100, 76, 1, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Bulbasaur - Swords Dance - TM03
  (1, 100, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 10),
  -- Bulbasaur - Toxic - TM06
  (1, 100, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Bulbasaur - Body Slam - TM08
  (1, 100, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 12),
  -- Bulbasaur - Take Down - TM09
  (1, 100, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Bulbasaur - Double-Edge - TM10
  (1, 100, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Bulbasaur - Rage - TM20
  (1, 100, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 15),
  -- Bulbasaur - Mega Drain - TM21
  (1, 100, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 16),
  -- Bulbasaur - Solar Beam - TM22
  (1, 100, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 17),
  -- Bulbasaur - Mimic - TM31
  (1, 100, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 18),
  -- Bulbasaur - Double Team - TM32
  (1, 100, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 19),
  -- Bulbasaur - Reflect - TM33
  (1, 100, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 20),
  -- Bulbasaur - Bide - TM34
  (1, 100, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 21),
  -- Bulbasaur - Rest - TM44
  (1, 100, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 22),
  -- Bulbasaur - Substitute - TM50
  (1, 100, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 23),
  -- Bulbasaur - Cut - HM01
  (1, 100, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 24),
  -- Ivysaur - Tackle - Level 1
  (2, 200, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ivysaur - Growl - Level 1
  (2, 200, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ivysaur - Leech Seed - Level 1
  (2, 200, 73, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ivysaur - Leech Seed - Level 7
  (2, 200, 73, 1, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Ivysaur - Vine Whip - Level 13
  (2, 200, 22, 1, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Ivysaur - Poison Powder - Level 22
  (2, 200, 77, 1, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Ivysaur - Razor Leaf - Level 30
  (2, 200, 75, 1, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Ivysaur - Growth - Level 38
  (2, 200, 74, 1, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Ivysaur - Sleep Powder - Level 46
  (2, 200, 79, 1, NULL, 1, 46, NULL, NULL, NULL, 9),
  -- Ivysaur - Solar Beam - Level 54
  (2, 200, 76, 1, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Ivysaur - Swords Dance - TM03
  (2, 200, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 11),
  -- Ivysaur - Toxic - TM06
  (2, 200, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 12),
  -- Ivysaur - Body Slam - TM08
  (2, 200, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 13),
  -- Ivysaur - Take Down - TM09
  (2, 200, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 14),
  -- Ivysaur - Double-Edge - TM10
  (2, 200, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 15),
  -- Ivysaur - Rage - TM20
  (2, 200, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 16),
  -- Ivysaur - Mega Drain - TM21
  (2, 200, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 17),
  -- Ivysaur - Solar Beam - TM22
  (2, 200, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 18),
  -- Ivysaur - Mimic - TM31
  (2, 200, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 19),
  -- Ivysaur - Double Team - TM32
  (2, 200, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 20),
  -- Ivysaur - Reflect - TM33
  (2, 200, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 21),
  -- Ivysaur - Bide - TM34
  (2, 200, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 22),
  -- Ivysaur - Rest - TM44
  (2, 200, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 23),
  -- Ivysaur - Substitute - TM50
  (2, 200, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 24),
  -- Ivysaur - Cut - HM01
  (2, 200, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 25),
  -- Venusaur - Tackle - Level 1
  (3, 300, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venusaur - Growl - Level 1
  (3, 300, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venusaur - Leech Seed - Level 1
  (3, 300, 73, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Venusaur - Vine Whip - Level 1
  (3, 300, 22, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Venusaur - Leech Seed - Level 7
  (3, 300, 73, 1, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Venusaur - Vine Whip - Level 13
  (3, 300, 22, 1, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Venusaur - Poison Powder - Level 22
  (3, 300, 77, 1, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Venusaur - Razor Leaf - Level 30
  (3, 300, 75, 1, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Venusaur - Growth - Level 43
  (3, 300, 74, 1, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Venusaur - Sleep Powder - Level 55
  (3, 300, 79, 1, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Venusaur - Solar Beam - Level 65
  (3, 300, 76, 1, NULL, 1, 65, NULL, NULL, NULL, 11),
  -- Venusaur - Swords Dance - TM03
  (3, 300, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 12),
  -- Venusaur - Toxic - TM06
  (3, 300, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 13),
  -- Venusaur - Body Slam - TM08
  (3, 300, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 14),
  -- Venusaur - Take Down - TM09
  (3, 300, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 15),
  -- Venusaur - Double-Edge - TM10
  (3, 300, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 16),
  -- Venusaur - Hyper Beam - TM15
  (3, 300, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 17),
  -- Venusaur - Rage - TM20
  (3, 300, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 18),
  -- Venusaur - Mega Drain - TM21
  (3, 300, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 19),
  -- Venusaur - Solar Beam - TM22
  (3, 300, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 20),
  -- Venusaur - Mimic - TM31
  (3, 300, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 21),
  -- Venusaur - Double Team - TM32
  (3, 300, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 22),
  -- Venusaur - Reflect - TM33
  (3, 300, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 23),
  -- Venusaur - Bide - TM34
  (3, 300, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 24),
  -- Venusaur - Rest - TM44
  (3, 300, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 25),
  -- Venusaur - Substitute - TM50
  (3, 300, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 26),
  -- Venusaur - Cut - HM01
  (3, 300, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 27),
  -- Charmander - Scratch - Level 1
  (4, 400, 10, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charmander - Growl - Level 1
  (4, 400, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charmander - Ember - Level 9
  (4, 400, 52, 1, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Charmander - Leer - Level 15
  (4, 400, 43, 1, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Charmander - Rage - Level 22
  (4, 400, 99, 1, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Charmander - Slash - Level 30
  (4, 400, 163, 1, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Charmander - Flamethrower - Level 38
  (4, 400, 53, 1, NULL, 1, 38, NULL, NULL, NULL, 7),
  -- Charmander - Fire Spin - Level 46
  (4, 400, 83, 1, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Charmander - Mega Punch - TM01
  (4, 400, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 9),
  -- Charmander - Swords Dance - TM03
  (4, 400, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 10),
  -- Charmander - Mega Kick - TM05
  (4, 400, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 11),
  -- Charmander - Toxic - TM06
  (4, 400, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 12),
  -- Charmander - Body Slam - TM08
  (4, 400, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 13),
  -- Charmander - Take Down - TM09
  (4, 400, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 14),
  -- Charmander - Double-Edge - TM10
  (4, 400, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 15),
  -- Charmander - Submission - TM17
  (4, 400, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 16),
  -- Charmander - Counter - TM18
  (4, 400, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 17),
  -- Charmander - Seismic Toss - TM19
  (4, 400, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 18),
  -- Charmander - Rage - TM20
  (4, 400, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 19),
  -- Charmander - Dragon Rage - TM23
  (4, 400, 82, 1, NULL, 2, NULL, NULL, 1002023, NULL, 20),
  -- Charmander - Dig - TM28
  (4, 400, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 21),
  -- Charmander - Mimic - TM31
  (4, 400, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 22),
  -- Charmander - Double Team - TM32
  (4, 400, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 23),
  -- Charmander - Reflect - TM33
  (4, 400, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 24),
  -- Charmander - Bide - TM34
  (4, 400, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 25),
  -- Charmander - Fire Blast - TM38
  (4, 400, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 26),
  -- Charmander - Swift - TM39
  (4, 400, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 27),
  -- Charmander - Skull Bash - TM40
  (4, 400, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 28),
  -- Charmander - Rest - TM44
  (4, 400, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 29),
  -- Charmander - Substitute - TM50
  (4, 400, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 30),
  -- Charmander - Cut - HM01
  (4, 400, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 31),
  -- Charmander - Strength - HM04
  (4, 400, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 32),
  -- Charmeleon - Scratch - Level 1
  (5, 500, 10, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charmeleon - Growl - Level 1
  (5, 500, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charmeleon - Ember - Level 1
  (5, 500, 52, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charmeleon - Ember - Level 9
  (5, 500, 52, 1, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Charmeleon - Leer - Level 15
  (5, 500, 43, 1, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Charmeleon - Rage - Level 24
  (5, 500, 99, 1, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Charmeleon - Slash - Level 33
  (5, 500, 163, 1, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Charmeleon - Flamethrower - Level 42
  (5, 500, 53, 1, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Charmeleon - Fire Spin - Level 56
  (5, 500, 83, 1, NULL, 1, 56, NULL, NULL, NULL, 9),
  -- Charmeleon - Mega Punch - TM01
  (5, 500, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 10),
  -- Charmeleon - Swords Dance - TM03
  (5, 500, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 11),
  -- Charmeleon - Mega Kick - TM05
  (5, 500, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 12),
  -- Charmeleon - Toxic - TM06
  (5, 500, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 13),
  -- Charmeleon - Body Slam - TM08
  (5, 500, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 14),
  -- Charmeleon - Take Down - TM09
  (5, 500, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 15),
  -- Charmeleon - Double-Edge - TM10
  (5, 500, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 16),
  -- Charmeleon - Submission - TM17
  (5, 500, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 17),
  -- Charmeleon - Counter - TM18
  (5, 500, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 18),
  -- Charmeleon - Seismic Toss - TM19
  (5, 500, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 19),
  -- Charmeleon - Rage - TM20
  (5, 500, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 20),
  -- Charmeleon - Dragon Rage - TM23
  (5, 500, 82, 1, NULL, 2, NULL, NULL, 1002023, NULL, 21),
  -- Charmeleon - Dig - TM28
  (5, 500, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 22),
  -- Charmeleon - Mimic - TM31
  (5, 500, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 23),
  -- Charmeleon - Double Team - TM32
  (5, 500, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 24),
  -- Charmeleon - Reflect - TM33
  (5, 500, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 25),
  -- Charmeleon - Bide - TM34
  (5, 500, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 26),
  -- Charmeleon - Fire Blast - TM38
  (5, 500, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 27),
  -- Charmeleon - Swift - TM39
  (5, 500, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 28),
  -- Charmeleon - Skull Bash - TM40
  (5, 500, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 29),
  -- Charmeleon - Rest - TM44
  (5, 500, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 30),
  -- Charmeleon - Substitute - TM50
  (5, 500, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 31),
  -- Charmeleon - Cut - HM01
  (5, 500, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 32),
  -- Charmeleon - Strength - HM04
  (5, 500, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 33),
  -- Charizard - Scratch - Level 1
  (6, 600, 10, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charizard - Growl - Level 1
  (6, 600, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charizard - Ember - Level 1
  (6, 600, 52, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charizard - Leer - Level 1
  (6, 600, 43, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Charizard - Ember - Level 9
  (6, 600, 52, 1, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Charizard - Leer - Level 15
  (6, 600, 43, 1, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Charizard - Rage - Level 24
  (6, 600, 99, 1, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Charizard - Slash - Level 36
  (6, 600, 163, 1, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Charizard - Flamethrower - Level 46
  (6, 600, 53, 1, NULL, 1, 46, NULL, NULL, NULL, 9),
  -- Charizard - Fire Spin - Level 55
  (6, 600, 83, 1, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Charizard - Mega Punch - TM01
  (6, 600, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 11),
  -- Charizard - Swords Dance - TM03
  (6, 600, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 12),
  -- Charizard - Mega Kick - TM05
  (6, 600, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 13),
  -- Charizard - Toxic - TM06
  (6, 600, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 14),
  -- Charizard - Body Slam - TM08
  (6, 600, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 15),
  -- Charizard - Take Down - TM09
  (6, 600, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 16),
  -- Charizard - Double-Edge - TM10
  (6, 600, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 17),
  -- Charizard - Hyper Beam - TM15
  (6, 600, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 18),
  -- Charizard - Submission - TM17
  (6, 600, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 19),
  -- Charizard - Counter - TM18
  (6, 600, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 20),
  -- Charizard - Seismic Toss - TM19
  (6, 600, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 21),
  -- Charizard - Rage - TM20
  (6, 600, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 22),
  -- Charizard - Dragon Rage - TM23
  (6, 600, 82, 1, NULL, 2, NULL, NULL, 1002023, NULL, 23),
  -- Charizard - Earthquake - TM26
  (6, 600, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 24),
  -- Charizard - Fissure - TM27
  (6, 600, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 25),
  -- Charizard - Dig - TM28
  (6, 600, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 26),
  -- Charizard - Mimic - TM31
  (6, 600, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 27),
  -- Charizard - Double Team - TM32
  (6, 600, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 28),
  -- Charizard - Reflect - TM33
  (6, 600, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 29),
  -- Charizard - Bide - TM34
  (6, 600, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 30),
  -- Charizard - Fire Blast - TM38
  (6, 600, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 31),
  -- Charizard - Swift - TM39
  (6, 600, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 32),
  -- Charizard - Skull Bash - TM40
  (6, 600, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 33),
  -- Charizard - Rest - TM44
  (6, 600, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 34),
  -- Charizard - Substitute - TM50
  (6, 600, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 35),
  -- Charizard - Cut - HM01
  (6, 600, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 36),
  -- Charizard - Strength - HM04
  (6, 600, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 37),
  -- Squirtle - Tackle - Level 1
  (7, 700, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Squirtle - Tail Whip - Level 1
  (7, 700, 39, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Squirtle - Bubble - Level 8
  (7, 700, 145, 1, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Squirtle - Water Gun - Level 15
  (7, 700, 55, 1, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Squirtle - Bite - Level 22
  (7, 700, 44, 1, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Squirtle - Withdraw - Level 28
  (7, 700, 110, 1, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Squirtle - Skull Bash - Level 35
  (7, 700, 130, 1, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Squirtle - Hydro Pump - Level 42
  (7, 700, 56, 1, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Squirtle - Mega Punch - TM01
  (7, 700, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 9),
  -- Squirtle - Mega Kick - TM05
  (7, 700, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 10),
  -- Squirtle - Toxic - TM06
  (7, 700, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Squirtle - Body Slam - TM08
  (7, 700, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 12),
  -- Squirtle - Take Down - TM09
  (7, 700, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Squirtle - Double-Edge - TM10
  (7, 700, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Squirtle - Bubble Beam - TM11
  (7, 700, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 15),
  -- Squirtle - Water Gun - TM12
  (7, 700, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 16),
  -- Squirtle - Ice Beam - TM13
  (7, 700, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 17),
  -- Squirtle - Blizzard - TM14
  (7, 700, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 18),
  -- Squirtle - Submission - TM17
  (7, 700, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 19),
  -- Squirtle - Counter - TM18
  (7, 700, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 20),
  -- Squirtle - Seismic Toss - TM19
  (7, 700, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 21),
  -- Squirtle - Rage - TM20
  (7, 700, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 22),
  -- Squirtle - Dig - TM28
  (7, 700, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 23),
  -- Squirtle - Mimic - TM31
  (7, 700, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 24),
  -- Squirtle - Double Team - TM32
  (7, 700, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 25),
  -- Squirtle - Reflect - TM33
  (7, 700, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 26),
  -- Squirtle - Bide - TM34
  (7, 700, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 27),
  -- Squirtle - Skull Bash - TM40
  (7, 700, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 28),
  -- Squirtle - Rest - TM44
  (7, 700, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 29),
  -- Squirtle - Substitute - TM50
  (7, 700, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 30),
  -- Squirtle - Surf - HM03
  (7, 700, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 31),
  -- Squirtle - Strength - HM04
  (7, 700, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 32),
  -- Wartortle - Tackle - Level 1
  (8, 800, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wartortle - Tail Whip - Level 1
  (8, 800, 39, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wartortle - Bubble - Level 1
  (8, 800, 145, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wartortle - Bubble - Level 8
  (8, 800, 145, 1, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Wartortle - Water Gun - Level 15
  (8, 800, 55, 1, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Wartortle - Bite - Level 24
  (8, 800, 44, 1, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Wartortle - Withdraw - Level 31
  (8, 800, 110, 1, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Wartortle - Skull Bash - Level 39
  (8, 800, 130, 1, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Wartortle - Hydro Pump - Level 47
  (8, 800, 56, 1, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Wartortle - Mega Punch - TM01
  (8, 800, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 10),
  -- Wartortle - Mega Kick - TM05
  (8, 800, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 11),
  -- Wartortle - Toxic - TM06
  (8, 800, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 12),
  -- Wartortle - Body Slam - TM08
  (8, 800, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 13),
  -- Wartortle - Take Down - TM09
  (8, 800, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 14),
  -- Wartortle - Double-Edge - TM10
  (8, 800, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 15),
  -- Wartortle - Bubble Beam - TM11
  (8, 800, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 16),
  -- Wartortle - Water Gun - TM12
  (8, 800, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 17),
  -- Wartortle - Ice Beam - TM13
  (8, 800, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 18),
  -- Wartortle - Blizzard - TM14
  (8, 800, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 19),
  -- Wartortle - Submission - TM17
  (8, 800, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 20),
  -- Wartortle - Counter - TM18
  (8, 800, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 21),
  -- Wartortle - Seismic Toss - TM19
  (8, 800, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 22),
  -- Wartortle - Rage - TM20
  (8, 800, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 23),
  -- Wartortle - Dig - TM28
  (8, 800, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 24),
  -- Wartortle - Mimic - TM31
  (8, 800, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 25),
  -- Wartortle - Double Team - TM32
  (8, 800, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 26),
  -- Wartortle - Reflect - TM33
  (8, 800, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 27),
  -- Wartortle - Bide - TM34
  (8, 800, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 28),
  -- Wartortle - Skull Bash - TM40
  (8, 800, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 29),
  -- Wartortle - Rest - TM44
  (8, 800, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 30),
  -- Wartortle - Substitute - TM50
  (8, 800, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 31),
  -- Wartortle - Surf - HM03
  (8, 800, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 32),
  -- Wartortle - Strength - HM04
  (8, 800, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 33),
  -- Blastoise - Tackle - Level 1
  (9, 900, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blastoise - Tail Whip - Level 1
  (9, 900, 39, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blastoise - Bubble - Level 1
  (9, 900, 145, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Blastoise - Water Gun - Level 1
  (9, 900, 55, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Blastoise - Bubble - Level 8
  (9, 900, 145, 1, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Blastoise - Water Gun - Level 15
  (9, 900, 55, 1, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Blastoise - Bite - Level 24
  (9, 900, 44, 1, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Blastoise - Withdraw - Level 31
  (9, 900, 110, 1, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Blastoise - Skull Bash - Level 42
  (9, 900, 130, 1, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Blastoise - Hydro Pump - Level 52
  (9, 900, 56, 1, NULL, 1, 52, NULL, NULL, NULL, 10),
  -- Blastoise - Mega Punch - TM01
  (9, 900, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 11),
  -- Blastoise - Mega Kick - TM05
  (9, 900, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 12),
  -- Blastoise - Toxic - TM06
  (9, 900, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 13),
  -- Blastoise - Body Slam - TM08
  (9, 900, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 14),
  -- Blastoise - Take Down - TM09
  (9, 900, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 15),
  -- Blastoise - Double-Edge - TM10
  (9, 900, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 16),
  -- Blastoise - Bubble Beam - TM11
  (9, 900, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 17),
  -- Blastoise - Water Gun - TM12
  (9, 900, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 18),
  -- Blastoise - Ice Beam - TM13
  (9, 900, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 19),
  -- Blastoise - Blizzard - TM14
  (9, 900, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 20),
  -- Blastoise - Hyper Beam - TM15
  (9, 900, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 21),
  -- Blastoise - Submission - TM17
  (9, 900, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 22),
  -- Blastoise - Counter - TM18
  (9, 900, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 23),
  -- Blastoise - Seismic Toss - TM19
  (9, 900, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 24),
  -- Blastoise - Rage - TM20
  (9, 900, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 25),
  -- Blastoise - Earthquake - TM26
  (9, 900, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 26),
  -- Blastoise - Fissure - TM27
  (9, 900, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 27),
  -- Blastoise - Dig - TM28
  (9, 900, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 28),
  -- Blastoise - Mimic - TM31
  (9, 900, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 29),
  -- Blastoise - Double Team - TM32
  (9, 900, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 30),
  -- Blastoise - Reflect - TM33
  (9, 900, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 31),
  -- Blastoise - Bide - TM34
  (9, 900, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 32),
  -- Blastoise - Skull Bash - TM40
  (9, 900, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 33),
  -- Blastoise - Rest - TM44
  (9, 900, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 34),
  -- Blastoise - Substitute - TM50
  (9, 900, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 35),
  -- Blastoise - Surf - HM03
  (9, 900, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 36),
  -- Blastoise - Strength - HM04
  (9, 900, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 37),
  -- Caterpie - Tackle - Level 1
  (10, 1000, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Caterpie - String Shot - Level 1
  (10, 1000, 81, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Metapod - Harden - Level 1
  (11, 1100, 106, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Butterfree - Confusion - Level 1
  (12, 1200, 93, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Butterfree - Confusion - Level 12
  (12, 1200, 93, 1, NULL, 1, 12, NULL, NULL, NULL, 2),
  -- Butterfree - Poison Powder - Level 15
  (12, 1200, 77, 1, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Butterfree - Stun Spore - Level 16
  (12, 1200, 78, 1, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Butterfree - Sleep Powder - Level 17
  (12, 1200, 79, 1, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Butterfree - Supersonic - Level 21
  (12, 1200, 48, 1, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Butterfree - Whirlwind - Level 26
  (12, 1200, 18, 1, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Butterfree - Psybeam - Level 32
  (12, 1200, 60, 1, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Butterfree - Razor Wind - TM02
  (12, 1200, 13, 1, NULL, 2, NULL, NULL, 1002002, NULL, 9),
  -- Butterfree - Whirlwind - TM04
  (12, 1200, 18, 1, NULL, 2, NULL, NULL, 1002004, NULL, 10),
  -- Butterfree - Toxic - TM06
  (12, 1200, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Butterfree - Take Down - TM09
  (12, 1200, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Butterfree - Double-Edge - TM10
  (12, 1200, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Butterfree - Hyper Beam - TM15
  (12, 1200, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 14),
  -- Butterfree - Rage - TM20
  (12, 1200, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 15),
  -- Butterfree - Mega Drain - TM21
  (12, 1200, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 16),
  -- Butterfree - Solar Beam - TM22
  (12, 1200, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 17),
  -- Butterfree - Psychic - TM29
  (12, 1200, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 18),
  -- Butterfree - Teleport - TM30
  (12, 1200, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 19),
  -- Butterfree - Mimic - TM31
  (12, 1200, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 20),
  -- Butterfree - Double Team - TM32
  (12, 1200, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 21),
  -- Butterfree - Reflect - TM33
  (12, 1200, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 22),
  -- Butterfree - Bide - TM34
  (12, 1200, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 23),
  -- Butterfree - Swift - TM39
  (12, 1200, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 24),
  -- Butterfree - Rest - TM44
  (12, 1200, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 25),
  -- Butterfree - Psywave - TM46
  (12, 1200, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 26),
  -- Butterfree - Substitute - TM50
  (12, 1200, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 27),
  -- Weedle - Poison Sting - Level 1
  (13, 1300, 40, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weedle - String Shot - Level 1
  (13, 1300, 81, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kakuna - Harden - Level 1
  (14, 1400, 106, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beedrill - Fury Attack - Level 1
  (15, 1500, 31, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beedrill - Fury Attack - Level 12
  (15, 1500, 31, 1, NULL, 1, 12, NULL, NULL, NULL, 2),
  -- Beedrill - Focus Energy - Level 16
  (15, 1500, 116, 1, NULL, 1, 16, NULL, NULL, NULL, 3),
  -- Beedrill - Twineedle - Level 20
  (15, 1500, 41, 1, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Beedrill - Rage - Level 25
  (15, 1500, 99, 1, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Beedrill - Pin Missile - Level 30
  (15, 1500, 42, 1, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Beedrill - Agility - Level 35
  (15, 1500, 97, 1, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Beedrill - Swords Dance - TM03
  (15, 1500, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 8),
  -- Beedrill - Toxic - TM06
  (15, 1500, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Beedrill - Take Down - TM09
  (15, 1500, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Beedrill - Double-Edge - TM10
  (15, 1500, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Beedrill - Hyper Beam - TM15
  (15, 1500, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 12),
  -- Beedrill - Rage - TM20
  (15, 1500, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 13),
  -- Beedrill - Mega Drain - TM21
  (15, 1500, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 14),
  -- Beedrill - Mimic - TM31
  (15, 1500, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 15),
  -- Beedrill - Double Team - TM32
  (15, 1500, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 16),
  -- Beedrill - Reflect - TM33
  (15, 1500, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 17),
  -- Beedrill - Bide - TM34
  (15, 1500, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 18),
  -- Beedrill - Swift - TM39
  (15, 1500, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 19),
  -- Beedrill - Skull Bash - TM40
  (15, 1500, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 20),
  -- Beedrill - Rest - TM44
  (15, 1500, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 21),
  -- Beedrill - Substitute - TM50
  (15, 1500, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 22),
  -- Beedrill - Cut - HM01
  (15, 1500, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 23),
  -- Pidgey - Gust - Level 1
  (16, 1600, 16, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgey - Sand Attack - Level 5
  (16, 1600, 28, 1, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Pidgey - Quick Attack - Level 12
  (16, 1600, 98, 1, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Pidgey - Whirlwind - Level 19
  (16, 1600, 18, 1, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Pidgey - Wing Attack - Level 28
  (16, 1600, 17, 1, NULL, 1, 28, NULL, NULL, NULL, 5),
  -- Pidgey - Agility - Level 36
  (16, 1600, 97, 1, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Pidgey - Mirror Move - Level 44
  (16, 1600, 119, 1, NULL, 1, 44, NULL, NULL, NULL, 7),
  -- Pidgey - Razor Wind - TM02
  (16, 1600, 13, 1, NULL, 2, NULL, NULL, 1002002, NULL, 8),
  -- Pidgey - Whirlwind - TM04
  (16, 1600, 18, 1, NULL, 2, NULL, NULL, 1002004, NULL, 9),
  -- Pidgey - Toxic - TM06
  (16, 1600, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Pidgey - Take Down - TM09
  (16, 1600, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Pidgey - Double-Edge - TM10
  (16, 1600, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Pidgey - Rage - TM20
  (16, 1600, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 13),
  -- Pidgey - Mimic - TM31
  (16, 1600, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 14),
  -- Pidgey - Double Team - TM32
  (16, 1600, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 15),
  -- Pidgey - Reflect - TM33
  (16, 1600, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 16),
  -- Pidgey - Bide - TM34
  (16, 1600, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 17),
  -- Pidgey - Swift - TM39
  (16, 1600, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 18),
  -- Pidgey - Sky Attack - TM43
  (16, 1600, 143, 1, NULL, 2, NULL, NULL, 1002043, NULL, 19),
  -- Pidgey - Rest - TM44
  (16, 1600, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 20),
  -- Pidgey - Substitute - TM50
  (16, 1600, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 21),
  -- Pidgey - Fly - HM02
  (16, 1600, 19, 1, NULL, 3, NULL, NULL, 1003002, NULL, 22),
  -- Pidgeotto - Gust - Level 1
  (17, 1700, 16, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgeotto - Sand Attack - Level 1
  (17, 1700, 28, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pidgeotto - Sand Attack - Level 5
  (17, 1700, 28, 1, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Pidgeotto - Quick Attack - Level 12
  (17, 1700, 98, 1, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Pidgeotto - Whirlwind - Level 21
  (17, 1700, 18, 1, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Pidgeotto - Wing Attack - Level 31
  (17, 1700, 17, 1, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Pidgeotto - Agility - Level 40
  (17, 1700, 97, 1, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Pidgeotto - Mirror Move - Level 49
  (17, 1700, 119, 1, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Pidgeotto - Razor Wind - TM02
  (17, 1700, 13, 1, NULL, 2, NULL, NULL, 1002002, NULL, 9),
  -- Pidgeotto - Whirlwind - TM04
  (17, 1700, 18, 1, NULL, 2, NULL, NULL, 1002004, NULL, 10),
  -- Pidgeotto - Toxic - TM06
  (17, 1700, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Pidgeotto - Take Down - TM09
  (17, 1700, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Pidgeotto - Double-Edge - TM10
  (17, 1700, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Pidgeotto - Rage - TM20
  (17, 1700, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 14),
  -- Pidgeotto - Mimic - TM31
  (17, 1700, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 15),
  -- Pidgeotto - Double Team - TM32
  (17, 1700, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 16),
  -- Pidgeotto - Reflect - TM33
  (17, 1700, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 17),
  -- Pidgeotto - Bide - TM34
  (17, 1700, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 18),
  -- Pidgeotto - Swift - TM39
  (17, 1700, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 19),
  -- Pidgeotto - Sky Attack - TM43
  (17, 1700, 143, 1, NULL, 2, NULL, NULL, 1002043, NULL, 20),
  -- Pidgeotto - Rest - TM44
  (17, 1700, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 21),
  -- Pidgeotto - Substitute - TM50
  (17, 1700, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 22),
  -- Pidgeotto - Fly - HM02
  (17, 1700, 19, 1, NULL, 3, NULL, NULL, 1003002, NULL, 23),
  -- Pidgeot - Gust - Level 1
  (18, 1800, 16, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgeot - Sand Attack - Level 1
  (18, 1800, 28, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pidgeot - Quick Attack - Level 1
  (18, 1800, 98, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pidgeot - Sand Attack - Level 5
  (18, 1800, 28, 1, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Pidgeot - Quick Attack - Level 12
  (18, 1800, 98, 1, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pidgeot - Whirlwind - Level 21
  (18, 1800, 18, 1, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Pidgeot - Wing Attack - Level 31
  (18, 1800, 17, 1, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Pidgeot - Agility - Level 44
  (18, 1800, 97, 1, NULL, 1, 44, NULL, NULL, NULL, 8),
  -- Pidgeot - Mirror Move - Level 54
  (18, 1800, 119, 1, NULL, 1, 54, NULL, NULL, NULL, 9),
  -- Pidgeot - Razor Wind - TM02
  (18, 1800, 13, 1, NULL, 2, NULL, NULL, 1002002, NULL, 10),
  -- Pidgeot - Whirlwind - TM04
  (18, 1800, 18, 1, NULL, 2, NULL, NULL, 1002004, NULL, 11),
  -- Pidgeot - Toxic - TM06
  (18, 1800, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 12),
  -- Pidgeot - Take Down - TM09
  (18, 1800, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Pidgeot - Double-Edge - TM10
  (18, 1800, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Pidgeot - Hyper Beam - TM15
  (18, 1800, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 15),
  -- Pidgeot - Rage - TM20
  (18, 1800, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 16),
  -- Pidgeot - Mimic - TM31
  (18, 1800, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 17),
  -- Pidgeot - Double Team - TM32
  (18, 1800, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 18),
  -- Pidgeot - Reflect - TM33
  (18, 1800, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 19),
  -- Pidgeot - Bide - TM34
  (18, 1800, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Pidgeot - Swift - TM39
  (18, 1800, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 21),
  -- Pidgeot - Sky Attack - TM43
  (18, 1800, 143, 1, NULL, 2, NULL, NULL, 1002043, NULL, 22),
  -- Pidgeot - Rest - TM44
  (18, 1800, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 23),
  -- Pidgeot - Substitute - TM50
  (18, 1800, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 24),
  -- Pidgeot - Fly - HM02
  (18, 1800, 19, 1, NULL, 3, NULL, NULL, 1003002, NULL, 25),
  -- Rattata - Tackle - Level 1
  (19, 1900, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rattata - Tail Whip - Level 1
  (19, 1900, 39, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rattata - Quick Attack - Level 7
  (19, 1900, 98, 1, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Rattata - Hyper Fang - Level 14
  (19, 1900, 158, 1, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Rattata - Focus Energy - Level 23
  (19, 1900, 116, 1, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Rattata - Super Fang - Level 34
  (19, 1900, 162, 1, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Rattata - Toxic - TM06
  (19, 1900, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 7),
  -- Rattata - Body Slam - TM08
  (19, 1900, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 8),
  -- Rattata - Take Down - TM09
  (19, 1900, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 9),
  -- Rattata - Double-Edge - TM10
  (19, 1900, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 10),
  -- Rattata - Bubble Beam - TM11
  (19, 1900, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 11),
  -- Rattata - Water Gun - TM12
  (19, 1900, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 12),
  -- Rattata - Blizzard - TM14
  (19, 1900, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 13),
  -- Rattata - Rage - TM20
  (19, 1900, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 14),
  -- Rattata - Thunderbolt - TM24
  (19, 1900, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 15),
  -- Rattata - Thunder - TM25
  (19, 1900, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 16),
  -- Rattata - Dig - TM28
  (19, 1900, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 17),
  -- Rattata - Mimic - TM31
  (19, 1900, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 18),
  -- Rattata - Double Team - TM32
  (19, 1900, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 19),
  -- Rattata - Bide - TM34
  (19, 1900, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Rattata - Swift - TM39
  (19, 1900, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 21),
  -- Rattata - Skull Bash - TM40
  (19, 1900, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 22),
  -- Rattata - Rest - TM44
  (19, 1900, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 23),
  -- Rattata - Substitute - TM50
  (19, 1900, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 24),
  -- Raticate - Tackle - Level 1
  (20, 2000, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raticate - Tail Whip - Level 1
  (20, 2000, 39, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raticate - Quick Attack - Level 1
  (20, 2000, 98, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raticate - Quick Attack - Level 7
  (20, 2000, 98, 1, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Raticate - Hyper Fang - Level 14
  (20, 2000, 158, 1, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Raticate - Focus Energy - Level 27
  (20, 2000, 116, 1, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Raticate - Super Fang - Level 41
  (20, 2000, 162, 1, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Raticate - Toxic - TM06
  (20, 2000, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Raticate - Body Slam - TM08
  (20, 2000, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 9),
  -- Raticate - Take Down - TM09
  (20, 2000, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Raticate - Double-Edge - TM10
  (20, 2000, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Raticate - Bubble Beam - TM11
  (20, 2000, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 12),
  -- Raticate - Water Gun - TM12
  (20, 2000, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 13),
  -- Raticate - Ice Beam - TM13
  (20, 2000, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 14),
  -- Raticate - Blizzard - TM14
  (20, 2000, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 15),
  -- Raticate - Hyper Beam - TM15
  (20, 2000, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 16),
  -- Raticate - Rage - TM20
  (20, 2000, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 17),
  -- Raticate - Thunderbolt - TM24
  (20, 2000, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 18),
  -- Raticate - Thunder - TM25
  (20, 2000, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 19),
  -- Raticate - Dig - TM28
  (20, 2000, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 20),
  -- Raticate - Mimic - TM31
  (20, 2000, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 21),
  -- Raticate - Double Team - TM32
  (20, 2000, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 22),
  -- Raticate - Bide - TM34
  (20, 2000, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 23),
  -- Raticate - Swift - TM39
  (20, 2000, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 24),
  -- Raticate - Skull Bash - TM40
  (20, 2000, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 25),
  -- Raticate - Rest - TM44
  (20, 2000, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 26),
  -- Raticate - Substitute - TM50
  (20, 2000, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 27),
  -- Spearow - Peck - Level 1
  (21, 2100, 64, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spearow - Growl - Level 1
  (21, 2100, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spearow - Leer - Level 9
  (21, 2100, 43, 1, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Spearow - Fury Attack - Level 15
  (21, 2100, 31, 1, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Spearow - Mirror Move - Level 22
  (21, 2100, 119, 1, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Spearow - Drill Peck - Level 29
  (21, 2100, 65, 1, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Spearow - Agility - Level 36
  (21, 2100, 97, 1, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Spearow - Razor Wind - TM02
  (21, 2100, 13, 1, NULL, 2, NULL, NULL, 1002002, NULL, 8),
  -- Spearow - Whirlwind - TM04
  (21, 2100, 18, 1, NULL, 2, NULL, NULL, 1002004, NULL, 9),
  -- Spearow - Toxic - TM06
  (21, 2100, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Spearow - Take Down - TM09
  (21, 2100, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Spearow - Double-Edge - TM10
  (21, 2100, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Spearow - Rage - TM20
  (21, 2100, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 13),
  -- Spearow - Mimic - TM31
  (21, 2100, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 14),
  -- Spearow - Double Team - TM32
  (21, 2100, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 15),
  -- Spearow - Bide - TM34
  (21, 2100, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 16),
  -- Spearow - Swift - TM39
  (21, 2100, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 17),
  -- Spearow - Sky Attack - TM43
  (21, 2100, 143, 1, NULL, 2, NULL, NULL, 1002043, NULL, 18),
  -- Spearow - Rest - TM44
  (21, 2100, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 19),
  -- Spearow - Substitute - TM50
  (21, 2100, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 20),
  -- Spearow - Fly - HM02
  (21, 2100, 19, 1, NULL, 3, NULL, NULL, 1003002, NULL, 21),
  -- Fearow - Peck - Level 1
  (22, 2200, 64, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fearow - Growl - Level 1
  (22, 2200, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fearow - Leer - Level 1
  (22, 2200, 43, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Fearow - Leer - Level 9
  (22, 2200, 43, 1, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Fearow - Fury Attack - Level 15
  (22, 2200, 31, 1, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Fearow - Mirror Move - Level 25
  (22, 2200, 119, 1, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Fearow - Drill Peck - Level 34
  (22, 2200, 65, 1, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Fearow - Agility - Level 43
  (22, 2200, 97, 1, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Fearow - Razor Wind - TM02
  (22, 2200, 13, 1, NULL, 2, NULL, NULL, 1002002, NULL, 9),
  -- Fearow - Whirlwind - TM04
  (22, 2200, 18, 1, NULL, 2, NULL, NULL, 1002004, NULL, 10),
  -- Fearow - Toxic - TM06
  (22, 2200, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Fearow - Take Down - TM09
  (22, 2200, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Fearow - Double-Edge - TM10
  (22, 2200, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Fearow - Hyper Beam - TM15
  (22, 2200, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 14),
  -- Fearow - Rage - TM20
  (22, 2200, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 15),
  -- Fearow - Mimic - TM31
  (22, 2200, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 16),
  -- Fearow - Double Team - TM32
  (22, 2200, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 17),
  -- Fearow - Bide - TM34
  (22, 2200, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 18),
  -- Fearow - Swift - TM39
  (22, 2200, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 19),
  -- Fearow - Sky Attack - TM43
  (22, 2200, 143, 1, NULL, 2, NULL, NULL, 1002043, NULL, 20),
  -- Fearow - Rest - TM44
  (22, 2200, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 21),
  -- Fearow - Substitute - TM50
  (22, 2200, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 22),
  -- Fearow - Fly - HM02
  (22, 2200, 19, 1, NULL, 3, NULL, NULL, 1003002, NULL, 23),
  -- Ekans - Wrap - Level 1
  (23, 2300, 35, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ekans - Leer - Level 1
  (23, 2300, 43, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ekans - Poison Sting - Level 10
  (23, 2300, 40, 1, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Ekans - Bite - Level 17
  (23, 2300, 44, 1, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Ekans - Glare - Level 24
  (23, 2300, 137, 1, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Ekans - Screech - Level 31
  (23, 2300, 103, 1, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Ekans - Acid - Level 38
  (23, 2300, 51, 1, NULL, 1, 38, NULL, NULL, NULL, 7),
  -- Ekans - Toxic - TM06
  (23, 2300, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Ekans - Body Slam - TM08
  (23, 2300, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 9),
  -- Ekans - Take Down - TM09
  (23, 2300, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Ekans - Double-Edge - TM10
  (23, 2300, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Ekans - Rage - TM20
  (23, 2300, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 12),
  -- Ekans - Mega Drain - TM21
  (23, 2300, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 13),
  -- Ekans - Earthquake - TM26
  (23, 2300, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 14),
  -- Ekans - Fissure - TM27
  (23, 2300, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 15),
  -- Ekans - Dig - TM28
  (23, 2300, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 16),
  -- Ekans - Mimic - TM31
  (23, 2300, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 17),
  -- Ekans - Double Team - TM32
  (23, 2300, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 18),
  -- Ekans - Bide - TM34
  (23, 2300, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 19),
  -- Ekans - Skull Bash - TM40
  (23, 2300, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 20),
  -- Ekans - Rest - TM44
  (23, 2300, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 21),
  -- Ekans - Rock Slide - TM48
  (23, 2300, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 22),
  -- Ekans - Substitute - TM50
  (23, 2300, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 23),
  -- Ekans - Strength - HM04
  (23, 2300, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 24),
  -- Arbok - Wrap - Level 1
  (24, 2400, 35, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arbok - Leer - Level 1
  (24, 2400, 43, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arbok - Poison Sting - Level 1
  (24, 2400, 40, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arbok - Poison Sting - Level 10
  (24, 2400, 40, 1, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Arbok - Bite - Level 17
  (24, 2400, 44, 1, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Arbok - Glare - Level 27
  (24, 2400, 137, 1, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Arbok - Screech - Level 36
  (24, 2400, 103, 1, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Arbok - Acid - Level 47
  (24, 2400, 51, 1, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Arbok - Toxic - TM06
  (24, 2400, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Arbok - Body Slam - TM08
  (24, 2400, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 10),
  -- Arbok - Take Down - TM09
  (24, 2400, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Arbok - Double-Edge - TM10
  (24, 2400, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Arbok - Hyper Beam - TM15
  (24, 2400, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 13),
  -- Arbok - Rage - TM20
  (24, 2400, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 14),
  -- Arbok - Mega Drain - TM21
  (24, 2400, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 15),
  -- Arbok - Earthquake - TM26
  (24, 2400, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 16),
  -- Arbok - Fissure - TM27
  (24, 2400, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 17),
  -- Arbok - Dig - TM28
  (24, 2400, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 18),
  -- Arbok - Mimic - TM31
  (24, 2400, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 19),
  -- Arbok - Double Team - TM32
  (24, 2400, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 20),
  -- Arbok - Bide - TM34
  (24, 2400, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 21),
  -- Arbok - Skull Bash - TM40
  (24, 2400, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 22),
  -- Arbok - Rest - TM44
  (24, 2400, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 23),
  -- Arbok - Rock Slide - TM48
  (24, 2400, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 24),
  -- Arbok - Substitute - TM50
  (24, 2400, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 25),
  -- Arbok - Strength - HM04
  (24, 2400, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 26),
  -- Pikachu - Thunder Shock - Level 1
  (25, 2500, 84, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pikachu - Growl - Level 1
  (25, 2500, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pikachu - Thunder Wave - Level 9
  (25, 2500, 86, 1, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Pikachu - Quick Attack - Level 16
  (25, 2500, 98, 1, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Pikachu - Agility - Level 33
  (25, 2500, 97, 1, NULL, 1, 33, NULL, NULL, NULL, 5),
  -- Pikachu - Thunder - Level 43
  (25, 2500, 87, 1, NULL, 1, 43, NULL, NULL, NULL, 6),
  -- Pikachu - Swift - Level 26
  (25, 2500, 129, 1, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Pikachu - Mega Punch - TM01
  (25, 2500, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 8),
  -- Pikachu - Mega Kick - TM05
  (25, 2500, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 9),
  -- Pikachu - Toxic - TM06
  (25, 2500, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Pikachu - Body Slam - TM08
  (25, 2500, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Pikachu - Take Down - TM09
  (25, 2500, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Pikachu - Double-Edge - TM10
  (25, 2500, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Pikachu - Pay Day - TM16
  (25, 2500, 6, 1, NULL, 2, NULL, NULL, 1002016, NULL, 14),
  -- Pikachu - Submission - TM17
  (25, 2500, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 15),
  -- Pikachu - Seismic Toss - TM19
  (25, 2500, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 16),
  -- Pikachu - Rage - TM20
  (25, 2500, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 17),
  -- Pikachu - Thunderbolt - TM24
  (25, 2500, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 18),
  -- Pikachu - Thunder - TM25
  (25, 2500, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 19),
  -- Pikachu - Mimic - TM31
  (25, 2500, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 20),
  -- Pikachu - Double Team - TM32
  (25, 2500, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 21),
  -- Pikachu - Reflect - TM33
  (25, 2500, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 22),
  -- Pikachu - Bide - TM34
  (25, 2500, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 23),
  -- Pikachu - Swift - TM39
  (25, 2500, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 24),
  -- Pikachu - Skull Bash - TM40
  (25, 2500, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 25),
  -- Pikachu - Rest - TM44
  (25, 2500, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 26),
  -- Pikachu - Thunder Wave - TM45
  (25, 2500, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 27),
  -- Pikachu - Substitute - TM50
  (25, 2500, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 28),
  -- Pikachu - Flash - HM05
  (25, 2500, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 29),
  -- Raichu - Thunder Shock - Level 1
  (26, 2600, 84, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raichu - Growl - Level 1
  (26, 2600, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raichu - Thunder Wave - Level 1
  (26, 2600, 86, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raichu - Mega Punch - TM01
  (26, 2600, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 4),
  -- Raichu - Mega Kick - TM05
  (26, 2600, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 5),
  -- Raichu - Toxic - TM06
  (26, 2600, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 6),
  -- Raichu - Body Slam - TM08
  (26, 2600, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 7),
  -- Raichu - Take Down - TM09
  (26, 2600, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 8),
  -- Raichu - Double-Edge - TM10
  (26, 2600, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 9),
  -- Raichu - Hyper Beam - TM15
  (26, 2600, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 10),
  -- Raichu - Pay Day - TM16
  (26, 2600, 6, 1, NULL, 2, NULL, NULL, 1002016, NULL, 11),
  -- Raichu - Submission - TM17
  (26, 2600, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 12),
  -- Raichu - Seismic Toss - TM19
  (26, 2600, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 13),
  -- Raichu - Rage - TM20
  (26, 2600, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 14),
  -- Raichu - Thunderbolt - TM24
  (26, 2600, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 15),
  -- Raichu - Thunder - TM25
  (26, 2600, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 16),
  -- Raichu - Mimic - TM31
  (26, 2600, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 17),
  -- Raichu - Double Team - TM32
  (26, 2600, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 18),
  -- Raichu - Reflect - TM33
  (26, 2600, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 19),
  -- Raichu - Bide - TM34
  (26, 2600, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Raichu - Swift - TM39
  (26, 2600, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 21),
  -- Raichu - Skull Bash - TM40
  (26, 2600, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 22),
  -- Raichu - Rest - TM44
  (26, 2600, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 23),
  -- Raichu - Thunder Wave - TM45
  (26, 2600, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 24),
  -- Raichu - Substitute - TM50
  (26, 2600, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 25),
  -- Raichu - Flash - HM05
  (26, 2600, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 26),
  -- Sandshrew - Scratch - Level 1
  (27, 2700, 10, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandshrew - Sand Attack - Level 10
  (27, 2700, 28, 1, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Sandshrew - Slash - Level 17
  (27, 2700, 163, 1, NULL, 1, 17, NULL, NULL, NULL, 3),
  -- Sandshrew - Poison Sting - Level 24
  (27, 2700, 40, 1, NULL, 1, 24, NULL, NULL, NULL, 4),
  -- Sandshrew - Swift - Level 31
  (27, 2700, 129, 1, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Sandshrew - Fury Swipes - Level 38
  (27, 2700, 154, 1, NULL, 1, 38, NULL, NULL, NULL, 6),
  -- Sandshrew - Swords Dance - TM03
  (27, 2700, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 7),
  -- Sandshrew - Toxic - TM06
  (27, 2700, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Sandshrew - Body Slam - TM08
  (27, 2700, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 9),
  -- Sandshrew - Take Down - TM09
  (27, 2700, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Sandshrew - Double-Edge - TM10
  (27, 2700, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Sandshrew - Submission - TM17
  (27, 2700, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 12),
  -- Sandshrew - Seismic Toss - TM19
  (27, 2700, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 13),
  -- Sandshrew - Rage - TM20
  (27, 2700, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 14),
  -- Sandshrew - Earthquake - TM26
  (27, 2700, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 15),
  -- Sandshrew - Fissure - TM27
  (27, 2700, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 16),
  -- Sandshrew - Dig - TM28
  (27, 2700, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 17),
  -- Sandshrew - Mimic - TM31
  (27, 2700, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 18),
  -- Sandshrew - Double Team - TM32
  (27, 2700, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 19),
  -- Sandshrew - Bide - TM34
  (27, 2700, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Sandshrew - Swift - TM39
  (27, 2700, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 21),
  -- Sandshrew - Skull Bash - TM40
  (27, 2700, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 22),
  -- Sandshrew - Rest - TM44
  (27, 2700, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 23),
  -- Sandshrew - Rock Slide - TM48
  (27, 2700, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 24),
  -- Sandshrew - Substitute - TM50
  (27, 2700, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 25),
  -- Sandshrew - Cut - HM01
  (27, 2700, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 26),
  -- Sandshrew - Strength - HM04
  (27, 2700, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 27),
  -- Sandslash - Scratch - Level 1
  (28, 2800, 10, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandslash - Sand Attack - Level 1
  (28, 2800, 28, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandslash - Sand Attack - Level 10
  (28, 2800, 28, 1, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Sandslash - Slash - Level 17
  (28, 2800, 163, 1, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Sandslash - Poison Sting - Level 27
  (28, 2800, 40, 1, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Sandslash - Swift - Level 36
  (28, 2800, 129, 1, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Sandslash - Fury Swipes - Level 47
  (28, 2800, 154, 1, NULL, 1, 47, NULL, NULL, NULL, 7),
  -- Sandslash - Swords Dance - TM03
  (28, 2800, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 8),
  -- Sandslash - Toxic - TM06
  (28, 2800, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Sandslash - Body Slam - TM08
  (28, 2800, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 10),
  -- Sandslash - Take Down - TM09
  (28, 2800, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Sandslash - Double-Edge - TM10
  (28, 2800, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Sandslash - Hyper Beam - TM15
  (28, 2800, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 13),
  -- Sandslash - Submission - TM17
  (28, 2800, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 14),
  -- Sandslash - Seismic Toss - TM19
  (28, 2800, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 15),
  -- Sandslash - Rage - TM20
  (28, 2800, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 16),
  -- Sandslash - Earthquake - TM26
  (28, 2800, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 17),
  -- Sandslash - Fissure - TM27
  (28, 2800, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 18),
  -- Sandslash - Dig - TM28
  (28, 2800, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 19),
  -- Sandslash - Mimic - TM31
  (28, 2800, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 20),
  -- Sandslash - Double Team - TM32
  (28, 2800, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 21),
  -- Sandslash - Bide - TM34
  (28, 2800, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 22),
  -- Sandslash - Swift - TM39
  (28, 2800, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 23),
  -- Sandslash - Skull Bash - TM40
  (28, 2800, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 24),
  -- Sandslash - Rest - TM44
  (28, 2800, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 25),
  -- Sandslash - Rock Slide - TM48
  (28, 2800, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 26),
  -- Sandslash - Substitute - TM50
  (28, 2800, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 27),
  -- Sandslash - Cut - HM01
  (28, 2800, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 28),
  -- Sandslash - Strength - HM04
  (28, 2800, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 29),
  -- Nidoran F - Growl - Level 1
  (29, 2900, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoran F - Tackle - Level 1
  (29, 2900, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoran F - Scratch - Level 8
  (29, 2900, 10, 1, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Nidoran F - Double Kick - Level 43
  (29, 2900, 24, 1, NULL, 1, 43, NULL, NULL, NULL, 4),
  -- Nidoran F - Poison Sting - Level 14
  (29, 2900, 40, 1, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Nidoran F - Tail Whip - Level 21
  (29, 2900, 39, 1, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Nidoran F - Bite - Level 29
  (29, 2900, 44, 1, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Nidoran F - Fury Swipes - Level 36
  (29, 2900, 154, 1, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Nidoran F - Toxic - TM06
  (29, 2900, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Nidoran F - Body Slam - TM08
  (29, 2900, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 10),
  -- Nidoran F - Take Down - TM09
  (29, 2900, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Nidoran F - Double-Edge - TM10
  (29, 2900, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Nidoran F - Blizzard - TM14
  (29, 2900, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 13),
  -- Nidoran F - Rage - TM20
  (29, 2900, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 14),
  -- Nidoran F - Thunderbolt - TM24
  (29, 2900, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 15),
  -- Nidoran F - Thunder - TM25
  (29, 2900, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 16),
  -- Nidoran F - Mimic - TM31
  (29, 2900, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 17),
  -- Nidoran F - Double Team - TM32
  (29, 2900, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 18),
  -- Nidoran F - Reflect - TM33
  (29, 2900, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 19),
  -- Nidoran F - Bide - TM34
  (29, 2900, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Nidoran F - Skull Bash - TM40
  (29, 2900, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 21),
  -- Nidoran F - Rest - TM44
  (29, 2900, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 22),
  -- Nidoran F - Substitute - TM50
  (29, 2900, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 23),
  -- Nidorina - Growl - Level 1
  (30, 3000, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidorina - Tackle - Level 1
  (30, 3000, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidorina - Scratch - Level 1
  (30, 3000, 10, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidorina - Scratch - Level 8
  (30, 3000, 10, 1, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Nidorina - Double Kick - Level 50
  (30, 3000, 24, 1, NULL, 1, 50, NULL, NULL, NULL, 5),
  -- Nidorina - Poison Sting - Level 14
  (30, 3000, 40, 1, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Nidorina - Tail Whip - Level 23
  (30, 3000, 39, 1, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Nidorina - Bite - Level 32
  (30, 3000, 44, 1, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Nidorina - Fury Swipes - Level 41
  (30, 3000, 154, 1, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Nidorina - Toxic - TM06
  (30, 3000, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Nidorina - Horn Drill - TM07
  (30, 3000, 32, 1, NULL, 2, NULL, NULL, 1002007, NULL, 11),
  -- Nidorina - Body Slam - TM08
  (30, 3000, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 12),
  -- Nidorina - Take Down - TM09
  (30, 3000, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Nidorina - Double-Edge - TM10
  (30, 3000, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Nidorina - Bubble Beam - TM11
  (30, 3000, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 15),
  -- Nidorina - Water Gun - TM12
  (30, 3000, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 16),
  -- Nidorina - Ice Beam - TM13
  (30, 3000, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 17),
  -- Nidorina - Blizzard - TM14
  (30, 3000, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 18),
  -- Nidorina - Rage - TM20
  (30, 3000, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 19),
  -- Nidorina - Thunderbolt - TM24
  (30, 3000, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 20),
  -- Nidorina - Thunder - TM25
  (30, 3000, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 21),
  -- Nidorina - Mimic - TM31
  (30, 3000, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 22),
  -- Nidorina - Double Team - TM32
  (30, 3000, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 23),
  -- Nidorina - Reflect - TM33
  (30, 3000, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 24),
  -- Nidorina - Bide - TM34
  (30, 3000, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 25),
  -- Nidorina - Skull Bash - TM40
  (30, 3000, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 26),
  -- Nidorina - Rest - TM44
  (30, 3000, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 27),
  -- Nidorina - Substitute - TM50
  (30, 3000, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 28),
  -- Nidoqueen - Tackle - Level 1
  (31, 3100, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoqueen - Scratch - Level 1
  (31, 3100, 10, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoqueen - Tail Whip - Level 1
  (31, 3100, 39, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidoqueen - Body Slam - Level 1
  (31, 3100, 34, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nidoqueen - Scratch - Level 8
  (31, 3100, 10, 1, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Nidoqueen - Body Slam - Level 23
  (31, 3100, 34, 1, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Nidoqueen - Poison Sting - Level 14
  (31, 3100, 40, 1, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Nidoqueen - Mega Punch - TM01
  (31, 3100, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 8),
  -- Nidoqueen - Mega Kick - TM05
  (31, 3100, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 9),
  -- Nidoqueen - Toxic - TM06
  (31, 3100, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Nidoqueen - Horn Drill - TM07
  (31, 3100, 32, 1, NULL, 2, NULL, NULL, 1002007, NULL, 11),
  -- Nidoqueen - Body Slam - TM08
  (31, 3100, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 12),
  -- Nidoqueen - Take Down - TM09
  (31, 3100, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Nidoqueen - Double-Edge - TM10
  (31, 3100, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Nidoqueen - Bubble Beam - TM11
  (31, 3100, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 15),
  -- Nidoqueen - Water Gun - TM12
  (31, 3100, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 16),
  -- Nidoqueen - Ice Beam - TM13
  (31, 3100, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 17),
  -- Nidoqueen - Blizzard - TM14
  (31, 3100, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 18),
  -- Nidoqueen - Hyper Beam - TM15
  (31, 3100, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 19),
  -- Nidoqueen - Pay Day - TM16
  (31, 3100, 6, 1, NULL, 2, NULL, NULL, 1002016, NULL, 20),
  -- Nidoqueen - Submission - TM17
  (31, 3100, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 21),
  -- Nidoqueen - Counter - TM18
  (31, 3100, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 22),
  -- Nidoqueen - Seismic Toss - TM19
  (31, 3100, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 23),
  -- Nidoqueen - Rage - TM20
  (31, 3100, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 24),
  -- Nidoqueen - Thunderbolt - TM24
  (31, 3100, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 25),
  -- Nidoqueen - Thunder - TM25
  (31, 3100, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 26),
  -- Nidoqueen - Earthquake - TM26
  (31, 3100, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 27),
  -- Nidoqueen - Fissure - TM27
  (31, 3100, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 28),
  -- Nidoqueen - Mimic - TM31
  (31, 3100, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 29),
  -- Nidoqueen - Double Team - TM32
  (31, 3100, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 30),
  -- Nidoqueen - Reflect - TM33
  (31, 3100, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 31),
  -- Nidoqueen - Bide - TM34
  (31, 3100, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 32),
  -- Nidoqueen - Fire Blast - TM38
  (31, 3100, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 33),
  -- Nidoqueen - Skull Bash - TM40
  (31, 3100, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 34),
  -- Nidoqueen - Rest - TM44
  (31, 3100, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 35),
  -- Nidoqueen - Rock Slide - TM48
  (31, 3100, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 36),
  -- Nidoqueen - Substitute - TM50
  (31, 3100, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 37),
  -- Nidoqueen - Surf - HM03
  (31, 3100, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 38),
  -- Nidoqueen - Strength - HM04
  (31, 3100, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 39),
  -- Nidoran M - Leer - Level 1
  (32, 3200, 43, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoran M - Tackle - Level 1
  (32, 3200, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoran M - Horn Attack - Level 8
  (32, 3200, 30, 1, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Nidoran M - Double Kick - Level 43
  (32, 3200, 24, 1, NULL, 1, 43, NULL, NULL, NULL, 4),
  -- Nidoran M - Poison Sting - Level 14
  (32, 3200, 40, 1, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Nidoran M - Focus Energy - Level 21
  (32, 3200, 116, 1, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Nidoran M - Fury Attack - Level 29
  (32, 3200, 31, 1, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Nidoran M - Horn Drill - Level 36
  (32, 3200, 32, 1, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Nidoran M - Toxic - TM06
  (32, 3200, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Nidoran M - Horn Drill - TM07
  (32, 3200, 32, 1, NULL, 2, NULL, NULL, 1002007, NULL, 10),
  -- Nidoran M - Body Slam - TM08
  (32, 3200, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Nidoran M - Take Down - TM09
  (32, 3200, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Nidoran M - Double-Edge - TM10
  (32, 3200, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Nidoran M - Blizzard - TM14
  (32, 3200, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 14),
  -- Nidoran M - Rage - TM20
  (32, 3200, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 15),
  -- Nidoran M - Thunderbolt - TM24
  (32, 3200, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 16),
  -- Nidoran M - Thunder - TM25
  (32, 3200, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 17),
  -- Nidoran M - Mimic - TM31
  (32, 3200, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 18),
  -- Nidoran M - Double Team - TM32
  (32, 3200, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 19),
  -- Nidoran M - Reflect - TM33
  (32, 3200, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 20),
  -- Nidoran M - Bide - TM34
  (32, 3200, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 21),
  -- Nidoran M - Skull Bash - TM40
  (32, 3200, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 22),
  -- Nidoran M - Rest - TM44
  (32, 3200, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 23),
  -- Nidoran M - Substitute - TM50
  (32, 3200, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 24),
  -- Nidorino - Leer - Level 1
  (33, 3300, 43, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidorino - Tackle - Level 1
  (33, 3300, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidorino - Horn Attack - Level 1
  (33, 3300, 30, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidorino - Horn Attack - Level 8
  (33, 3300, 30, 1, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Nidorino - Double Kick - Level 50
  (33, 3300, 24, 1, NULL, 1, 50, NULL, NULL, NULL, 5),
  -- Nidorino - Poison Sting - Level 14
  (33, 3300, 40, 1, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Nidorino - Focus Energy - Level 23
  (33, 3300, 116, 1, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Nidorino - Fury Attack - Level 32
  (33, 3300, 31, 1, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Nidorino - Horn Drill - Level 41
  (33, 3300, 32, 1, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Nidorino - Toxic - TM06
  (33, 3300, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Nidorino - Horn Drill - TM07
  (33, 3300, 32, 1, NULL, 2, NULL, NULL, 1002007, NULL, 11),
  -- Nidorino - Body Slam - TM08
  (33, 3300, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 12),
  -- Nidorino - Take Down - TM09
  (33, 3300, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Nidorino - Double-Edge - TM10
  (33, 3300, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Nidorino - Bubble Beam - TM11
  (33, 3300, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 15),
  -- Nidorino - Water Gun - TM12
  (33, 3300, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 16),
  -- Nidorino - Ice Beam - TM13
  (33, 3300, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 17),
  -- Nidorino - Blizzard - TM14
  (33, 3300, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 18),
  -- Nidorino - Rage - TM20
  (33, 3300, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 19),
  -- Nidorino - Thunderbolt - TM24
  (33, 3300, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 20),
  -- Nidorino - Thunder - TM25
  (33, 3300, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 21),
  -- Nidorino - Mimic - TM31
  (33, 3300, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 22),
  -- Nidorino - Double Team - TM32
  (33, 3300, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 23),
  -- Nidorino - Reflect - TM33
  (33, 3300, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 24),
  -- Nidorino - Bide - TM34
  (33, 3300, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 25),
  -- Nidorino - Skull Bash - TM40
  (33, 3300, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 26),
  -- Nidorino - Rest - TM44
  (33, 3300, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 27),
  -- Nidorino - Substitute - TM50
  (33, 3300, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 28),
  -- Nidoking - Tackle - Level 1
  (34, 3400, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoking - Horn Attack - Level 1
  (34, 3400, 30, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoking - Poison Sting - Level 1
  (34, 3400, 40, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidoking - Thrash - Level 1
  (34, 3400, 37, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nidoking - Horn Attack - Level 8
  (34, 3400, 30, 1, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Nidoking - Poison Sting - Level 14
  (34, 3400, 40, 1, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Nidoking - Thrash - Level 23
  (34, 3400, 37, 1, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Nidoking - Mega Punch - TM01
  (34, 3400, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 8),
  -- Nidoking - Mega Kick - TM05
  (34, 3400, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 9),
  -- Nidoking - Toxic - TM06
  (34, 3400, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Nidoking - Horn Drill - TM07
  (34, 3400, 32, 1, NULL, 2, NULL, NULL, 1002007, NULL, 11),
  -- Nidoking - Body Slam - TM08
  (34, 3400, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 12),
  -- Nidoking - Take Down - TM09
  (34, 3400, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Nidoking - Double-Edge - TM10
  (34, 3400, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Nidoking - Bubble Beam - TM11
  (34, 3400, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 15),
  -- Nidoking - Water Gun - TM12
  (34, 3400, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 16),
  -- Nidoking - Ice Beam - TM13
  (34, 3400, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 17),
  -- Nidoking - Blizzard - TM14
  (34, 3400, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 18),
  -- Nidoking - Hyper Beam - TM15
  (34, 3400, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 19),
  -- Nidoking - Pay Day - TM16
  (34, 3400, 6, 1, NULL, 2, NULL, NULL, 1002016, NULL, 20),
  -- Nidoking - Submission - TM17
  (34, 3400, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 21),
  -- Nidoking - Counter - TM18
  (34, 3400, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 22),
  -- Nidoking - Seismic Toss - TM19
  (34, 3400, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 23),
  -- Nidoking - Rage - TM20
  (34, 3400, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 24),
  -- Nidoking - Thunderbolt - TM24
  (34, 3400, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 25),
  -- Nidoking - Thunder - TM25
  (34, 3400, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 26),
  -- Nidoking - Earthquake - TM26
  (34, 3400, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 27),
  -- Nidoking - Fissure - TM27
  (34, 3400, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 28),
  -- Nidoking - Mimic - TM31
  (34, 3400, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 29),
  -- Nidoking - Double Team - TM32
  (34, 3400, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 30),
  -- Nidoking - Reflect - TM33
  (34, 3400, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 31),
  -- Nidoking - Bide - TM34
  (34, 3400, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 32),
  -- Nidoking - Fire Blast - TM38
  (34, 3400, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 33),
  -- Nidoking - Skull Bash - TM40
  (34, 3400, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 34),
  -- Nidoking - Rest - TM44
  (34, 3400, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 35),
  -- Nidoking - Rock Slide - TM48
  (34, 3400, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 36),
  -- Nidoking - Substitute - TM50
  (34, 3400, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 37),
  -- Nidoking - Surf - HM03
  (34, 3400, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 38),
  -- Nidoking - Strength - HM04
  (34, 3400, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 39),
  -- Clefairy - Pound - Level 1
  (35, 3500, 1, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefairy - Growl - Level 1
  (35, 3500, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clefairy - Sing - Level 13
  (35, 3500, 47, 1, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Clefairy - Double Slap - Level 18
  (35, 3500, 3, 1, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Clefairy - Minimize - Level 24
  (35, 3500, 107, 1, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Clefairy - Metronome - Level 31
  (35, 3500, 118, 1, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Clefairy - Defense Curl - Level 39
  (35, 3500, 111, 1, NULL, 1, 39, NULL, NULL, NULL, 7),
  -- Clefairy - Light Screen - Level 48
  (35, 3500, 113, 1, NULL, 1, 48, NULL, NULL, NULL, 8),
  -- Clefairy - Mega Punch - TM01
  (35, 3500, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 9),
  -- Clefairy - Mega Kick - TM05
  (35, 3500, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 10),
  -- Clefairy - Toxic - TM06
  (35, 3500, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Clefairy - Body Slam - TM08
  (35, 3500, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 12),
  -- Clefairy - Take Down - TM09
  (35, 3500, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Clefairy - Double-Edge - TM10
  (35, 3500, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Clefairy - Bubble Beam - TM11
  (35, 3500, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 15),
  -- Clefairy - Water Gun - TM12
  (35, 3500, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 16),
  -- Clefairy - Ice Beam - TM13
  (35, 3500, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 17),
  -- Clefairy - Blizzard - TM14
  (35, 3500, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 18),
  -- Clefairy - Submission - TM17
  (35, 3500, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 19),
  -- Clefairy - Counter - TM18
  (35, 3500, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 20),
  -- Clefairy - Seismic Toss - TM19
  (35, 3500, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 21),
  -- Clefairy - Rage - TM20
  (35, 3500, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 22),
  -- Clefairy - Solar Beam - TM22
  (35, 3500, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 23),
  -- Clefairy - Thunderbolt - TM24
  (35, 3500, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 24),
  -- Clefairy - Thunder - TM25
  (35, 3500, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 25),
  -- Clefairy - Psychic - TM29
  (35, 3500, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 26),
  -- Clefairy - Teleport - TM30
  (35, 3500, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 27),
  -- Clefairy - Mimic - TM31
  (35, 3500, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 28),
  -- Clefairy - Double Team - TM32
  (35, 3500, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 29),
  -- Clefairy - Reflect - TM33
  (35, 3500, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 30),
  -- Clefairy - Bide - TM34
  (35, 3500, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 31),
  -- Clefairy - Metronome - TM35
  (35, 3500, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 32),
  -- Clefairy - Fire Blast - TM38
  (35, 3500, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 33),
  -- Clefairy - Skull Bash - TM40
  (35, 3500, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 34),
  -- Clefairy - Rest - TM44
  (35, 3500, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 35),
  -- Clefairy - Thunder Wave - TM45
  (35, 3500, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 36),
  -- Clefairy - Psywave - TM46
  (35, 3500, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 37),
  -- Clefairy - Tri Attack - TM49
  (35, 3500, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 38),
  -- Clefairy - Substitute - TM50
  (35, 3500, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 39),
  -- Clefairy - Strength - HM04
  (35, 3500, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 40),
  -- Clefairy - Flash - HM05
  (35, 3500, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 41),
  -- Clefable - Sing - Level 1
  (36, 3600, 47, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefable - Double Slap - Level 1
  (36, 3600, 3, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clefable - Minimize - Level 1
  (36, 3600, 107, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Clefable - Metronome - Level 1
  (36, 3600, 118, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Clefable - Mega Punch - TM01
  (36, 3600, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 5),
  -- Clefable - Mega Kick - TM05
  (36, 3600, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 6),
  -- Clefable - Toxic - TM06
  (36, 3600, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 7),
  -- Clefable - Body Slam - TM08
  (36, 3600, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 8),
  -- Clefable - Take Down - TM09
  (36, 3600, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 9),
  -- Clefable - Double-Edge - TM10
  (36, 3600, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 10),
  -- Clefable - Bubble Beam - TM11
  (36, 3600, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 11),
  -- Clefable - Water Gun - TM12
  (36, 3600, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 12),
  -- Clefable - Ice Beam - TM13
  (36, 3600, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 13),
  -- Clefable - Blizzard - TM14
  (36, 3600, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 14),
  -- Clefable - Hyper Beam - TM15
  (36, 3600, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 15),
  -- Clefable - Submission - TM17
  (36, 3600, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 16),
  -- Clefable - Counter - TM18
  (36, 3600, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 17),
  -- Clefable - Seismic Toss - TM19
  (36, 3600, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 18),
  -- Clefable - Rage - TM20
  (36, 3600, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 19),
  -- Clefable - Solar Beam - TM22
  (36, 3600, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 20),
  -- Clefable - Thunderbolt - TM24
  (36, 3600, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 21),
  -- Clefable - Thunder - TM25
  (36, 3600, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 22),
  -- Clefable - Psychic - TM29
  (36, 3600, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 23),
  -- Clefable - Teleport - TM30
  (36, 3600, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 24),
  -- Clefable - Mimic - TM31
  (36, 3600, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 25),
  -- Clefable - Double Team - TM32
  (36, 3600, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 26),
  -- Clefable - Reflect - TM33
  (36, 3600, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 27),
  -- Clefable - Bide - TM34
  (36, 3600, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 28),
  -- Clefable - Metronome - TM35
  (36, 3600, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 29),
  -- Clefable - Fire Blast - TM38
  (36, 3600, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 30),
  -- Clefable - Skull Bash - TM40
  (36, 3600, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 31),
  -- Clefable - Rest - TM44
  (36, 3600, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 32),
  -- Clefable - Thunder Wave - TM45
  (36, 3600, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 33),
  -- Clefable - Psywave - TM46
  (36, 3600, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 34),
  -- Clefable - Tri Attack - TM49
  (36, 3600, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 35),
  -- Clefable - Substitute - TM50
  (36, 3600, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 36),
  -- Clefable - Strength - HM04
  (36, 3600, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 37),
  -- Clefable - Flash - HM05
  (36, 3600, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 38),
  -- Vulpix - Ember - Level 1
  (37, 3700, 52, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vulpix - Tail Whip - Level 1
  (37, 3700, 39, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vulpix - Quick Attack - Level 16
  (37, 3700, 98, 1, NULL, 1, 16, NULL, NULL, NULL, 3),
  -- Vulpix - Roar - Level 21
  (37, 3700, 46, 1, NULL, 1, 21, NULL, NULL, NULL, 4),
  -- Vulpix - Confuse Ray - Level 28
  (37, 3700, 109, 1, NULL, 1, 28, NULL, NULL, NULL, 5),
  -- Vulpix - Flamethrower - Level 35
  (37, 3700, 53, 1, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Vulpix - Fire Spin - Level 42
  (37, 3700, 83, 1, NULL, 1, 42, NULL, NULL, NULL, 7),
  -- Vulpix - Toxic - TM06
  (37, 3700, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Vulpix - Body Slam - TM08
  (37, 3700, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 9),
  -- Vulpix - Take Down - TM09
  (37, 3700, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Vulpix - Double-Edge - TM10
  (37, 3700, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Vulpix - Rage - TM20
  (37, 3700, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 12),
  -- Vulpix - Dig - TM28
  (37, 3700, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 13),
  -- Vulpix - Mimic - TM31
  (37, 3700, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 14),
  -- Vulpix - Double Team - TM32
  (37, 3700, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 15),
  -- Vulpix - Reflect - TM33
  (37, 3700, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 16),
  -- Vulpix - Bide - TM34
  (37, 3700, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 17),
  -- Vulpix - Fire Blast - TM38
  (37, 3700, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 18),
  -- Vulpix - Swift - TM39
  (37, 3700, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 19),
  -- Vulpix - Skull Bash - TM40
  (37, 3700, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 20),
  -- Vulpix - Rest - TM44
  (37, 3700, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 21),
  -- Vulpix - Substitute - TM50
  (37, 3700, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 22),
  -- Ninetales - Ember - Level 1
  (38, 3800, 52, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ninetales - Tail Whip - Level 1
  (38, 3800, 39, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ninetales - Quick Attack - Level 1
  (38, 3800, 98, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ninetales - Roar - Level 1
  (38, 3800, 46, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ninetales - Toxic - TM06
  (38, 3800, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 5),
  -- Ninetales - Body Slam - TM08
  (38, 3800, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 6),
  -- Ninetales - Take Down - TM09
  (38, 3800, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 7),
  -- Ninetales - Double-Edge - TM10
  (38, 3800, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 8),
  -- Ninetales - Hyper Beam - TM15
  (38, 3800, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 9),
  -- Ninetales - Rage - TM20
  (38, 3800, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 10),
  -- Ninetales - Dig - TM28
  (38, 3800, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 11),
  -- Ninetales - Mimic - TM31
  (38, 3800, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 12),
  -- Ninetales - Double Team - TM32
  (38, 3800, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 13),
  -- Ninetales - Reflect - TM33
  (38, 3800, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 14),
  -- Ninetales - Bide - TM34
  (38, 3800, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 15),
  -- Ninetales - Fire Blast - TM38
  (38, 3800, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 16),
  -- Ninetales - Swift - TM39
  (38, 3800, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 17),
  -- Ninetales - Skull Bash - TM40
  (38, 3800, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 18),
  -- Ninetales - Rest - TM44
  (38, 3800, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 19),
  -- Ninetales - Substitute - TM50
  (38, 3800, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 20),
  -- Jigglypuff - Sing - Level 1
  (39, 3900, 47, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jigglypuff - Pound - Level 9
  (39, 3900, 1, 1, NULL, 1, 9, NULL, NULL, NULL, 2),
  -- Jigglypuff - Disable - Level 14
  (39, 3900, 50, 1, NULL, 1, 14, NULL, NULL, NULL, 3),
  -- Jigglypuff - Defense Curl - Level 19
  (39, 3900, 111, 1, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Jigglypuff - Double Slap - Level 24
  (39, 3900, 3, 1, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Jigglypuff - Rest - Level 29
  (39, 3900, 156, 1, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Jigglypuff - Body Slam - Level 34
  (39, 3900, 34, 1, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Jigglypuff - Double-Edge - Level 39
  (39, 3900, 38, 1, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Jigglypuff - Mega Punch - TM01
  (39, 3900, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 9),
  -- Jigglypuff - Mega Kick - TM05
  (39, 3900, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 10),
  -- Jigglypuff - Toxic - TM06
  (39, 3900, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Jigglypuff - Body Slam - TM08
  (39, 3900, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 12),
  -- Jigglypuff - Take Down - TM09
  (39, 3900, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Jigglypuff - Double-Edge - TM10
  (39, 3900, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Jigglypuff - Bubble Beam - TM11
  (39, 3900, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 15),
  -- Jigglypuff - Water Gun - TM12
  (39, 3900, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 16),
  -- Jigglypuff - Ice Beam - TM13
  (39, 3900, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 17),
  -- Jigglypuff - Blizzard - TM14
  (39, 3900, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 18),
  -- Jigglypuff - Submission - TM17
  (39, 3900, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 19),
  -- Jigglypuff - Counter - TM18
  (39, 3900, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 20),
  -- Jigglypuff - Seismic Toss - TM19
  (39, 3900, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 21),
  -- Jigglypuff - Rage - TM20
  (39, 3900, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 22),
  -- Jigglypuff - Solar Beam - TM22
  (39, 3900, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 23),
  -- Jigglypuff - Thunderbolt - TM24
  (39, 3900, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 24),
  -- Jigglypuff - Thunder - TM25
  (39, 3900, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 25),
  -- Jigglypuff - Psychic - TM29
  (39, 3900, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 26),
  -- Jigglypuff - Teleport - TM30
  (39, 3900, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 27),
  -- Jigglypuff - Mimic - TM31
  (39, 3900, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 28),
  -- Jigglypuff - Double Team - TM32
  (39, 3900, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 29),
  -- Jigglypuff - Reflect - TM33
  (39, 3900, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 30),
  -- Jigglypuff - Bide - TM34
  (39, 3900, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 31),
  -- Jigglypuff - Fire Blast - TM38
  (39, 3900, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 32),
  -- Jigglypuff - Skull Bash - TM40
  (39, 3900, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 33),
  -- Jigglypuff - Rest - TM44
  (39, 3900, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 34),
  -- Jigglypuff - Thunder Wave - TM45
  (39, 3900, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 35),
  -- Jigglypuff - Psywave - TM46
  (39, 3900, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 36),
  -- Jigglypuff - Tri Attack - TM49
  (39, 3900, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 37),
  -- Jigglypuff - Substitute - TM50
  (39, 3900, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 38),
  -- Jigglypuff - Strength - HM04
  (39, 3900, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 39),
  -- Jigglypuff - Flash - HM05
  (39, 3900, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 40),
  -- Wigglytuff - Sing - Level 1
  (40, 4000, 47, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wigglytuff - Disable - Level 1
  (40, 4000, 50, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wigglytuff - Defense Curl - Level 1
  (40, 4000, 111, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wigglytuff - Double Slap - Level 1
  (40, 4000, 3, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wigglytuff - Mega Punch - TM01
  (40, 4000, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 5),
  -- Wigglytuff - Mega Kick - TM05
  (40, 4000, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 6),
  -- Wigglytuff - Toxic - TM06
  (40, 4000, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 7),
  -- Wigglytuff - Body Slam - TM08
  (40, 4000, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 8),
  -- Wigglytuff - Take Down - TM09
  (40, 4000, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 9),
  -- Wigglytuff - Double-Edge - TM10
  (40, 4000, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 10),
  -- Wigglytuff - Bubble Beam - TM11
  (40, 4000, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 11),
  -- Wigglytuff - Water Gun - TM12
  (40, 4000, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 12),
  -- Wigglytuff - Ice Beam - TM13
  (40, 4000, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 13),
  -- Wigglytuff - Blizzard - TM14
  (40, 4000, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 14),
  -- Wigglytuff - Hyper Beam - TM15
  (40, 4000, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 15),
  -- Wigglytuff - Submission - TM17
  (40, 4000, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 16),
  -- Wigglytuff - Counter - TM18
  (40, 4000, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 17),
  -- Wigglytuff - Seismic Toss - TM19
  (40, 4000, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 18),
  -- Wigglytuff - Rage - TM20
  (40, 4000, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 19),
  -- Wigglytuff - Solar Beam - TM22
  (40, 4000, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 20),
  -- Wigglytuff - Thunderbolt - TM24
  (40, 4000, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 21),
  -- Wigglytuff - Thunder - TM25
  (40, 4000, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 22),
  -- Wigglytuff - Psychic - TM29
  (40, 4000, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 23),
  -- Wigglytuff - Teleport - TM30
  (40, 4000, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 24),
  -- Wigglytuff - Mimic - TM31
  (40, 4000, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 25),
  -- Wigglytuff - Double Team - TM32
  (40, 4000, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 26),
  -- Wigglytuff - Reflect - TM33
  (40, 4000, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 27),
  -- Wigglytuff - Bide - TM34
  (40, 4000, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 28),
  -- Wigglytuff - Fire Blast - TM38
  (40, 4000, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 29),
  -- Wigglytuff - Skull Bash - TM40
  (40, 4000, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 30),
  -- Wigglytuff - Rest - TM44
  (40, 4000, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 31),
  -- Wigglytuff - Thunder Wave - TM45
  (40, 4000, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 32),
  -- Wigglytuff - Psywave - TM46
  (40, 4000, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 33),
  -- Wigglytuff - Tri Attack - TM49
  (40, 4000, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 34),
  -- Wigglytuff - Substitute - TM50
  (40, 4000, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 35),
  -- Wigglytuff - Strength - HM04
  (40, 4000, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 36),
  -- Wigglytuff - Flash - HM05
  (40, 4000, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 37),
  -- Zubat - Leech Life - Level 1
  (41, 4100, 141, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zubat - Supersonic - Level 10
  (41, 4100, 48, 1, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Zubat - Bite - Level 15
  (41, 4100, 44, 1, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Zubat - Confuse Ray - Level 21
  (41, 4100, 109, 1, NULL, 1, 21, NULL, NULL, NULL, 4),
  -- Zubat - Wing Attack - Level 28
  (41, 4100, 17, 1, NULL, 1, 28, NULL, NULL, NULL, 5),
  -- Zubat - Haze - Level 36
  (41, 4100, 114, 1, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Zubat - Razor Wind - TM02
  (41, 4100, 13, 1, NULL, 2, NULL, NULL, 1002002, NULL, 7),
  -- Zubat - Whirlwind - TM04
  (41, 4100, 18, 1, NULL, 2, NULL, NULL, 1002004, NULL, 8),
  -- Zubat - Toxic - TM06
  (41, 4100, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Zubat - Take Down - TM09
  (41, 4100, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Zubat - Double-Edge - TM10
  (41, 4100, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Zubat - Rage - TM20
  (41, 4100, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 12),
  -- Zubat - Mega Drain - TM21
  (41, 4100, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 13),
  -- Zubat - Mimic - TM31
  (41, 4100, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 14),
  -- Zubat - Double Team - TM32
  (41, 4100, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 15),
  -- Zubat - Bide - TM34
  (41, 4100, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 16),
  -- Zubat - Swift - TM39
  (41, 4100, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 17),
  -- Zubat - Rest - TM44
  (41, 4100, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 18),
  -- Zubat - Substitute - TM50
  (41, 4100, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 19),
  -- Golbat - Leech Life - Level 1
  (42, 4200, 141, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golbat - Screech - Level 1
  (42, 4200, 103, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golbat - Bite - Level 1
  (42, 4200, 44, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golbat - Supersonic - Level 10
  (42, 4200, 48, 1, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Golbat - Bite - Level 15
  (42, 4200, 44, 1, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Golbat - Confuse Ray - Level 21
  (42, 4200, 109, 1, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Golbat - Wing Attack - Level 32
  (42, 4200, 17, 1, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Golbat - Haze - Level 43
  (42, 4200, 114, 1, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Golbat - Razor Wind - TM02
  (42, 4200, 13, 1, NULL, 2, NULL, NULL, 1002002, NULL, 9),
  -- Golbat - Whirlwind - TM04
  (42, 4200, 18, 1, NULL, 2, NULL, NULL, 1002004, NULL, 10),
  -- Golbat - Toxic - TM06
  (42, 4200, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Golbat - Take Down - TM09
  (42, 4200, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Golbat - Double-Edge - TM10
  (42, 4200, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Golbat - Hyper Beam - TM15
  (42, 4200, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 14),
  -- Golbat - Rage - TM20
  (42, 4200, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 15),
  -- Golbat - Mega Drain - TM21
  (42, 4200, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 16),
  -- Golbat - Mimic - TM31
  (42, 4200, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 17),
  -- Golbat - Double Team - TM32
  (42, 4200, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 18),
  -- Golbat - Bide - TM34
  (42, 4200, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 19),
  -- Golbat - Swift - TM39
  (42, 4200, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 20),
  -- Golbat - Rest - TM44
  (42, 4200, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 21),
  -- Golbat - Substitute - TM50
  (42, 4200, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 22),
  -- Oddish - Absorb - Level 1
  (43, 4300, 71, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oddish - Poison Powder - Level 15
  (43, 4300, 77, 1, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Oddish - Stun Spore - Level 17
  (43, 4300, 78, 1, NULL, 1, 17, NULL, NULL, NULL, 3),
  -- Oddish - Sleep Powder - Level 19
  (43, 4300, 79, 1, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Oddish - Acid - Level 24
  (43, 4300, 51, 1, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Oddish - Petal Dance - Level 33
  (43, 4300, 80, 1, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Oddish - Solar Beam - Level 46
  (43, 4300, 76, 1, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Oddish - Swords Dance - TM03
  (43, 4300, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 8),
  -- Oddish - Toxic - TM06
  (43, 4300, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Oddish - Take Down - TM09
  (43, 4300, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Oddish - Double-Edge - TM10
  (43, 4300, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Oddish - Rage - TM20
  (43, 4300, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 12),
  -- Oddish - Mega Drain - TM21
  (43, 4300, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 13),
  -- Oddish - Solar Beam - TM22
  (43, 4300, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 14),
  -- Oddish - Mimic - TM31
  (43, 4300, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 15),
  -- Oddish - Double Team - TM32
  (43, 4300, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 16),
  -- Oddish - Reflect - TM33
  (43, 4300, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 17),
  -- Oddish - Bide - TM34
  (43, 4300, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 18),
  -- Oddish - Rest - TM44
  (43, 4300, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 19),
  -- Oddish - Substitute - TM50
  (43, 4300, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 20),
  -- Oddish - Cut - HM01
  (43, 4300, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 21),
  -- Gloom - Absorb - Level 1
  (44, 4400, 71, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gloom - Poison Powder - Level 1
  (44, 4400, 77, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gloom - Stun Spore - Level 1
  (44, 4400, 78, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gloom - Poison Powder - Level 15
  (44, 4400, 77, 1, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Gloom - Stun Spore - Level 17
  (44, 4400, 78, 1, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Gloom - Sleep Powder - Level 19
  (44, 4400, 79, 1, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Gloom - Acid - Level 28
  (44, 4400, 51, 1, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Gloom - Petal Dance - Level 38
  (44, 4400, 80, 1, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Gloom - Solar Beam - Level 52
  (44, 4400, 76, 1, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Gloom - Swords Dance - TM03
  (44, 4400, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 10),
  -- Gloom - Toxic - TM06
  (44, 4400, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Gloom - Take Down - TM09
  (44, 4400, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Gloom - Double-Edge - TM10
  (44, 4400, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Gloom - Rage - TM20
  (44, 4400, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 14),
  -- Gloom - Mega Drain - TM21
  (44, 4400, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 15),
  -- Gloom - Solar Beam - TM22
  (44, 4400, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 16),
  -- Gloom - Mimic - TM31
  (44, 4400, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 17),
  -- Gloom - Double Team - TM32
  (44, 4400, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 18),
  -- Gloom - Reflect - TM33
  (44, 4400, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 19),
  -- Gloom - Bide - TM34
  (44, 4400, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Gloom - Rest - TM44
  (44, 4400, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 21),
  -- Gloom - Substitute - TM50
  (44, 4400, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 22),
  -- Gloom - Cut - HM01
  (44, 4400, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 23),
  -- Vileplume - Stun Spore - Level 1
  (45, 4500, 78, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vileplume - Sleep Powder - Level 1
  (45, 4500, 79, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vileplume - Acid - Level 1
  (45, 4500, 51, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vileplume - Petal Dance - Level 1
  (45, 4500, 80, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vileplume - Poison Powder - Level 15
  (45, 4500, 77, 1, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Vileplume - Stun Spore - Level 17
  (45, 4500, 78, 1, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Vileplume - Sleep Powder - Level 19
  (45, 4500, 79, 1, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Vileplume - Swords Dance - TM03
  (45, 4500, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 8),
  -- Vileplume - Toxic - TM06
  (45, 4500, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Vileplume - Body Slam - TM08
  (45, 4500, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 10),
  -- Vileplume - Take Down - TM09
  (45, 4500, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Vileplume - Double-Edge - TM10
  (45, 4500, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Vileplume - Hyper Beam - TM15
  (45, 4500, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 13),
  -- Vileplume - Rage - TM20
  (45, 4500, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 14),
  -- Vileplume - Mega Drain - TM21
  (45, 4500, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 15),
  -- Vileplume - Solar Beam - TM22
  (45, 4500, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 16),
  -- Vileplume - Mimic - TM31
  (45, 4500, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 17),
  -- Vileplume - Double Team - TM32
  (45, 4500, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 18),
  -- Vileplume - Reflect - TM33
  (45, 4500, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 19),
  -- Vileplume - Bide - TM34
  (45, 4500, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Vileplume - Rest - TM44
  (45, 4500, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 21),
  -- Vileplume - Substitute - TM50
  (45, 4500, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 22),
  -- Vileplume - Cut - HM01
  (45, 4500, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 23),
  -- Paras - Scratch - Level 1
  (46, 4600, 10, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Paras - Stun Spore - Level 13
  (46, 4600, 78, 1, NULL, 1, 13, NULL, NULL, NULL, 2),
  -- Paras - Leech Life - Level 20
  (46, 4600, 141, 1, NULL, 1, 20, NULL, NULL, NULL, 3),
  -- Paras - Spore - Level 27
  (46, 4600, 147, 1, NULL, 1, 27, NULL, NULL, NULL, 4),
  -- Paras - Slash - Level 34
  (46, 4600, 163, 1, NULL, 1, 34, NULL, NULL, NULL, 5),
  -- Paras - Growth - Level 41
  (46, 4600, 74, 1, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Paras - Swords Dance - TM03
  (46, 4600, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 7),
  -- Paras - Toxic - TM06
  (46, 4600, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Paras - Body Slam - TM08
  (46, 4600, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 9),
  -- Paras - Take Down - TM09
  (46, 4600, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Paras - Double-Edge - TM10
  (46, 4600, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Paras - Rage - TM20
  (46, 4600, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 12),
  -- Paras - Mega Drain - TM21
  (46, 4600, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 13),
  -- Paras - Solar Beam - TM22
  (46, 4600, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 14),
  -- Paras - Dig - TM28
  (46, 4600, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 15),
  -- Paras - Mimic - TM31
  (46, 4600, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 16),
  -- Paras - Double Team - TM32
  (46, 4600, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 17),
  -- Paras - Reflect - TM33
  (46, 4600, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 18),
  -- Paras - Bide - TM34
  (46, 4600, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 19),
  -- Paras - Skull Bash - TM40
  (46, 4600, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 20),
  -- Paras - Rest - TM44
  (46, 4600, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 21),
  -- Paras - Substitute - TM50
  (46, 4600, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 22),
  -- Paras - Cut - HM01
  (46, 4600, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 23),
  -- Parasect - Scratch - Level 1
  (47, 4700, 10, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Parasect - Stun Spore - Level 1
  (47, 4700, 78, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Parasect - Leech Life - Level 1
  (47, 4700, 141, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Parasect - Stun Spore - Level 13
  (47, 4700, 78, 1, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Parasect - Leech Life - Level 20
  (47, 4700, 141, 1, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Parasect - Spore - Level 30
  (47, 4700, 147, 1, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Parasect - Slash - Level 39
  (47, 4700, 163, 1, NULL, 1, 39, NULL, NULL, NULL, 7),
  -- Parasect - Growth - Level 48
  (47, 4700, 74, 1, NULL, 1, 48, NULL, NULL, NULL, 8),
  -- Parasect - Swords Dance - TM03
  (47, 4700, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 9),
  -- Parasect - Toxic - TM06
  (47, 4700, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Parasect - Body Slam - TM08
  (47, 4700, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Parasect - Take Down - TM09
  (47, 4700, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Parasect - Double-Edge - TM10
  (47, 4700, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Parasect - Hyper Beam - TM15
  (47, 4700, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 14),
  -- Parasect - Rage - TM20
  (47, 4700, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 15),
  -- Parasect - Mega Drain - TM21
  (47, 4700, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 16),
  -- Parasect - Solar Beam - TM22
  (47, 4700, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 17),
  -- Parasect - Dig - TM28
  (47, 4700, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 18),
  -- Parasect - Mimic - TM31
  (47, 4700, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 19),
  -- Parasect - Double Team - TM32
  (47, 4700, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 20),
  -- Parasect - Reflect - TM33
  (47, 4700, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 21),
  -- Parasect - Bide - TM34
  (47, 4700, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 22),
  -- Parasect - Skull Bash - TM40
  (47, 4700, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 23),
  -- Parasect - Rest - TM44
  (47, 4700, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 24),
  -- Parasect - Substitute - TM50
  (47, 4700, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 25),
  -- Parasect - Cut - HM01
  (47, 4700, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 26),
  -- Venonat - Tackle - Level 1
  (48, 4800, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venonat - Disable - Level 1
  (48, 4800, 50, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venonat - Poison Powder - Level 24
  (48, 4800, 77, 1, NULL, 1, 24, NULL, NULL, NULL, 3),
  -- Venonat - Leech Life - Level 27
  (48, 4800, 141, 1, NULL, 1, 27, NULL, NULL, NULL, 4),
  -- Venonat - Stun Spore - Level 30
  (48, 4800, 78, 1, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Venonat - Psybeam - Level 35
  (48, 4800, 60, 1, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Venonat - Sleep Powder - Level 38
  (48, 4800, 79, 1, NULL, 1, 38, NULL, NULL, NULL, 7),
  -- Venonat - Psychic - Level 43
  (48, 4800, 94, 1, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Venonat - Toxic - TM06
  (48, 4800, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Venonat - Take Down - TM09
  (48, 4800, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Venonat - Double-Edge - TM10
  (48, 4800, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Venonat - Rage - TM20
  (48, 4800, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 12),
  -- Venonat - Mega Drain - TM21
  (48, 4800, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 13),
  -- Venonat - Solar Beam - TM22
  (48, 4800, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 14),
  -- Venonat - Psychic - TM29
  (48, 4800, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 15),
  -- Venonat - Mimic - TM31
  (48, 4800, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 16),
  -- Venonat - Double Team - TM32
  (48, 4800, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 17),
  -- Venonat - Reflect - TM33
  (48, 4800, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 18),
  -- Venonat - Bide - TM34
  (48, 4800, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 19),
  -- Venonat - Rest - TM44
  (48, 4800, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 20),
  -- Venonat - Psywave - TM46
  (48, 4800, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 21),
  -- Venonat - Substitute - TM50
  (48, 4800, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 22),
  -- Venomoth - Tackle - Level 1
  (49, 4900, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venomoth - Disable - Level 1
  (49, 4900, 50, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venomoth - Poison Powder - Level 24
  (49, 4900, 77, 1, NULL, 1, 24, NULL, NULL, NULL, 3),
  -- Venomoth - Leech Life - Level 27
  (49, 4900, 141, 1, NULL, 1, 27, NULL, NULL, NULL, 4),
  -- Venomoth - Stun Spore - Level 30
  (49, 4900, 78, 1, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Venomoth - Psybeam - Level 38
  (49, 4900, 60, 1, NULL, 1, 38, NULL, NULL, NULL, 6),
  -- Venomoth - Sleep Powder - Level 43
  (49, 4900, 79, 1, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Venomoth - Psychic - Level 50
  (49, 4900, 94, 1, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Venomoth - Poison Powder - Level 1
  (49, 4900, 77, 1, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Venomoth - Leech Life - Level 1
  (49, 4900, 141, 1, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Venomoth - Razor Wind - TM02
  (49, 4900, 13, 1, NULL, 2, NULL, NULL, 1002002, NULL, 11),
  -- Venomoth - Whirlwind - TM04
  (49, 4900, 18, 1, NULL, 2, NULL, NULL, 1002004, NULL, 12),
  -- Venomoth - Toxic - TM06
  (49, 4900, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 13),
  -- Venomoth - Take Down - TM09
  (49, 4900, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 14),
  -- Venomoth - Double-Edge - TM10
  (49, 4900, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 15),
  -- Venomoth - Hyper Beam - TM15
  (49, 4900, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 16),
  -- Venomoth - Rage - TM20
  (49, 4900, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 17),
  -- Venomoth - Mega Drain - TM21
  (49, 4900, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 18),
  -- Venomoth - Solar Beam - TM22
  (49, 4900, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 19),
  -- Venomoth - Psychic - TM29
  (49, 4900, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 20),
  -- Venomoth - Teleport - TM30
  (49, 4900, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 21),
  -- Venomoth - Mimic - TM31
  (49, 4900, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 22),
  -- Venomoth - Double Team - TM32
  (49, 4900, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 23),
  -- Venomoth - Reflect - TM33
  (49, 4900, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 24),
  -- Venomoth - Bide - TM34
  (49, 4900, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 25),
  -- Venomoth - Swift - TM39
  (49, 4900, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 26),
  -- Venomoth - Rest - TM44
  (49, 4900, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 27),
  -- Venomoth - Psywave - TM46
  (49, 4900, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 28),
  -- Venomoth - Substitute - TM50
  (49, 4900, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 29),
  -- Diglett - Scratch - Level 1
  (50, 5000, 10, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Diglett - Growl - Level 15
  (50, 5000, 45, 1, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Diglett - Dig - Level 19
  (50, 5000, 91, 1, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Diglett - Sand Attack - Level 24
  (50, 5000, 28, 1, NULL, 1, 24, NULL, NULL, NULL, 4),
  -- Diglett - Slash - Level 31
  (50, 5000, 163, 1, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Diglett - Earthquake - Level 40
  (50, 5000, 89, 1, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Diglett - Toxic - TM06
  (50, 5000, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 7),
  -- Diglett - Body Slam - TM08
  (50, 5000, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 8),
  -- Diglett - Take Down - TM09
  (50, 5000, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 9),
  -- Diglett - Double-Edge - TM10
  (50, 5000, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 10),
  -- Diglett - Rage - TM20
  (50, 5000, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 11),
  -- Diglett - Earthquake - TM26
  (50, 5000, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 12),
  -- Diglett - Fissure - TM27
  (50, 5000, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 13),
  -- Diglett - Dig - TM28
  (50, 5000, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 14),
  -- Diglett - Mimic - TM31
  (50, 5000, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 15),
  -- Diglett - Double Team - TM32
  (50, 5000, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 16),
  -- Diglett - Bide - TM34
  (50, 5000, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 17),
  -- Diglett - Rest - TM44
  (50, 5000, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 18),
  -- Diglett - Rock Slide - TM48
  (50, 5000, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 19),
  -- Diglett - Substitute - TM50
  (50, 5000, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 20);