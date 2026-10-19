-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VII raw learnset pages for Sun / Moon.
-- Cross-check: PokemonDB Generation 7 learnset pages where source rows were ambiguous.
-- Machine normalization: Bulbapedia Generation VII TM catalog data.
-- Source names and caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Sun / Moon learnsets for default forms, species 722-760.
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
) VALUES
  -- Rowlet - Tackle - Level 1
  (722, 72200, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rowlet - Leafage - Level 1
  (722, 72200, 670, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rowlet - Growl - Level 4
  (722, 72200, 45, 15, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Rowlet - Peck - Level 8
  (722, 72200, 64, 15, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Rowlet - Astonish - Level 11
  (722, 72200, 310, 15, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Rowlet - Razor Leaf - Level 15
  (722, 72200, 75, 15, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Rowlet - Foresight - Level 18
  (722, 72200, 193, 15, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Rowlet - Pluck - Level 22
  (722, 72200, 365, 15, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Rowlet - Synthesis - Level 25
  (722, 72200, 235, 15, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Rowlet - Fury Attack - Level 29
  (722, 72200, 31, 15, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Rowlet - Sucker Punch - Level 32
  (722, 72200, 389, 15, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Rowlet - Leaf Blade - Level 36
  (722, 72200, 348, 15, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Rowlet - Feather Dance - Level 39
  (722, 72200, 297, 15, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Rowlet - Brave Bird - Level 43
  (722, 72200, 413, 15, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Rowlet - Nasty Plot - Level 46
  (722, 72200, 417, 15, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Rowlet - Work Up - TM01
  (722, 72200, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 16),
  -- Rowlet - Toxic - TM06
  (722, 72200, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Rowlet - Hidden Power - TM10
  (722, 72200, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Rowlet - Sunny Day - TM11
  (722, 72200, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 19),
  -- Rowlet - Light Screen - TM16
  (722, 72200, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 20),
  -- Rowlet - Protect - TM17
  (722, 72200, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 21),
  -- Rowlet - Roost - TM19
  (722, 72200, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 22),
  -- Rowlet - Safeguard - TM20
  (722, 72200, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 23),
  -- Rowlet - Frustration - TM21
  (722, 72200, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 24),
  -- Rowlet - Solar Beam - TM22
  (722, 72200, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 25),
  -- Rowlet - Return - TM27
  (722, 72200, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 26),
  -- Rowlet - Double Team - TM32
  (722, 72200, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 27),
  -- Rowlet - Facade - TM42
  (722, 72200, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 28),
  -- Rowlet - Rest - TM44
  (722, 72200, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 29),
  -- Rowlet - Attract - TM45
  (722, 72200, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 30),
  -- Rowlet - Round - TM48
  (722, 72200, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 31),
  -- Rowlet - Echoed Voice - TM49
  (722, 72200, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 32),
  -- Rowlet - Steel Wing - TM51
  (722, 72200, 211, 15, NULL, 2, NULL, NULL, 15002051, NULL, 33),
  -- Rowlet - Energy Ball - TM53
  (722, 72200, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 34),
  -- Rowlet - False Swipe - TM54
  (722, 72200, 206, 15, NULL, 2, NULL, NULL, 15002054, NULL, 35),
  -- Rowlet - Shadow Claw - TM65
  (722, 72200, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 36),
  -- Rowlet - Swords Dance - TM75
  (722, 72200, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 37),
  -- Rowlet - Grass Knot - TM86
  (722, 72200, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 38),
  -- Rowlet - Swagger - TM87
  (722, 72200, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 39),
  -- Rowlet - Sleep Talk - TM88
  (722, 72200, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 40),
  -- Rowlet - Substitute - TM90
  (722, 72200, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 41),
  -- Rowlet - Nature Power - TM96
  (722, 72200, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 42),
  -- Rowlet - Confide - TM100
  (722, 72200, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 43),
  -- Rowlet - Confuse Ray - Egg
  (722, 72200, 109, 15, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Rowlet - Haze - Egg
  (722, 72200, 114, 15, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Rowlet - Curse - Egg
  (722, 72200, 174, 15, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Rowlet - Baton Pass - Egg
  (722, 72200, 226, 15, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Rowlet - Defog - Egg
  (722, 72200, 432, 15, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Rowlet - Ominous Wind - Egg
  (722, 72200, 466, 15, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Rowlet - Grass Pledge - Tutor
  (722, 72200, 520, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 50),

  -- Dartrix - Tackle - Level 1
  (723, 72300, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dartrix - Growl - Level 1
  (723, 72300, 45, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dartrix - Peck - Level 1
  (723, 72300, 64, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dartrix - Leafage - Level 1
  (723, 72300, 670, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dartrix - Growl - Level 4
  (723, 72300, 45, 15, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Dartrix - Peck - Level 8
  (723, 72300, 64, 15, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Dartrix - Astonish - Level 11
  (723, 72300, 310, 15, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Dartrix - Razor Leaf - Level 15
  (723, 72300, 75, 15, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Dartrix - Foresight - Level 19
  (723, 72300, 193, 15, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Dartrix - Pluck - Level 24
  (723, 72300, 365, 15, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Dartrix - Synthesis - Level 28
  (723, 72300, 235, 15, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Dartrix - Fury Attack - Level 33
  (723, 72300, 31, 15, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Dartrix - Sucker Punch - Level 37
  (723, 72300, 389, 15, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Dartrix - Leaf Blade - Level 42
  (723, 72300, 348, 15, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Dartrix - Feather Dance - Level 46
  (723, 72300, 297, 15, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Dartrix - Brave Bird - Level 51
  (723, 72300, 413, 15, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Dartrix - Nasty Plot - Level 55
  (723, 72300, 417, 15, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Dartrix - Work Up - TM01
  (723, 72300, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 18),
  -- Dartrix - Toxic - TM06
  (723, 72300, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Dartrix - Hidden Power - TM10
  (723, 72300, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 20),
  -- Dartrix - Sunny Day - TM11
  (723, 72300, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 21),
  -- Dartrix - Light Screen - TM16
  (723, 72300, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 22),
  -- Dartrix - Protect - TM17
  (723, 72300, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 23),
  -- Dartrix - Roost - TM19
  (723, 72300, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 24),
  -- Dartrix - Safeguard - TM20
  (723, 72300, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 25),
  -- Dartrix - Frustration - TM21
  (723, 72300, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 26),
  -- Dartrix - Solar Beam - TM22
  (723, 72300, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 27),
  -- Dartrix - Return - TM27
  (723, 72300, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 28),
  -- Dartrix - Double Team - TM32
  (723, 72300, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 29),
  -- Dartrix - Facade - TM42
  (723, 72300, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 30),
  -- Dartrix - Rest - TM44
  (723, 72300, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 31),
  -- Dartrix - Attract - TM45
  (723, 72300, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 32),
  -- Dartrix - Round - TM48
  (723, 72300, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 33),
  -- Dartrix - Echoed Voice - TM49
  (723, 72300, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 34),
  -- Dartrix - Steel Wing - TM51
  (723, 72300, 211, 15, NULL, 2, NULL, NULL, 15002051, NULL, 35),
  -- Dartrix - Energy Ball - TM53
  (723, 72300, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 36),
  -- Dartrix - False Swipe - TM54
  (723, 72300, 206, 15, NULL, 2, NULL, NULL, 15002054, NULL, 37),
  -- Dartrix - Shadow Claw - TM65
  (723, 72300, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 38),
  -- Dartrix - Swords Dance - TM75
  (723, 72300, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 39),
  -- Dartrix - Grass Knot - TM86
  (723, 72300, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 40),
  -- Dartrix - Swagger - TM87
  (723, 72300, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 41),
  -- Dartrix - Sleep Talk - TM88
  (723, 72300, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 42),
  -- Dartrix - Substitute - TM90
  (723, 72300, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 43),
  -- Dartrix - Nature Power - TM96
  (723, 72300, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 44),
  -- Dartrix - Confide - TM100
  (723, 72300, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 45),
  -- Dartrix - Grass Pledge - Tutor
  (723, 72300, 520, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 46),

  -- Decidueye - Tackle - Level 1
  (724, 72400, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Decidueye - Growl - Level 1
  (724, 72400, 45, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Decidueye - Peck - Level 1
  (724, 72400, 64, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Decidueye - U-turn - Level 1
  (724, 72400, 369, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Decidueye - Spirit Shackle - Level 1
  (724, 72400, 662, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Decidueye - Leafage - Level 1
  (724, 72400, 670, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Decidueye - Growl - Level 4
  (724, 72400, 45, 15, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Decidueye - Peck - Level 8
  (724, 72400, 64, 15, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Decidueye - Astonish - Level 11
  (724, 72400, 310, 15, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Decidueye - Razor Leaf - Level 15
  (724, 72400, 75, 15, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Decidueye - Foresight - Level 19
  (724, 72400, 193, 15, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Decidueye - Pluck - Level 24
  (724, 72400, 365, 15, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Decidueye - Synthesis - Level 28
  (724, 72400, 235, 15, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Decidueye - Fury Attack - Level 33
  (724, 72400, 31, 15, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Decidueye - Sucker Punch - Level 38
  (724, 72400, 389, 15, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Decidueye - Leaf Blade - Level 44
  (724, 72400, 348, 15, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Decidueye - Feather Dance - Level 49
  (724, 72400, 297, 15, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Decidueye - Brave Bird - Level 55
  (724, 72400, 413, 15, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Decidueye - Nasty Plot - Level 60
  (724, 72400, 417, 15, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Decidueye - Work Up - TM01
  (724, 72400, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 20),
  -- Decidueye - Toxic - TM06
  (724, 72400, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 21),
  -- Decidueye - Hidden Power - TM10
  (724, 72400, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 22),
  -- Decidueye - Sunny Day - TM11
  (724, 72400, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 23),
  -- Decidueye - Light Screen - TM16
  (724, 72400, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 24),
  -- Decidueye - Protect - TM17
  (724, 72400, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 25),
  -- Decidueye - Roost - TM19
  (724, 72400, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 26),
  -- Decidueye - Safeguard - TM20
  (724, 72400, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 27),
  -- Decidueye - Frustration - TM21
  (724, 72400, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 28),
  -- Decidueye - Solar Beam - TM22
  (724, 72400, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 29),
  -- Decidueye - Smack Down - TM23
  (724, 72400, 479, 15, NULL, 2, NULL, NULL, 15002023, NULL, 30),
  -- Decidueye - Return - TM27
  (724, 72400, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 31),
  -- Decidueye - Shadow Ball - TM30
  (724, 72400, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 32),
  -- Decidueye - Double Team - TM32
  (724, 72400, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 33),
  -- Decidueye - Facade - TM42
  (724, 72400, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 34),
  -- Decidueye - Rest - TM44
  (724, 72400, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 35),
  -- Decidueye - Attract - TM45
  (724, 72400, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 36),
  -- Decidueye - Low Sweep - TM47
  (724, 72400, 490, 15, NULL, 2, NULL, NULL, 15002047, NULL, 37),
  -- Decidueye - Round - TM48
  (724, 72400, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 38),
  -- Decidueye - Echoed Voice - TM49
  (724, 72400, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 39),
  -- Decidueye - Steel Wing - TM51
  (724, 72400, 211, 15, NULL, 2, NULL, NULL, 15002051, NULL, 40),
  -- Decidueye - Energy Ball - TM53
  (724, 72400, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 41),
  -- Decidueye - False Swipe - TM54
  (724, 72400, 206, 15, NULL, 2, NULL, NULL, 15002054, NULL, 42),
  -- Decidueye - Acrobatics - TM62
  (724, 72400, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 43),
  -- Decidueye - Shadow Claw - TM65
  (724, 72400, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 44),
  -- Decidueye - Giga Impact - TM68
  (724, 72400, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 45),
  -- Decidueye - Swords Dance - TM75
  (724, 72400, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 46),
  -- Decidueye - Grass Knot - TM86
  (724, 72400, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 47),
  -- Decidueye - Swagger - TM87
  (724, 72400, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 48),
  -- Decidueye - Sleep Talk - TM88
  (724, 72400, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 49),
  -- Decidueye - U-turn - TM89
  (724, 72400, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 50),
  -- Decidueye - Substitute - TM90
  (724, 72400, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 51),
  -- Decidueye - Nature Power - TM96
  (724, 72400, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 52),
  -- Decidueye - Confide - TM100
  (724, 72400, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 53),
  -- Decidueye - Frenzy Plant - Tutor
  (724, 72400, 338, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 54),
  -- Decidueye - Grass Pledge - Tutor
  (724, 72400, 520, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 55),
  -- Decidueye - Spirit Shackle - Evolution
  (724, 72400, 662, 15, NULL, 7, NULL, NULL, NULL, NULL, 56),

  -- Litten - Scratch - Level 1
  (725, 72500, 10, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Litten - Ember - Level 1
  (725, 72500, 52, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Litten - Growl - Level 4
  (725, 72500, 45, 15, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Litten - Lick - Level 8
  (725, 72500, 122, 15, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Litten - Leer - Level 11
  (725, 72500, 43, 15, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Litten - Fire Fang - Level 15
  (725, 72500, 424, 15, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Litten - Roar - Level 18
  (725, 72500, 46, 15, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Litten - Bite - Level 22
  (725, 72500, 44, 15, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Litten - Swagger - Level 25
  (725, 72500, 207, 15, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Litten - Fury Swipes - Level 29
  (725, 72500, 154, 15, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Litten - Thrash - Level 32
  (725, 72500, 37, 15, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Litten - Flamethrower - Level 36
  (725, 72500, 53, 15, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Litten - Scary Face - Level 39
  (725, 72500, 184, 15, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Litten - Flare Blitz - Level 43
  (725, 72500, 394, 15, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Litten - Outrage - Level 46
  (725, 72500, 200, 15, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Litten - Work Up - TM01
  (725, 72500, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 16),
  -- Litten - Roar - TM05
  (725, 72500, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 17),
  -- Litten - Toxic - TM06
  (725, 72500, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 18),
  -- Litten - Bulk Up - TM08
  (725, 72500, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 19),
  -- Litten - Hidden Power - TM10
  (725, 72500, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 20),
  -- Litten - Sunny Day - TM11
  (725, 72500, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 21),
  -- Litten - Taunt - TM12
  (725, 72500, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 22),
  -- Litten - Protect - TM17
  (725, 72500, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 23),
  -- Litten - Frustration - TM21
  (725, 72500, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 24),
  -- Litten - Return - TM27
  (725, 72500, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 25),
  -- Litten - Leech Life - TM28
  (725, 72500, 141, 15, NULL, 2, NULL, NULL, 15002028, NULL, 26),
  -- Litten - Double Team - TM32
  (725, 72500, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 27),
  -- Litten - Flamethrower - TM35
  (725, 72500, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 28),
  -- Litten - Fire Blast - TM38
  (725, 72500, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 29),
  -- Litten - Torment - TM41
  (725, 72500, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 30),
  -- Litten - Facade - TM42
  (725, 72500, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 31),
  -- Litten - Flame Charge - TM43
  (725, 72500, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 32),
  -- Litten - Rest - TM44
  (725, 72500, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 33),
  -- Litten - Attract - TM45
  (725, 72500, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 34),
  -- Litten - Round - TM48
  (725, 72500, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 35),
  -- Litten - Overheat - TM50
  (725, 72500, 315, 15, NULL, 2, NULL, NULL, 15002050, NULL, 36),
  -- Litten - Will-O-Wisp - TM61
  (725, 72500, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 37),
  -- Litten - Acrobatics - TM62
  (725, 72500, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 38),
  -- Litten - Shadow Claw - TM65
  (725, 72500, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 39),
  -- Litten - Swords Dance - TM75
  (725, 72500, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 40),
  -- Litten - Swagger - TM87
  (725, 72500, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 41),
  -- Litten - Sleep Talk - TM88
  (725, 72500, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 42),
  -- Litten - U-turn - TM89
  (725, 72500, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 43),
  -- Litten - Substitute - TM90
  (725, 72500, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 44),
  -- Litten - Confide - TM100
  (725, 72500, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 45),
  -- Litten - Body Slam - Egg
  (725, 72500, 34, 15, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Litten - Crunch - Egg
  (725, 72500, 242, 15, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Litten - Fake Out - Egg
  (725, 72500, 252, 15, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Litten - Heat Wave - Egg
  (725, 72500, 257, 15, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Litten - Revenge - Egg
  (725, 72500, 279, 15, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Litten - Nasty Plot - Egg
  (725, 72500, 417, 15, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Litten - Power Trip - Egg
  (725, 72500, 681, 15, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Litten - Fire Pledge - Tutor
  (725, 72500, 519, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 53),

  -- Torracat - Scratch - Level 1
  (726, 72600, 10, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torracat - Growl - Level 1
  (726, 72600, 45, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Torracat - Ember - Level 1
  (726, 72600, 52, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Torracat - Lick - Level 1
  (726, 72600, 122, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Torracat - Growl - Level 4
  (726, 72600, 45, 15, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Torracat - Lick - Level 8
  (726, 72600, 122, 15, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Torracat - Leer - Level 11
  (726, 72600, 43, 15, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Torracat - Fire Fang - Level 15
  (726, 72600, 424, 15, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Torracat - Roar - Level 19
  (726, 72600, 46, 15, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Torracat - Bite - Level 24
  (726, 72600, 44, 15, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Torracat - Swagger - Level 28
  (726, 72600, 207, 15, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Torracat - Fury Swipes - Level 33
  (726, 72600, 154, 15, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Torracat - Thrash - Level 37
  (726, 72600, 37, 15, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Torracat - Flamethrower - Level 42
  (726, 72600, 53, 15, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Torracat - Scary Face - Level 46
  (726, 72600, 184, 15, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Torracat - Flare Blitz - Level 51
  (726, 72600, 394, 15, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Torracat - Outrage - Level 55
  (726, 72600, 200, 15, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Torracat - Work Up - TM01
  (726, 72600, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 18),
  -- Torracat - Roar - TM05
  (726, 72600, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 19),
  -- Torracat - Toxic - TM06
  (726, 72600, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 20),
  -- Torracat - Bulk Up - TM08
  (726, 72600, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 21),
  -- Torracat - Hidden Power - TM10
  (726, 72600, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 22),
  -- Torracat - Sunny Day - TM11
  (726, 72600, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 23),
  -- Torracat - Taunt - TM12
  (726, 72600, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 24),
  -- Torracat - Protect - TM17
  (726, 72600, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 25),
  -- Torracat - Frustration - TM21
  (726, 72600, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 26),
  -- Torracat - Return - TM27
  (726, 72600, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 27),
  -- Torracat - Leech Life - TM28
  (726, 72600, 141, 15, NULL, 2, NULL, NULL, 15002028, NULL, 28),
  -- Torracat - Double Team - TM32
  (726, 72600, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 29),
  -- Torracat - Flamethrower - TM35
  (726, 72600, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 30),
  -- Torracat - Fire Blast - TM38
  (726, 72600, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 31),
  -- Torracat - Torment - TM41
  (726, 72600, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 32),
  -- Torracat - Facade - TM42
  (726, 72600, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 33),
  -- Torracat - Flame Charge - TM43
  (726, 72600, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 34),
  -- Torracat - Rest - TM44
  (726, 72600, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 35),
  -- Torracat - Attract - TM45
  (726, 72600, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 36),
  -- Torracat - Round - TM48
  (726, 72600, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 37),
  -- Torracat - Overheat - TM50
  (726, 72600, 315, 15, NULL, 2, NULL, NULL, 15002050, NULL, 38),
  -- Torracat - Will-O-Wisp - TM61
  (726, 72600, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 39),
  -- Torracat - Acrobatics - TM62
  (726, 72600, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 40),
  -- Torracat - Shadow Claw - TM65
  (726, 72600, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 41),
  -- Torracat - Swords Dance - TM75
  (726, 72600, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 42),
  -- Torracat - Swagger - TM87
  (726, 72600, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 43),
  -- Torracat - Sleep Talk - TM88
  (726, 72600, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 44),
  -- Torracat - U-turn - TM89
  (726, 72600, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 45),
  -- Torracat - Substitute - TM90
  (726, 72600, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 46),
  -- Torracat - Confide - TM100
  (726, 72600, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 47),
  -- Torracat - Fire Pledge - Tutor
  (726, 72600, 519, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 48),

  -- Incineroar - Scratch - Level 1
  (727, 72700, 10, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Incineroar - Growl - Level 1
  (727, 72700, 45, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Incineroar - Ember - Level 1
  (727, 72700, 52, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Incineroar - Lick - Level 1
  (727, 72700, 122, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Incineroar - Bulk Up - Level 1
  (727, 72700, 339, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Incineroar - Darkest Lariat - Level 1
  (727, 72700, 663, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Incineroar - Throat Chop - Level 1
  (727, 72700, 675, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Incineroar - Growl - Level 4
  (727, 72700, 45, 15, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Incineroar - Lick - Level 8
  (727, 72700, 122, 15, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Incineroar - Leer - Level 11
  (727, 72700, 43, 15, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Incineroar - Fire Fang - Level 15
  (727, 72700, 424, 15, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Incineroar - Roar - Level 19
  (727, 72700, 46, 15, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Incineroar - Bite - Level 24
  (727, 72700, 44, 15, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Incineroar - Swagger - Level 28
  (727, 72700, 207, 15, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Incineroar - Fury Swipes - Level 33
  (727, 72700, 154, 15, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Incineroar - Thrash - Level 38
  (727, 72700, 37, 15, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Incineroar - Flamethrower - Level 44
  (727, 72700, 53, 15, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Incineroar - Scary Face - Level 49
  (727, 72700, 184, 15, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Incineroar - Flare Blitz - Level 55
  (727, 72700, 394, 15, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Incineroar - Outrage - Level 60
  (727, 72700, 200, 15, NULL, 1, 60, NULL, NULL, NULL, 20),
  -- Incineroar - Cross Chop - Level 66
  (727, 72700, 238, 15, NULL, 1, 66, NULL, NULL, NULL, 21),
  -- Incineroar - Work Up - TM01
  (727, 72700, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 22),
  -- Incineroar - Roar - TM05
  (727, 72700, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 23),
  -- Incineroar - Toxic - TM06
  (727, 72700, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 24),
  -- Incineroar - Bulk Up - TM08
  (727, 72700, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 25),
  -- Incineroar - Hidden Power - TM10
  (727, 72700, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 26),
  -- Incineroar - Sunny Day - TM11
  (727, 72700, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 27),
  -- Incineroar - Taunt - TM12
  (727, 72700, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 28),
  -- Incineroar - Hyper Beam - TM15
  (727, 72700, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 29),
  -- Incineroar - Protect - TM17
  (727, 72700, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 30),
  -- Incineroar - Frustration - TM21
  (727, 72700, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 31),
  -- Incineroar - Earthquake - TM26
  (727, 72700, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 32),
  -- Incineroar - Return - TM27
  (727, 72700, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 33),
  -- Incineroar - Leech Life - TM28
  (727, 72700, 141, 15, NULL, 2, NULL, NULL, 15002028, NULL, 34),
  -- Incineroar - Brick Break - TM31
  (727, 72700, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 35),
  -- Incineroar - Double Team - TM32
  (727, 72700, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 36),
  -- Incineroar - Flamethrower - TM35
  (727, 72700, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 37),
  -- Incineroar - Fire Blast - TM38
  (727, 72700, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 38),
  -- Incineroar - Torment - TM41
  (727, 72700, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 39),
  -- Incineroar - Facade - TM42
  (727, 72700, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 40),
  -- Incineroar - Flame Charge - TM43
  (727, 72700, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 41),
  -- Incineroar - Rest - TM44
  (727, 72700, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 42),
  -- Incineroar - Attract - TM45
  (727, 72700, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 43),
  -- Incineroar - Low Sweep - TM47
  (727, 72700, 490, 15, NULL, 2, NULL, NULL, 15002047, NULL, 44),
  -- Incineroar - Round - TM48
  (727, 72700, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 45),
  -- Incineroar - Overheat - TM50
  (727, 72700, 315, 15, NULL, 2, NULL, NULL, 15002050, NULL, 46),
  -- Incineroar - Focus Blast - TM52
  (727, 72700, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 47),
  -- Incineroar - Fling - TM56
  (727, 72700, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 48),
  -- Incineroar - Brutal Swing - TM59
  (727, 72700, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 49),
  -- Incineroar - Quash - TM60
  (727, 72700, 511, 15, NULL, 2, NULL, NULL, 15002060, NULL, 50),
  -- Incineroar - Will-O-Wisp - TM61
  (727, 72700, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 51),
  -- Incineroar - Acrobatics - TM62
  (727, 72700, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 52),
  -- Incineroar - Embargo - TM63
  (727, 72700, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 53),
  -- Incineroar - Shadow Claw - TM65
  (727, 72700, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 54),
  -- Incineroar - Giga Impact - TM68
  (727, 72700, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 55),
  -- Incineroar - Swords Dance - TM75
  (727, 72700, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 56),
  -- Incineroar - Bulldoze - TM78
  (727, 72700, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 57),
  -- Incineroar - Swagger - TM87
  (727, 72700, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 58),
  -- Incineroar - Sleep Talk - TM88
  (727, 72700, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 59),
  -- Incineroar - U-turn - TM89
  (727, 72700, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 60),
  -- Incineroar - Substitute - TM90
  (727, 72700, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 61),
  -- Incineroar - Snarl - TM95
  (727, 72700, 555, 15, NULL, 2, NULL, NULL, 15002095, NULL, 62),
  -- Incineroar - Dark Pulse - TM97
  (727, 72700, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 63),
  -- Incineroar - Confide - TM100
  (727, 72700, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 64),
  -- Incineroar - Blast Burn - Tutor
  (727, 72700, 307, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 65),
  -- Incineroar - Fire Pledge - Tutor
  (727, 72700, 519, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 66),
  -- Incineroar - Darkest Lariat - Evolution
  (727, 72700, 663, 15, NULL, 7, NULL, NULL, NULL, NULL, 67),

  -- Popplio - Pound - Level 1
  (728, 72800, 1, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Popplio - Water Gun - Level 1
  (728, 72800, 55, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Popplio - Growl - Level 4
  (728, 72800, 45, 15, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Popplio - Disarming Voice - Level 8
  (728, 72800, 574, 15, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Popplio - Baby-Doll Eyes - Level 11
  (728, 72800, 608, 15, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Popplio - Aqua Jet - Level 15
  (728, 72800, 453, 15, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Popplio - Encore - Level 18
  (728, 72800, 227, 15, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Popplio - Bubble Beam - Level 22
  (728, 72800, 61, 15, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Popplio - Sing - Level 25
  (728, 72800, 47, 15, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Popplio - Double Slap - Level 29
  (728, 72800, 3, 15, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Popplio - Hyper Voice - Level 32
  (728, 72800, 304, 15, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Popplio - Moonblast - Level 36
  (728, 72800, 585, 15, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Popplio - Captivate - Level 39
  (728, 72800, 445, 15, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Popplio - Hydro Pump - Level 43
  (728, 72800, 56, 15, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Popplio - Misty Terrain - Level 46
  (728, 72800, 581, 15, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Popplio - Work Up - TM01
  (728, 72800, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 16),
  -- Popplio - Toxic - TM06
  (728, 72800, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Popplio - Hail - TM07
  (728, 72800, 258, 15, NULL, 2, NULL, NULL, 15002007, NULL, 18),
  -- Popplio - Hidden Power - TM10
  (728, 72800, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 19),
  -- Popplio - Ice Beam - TM13
  (728, 72800, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 20),
  -- Popplio - Blizzard - TM14
  (728, 72800, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 21),
  -- Popplio - Protect - TM17
  (728, 72800, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 22),
  -- Popplio - Rain Dance - TM18
  (728, 72800, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 23),
  -- Popplio - Frustration - TM21
  (728, 72800, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 24),
  -- Popplio - Return - TM27
  (728, 72800, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 25),
  -- Popplio - Double Team - TM32
  (728, 72800, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 26),
  -- Popplio - Facade - TM42
  (728, 72800, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 27),
  -- Popplio - Rest - TM44
  (728, 72800, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 28),
  -- Popplio - Attract - TM45
  (728, 72800, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 29),
  -- Popplio - Round - TM48
  (728, 72800, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 30),
  -- Popplio - Echoed Voice - TM49
  (728, 72800, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 31),
  -- Popplio - Scald - TM55
  (728, 72800, 503, 15, NULL, 2, NULL, NULL, 15002055, NULL, 32),
  -- Popplio - Acrobatics - TM62
  (728, 72800, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 33),
  -- Popplio - Swagger - TM87
  (728, 72800, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 34),
  -- Popplio - Sleep Talk - TM88
  (728, 72800, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 35),
  -- Popplio - Substitute - TM90
  (728, 72800, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 36),
  -- Popplio - Surf - TM94
  (728, 72800, 57, 15, NULL, 2, NULL, NULL, 15002094, NULL, 37),
  -- Popplio - Waterfall - TM98
  (728, 72800, 127, 15, NULL, 2, NULL, NULL, 15002098, NULL, 38),
  -- Popplio - Confide - TM100
  (728, 72800, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 39),
  -- Popplio - Amnesia - Egg
  (728, 72800, 133, 15, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Popplio - Perish Song - Egg
  (728, 72800, 195, 15, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Popplio - Charm - Egg
  (728, 72800, 204, 15, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Popplio - Aqua Ring - Egg
  (728, 72800, 392, 15, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Popplio - Wonder Room - Egg
  (728, 72800, 472, 15, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Popplio - Aromatic Mist - Egg
  (728, 72800, 597, 15, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Popplio - Water Pledge - Tutor
  (728, 72800, 518, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 46),

  -- Brionne - Pound - Level 1
  (729, 72900, 1, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Brionne - Growl - Level 1
  (729, 72900, 45, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Brionne - Water Gun - Level 1
  (729, 72900, 55, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Brionne - Disarming Voice - Level 1
  (729, 72900, 574, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Brionne - Growl - Level 4
  (729, 72900, 45, 15, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Brionne - Disarming Voice - Level 8
  (729, 72900, 574, 15, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Brionne - Baby-Doll Eyes - Level 11
  (729, 72900, 608, 15, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Brionne - Aqua Jet - Level 15
  (729, 72900, 453, 15, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Brionne - Encore - Level 19
  (729, 72900, 227, 15, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Brionne - Bubble Beam - Level 24
  (729, 72900, 61, 15, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Brionne - Sing - Level 28
  (729, 72900, 47, 15, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Brionne - Double Slap - Level 33
  (729, 72900, 3, 15, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Brionne - Hyper Voice - Level 37
  (729, 72900, 304, 15, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Brionne - Moonblast - Level 42
  (729, 72900, 585, 15, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Brionne - Captivate - Level 46
  (729, 72900, 445, 15, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Brionne - Hydro Pump - Level 51
  (729, 72900, 56, 15, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Brionne - Misty Terrain - Level 55
  (729, 72900, 581, 15, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Brionne - Work Up - TM01
  (729, 72900, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 18),
  -- Brionne - Toxic - TM06
  (729, 72900, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Brionne - Hail - TM07
  (729, 72900, 258, 15, NULL, 2, NULL, NULL, 15002007, NULL, 20),
  -- Brionne - Hidden Power - TM10
  (729, 72900, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 21),
  -- Brionne - Ice Beam - TM13
  (729, 72900, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 22),
  -- Brionne - Blizzard - TM14
  (729, 72900, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 23),
  -- Brionne - Protect - TM17
  (729, 72900, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 24),
  -- Brionne - Rain Dance - TM18
  (729, 72900, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 25),
  -- Brionne - Frustration - TM21
  (729, 72900, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 26),
  -- Brionne - Return - TM27
  (729, 72900, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 27),
  -- Brionne - Double Team - TM32
  (729, 72900, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 28),
  -- Brionne - Facade - TM42
  (729, 72900, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 29),
  -- Brionne - Rest - TM44
  (729, 72900, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 30),
  -- Brionne - Attract - TM45
  (729, 72900, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 31),
  -- Brionne - Round - TM48
  (729, 72900, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 32),
  -- Brionne - Echoed Voice - TM49
  (729, 72900, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 33),
  -- Brionne - Scald - TM55
  (729, 72900, 503, 15, NULL, 2, NULL, NULL, 15002055, NULL, 34),
  -- Brionne - Acrobatics - TM62
  (729, 72900, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 35),
  -- Brionne - Swagger - TM87
  (729, 72900, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 36),
  -- Brionne - Sleep Talk - TM88
  (729, 72900, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 37),
  -- Brionne - Substitute - TM90
  (729, 72900, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 38),
  -- Brionne - Surf - TM94
  (729, 72900, 57, 15, NULL, 2, NULL, NULL, 15002094, NULL, 39),
  -- Brionne - Waterfall - TM98
  (729, 72900, 127, 15, NULL, 2, NULL, NULL, 15002098, NULL, 40),
  -- Brionne - Confide - TM100
  (729, 72900, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 41),
  -- Brionne - Water Pledge - Tutor
  (729, 72900, 518, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 42),

  -- Primarina - Pound - Level 1
  (730, 73000, 1, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Primarina - Growl - Level 1
  (730, 73000, 45, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Primarina - Water Gun - Level 1
  (730, 73000, 55, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Primarina - Disarming Voice - Level 1
  (730, 73000, 574, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Primarina - Sparkling Aria - Level 1
  (730, 73000, 664, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Primarina - Growl - Level 4
  (730, 73000, 45, 15, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Primarina - Disarming Voice - Level 9
  (730, 73000, 574, 15, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Primarina - Baby-Doll Eyes - Level 11
  (730, 73000, 608, 15, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Primarina - Aqua Jet - Level 15
  (730, 73000, 453, 15, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Primarina - Encore - Level 19
  (730, 73000, 227, 15, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Primarina - Bubble Beam - Level 24
  (730, 73000, 61, 15, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Primarina - Sing - Level 28
  (730, 73000, 47, 15, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Primarina - Double Slap - Level 33
  (730, 73000, 3, 15, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Primarina - Hyper Voice - Level 38
  (730, 73000, 304, 15, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Primarina - Moonblast - Level 44
  (730, 73000, 585, 15, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Primarina - Captivate - Level 49
  (730, 73000, 445, 15, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Primarina - Hydro Pump - Level 55
  (730, 73000, 56, 15, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Primarina - Misty Terrain - Level 60
  (730, 73000, 581, 15, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Primarina - Work Up - TM01
  (730, 73000, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 19),
  -- Primarina - Toxic - TM06
  (730, 73000, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 20),
  -- Primarina - Hail - TM07
  (730, 73000, 258, 15, NULL, 2, NULL, NULL, 15002007, NULL, 21),
  -- Primarina - Hidden Power - TM10
  (730, 73000, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 22),
  -- Primarina - Ice Beam - TM13
  (730, 73000, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 23),
  -- Primarina - Blizzard - TM14
  (730, 73000, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 24),
  -- Primarina - Light Screen - TM16
  (730, 73000, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 25),
  -- Primarina - Protect - TM17
  (730, 73000, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 26),
  -- Primarina - Rain Dance - TM18
  (730, 73000, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 27),
  -- Primarina - Frustration - TM21
  (730, 73000, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 28),
  -- Primarina - Return - TM27
  (730, 73000, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 29),
  -- Primarina - Psychic - TM29
  (730, 73000, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 30),
  -- Primarina - Shadow Ball - TM30
  (730, 73000, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 31),
  -- Primarina - Double Team - TM32
  (730, 73000, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 32),
  -- Primarina - Reflect - TM33
  (730, 73000, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 33),
  -- Primarina - Facade - TM42
  (730, 73000, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 34),
  -- Primarina - Rest - TM44
  (730, 73000, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 35),
  -- Primarina - Attract - TM45
  (730, 73000, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 36),
  -- Primarina - Round - TM48
  (730, 73000, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 37),
  -- Primarina - Echoed Voice - TM49
  (730, 73000, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 38),
  -- Primarina - Energy Ball - TM53
  (730, 73000, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 39),
  -- Primarina - Scald - TM55
  (730, 73000, 503, 15, NULL, 2, NULL, NULL, 15002055, NULL, 40),
  -- Primarina - Acrobatics - TM62
  (730, 73000, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 41),
  -- Primarina - Giga Impact - TM68
  (730, 73000, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 42),
  -- Primarina - Psych Up - TM77
  (730, 73000, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 43),
  -- Primarina - Swagger - TM87
  (730, 73000, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 44),
  -- Primarina - Sleep Talk - TM88
  (730, 73000, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 45),
  -- Primarina - Substitute - TM90
  (730, 73000, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 46),
  -- Primarina - Surf - TM94
  (730, 73000, 57, 15, NULL, 2, NULL, NULL, 15002094, NULL, 47),
  -- Primarina - Waterfall - TM98
  (730, 73000, 127, 15, NULL, 2, NULL, NULL, 15002098, NULL, 48),
  -- Primarina - Dazzling Gleam - TM99
  (730, 73000, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 49),
  -- Primarina - Confide - TM100
  (730, 73000, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 50),
  -- Primarina - Hydro Cannon - Tutor
  (730, 73000, 308, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 51),
  -- Primarina - Water Pledge - Tutor
  (730, 73000, 518, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 52),
  -- Primarina - Sparkling Aria - Evolution
  (730, 73000, 664, 15, NULL, 7, NULL, NULL, NULL, NULL, 53),

  -- Pikipek - Peck - Level 1
  (731, 73100, 64, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pikipek - Growl - Level 3
  (731, 73100, 45, 15, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Pikipek - Echoed Voice - Level 7
  (731, 73100, 497, 15, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Pikipek - Rock Smash - Level 9
  (731, 73100, 249, 15, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Pikipek - Supersonic - Level 13
  (731, 73100, 48, 15, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Pikipek - Pluck - Level 15
  (731, 73100, 365, 15, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Pikipek - Roost - Level 19
  (731, 73100, 355, 15, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Pikipek - Fury Attack - Level 21
  (731, 73100, 31, 15, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Pikipek - Screech - Level 25
  (731, 73100, 103, 15, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Pikipek - Drill Peck - Level 27
  (731, 73100, 65, 15, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Pikipek - Bullet Seed - Level 31
  (731, 73100, 331, 15, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Pikipek - Feather Dance - Level 33
  (731, 73100, 297, 15, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Pikipek - Hyper Voice - Level 37
  (731, 73100, 304, 15, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Pikipek - Work Up - TM01
  (731, 73100, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 14),
  -- Pikipek - Toxic - TM06
  (731, 73100, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 15),
  -- Pikipek - Hidden Power - TM10
  (731, 73100, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 16),
  -- Pikipek - Sunny Day - TM11
  (731, 73100, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 17),
  -- Pikipek - Protect - TM17
  (731, 73100, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 18),
  -- Pikipek - Roost - TM19
  (731, 73100, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 19),
  -- Pikipek - Frustration - TM21
  (731, 73100, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 20),
  -- Pikipek - Smack Down - TM23
  (731, 73100, 479, 15, NULL, 2, NULL, NULL, 15002023, NULL, 21),
  -- Pikipek - Return - TM27
  (731, 73100, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 22),
  -- Pikipek - Brick Break - TM31
  (731, 73100, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 23),
  -- Pikipek - Double Team - TM32
  (731, 73100, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 24),
  -- Pikipek - Aerial Ace - TM40
  (731, 73100, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 25),
  -- Pikipek - Flame Charge - TM43
  (731, 73100, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 26),
  -- Pikipek - Rest - TM44
  (731, 73100, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 27),
  -- Pikipek - Attract - TM45
  (731, 73100, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 28),
  -- Pikipek - Thief - TM46
  (731, 73100, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 29),
  -- Pikipek - Round - TM48
  (731, 73100, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 30),
  -- Pikipek - Echoed Voice - TM49
  (731, 73100, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 31),
  -- Pikipek - Steel Wing - TM51
  (731, 73100, 211, 15, NULL, 2, NULL, NULL, 15002051, NULL, 32),
  -- Pikipek - Swords Dance - TM75
  (731, 73100, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 33),
  -- Pikipek - Fly - TM76
  (731, 73100, 19, 15, NULL, 2, NULL, NULL, 15002076, NULL, 34),
  -- Pikipek - Swagger - TM87
  (731, 73100, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 35),
  -- Pikipek - Sleep Talk - TM88
  (731, 73100, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 36),
  -- Pikipek - U-turn - TM89
  (731, 73100, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 37),
  -- Pikipek - Substitute - TM90
  (731, 73100, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 38),
  -- Pikipek - Confide - TM100
  (731, 73100, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 39),
  -- Pikipek - Mirror Move - Egg
  (731, 73100, 119, 15, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Pikipek - Uproar - Egg
  (731, 73100, 253, 15, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Pikipek - Tailwind - Egg
  (731, 73100, 366, 15, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Pikipek - Brave Bird - Egg
  (731, 73100, 413, 15, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Pikipek - Boomburst - Egg
  (731, 73100, 586, 15, NULL, 5, NULL, NULL, NULL, NULL, 44),

  -- Trumbeak - Growl - Level 1
  (732, 73200, 45, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Trumbeak - Peck - Level 1
  (732, 73200, 64, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Trumbeak - Rock Smash - Level 1
  (732, 73200, 249, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Trumbeak - Rock Blast - Level 1
  (732, 73200, 350, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Trumbeak - Echoed Voice - Level 1
  (732, 73200, 497, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Trumbeak - Growl - Level 3
  (732, 73200, 45, 15, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Trumbeak - Echoed Voice - Level 7
  (732, 73200, 497, 15, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Trumbeak - Rock Smash - Level 9
  (732, 73200, 249, 15, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Trumbeak - Supersonic - Level 13
  (732, 73200, 48, 15, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Trumbeak - Pluck - Level 16
  (732, 73200, 365, 15, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Trumbeak - Roost - Level 21
  (732, 73200, 355, 15, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Trumbeak - Fury Attack - Level 24
  (732, 73200, 31, 15, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Trumbeak - Screech - Level 29
  (732, 73200, 103, 15, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Trumbeak - Drill Peck - Level 32
  (732, 73200, 65, 15, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Trumbeak - Bullet Seed - Level 37
  (732, 73200, 331, 15, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Trumbeak - Feather Dance - Level 40
  (732, 73200, 297, 15, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Trumbeak - Hyper Voice - Level 45
  (732, 73200, 304, 15, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Trumbeak - Work Up - TM01
  (732, 73200, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 18),
  -- Trumbeak - Toxic - TM06
  (732, 73200, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Trumbeak - Hidden Power - TM10
  (732, 73200, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 20),
  -- Trumbeak - Sunny Day - TM11
  (732, 73200, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 21),
  -- Trumbeak - Protect - TM17
  (732, 73200, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 22),
  -- Trumbeak - Roost - TM19
  (732, 73200, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 23),
  -- Trumbeak - Frustration - TM21
  (732, 73200, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 24),
  -- Trumbeak - Smack Down - TM23
  (732, 73200, 479, 15, NULL, 2, NULL, NULL, 15002023, NULL, 25),
  -- Trumbeak - Return - TM27
  (732, 73200, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 26),
  -- Trumbeak - Brick Break - TM31
  (732, 73200, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 27),
  -- Trumbeak - Double Team - TM32
  (732, 73200, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 28),
  -- Trumbeak - Aerial Ace - TM40
  (732, 73200, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 29),
  -- Trumbeak - Flame Charge - TM43
  (732, 73200, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 30),
  -- Trumbeak - Rest - TM44
  (732, 73200, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 31),
  -- Trumbeak - Attract - TM45
  (732, 73200, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 32),
  -- Trumbeak - Thief - TM46
  (732, 73200, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 33),
  -- Trumbeak - Round - TM48
  (732, 73200, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 34),
  -- Trumbeak - Echoed Voice - TM49
  (732, 73200, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 35),
  -- Trumbeak - Steel Wing - TM51
  (732, 73200, 211, 15, NULL, 2, NULL, NULL, 15002051, NULL, 36),
  -- Trumbeak - Swords Dance - TM75
  (732, 73200, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 37),
  -- Trumbeak - Fly - TM76
  (732, 73200, 19, 15, NULL, 2, NULL, NULL, 15002076, NULL, 38),
  -- Trumbeak - Swagger - TM87
  (732, 73200, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 39),
  -- Trumbeak - Sleep Talk - TM88
  (732, 73200, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 40),
  -- Trumbeak - U-turn - TM89
  (732, 73200, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 41),
  -- Trumbeak - Substitute - TM90
  (732, 73200, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 42),
  -- Trumbeak - Confide - TM100
  (732, 73200, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 43),

  -- Toucannon - Growl - Level 1
  (733, 73300, 45, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toucannon - Peck - Level 1
  (733, 73300, 64, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toucannon - Rock Smash - Level 1
  (733, 73300, 249, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toucannon - Rock Blast - Level 1
  (733, 73300, 350, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Toucannon - Echoed Voice - Level 1
  (733, 73300, 497, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Toucannon - Beak Blast - Level 1
  (733, 73300, 690, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Toucannon - Growl - Level 3
  (733, 73300, 45, 15, NULL, 1, 3, NULL, NULL, NULL, 7),
  -- Toucannon - Echoed Voice - Level 7
  (733, 73300, 497, 15, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Toucannon - Rock Smash - Level 9
  (733, 73300, 249, 15, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Toucannon - Supersonic - Level 13
  (733, 73300, 48, 15, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Toucannon - Pluck - Level 16
  (733, 73300, 365, 15, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Toucannon - Roost - Level 21
  (733, 73300, 355, 15, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Toucannon - Fury Attack - Level 24
  (733, 73300, 31, 15, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Toucannon - Screech - Level 30
  (733, 73300, 103, 15, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Toucannon - Drill Peck - Level 34
  (733, 73300, 65, 15, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Toucannon - Bullet Seed - Level 40
  (733, 73300, 331, 15, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Toucannon - Feather Dance - Level 44
  (733, 73300, 297, 15, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Toucannon - Hyper Voice - Level 50
  (733, 73300, 304, 15, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Toucannon - Work Up - TM01
  (733, 73300, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 19),
  -- Toucannon - Toxic - TM06
  (733, 73300, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 20),
  -- Toucannon - Hidden Power - TM10
  (733, 73300, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 21),
  -- Toucannon - Sunny Day - TM11
  (733, 73300, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 22),
  -- Toucannon - Protect - TM17
  (733, 73300, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 23),
  -- Toucannon - Roost - TM19
  (733, 73300, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 24),
  -- Toucannon - Frustration - TM21
  (733, 73300, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 25),
  -- Toucannon - Smack Down - TM23
  (733, 73300, 479, 15, NULL, 2, NULL, NULL, 15002023, NULL, 26),
  -- Toucannon - Return - TM27
  (733, 73300, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 27),
  -- Toucannon - Brick Break - TM31
  (733, 73300, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 28),
  -- Toucannon - Double Team - TM32
  (733, 73300, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 29),
  -- Toucannon - Aerial Ace - TM40
  (733, 73300, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 30),
  -- Toucannon - Flame Charge - TM43
  (733, 73300, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 31),
  -- Toucannon - Rest - TM44
  (733, 73300, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 32),
  -- Toucannon - Attract - TM45
  (733, 73300, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 33),
  -- Toucannon - Thief - TM46
  (733, 73300, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 34),
  -- Toucannon - Round - TM48
  (733, 73300, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 35),
  -- Toucannon - Echoed Voice - TM49
  (733, 73300, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 36),
  -- Toucannon - Overheat - TM50
  (733, 73300, 315, 15, NULL, 2, NULL, NULL, 15002050, NULL, 37),
  -- Toucannon - Steel Wing - TM51
  (733, 73300, 211, 15, NULL, 2, NULL, NULL, 15002051, NULL, 38),
  -- Toucannon - Swords Dance - TM75
  (733, 73300, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 39),
  -- Toucannon - Fly - TM76
  (733, 73300, 19, 15, NULL, 2, NULL, NULL, 15002076, NULL, 40),
  -- Toucannon - Swagger - TM87
  (733, 73300, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 41),
  -- Toucannon - Sleep Talk - TM88
  (733, 73300, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 42),
  -- Toucannon - U-turn - TM89
  (733, 73300, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 43),
  -- Toucannon - Substitute - TM90
  (733, 73300, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 44),
  -- Toucannon - Flash Cannon - TM91
  (733, 73300, 430, 15, NULL, 2, NULL, NULL, 15002091, NULL, 45),
  -- Toucannon - Confide - TM100
  (733, 73300, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 46),
  -- Toucannon - Beak Blast - Evolution
  (733, 73300, 690, 15, NULL, 7, NULL, NULL, NULL, NULL, 47),

  -- Yungoos - Tackle - Level 1
  (734, 73400, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yungoos - Leer - Level 3
  (734, 73400, 43, 15, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Yungoos - Pursuit - Level 7
  (734, 73400, 228, 15, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Yungoos - Sand Attack - Level 10
  (734, 73400, 28, 15, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Yungoos - Odor Sleuth - Level 13
  (734, 73400, 316, 15, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Yungoos - Bide - Level 16
  (734, 73400, 117, 15, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Yungoos - Bite - Level 19
  (734, 73400, 44, 15, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Yungoos - Mud-Slap - Level 22
  (734, 73400, 189, 15, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Yungoos - Super Fang - Level 25
  (734, 73400, 162, 15, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Yungoos - Take Down - Level 28
  (734, 73400, 36, 15, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Yungoos - Scary Face - Level 31
  (734, 73400, 184, 15, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Yungoos - Crunch - Level 34
  (734, 73400, 242, 15, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Yungoos - Hyper Fang - Level 37
  (734, 73400, 158, 15, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Yungoos - Yawn - Level 40
  (734, 73400, 281, 15, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Yungoos - Thrash - Level 43
  (734, 73400, 37, 15, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Yungoos - Rest - Level 46
  (734, 73400, 156, 15, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Yungoos - Work Up - TM01
  (734, 73400, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 17),
  -- Yungoos - Toxic - TM06
  (734, 73400, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 18),
  -- Yungoos - Hidden Power - TM10
  (734, 73400, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 19),
  -- Yungoos - Taunt - TM12
  (734, 73400, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 20),
  -- Yungoos - Protect - TM17
  (734, 73400, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 21),
  -- Yungoos - Frustration - TM21
  (734, 73400, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 22),
  -- Yungoos - Earthquake - TM26
  (734, 73400, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 23),
  -- Yungoos - Return - TM27
  (734, 73400, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 24),
  -- Yungoos - Double Team - TM32
  (734, 73400, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 25),
  -- Yungoos - Sandstorm - TM37
  (734, 73400, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 26),
  -- Yungoos - Rock Tomb - TM39
  (734, 73400, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 27),
  -- Yungoos - Torment - TM41
  (734, 73400, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 28),
  -- Yungoos - Facade - TM42
  (734, 73400, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 29),
  -- Yungoos - Rest - TM44
  (734, 73400, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 30),
  -- Yungoos - Attract - TM45
  (734, 73400, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 31),
  -- Yungoos - Thief - TM46
  (734, 73400, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 32),
  -- Yungoos - Round - TM48
  (734, 73400, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 33),
  -- Yungoos - Echoed Voice - TM49
  (734, 73400, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 34),
  -- Yungoos - Payback - TM66
  (734, 73400, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 35),
  -- Yungoos - Swagger - TM87
  (734, 73400, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 36),
  -- Yungoos - Sleep Talk - TM88
  (734, 73400, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 37),
  -- Yungoos - U-turn - TM89
  (734, 73400, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 38),
  -- Yungoos - Substitute - TM90
  (734, 73400, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 39),
  -- Yungoos - Confide - TM100
  (734, 73400, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 40),
  -- Yungoos - Revenge - Egg
  (734, 73400, 279, 15, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Yungoos - Last Resort - Egg
  (734, 73400, 387, 15, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Yungoos - Thunder Fang - Egg
  (734, 73400, 422, 15, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Yungoos - Ice Fang - Egg
  (734, 73400, 423, 15, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Yungoos - Fire Fang - Egg
  (734, 73400, 424, 15, NULL, 5, NULL, NULL, NULL, NULL, 45),

  -- Gumshoos - Sand Attack - Level 1
  (735, 73500, 28, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gumshoos - Tackle - Level 1
  (735, 73500, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gumshoos - Leer - Level 1
  (735, 73500, 43, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gumshoos - Pursuit - Level 1
  (735, 73500, 228, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gumshoos - Leer - Level 3
  (735, 73500, 43, 15, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Gumshoos - Pursuit - Level 7
  (735, 73500, 228, 15, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Gumshoos - Sand Attack - Level 10
  (735, 73500, 28, 15, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Gumshoos - Odor Sleuth - Level 13
  (735, 73500, 316, 15, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Gumshoos - Bide - Level 16
  (735, 73500, 117, 15, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gumshoos - Bite - Level 19
  (735, 73500, 44, 15, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Gumshoos - Mud-Slap - Level 23
  (735, 73500, 189, 15, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Gumshoos - Super Fang - Level 27
  (735, 73500, 162, 15, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Gumshoos - Take Down - Level 31
  (735, 73500, 36, 15, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Gumshoos - Scary Face - Level 35
  (735, 73500, 184, 15, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Gumshoos - Crunch - Level 39
  (735, 73500, 242, 15, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Gumshoos - Hyper Fang - Level 43
  (735, 73500, 158, 15, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Gumshoos - Yawn - Level 47
  (735, 73500, 281, 15, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Gumshoos - Thrash - Level 51
  (735, 73500, 37, 15, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Gumshoos - Rest - Level 55
  (735, 73500, 156, 15, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Gumshoos - Work Up - TM01
  (735, 73500, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 20),
  -- Gumshoos - Roar - TM05
  (735, 73500, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 21),
  -- Gumshoos - Toxic - TM06
  (735, 73500, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 22),
  -- Gumshoos - Hidden Power - TM10
  (735, 73500, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 23),
  -- Gumshoos - Taunt - TM12
  (735, 73500, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 24),
  -- Gumshoos - Protect - TM17
  (735, 73500, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 25),
  -- Gumshoos - Frustration - TM21
  (735, 73500, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 26),
  -- Gumshoos - Earthquake - TM26
  (735, 73500, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 27),
  -- Gumshoos - Return - TM27
  (735, 73500, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 28),
  -- Gumshoos - Double Team - TM32
  (735, 73500, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 29),
  -- Gumshoos - Sandstorm - TM37
  (735, 73500, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 30),
  -- Gumshoos - Rock Tomb - TM39
  (735, 73500, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 31),
  -- Gumshoos - Torment - TM41
  (735, 73500, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 32),
  -- Gumshoos - Facade - TM42
  (735, 73500, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 33),
  -- Gumshoos - Rest - TM44
  (735, 73500, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 34),
  -- Gumshoos - Attract - TM45
  (735, 73500, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 35),
  -- Gumshoos - Thief - TM46
  (735, 73500, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 36),
  -- Gumshoos - Round - TM48
  (735, 73500, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 37),
  -- Gumshoos - Echoed Voice - TM49
  (735, 73500, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 38),
  -- Gumshoos - Fling - TM56
  (735, 73500, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 39),
  -- Gumshoos - Payback - TM66
  (735, 73500, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 40),
  -- Gumshoos - Bulldoze - TM78
  (735, 73500, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 41),
  -- Gumshoos - Swagger - TM87
  (735, 73500, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 42),
  -- Gumshoos - Sleep Talk - TM88
  (735, 73500, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 43),
  -- Gumshoos - U-turn - TM89
  (735, 73500, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 44),
  -- Gumshoos - Substitute - TM90
  (735, 73500, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 45),
  -- Gumshoos - Confide - TM100
  (735, 73500, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 46),

  -- Grubbin - Vise Grip - Level 1
  (736, 73600, 11, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grubbin - String Shot - Level 4
  (736, 73600, 81, 15, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Grubbin - Mud-Slap - Level 7
  (736, 73600, 189, 15, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Grubbin - Bite - Level 10
  (736, 73600, 44, 15, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Grubbin - Bug Bite - Level 13
  (736, 73600, 450, 15, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Grubbin - Spark - Level 16
  (736, 73600, 209, 15, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Grubbin - Acrobatics - Level 19
  (736, 73600, 512, 15, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Grubbin - Crunch - Level 22
  (736, 73600, 242, 15, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Grubbin - X-Scissor - Level 25
  (736, 73600, 404, 15, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Grubbin - Dig - Level 28
  (736, 73600, 91, 15, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Grubbin - Toxic - TM06
  (736, 73600, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 11),
  -- Grubbin - Hidden Power - TM10
  (736, 73600, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 12),
  -- Grubbin - Light Screen - TM16
  (736, 73600, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 13),
  -- Grubbin - Protect - TM17
  (736, 73600, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 14),
  -- Grubbin - Rain Dance - TM18
  (736, 73600, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 15),
  -- Grubbin - Frustration - TM21
  (736, 73600, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 16),
  -- Grubbin - Thunderbolt - TM24
  (736, 73600, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 17),
  -- Grubbin - Return - TM27
  (736, 73600, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 18),
  -- Grubbin - Double Team - TM32
  (736, 73600, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 19),
  -- Grubbin - Facade - TM42
  (736, 73600, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 20),
  -- Grubbin - Rest - TM44
  (736, 73600, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 21),
  -- Grubbin - Attract - TM45
  (736, 73600, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 22),
  -- Grubbin - Round - TM48
  (736, 73600, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 23),
  -- Grubbin - Charge Beam - TM57
  (736, 73600, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 24),
  -- Grubbin - Acrobatics - TM62
  (736, 73600, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 25),
  -- Grubbin - Volt Switch - TM72
  (736, 73600, 521, 15, NULL, 2, NULL, NULL, 15002072, NULL, 26),
  -- Grubbin - Thunder Wave - TM73
  (736, 73600, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 27),
  -- Grubbin - X-Scissor - TM81
  (736, 73600, 404, 15, NULL, 2, NULL, NULL, 15002081, NULL, 28),
  -- Grubbin - Poison Jab - TM84
  (736, 73600, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 29),
  -- Grubbin - Swagger - TM87
  (736, 73600, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 30),
  -- Grubbin - Sleep Talk - TM88
  (736, 73600, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 31),
  -- Grubbin - Substitute - TM90
  (736, 73600, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 32),
  -- Grubbin - Wild Charge - TM93
  (736, 73600, 528, 15, NULL, 2, NULL, NULL, 15002093, NULL, 33),
  -- Grubbin - Confide - TM100
  (736, 73600, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 34),
  -- Grubbin - Harden - Egg
  (736, 73600, 106, 15, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Grubbin - Endure - Egg
  (736, 73600, 203, 15, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Grubbin - Mud Shot - Egg
  (736, 73600, 341, 15, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Grubbin - Electroweb - Egg
  (736, 73600, 527, 15, NULL, 5, NULL, NULL, NULL, NULL, 38),

  -- Charjabug - Vise Grip - Level 1
  (737, 73700, 11, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charjabug - Bite - Level 1
  (737, 73700, 44, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charjabug - String Shot - Level 1
  (737, 73700, 81, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charjabug - Mud-Slap - Level 1
  (737, 73700, 189, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Charjabug - Charge - Level 1
  (737, 73700, 268, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Charjabug - String Shot - Level 4
  (737, 73700, 81, 15, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Charjabug - Mud-Slap - Level 7
  (737, 73700, 189, 15, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Charjabug - Bite - Level 10
  (737, 73700, 44, 15, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Charjabug - Bug Bite - Level 13
  (737, 73700, 450, 15, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Charjabug - Spark - Level 16
  (737, 73700, 209, 15, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Charjabug - Acrobatics - Level 19
  (737, 73700, 512, 15, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Charjabug - Crunch - Level 25
  (737, 73700, 242, 15, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Charjabug - X-Scissor - Level 31
  (737, 73700, 404, 15, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Charjabug - Dig - Level 37
  (737, 73700, 91, 15, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Charjabug - Discharge - Level 43
  (737, 73700, 435, 15, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Charjabug - Iron Defense - Level 49
  (737, 73700, 334, 15, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Charjabug - Toxic - TM06
  (737, 73700, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Charjabug - Hidden Power - TM10
  (737, 73700, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Charjabug - Light Screen - TM16
  (737, 73700, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 19),
  -- Charjabug - Protect - TM17
  (737, 73700, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 20),
  -- Charjabug - Rain Dance - TM18
  (737, 73700, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 21),
  -- Charjabug - Frustration - TM21
  (737, 73700, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 22),
  -- Charjabug - Thunderbolt - TM24
  (737, 73700, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 23),
  -- Charjabug - Return - TM27
  (737, 73700, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 24),
  -- Charjabug - Double Team - TM32
  (737, 73700, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 25),
  -- Charjabug - Facade - TM42
  (737, 73700, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 26),
  -- Charjabug - Rest - TM44
  (737, 73700, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 27),
  -- Charjabug - Attract - TM45
  (737, 73700, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 28),
  -- Charjabug - Round - TM48
  (737, 73700, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 29),
  -- Charjabug - Charge Beam - TM57
  (737, 73700, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 30),
  -- Charjabug - Acrobatics - TM62
  (737, 73700, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 31),
  -- Charjabug - Volt Switch - TM72
  (737, 73700, 521, 15, NULL, 2, NULL, NULL, 15002072, NULL, 32),
  -- Charjabug - Thunder Wave - TM73
  (737, 73700, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 33),
  -- Charjabug - X-Scissor - TM81
  (737, 73700, 404, 15, NULL, 2, NULL, NULL, 15002081, NULL, 34),
  -- Charjabug - Poison Jab - TM84
  (737, 73700, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 35),
  -- Charjabug - Swagger - TM87
  (737, 73700, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 36),
  -- Charjabug - Sleep Talk - TM88
  (737, 73700, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 37),
  -- Charjabug - Substitute - TM90
  (737, 73700, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 38),
  -- Charjabug - Wild Charge - TM93
  (737, 73700, 528, 15, NULL, 2, NULL, NULL, 15002093, NULL, 39),
  -- Charjabug - Confide - TM100
  (737, 73700, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 40),
  -- Charjabug - Charge - Evolution
  (737, 73700, 268, 15, NULL, 7, NULL, NULL, NULL, NULL, 41),

  -- Vikavolt - Vise Grip - Level 1
  (738, 73800, 11, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vikavolt - Bite - Level 1
  (738, 73800, 44, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vikavolt - String Shot - Level 1
  (738, 73800, 81, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vikavolt - Thunderbolt - Level 1
  (738, 73800, 85, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vikavolt - Mud-Slap - Level 1
  (738, 73800, 189, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vikavolt - Charge - Level 1
  (738, 73800, 268, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Vikavolt - Air Slash - Level 1
  (738, 73800, 403, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Vikavolt - String Shot - Level 4
  (738, 73800, 81, 15, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Vikavolt - Mud-Slap - Level 7
  (738, 73800, 189, 15, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Vikavolt - Bite - Level 10
  (738, 73800, 44, 15, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Vikavolt - Bug Bite - Level 13
  (738, 73800, 450, 15, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Vikavolt - Spark - Level 16
  (738, 73800, 209, 15, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Vikavolt - Acrobatics - Level 19
  (738, 73800, 512, 15, NULL, 1, 19, NULL, NULL, NULL, 13),
  -- Vikavolt - Guillotine - Level 25
  (738, 73800, 12, 15, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Vikavolt - Bug Buzz - Level 31
  (738, 73800, 405, 15, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Vikavolt - Dig - Level 37
  (738, 73800, 91, 15, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Vikavolt - Zap Cannon - Level 41
  (738, 73800, 192, 15, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Vikavolt - Agility - Level 49
  (738, 73800, 97, 15, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Vikavolt - Toxic - TM06
  (738, 73800, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Vikavolt - Hidden Power - TM10
  (738, 73800, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 20),
  -- Vikavolt - Hyper Beam - TM15
  (738, 73800, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 21),
  -- Vikavolt - Light Screen - TM16
  (738, 73800, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 22),
  -- Vikavolt - Protect - TM17
  (738, 73800, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 23),
  -- Vikavolt - Rain Dance - TM18
  (738, 73800, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 24),
  -- Vikavolt - Roost - TM19
  (738, 73800, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 25),
  -- Vikavolt - Frustration - TM21
  (738, 73800, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 26),
  -- Vikavolt - Solar Beam - TM22
  (738, 73800, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 27),
  -- Vikavolt - Thunderbolt - TM24
  (738, 73800, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 28),
  -- Vikavolt - Thunder - TM25
  (738, 73800, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 29),
  -- Vikavolt - Return - TM27
  (738, 73800, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 30),
  -- Vikavolt - Double Team - TM32
  (738, 73800, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 31),
  -- Vikavolt - Facade - TM42
  (738, 73800, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 32),
  -- Vikavolt - Rest - TM44
  (738, 73800, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 33),
  -- Vikavolt - Attract - TM45
  (738, 73800, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 34),
  -- Vikavolt - Round - TM48
  (738, 73800, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 35),
  -- Vikavolt - Energy Ball - TM53
  (738, 73800, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 36),
  -- Vikavolt - Charge Beam - TM57
  (738, 73800, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 37),
  -- Vikavolt - Sky Drop - TM58
  (738, 73800, 507, 15, NULL, 2, NULL, NULL, 15002058, NULL, 38),
  -- Vikavolt - Acrobatics - TM62
  (738, 73800, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 39),
  -- Vikavolt - Giga Impact - TM68
  (738, 73800, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 40),
  -- Vikavolt - Volt Switch - TM72
  (738, 73800, 521, 15, NULL, 2, NULL, NULL, 15002072, NULL, 41),
  -- Vikavolt - Thunder Wave - TM73
  (738, 73800, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 42),
  -- Vikavolt - X-Scissor - TM81
  (738, 73800, 404, 15, NULL, 2, NULL, NULL, 15002081, NULL, 43),
  -- Vikavolt - Poison Jab - TM84
  (738, 73800, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 44),
  -- Vikavolt - Swagger - TM87
  (738, 73800, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 45),
  -- Vikavolt - Sleep Talk - TM88
  (738, 73800, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 46),
  -- Vikavolt - Substitute - TM90
  (738, 73800, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 47),
  -- Vikavolt - Flash Cannon - TM91
  (738, 73800, 430, 15, NULL, 2, NULL, NULL, 15002091, NULL, 48),
  -- Vikavolt - Wild Charge - TM93
  (738, 73800, 528, 15, NULL, 2, NULL, NULL, 15002093, NULL, 49),
  -- Vikavolt - Confide - TM100
  (738, 73800, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 50),
  -- Vikavolt - Thunderbolt - Evolution
  (738, 73800, 85, 15, NULL, 7, NULL, NULL, NULL, NULL, 51),

  -- Crabrawler - Bubble - Level 1
  (739, 73900, 145, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crabrawler - Rock Smash - Level 5
  (739, 73900, 249, 15, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Crabrawler - Leer - Level 9
  (739, 73900, 43, 15, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Crabrawler - Pursuit - Level 13
  (739, 73900, 228, 15, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Crabrawler - Bubble Beam - Level 17
  (739, 73900, 61, 15, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Crabrawler - Power-Up Punch - Level 22
  (739, 73900, 612, 15, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Crabrawler - Dizzy Punch - Level 25
  (739, 73900, 146, 15, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Crabrawler - Payback - Level 29
  (739, 73900, 371, 15, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Crabrawler - Reversal - Level 33
  (739, 73900, 179, 15, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Crabrawler - Crabhammer - Level 37
  (739, 73900, 152, 15, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Crabrawler - Iron Defense - Level 42
  (739, 73900, 334, 15, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Crabrawler - Dynamic Punch - Level 45
  (739, 73900, 223, 15, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Crabrawler - Close Combat - Level 49
  (739, 73900, 370, 15, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Crabrawler - Work Up - TM01
  (739, 73900, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 14),
  -- Crabrawler - Toxic - TM06
  (739, 73900, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 15),
  -- Crabrawler - Bulk Up - TM08
  (739, 73900, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 16),
  -- Crabrawler - Hidden Power - TM10
  (739, 73900, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 17),
  -- Crabrawler - Sunny Day - TM11
  (739, 73900, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 18),
  -- Crabrawler - Protect - TM17
  (739, 73900, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 19),
  -- Crabrawler - Rain Dance - TM18
  (739, 73900, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 20),
  -- Crabrawler - Frustration - TM21
  (739, 73900, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 21),
  -- Crabrawler - Earthquake - TM26
  (739, 73900, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 22),
  -- Crabrawler - Return - TM27
  (739, 73900, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 23),
  -- Crabrawler - Brick Break - TM31
  (739, 73900, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 24),
  -- Crabrawler - Double Team - TM32
  (739, 73900, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 25),
  -- Crabrawler - Rock Tomb - TM39
  (739, 73900, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 26),
  -- Crabrawler - Facade - TM42
  (739, 73900, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 27),
  -- Crabrawler - Rest - TM44
  (739, 73900, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 28),
  -- Crabrawler - Attract - TM45
  (739, 73900, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 29),
  -- Crabrawler - Thief - TM46
  (739, 73900, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 30),
  -- Crabrawler - Round - TM48
  (739, 73900, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 31),
  -- Crabrawler - Focus Blast - TM52
  (739, 73900, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 32),
  -- Crabrawler - Scald - TM55
  (739, 73900, 503, 15, NULL, 2, NULL, NULL, 15002055, NULL, 33),
  -- Crabrawler - Fling - TM56
  (739, 73900, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 34),
  -- Crabrawler - Brutal Swing - TM59
  (739, 73900, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 35),
  -- Crabrawler - Payback - TM66
  (739, 73900, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 36),
  -- Crabrawler - Stone Edge - TM71
  (739, 73900, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 37),
  -- Crabrawler - Bulldoze - TM78
  (739, 73900, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 38),
  -- Crabrawler - Frost Breath - TM79
  (739, 73900, 524, 15, NULL, 2, NULL, NULL, 15002079, NULL, 39),
  -- Crabrawler - Rock Slide - TM80
  (739, 73900, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 40),
  -- Crabrawler - Swagger - TM87
  (739, 73900, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 41),
  -- Crabrawler - Sleep Talk - TM88
  (739, 73900, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 42),
  -- Crabrawler - Substitute - TM90
  (739, 73900, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 43),
  -- Crabrawler - Confide - TM100
  (739, 73900, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 44),
  -- Crabrawler - Amnesia - Egg
  (739, 73900, 133, 15, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Crabrawler - Superpower - Egg
  (739, 73900, 276, 15, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Crabrawler - Endeavor - Egg
  (739, 73900, 283, 15, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Crabrawler - Wide Guard - Egg
  (739, 73900, 469, 15, NULL, 5, NULL, NULL, NULL, NULL, 48),

  -- Crabominable - Ice Punch - Level 1
  (740, 74000, 8, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crabominable - Leer - Level 1
  (740, 74000, 43, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crabominable - Bubble - Level 1
  (740, 74000, 145, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crabominable - Pursuit - Level 1
  (740, 74000, 228, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Crabominable - Rock Smash - Level 1
  (740, 74000, 249, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Crabominable - Rock Smash - Level 5
  (740, 74000, 249, 15, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Crabominable - Leer - Level 9
  (740, 74000, 43, 15, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Crabominable - Pursuit - Level 13
  (740, 74000, 228, 15, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Crabominable - Bubble Beam - Level 17
  (740, 74000, 61, 15, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Crabominable - Power-Up Punch - Level 22
  (740, 74000, 612, 15, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Crabominable - Dizzy Punch - Level 25
  (740, 74000, 146, 15, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Crabominable - Avalanche - Level 29
  (740, 74000, 419, 15, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Crabominable - Reversal - Level 33
  (740, 74000, 179, 15, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Crabominable - Ice Hammer - Level 37
  (740, 74000, 665, 15, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Crabominable - Iron Defense - Level 42
  (740, 74000, 334, 15, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Crabominable - Dynamic Punch - Level 45
  (740, 74000, 223, 15, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Crabominable - Close Combat - Level 49
  (740, 74000, 370, 15, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Crabominable - Work Up - TM01
  (740, 74000, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 18),
  -- Crabominable - Toxic - TM06
  (740, 74000, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Crabominable - Hail - TM07
  (740, 74000, 258, 15, NULL, 2, NULL, NULL, 15002007, NULL, 20),
  -- Crabominable - Bulk Up - TM08
  (740, 74000, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 21),
  -- Crabominable - Hidden Power - TM10
  (740, 74000, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 22),
  -- Crabominable - Sunny Day - TM11
  (740, 74000, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 23),
  -- Crabominable - Ice Beam - TM13
  (740, 74000, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 24),
  -- Crabominable - Blizzard - TM14
  (740, 74000, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 25),
  -- Crabominable - Protect - TM17
  (740, 74000, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 26),
  -- Crabominable - Rain Dance - TM18
  (740, 74000, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 27),
  -- Crabominable - Frustration - TM21
  (740, 74000, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 28),
  -- Crabominable - Earthquake - TM26
  (740, 74000, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 29),
  -- Crabominable - Return - TM27
  (740, 74000, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 30),
  -- Crabominable - Brick Break - TM31
  (740, 74000, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 31),
  -- Crabominable - Double Team - TM32
  (740, 74000, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 32),
  -- Crabominable - Rock Tomb - TM39
  (740, 74000, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 33),
  -- Crabominable - Facade - TM42
  (740, 74000, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 34),
  -- Crabominable - Rest - TM44
  (740, 74000, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 35),
  -- Crabominable - Attract - TM45
  (740, 74000, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 36),
  -- Crabominable - Thief - TM46
  (740, 74000, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 37),
  -- Crabominable - Round - TM48
  (740, 74000, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 38),
  -- Crabominable - Focus Blast - TM52
  (740, 74000, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 39),
  -- Crabominable - Scald - TM55
  (740, 74000, 503, 15, NULL, 2, NULL, NULL, 15002055, NULL, 40),
  -- Crabominable - Fling - TM56
  (740, 74000, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 41),
  -- Crabominable - Brutal Swing - TM59
  (740, 74000, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 42),
  -- Crabominable - Payback - TM66
  (740, 74000, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 43),
  -- Crabominable - Giga Impact - TM68
  (740, 74000, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 44),
  -- Crabominable - Stone Edge - TM71
  (740, 74000, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 45),
  -- Crabominable - Bulldoze - TM78
  (740, 74000, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 46),
  -- Crabominable - Frost Breath - TM79
  (740, 74000, 524, 15, NULL, 2, NULL, NULL, 15002079, NULL, 47),
  -- Crabominable - Rock Slide - TM80
  (740, 74000, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 48),
  -- Crabominable - Swagger - TM87
  (740, 74000, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 49),
  -- Crabominable - Sleep Talk - TM88
  (740, 74000, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 50),
  -- Crabominable - Substitute - TM90
  (740, 74000, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 51),
  -- Crabominable - Confide - TM100
  (740, 74000, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 52),
  -- Crabominable - Ice Punch - Evolution
  (740, 74000, 8, 15, NULL, 7, NULL, NULL, NULL, NULL, 53),

  -- Oricorio - Pound - Level 1
  (741, 74100, 1, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oricorio - Growl - Level 4
  (741, 74100, 45, 15, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Oricorio - Peck - Level 6
  (741, 74100, 64, 15, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Oricorio - Helping Hand - Level 10
  (741, 74100, 270, 15, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Oricorio - Air Cutter - Level 13
  (741, 74100, 314, 15, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Oricorio - Baton Pass - Level 16
  (741, 74100, 226, 15, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Oricorio - Feather Dance - Level 20
  (741, 74100, 297, 15, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Oricorio - Double Slap - Level 23
  (741, 74100, 3, 15, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Oricorio - Teeter Dance - Level 26
  (741, 74100, 298, 15, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Oricorio - Roost - Level 30
  (741, 74100, 355, 15, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Oricorio - Captivate - Level 33
  (741, 74100, 445, 15, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Oricorio - Air Slash - Level 36
  (741, 74100, 403, 15, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Oricorio - Revelation Dance - Level 40
  (741, 74100, 686, 15, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Oricorio - Mirror Move - Level 43
  (741, 74100, 119, 15, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Oricorio - Agility - Level 46
  (741, 74100, 97, 15, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Oricorio - Hurricane - Level 50
  (741, 74100, 542, 15, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Oricorio - Work Up - TM01
  (741, 74100, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 17),
  -- Oricorio - Calm Mind - TM04
  (741, 74100, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 18),
  -- Oricorio - Toxic - TM06
  (741, 74100, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Oricorio - Hidden Power - TM10
  (741, 74100, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 20),
  -- Oricorio - Taunt - TM12
  (741, 74100, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 21),
  -- Oricorio - Protect - TM17
  (741, 74100, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 22),
  -- Oricorio - Roost - TM19
  (741, 74100, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 23),
  -- Oricorio - Safeguard - TM20
  (741, 74100, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 24),
  -- Oricorio - Frustration - TM21
  (741, 74100, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 25),
  -- Oricorio - Return - TM27
  (741, 74100, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 26),
  -- Oricorio - Double Team - TM32
  (741, 74100, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 27),
  -- Oricorio - Sandstorm - TM37
  (741, 74100, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 28),
  -- Oricorio - Aerial Ace - TM40
  (741, 74100, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 29),
  -- Oricorio - Facade - TM42
  (741, 74100, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 30),
  -- Oricorio - Rest - TM44
  (741, 74100, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 31),
  -- Oricorio - Attract - TM45
  (741, 74100, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 32),
  -- Oricorio - Round - TM48
  (741, 74100, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 33),
  -- Oricorio - Steel Wing - TM51
  (741, 74100, 211, 15, NULL, 2, NULL, NULL, 15002051, NULL, 34),
  -- Oricorio - Quash - TM60
  (741, 74100, 511, 15, NULL, 2, NULL, NULL, 15002060, NULL, 35),
  -- Oricorio - Acrobatics - TM62
  (741, 74100, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 36),
  -- Oricorio - Embargo - TM63
  (741, 74100, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 37),
  -- Oricorio - Swords Dance - TM75
  (741, 74100, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 38),
  -- Oricorio - Fly - TM76
  (741, 74100, 19, 15, NULL, 2, NULL, NULL, 15002076, NULL, 39),
  -- Oricorio - Swagger - TM87
  (741, 74100, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 40),
  -- Oricorio - Sleep Talk - TM88
  (741, 74100, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 41),
  -- Oricorio - U-turn - TM89
  (741, 74100, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 42),
  -- Oricorio - Substitute - TM90
  (741, 74100, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 43),
  -- Oricorio - Confide - TM100
  (741, 74100, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 44),
  -- Oricorio - Safeguard - Egg
  (741, 74100, 219, 15, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Oricorio - Pluck - Egg
  (741, 74100, 365, 15, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Oricorio - Tailwind - Egg
  (741, 74100, 366, 15, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Oricorio - Captivate - Egg
  (741, 74100, 445, 15, NULL, 5, NULL, NULL, NULL, NULL, 48),

  -- Cutiefly - Absorb - Level 1
  (742, 74200, 71, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cutiefly - Fairy Wind - Level 4
  (742, 74200, 584, 15, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Cutiefly - Stun Spore - Level 7
  (742, 74200, 78, 15, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Cutiefly - Struggle Bug - Level 10
  (742, 74200, 522, 15, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cutiefly - Silver Wind - Level 13
  (742, 74200, 318, 15, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cutiefly - Draining Kiss - Level 16
  (742, 74200, 577, 15, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Cutiefly - Sweet Scent - Level 21
  (742, 74200, 230, 15, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Cutiefly - Bug Buzz - Level 26
  (742, 74200, 405, 15, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Cutiefly - Dazzling Gleam - Level 31
  (742, 74200, 605, 15, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Cutiefly - Aromatherapy - Level 36
  (742, 74200, 312, 15, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Cutiefly - Quiver Dance - Level 41
  (742, 74200, 483, 15, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Cutiefly - Calm Mind - TM04
  (742, 74200, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 12),
  -- Cutiefly - Toxic - TM06
  (742, 74200, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 13),
  -- Cutiefly - Hidden Power - TM10
  (742, 74200, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 14),
  -- Cutiefly - Sunny Day - TM11
  (742, 74200, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 15),
  -- Cutiefly - Light Screen - TM16
  (742, 74200, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 16),
  -- Cutiefly - Protect - TM17
  (742, 74200, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 17),
  -- Cutiefly - Roost - TM19
  (742, 74200, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 18),
  -- Cutiefly - Safeguard - TM20
  (742, 74200, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 19),
  -- Cutiefly - Frustration - TM21
  (742, 74200, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 20),
  -- Cutiefly - Return - TM27
  (742, 74200, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 21),
  -- Cutiefly - Leech Life - TM28
  (742, 74200, 141, 15, NULL, 2, NULL, NULL, 15002028, NULL, 22),
  -- Cutiefly - Psychic - TM29
  (742, 74200, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 23),
  -- Cutiefly - Double Team - TM32
  (742, 74200, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 24),
  -- Cutiefly - Reflect - TM33
  (742, 74200, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 25),
  -- Cutiefly - Aerial Ace - TM40
  (742, 74200, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 26),
  -- Cutiefly - Facade - TM42
  (742, 74200, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 27),
  -- Cutiefly - Rest - TM44
  (742, 74200, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 28),
  -- Cutiefly - Attract - TM45
  (742, 74200, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 29),
  -- Cutiefly - Thief - TM46
  (742, 74200, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 30),
  -- Cutiefly - Round - TM48
  (742, 74200, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 31),
  -- Cutiefly - Energy Ball - TM53
  (742, 74200, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 32),
  -- Cutiefly - Acrobatics - TM62
  (742, 74200, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 33),
  -- Cutiefly - Psych Up - TM77
  (742, 74200, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 34),
  -- Cutiefly - Infestation - TM83
  (742, 74200, 611, 15, NULL, 2, NULL, NULL, 15002083, NULL, 35),
  -- Cutiefly - Dream Eater - TM85
  (742, 74200, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 36),
  -- Cutiefly - Swagger - TM87
  (742, 74200, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 37),
  -- Cutiefly - Sleep Talk - TM88
  (742, 74200, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 38),
  -- Cutiefly - U-turn - TM89
  (742, 74200, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 39),
  -- Cutiefly - Substitute - TM90
  (742, 74200, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 40),
  -- Cutiefly - Dazzling Gleam - TM99
  (742, 74200, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 41),
  -- Cutiefly - Confide - TM100
  (742, 74200, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 42),
  -- Cutiefly - Baton Pass - Egg
  (742, 74200, 226, 15, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cutiefly - Skill Swap - Egg
  (742, 74200, 285, 15, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cutiefly - Bestow - Egg
  (742, 74200, 516, 15, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cutiefly - Sticky Web - Egg
  (742, 74200, 564, 15, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cutiefly - Moonblast - Egg
  (742, 74200, 585, 15, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cutiefly - Powder - Egg
  (742, 74200, 600, 15, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cutiefly - Speed Swap - Egg
  (742, 74200, 683, 15, NULL, 5, NULL, NULL, NULL, NULL, 49),

  -- Ribombee - Absorb - Level 1
  (743, 74300, 71, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ribombee - Stun Spore - Level 1
  (743, 74300, 78, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ribombee - Struggle Bug - Level 1
  (743, 74300, 522, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ribombee - Fairy Wind - Level 1
  (743, 74300, 584, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ribombee - Pollen Puff - Level 1
  (743, 74300, 676, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ribombee - Fairy Wind - Level 4
  (743, 74300, 584, 15, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Ribombee - Stun Spore - Level 7
  (743, 74300, 78, 15, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Ribombee - Struggle Bug - Level 10
  (743, 74300, 522, 15, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Ribombee - Silver Wind - Level 13
  (743, 74300, 318, 15, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Ribombee - Draining Kiss - Level 16
  (743, 74300, 577, 15, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Ribombee - Sweet Scent - Level 21
  (743, 74300, 230, 15, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Ribombee - Bug Buzz - Level 28
  (743, 74300, 405, 15, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Ribombee - Dazzling Gleam - Level 35
  (743, 74300, 605, 15, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Ribombee - Aromatherapy - Level 42
  (743, 74300, 312, 15, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Ribombee - Quiver Dance - Level 49
  (743, 74300, 483, 15, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Ribombee - Calm Mind - TM04
  (743, 74300, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 16),
  -- Ribombee - Toxic - TM06
  (743, 74300, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Ribombee - Hidden Power - TM10
  (743, 74300, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Ribombee - Sunny Day - TM11
  (743, 74300, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 19),
  -- Ribombee - Light Screen - TM16
  (743, 74300, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 20),
  -- Ribombee - Protect - TM17
  (743, 74300, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 21),
  -- Ribombee - Roost - TM19
  (743, 74300, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 22),
  -- Ribombee - Safeguard - TM20
  (743, 74300, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 23),
  -- Ribombee - Frustration - TM21
  (743, 74300, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 24),
  -- Ribombee - Solar Beam - TM22
  (743, 74300, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 25),
  -- Ribombee - Return - TM27
  (743, 74300, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 26),
  -- Ribombee - Leech Life - TM28
  (743, 74300, 141, 15, NULL, 2, NULL, NULL, 15002028, NULL, 27),
  -- Ribombee - Psychic - TM29
  (743, 74300, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 28),
  -- Ribombee - Double Team - TM32
  (743, 74300, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 29),
  -- Ribombee - Reflect - TM33
  (743, 74300, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 30),
  -- Ribombee - Aerial Ace - TM40
  (743, 74300, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 31),
  -- Ribombee - Facade - TM42
  (743, 74300, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 32),
  -- Ribombee - Rest - TM44
  (743, 74300, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 33),
  -- Ribombee - Attract - TM45
  (743, 74300, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 34),
  -- Ribombee - Thief - TM46
  (743, 74300, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 35),
  -- Ribombee - Round - TM48
  (743, 74300, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 36),
  -- Ribombee - Energy Ball - TM53
  (743, 74300, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 37),
  -- Ribombee - Acrobatics - TM62
  (743, 74300, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 38),
  -- Ribombee - Psych Up - TM77
  (743, 74300, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 39),
  -- Ribombee - Infestation - TM83
  (743, 74300, 611, 15, NULL, 2, NULL, NULL, 15002083, NULL, 40),
  -- Ribombee - Dream Eater - TM85
  (743, 74300, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 41),
  -- Ribombee - Swagger - TM87
  (743, 74300, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 42),
  -- Ribombee - Sleep Talk - TM88
  (743, 74300, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 43),
  -- Ribombee - U-turn - TM89
  (743, 74300, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 44),
  -- Ribombee - Substitute - TM90
  (743, 74300, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 45),
  -- Ribombee - Nature Power - TM96
  (743, 74300, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 46),
  -- Ribombee - Dazzling Gleam - TM99
  (743, 74300, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 47),
  -- Ribombee - Confide - TM100
  (743, 74300, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 48),
  -- Ribombee - Pollen Puff - Evolution
  (743, 74300, 676, 15, NULL, 7, NULL, NULL, NULL, NULL, 49),

  -- Rockruff - Tackle - Level 1
  (744, 74400, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rockruff - Leer - Level 1
  (744, 74400, 43, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rockruff - Sand Attack - Level 4
  (744, 74400, 28, 15, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Rockruff - Bite - Level 7
  (744, 74400, 44, 15, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Rockruff - Howl - Level 12
  (744, 74400, 336, 15, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Rockruff - Rock Throw - Level 15
  (744, 74400, 88, 15, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Rockruff - Odor Sleuth - Level 18
  (744, 74400, 316, 15, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Rockruff - Rock Tomb - Level 23
  (744, 74400, 317, 15, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Rockruff - Roar - Level 26
  (744, 74400, 46, 15, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Rockruff - Stealth Rock - Level 29
  (744, 74400, 446, 15, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Rockruff - Rock Slide - Level 34
  (744, 74400, 157, 15, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Rockruff - Scary Face - Level 37
  (744, 74400, 184, 15, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Rockruff - Crunch - Level 40
  (744, 74400, 242, 15, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Rockruff - Rock Climb - Level 45
  (744, 74400, 431, 15, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Rockruff - Stone Edge - Level 48
  (744, 74400, 444, 15, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Rockruff - Roar - TM05
  (744, 74400, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 16),
  -- Rockruff - Toxic - TM06
  (744, 74400, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Rockruff - Hidden Power - TM10
  (744, 74400, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Rockruff - Taunt - TM12
  (744, 74400, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 19),
  -- Rockruff - Protect - TM17
  (744, 74400, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 20),
  -- Rockruff - Frustration - TM21
  (744, 74400, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 21),
  -- Rockruff - Return - TM27
  (744, 74400, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 22),
  -- Rockruff - Double Team - TM32
  (744, 74400, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 23),
  -- Rockruff - Rock Tomb - TM39
  (744, 74400, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 24),
  -- Rockruff - Facade - TM42
  (744, 74400, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 25),
  -- Rockruff - Rest - TM44
  (744, 74400, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 26),
  -- Rockruff - Attract - TM45
  (744, 74400, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 27),
  -- Rockruff - Round - TM48
  (744, 74400, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 28),
  -- Rockruff - Echoed Voice - TM49
  (744, 74400, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 29),
  -- Rockruff - Rock Polish - TM69
  (744, 74400, 397, 15, NULL, 2, NULL, NULL, 15002069, NULL, 30),
  -- Rockruff - Stone Edge - TM71
  (744, 74400, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 31),
  -- Rockruff - Rock Slide - TM80
  (744, 74400, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 32),
  -- Rockruff - Swagger - TM87
  (744, 74400, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 33),
  -- Rockruff - Sleep Talk - TM88
  (744, 74400, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 34),
  -- Rockruff - Substitute - TM90
  (744, 74400, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 35),
  -- Rockruff - Snarl - TM95
  (744, 74400, 555, 15, NULL, 2, NULL, NULL, 15002095, NULL, 36),
  -- Rockruff - Confide - TM100
  (744, 74400, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 37),
  -- Rockruff - Thrash - Egg
  (744, 74400, 37, 15, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Rockruff - Crush Claw - Egg
  (744, 74400, 306, 15, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Rockruff - Sucker Punch - Egg
  (744, 74400, 389, 15, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Rockruff - Thunder Fang - Egg
  (744, 74400, 422, 15, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Rockruff - Fire Fang - Egg
  (744, 74400, 424, 15, NULL, 5, NULL, NULL, NULL, NULL, 42),

  -- Lycanroc - Sand Attack - Level 1
  (745, 74500, 28, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lycanroc - Tackle - Level 1
  (745, 74500, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lycanroc - Leer - Level 1
  (745, 74500, 43, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lycanroc - Bite - Level 1
  (745, 74500, 44, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lycanroc - Quick Attack - Level 1
  (745, 74500, 98, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lycanroc - Quick Guard - Level 1
  (745, 74500, 501, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lycanroc - Accelerock - Level 1
  (745, 74500, 709, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lycanroc - Sand Attack - Level 4
  (745, 74500, 28, 15, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Lycanroc - Bite - Level 7
  (745, 74500, 44, 15, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Lycanroc - Howl - Level 12
  (745, 74500, 336, 15, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Lycanroc - Rock Throw - Level 15
  (745, 74500, 88, 15, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Lycanroc - Odor Sleuth - Level 18
  (745, 74500, 316, 15, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Lycanroc - Rock Tomb - Level 23
  (745, 74500, 317, 15, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Lycanroc - Roar - Level 26
  (745, 74500, 46, 15, NULL, 1, 26, NULL, NULL, NULL, 14),
  -- Lycanroc - Stealth Rock - Level 29
  (745, 74500, 446, 15, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Lycanroc - Rock Slide - Level 34
  (745, 74500, 157, 15, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Lycanroc - Scary Face - Level 37
  (745, 74500, 184, 15, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Lycanroc - Crunch - Level 40
  (745, 74500, 242, 15, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Lycanroc - Rock Climb - Level 45
  (745, 74500, 431, 15, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Lycanroc - Stone Edge - Level 48
  (745, 74500, 444, 15, NULL, 1, 48, NULL, NULL, NULL, 20),
  -- Lycanroc - Roar - TM05
  (745, 74500, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 21),
  -- Lycanroc - Toxic - TM06
  (745, 74500, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 22),
  -- Lycanroc - Bulk Up - TM08
  (745, 74500, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 23),
  -- Lycanroc - Hidden Power - TM10
  (745, 74500, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 24),
  -- Lycanroc - Taunt - TM12
  (745, 74500, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 25),
  -- Lycanroc - Protect - TM17
  (745, 74500, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 26),
  -- Lycanroc - Frustration - TM21
  (745, 74500, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 27),
  -- Lycanroc - Return - TM27
  (745, 74500, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 28),
  -- Lycanroc - Brick Break - TM31
  (745, 74500, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 29),
  -- Lycanroc - Double Team - TM32
  (745, 74500, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 30),
  -- Lycanroc - Rock Tomb - TM39
  (745, 74500, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 31),
  -- Lycanroc - Facade - TM42
  (745, 74500, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 32),
  -- Lycanroc - Rest - TM44
  (745, 74500, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 33),
  -- Lycanroc - Attract - TM45
  (745, 74500, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 34),
  -- Lycanroc - Round - TM48
  (745, 74500, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 35),
  -- Lycanroc - Echoed Voice - TM49
  (745, 74500, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 36),
  -- Lycanroc - Rock Polish - TM69
  (745, 74500, 397, 15, NULL, 2, NULL, NULL, 15002069, NULL, 37),
  -- Lycanroc - Stone Edge - TM71
  (745, 74500, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 38),
  -- Lycanroc - Swords Dance - TM75
  (745, 74500, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 39),
  -- Lycanroc - Rock Slide - TM80
  (745, 74500, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 40),
  -- Lycanroc - Swagger - TM87
  (745, 74500, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 41),
  -- Lycanroc - Sleep Talk - TM88
  (745, 74500, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 42),
  -- Lycanroc - Substitute - TM90
  (745, 74500, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 43),
  -- Lycanroc - Snarl - TM95
  (745, 74500, 555, 15, NULL, 2, NULL, NULL, 15002095, NULL, 44),
  -- Lycanroc - Confide - TM100
  (745, 74500, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 45),
  -- Lycanroc - Accelerock - Evolution
  (745, 74500, 709, 15, NULL, 7, NULL, NULL, NULL, NULL, 46),

  -- Wishiwashi - Growl - Level 1
  (746, 74600, 45, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wishiwashi - Water Gun - Level 1
  (746, 74600, 55, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wishiwashi - Helping Hand - Level 6
  (746, 74600, 270, 15, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Wishiwashi - Feint Attack - Level 9
  (746, 74600, 185, 15, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Wishiwashi - Brine - Level 14
  (746, 74600, 362, 15, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Wishiwashi - Aqua Ring - Level 17
  (746, 74600, 392, 15, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Wishiwashi - Tearful Look - Level 22
  (746, 74600, 715, 15, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Wishiwashi - Take Down - Level 25
  (746, 74600, 36, 15, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Wishiwashi - Dive - Level 30
  (746, 74600, 291, 15, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Wishiwashi - Beat Up - Level 33
  (746, 74600, 251, 15, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Wishiwashi - Aqua Tail - Level 38
  (746, 74600, 401, 15, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Wishiwashi - Double-Edge - Level 41
  (746, 74600, 38, 15, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Wishiwashi - Soak - Level 46
  (746, 74600, 487, 15, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Wishiwashi - Endeavor - Level 49
  (746, 74600, 283, 15, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Wishiwashi - Hydro Pump - Level 54
  (746, 74600, 56, 15, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Wishiwashi - Toxic - TM06
  (746, 74600, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 16),
  -- Wishiwashi - Hail - TM07
  (746, 74600, 258, 15, NULL, 2, NULL, NULL, 15002007, NULL, 17),
  -- Wishiwashi - Hidden Power - TM10
  (746, 74600, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Wishiwashi - Ice Beam - TM13
  (746, 74600, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 19),
  -- Wishiwashi - Protect - TM17
  (746, 74600, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 20),
  -- Wishiwashi - Rain Dance - TM18
  (746, 74600, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 21),
  -- Wishiwashi - Frustration - TM21
  (746, 74600, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 22),
  -- Wishiwashi - Earthquake - TM26
  (746, 74600, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 23),
  -- Wishiwashi - Return - TM27
  (746, 74600, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 24),
  -- Wishiwashi - Double Team - TM32
  (746, 74600, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 25),
  -- Wishiwashi - Facade - TM42
  (746, 74600, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 26),
  -- Wishiwashi - Rest - TM44
  (746, 74600, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 27),
  -- Wishiwashi - Attract - TM45
  (746, 74600, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 28),
  -- Wishiwashi - Round - TM48
  (746, 74600, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 29),
  -- Wishiwashi - Scald - TM55
  (746, 74600, 503, 15, NULL, 2, NULL, NULL, 15002055, NULL, 30),
  -- Wishiwashi - Bulldoze - TM78
  (746, 74600, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 31),
  -- Wishiwashi - Swagger - TM87
  (746, 74600, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 32),
  -- Wishiwashi - Sleep Talk - TM88
  (746, 74600, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 33),
  -- Wishiwashi - U-turn - TM89
  (746, 74600, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 34),
  -- Wishiwashi - Substitute - TM90
  (746, 74600, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 35),
  -- Wishiwashi - Surf - TM94
  (746, 74600, 57, 15, NULL, 2, NULL, NULL, 15002094, NULL, 36),
  -- Wishiwashi - Waterfall - TM98
  (746, 74600, 127, 15, NULL, 2, NULL, NULL, 15002098, NULL, 37),
  -- Wishiwashi - Confide - TM100
  (746, 74600, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 38),
  -- Wishiwashi - Mist - Egg
  (746, 74600, 54, 15, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Wishiwashi - Whirlpool - Egg
  (746, 74600, 250, 15, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Wishiwashi - Muddy Water - Egg
  (746, 74600, 330, 15, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Wishiwashi - Water Sport - Egg
  (746, 74600, 346, 15, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Wishiwashi - Water Pulse - Egg
  (746, 74600, 352, 15, NULL, 5, NULL, NULL, NULL, NULL, 43),

  -- Mareanie - Poison Sting - Level 1
  (747, 74700, 40, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mareanie - Peck - Level 5
  (747, 74700, 64, 15, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Mareanie - Bite - Level 9
  (747, 74700, 44, 15, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Mareanie - Toxic Spikes - Level 13
  (747, 74700, 390, 15, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Mareanie - Wide Guard - Level 17
  (747, 74700, 469, 15, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Mareanie - Toxic - Level 21
  (747, 74700, 92, 15, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Mareanie - Venoshock - Level 25
  (747, 74700, 474, 15, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Mareanie - Spike Cannon - Level 29
  (747, 74700, 131, 15, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Mareanie - Recover - Level 33
  (747, 74700, 105, 15, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Mareanie - Poison Jab - Level 37
  (747, 74700, 398, 15, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Mareanie - Venom Drench - Level 41
  (747, 74700, 599, 15, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Mareanie - Pin Missile - Level 45
  (747, 74700, 42, 15, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Mareanie - Liquidation - Level 49
  (747, 74700, 710, 15, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Mareanie - Toxic - TM06
  (747, 74700, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 14),
  -- Mareanie - Hail - TM07
  (747, 74700, 258, 15, NULL, 2, NULL, NULL, 15002007, NULL, 15),
  -- Mareanie - Venoshock - TM09
  (747, 74700, 474, 15, NULL, 2, NULL, NULL, 15002009, NULL, 16),
  -- Mareanie - Hidden Power - TM10
  (747, 74700, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 17),
  -- Mareanie - Ice Beam - TM13
  (747, 74700, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 18),
  -- Mareanie - Blizzard - TM14
  (747, 74700, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 19),
  -- Mareanie - Protect - TM17
  (747, 74700, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 20),
  -- Mareanie - Rain Dance - TM18
  (747, 74700, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 21),
  -- Mareanie - Safeguard - TM20
  (747, 74700, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 22),
  -- Mareanie - Frustration - TM21
  (747, 74700, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 23),
  -- Mareanie - Return - TM27
  (747, 74700, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 24),
  -- Mareanie - Double Team - TM32
  (747, 74700, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 25),
  -- Mareanie - Sludge Wave - TM34
  (747, 74700, 482, 15, NULL, 2, NULL, NULL, 15002034, NULL, 26),
  -- Mareanie - Sludge Bomb - TM36
  (747, 74700, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 27),
  -- Mareanie - Facade - TM42
  (747, 74700, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 28),
  -- Mareanie - Rest - TM44
  (747, 74700, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 29),
  -- Mareanie - Attract - TM45
  (747, 74700, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 30),
  -- Mareanie - Round - TM48
  (747, 74700, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 31),
  -- Mareanie - Scald - TM55
  (747, 74700, 503, 15, NULL, 2, NULL, NULL, 15002055, NULL, 32),
  -- Mareanie - Payback - TM66
  (747, 74700, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 33),
  -- Mareanie - Frost Breath - TM79
  (747, 74700, 524, 15, NULL, 2, NULL, NULL, 15002079, NULL, 34),
  -- Mareanie - Infestation - TM83
  (747, 74700, 611, 15, NULL, 2, NULL, NULL, 15002083, NULL, 35),
  -- Mareanie - Poison Jab - TM84
  (747, 74700, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 36),
  -- Mareanie - Swagger - TM87
  (747, 74700, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 37),
  -- Mareanie - Sleep Talk - TM88
  (747, 74700, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 38),
  -- Mareanie - Substitute - TM90
  (747, 74700, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 39),
  -- Mareanie - Surf - TM94
  (747, 74700, 57, 15, NULL, 2, NULL, NULL, 15002094, NULL, 40),
  -- Mareanie - Confide - TM100
  (747, 74700, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 41),
  -- Mareanie - Haze - Egg
  (747, 74700, 114, 15, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mareanie - Stockpile - Egg
  (747, 74700, 254, 15, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mareanie - Spit Up - Egg
  (747, 74700, 255, 15, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mareanie - Swallow - Egg
  (747, 74700, 256, 15, NULL, 5, NULL, NULL, NULL, NULL, 45),

  -- Toxapex - Poison Sting - Level 1
  (748, 74800, 40, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toxapex - Bite - Level 1
  (748, 74800, 44, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toxapex - Peck - Level 1
  (748, 74800, 64, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toxapex - Toxic Spikes - Level 1
  (748, 74800, 390, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Toxapex - Baneful Bunker - Level 1
  (748, 74800, 661, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Toxapex - Peck - Level 5
  (748, 74800, 64, 15, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Toxapex - Bite - Level 9
  (748, 74800, 44, 15, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Toxapex - Toxic Spikes - Level 13
  (748, 74800, 390, 15, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Toxapex - Wide Guard - Level 17
  (748, 74800, 469, 15, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Toxapex - Toxic - Level 21
  (748, 74800, 92, 15, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Toxapex - Venoshock - Level 25
  (748, 74800, 474, 15, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Toxapex - Spike Cannon - Level 29
  (748, 74800, 131, 15, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Toxapex - Recover - Level 33
  (748, 74800, 105, 15, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Toxapex - Poison Jab - Level 37
  (748, 74800, 398, 15, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Toxapex - Venom Drench - Level 44
  (748, 74800, 599, 15, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Toxapex - Pin Missile - Level 51
  (748, 74800, 42, 15, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Toxapex - Liquidation - Level 58
  (748, 74800, 710, 15, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Toxapex - Toxic - TM06
  (748, 74800, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 18),
  -- Toxapex - Hail - TM07
  (748, 74800, 258, 15, NULL, 2, NULL, NULL, 15002007, NULL, 19),
  -- Toxapex - Venoshock - TM09
  (748, 74800, 474, 15, NULL, 2, NULL, NULL, 15002009, NULL, 20),
  -- Toxapex - Hidden Power - TM10
  (748, 74800, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 21),
  -- Toxapex - Ice Beam - TM13
  (748, 74800, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 22),
  -- Toxapex - Blizzard - TM14
  (748, 74800, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 23),
  -- Toxapex - Light Screen - TM16
  (748, 74800, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 24),
  -- Toxapex - Protect - TM17
  (748, 74800, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 25),
  -- Toxapex - Rain Dance - TM18
  (748, 74800, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 26),
  -- Toxapex - Safeguard - TM20
  (748, 74800, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 27),
  -- Toxapex - Frustration - TM21
  (748, 74800, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 28),
  -- Toxapex - Smack Down - TM23
  (748, 74800, 479, 15, NULL, 2, NULL, NULL, 15002023, NULL, 29),
  -- Toxapex - Return - TM27
  (748, 74800, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 30),
  -- Toxapex - Double Team - TM32
  (748, 74800, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 31),
  -- Toxapex - Sludge Wave - TM34
  (748, 74800, 482, 15, NULL, 2, NULL, NULL, 15002034, NULL, 32),
  -- Toxapex - Sludge Bomb - TM36
  (748, 74800, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 33),
  -- Toxapex - Facade - TM42
  (748, 74800, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 34),
  -- Toxapex - Rest - TM44
  (748, 74800, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 35),
  -- Toxapex - Attract - TM45
  (748, 74800, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 36),
  -- Toxapex - Round - TM48
  (748, 74800, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 37),
  -- Toxapex - Scald - TM55
  (748, 74800, 503, 15, NULL, 2, NULL, NULL, 15002055, NULL, 38),
  -- Toxapex - Payback - TM66
  (748, 74800, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 39),
  -- Toxapex - Frost Breath - TM79
  (748, 74800, 524, 15, NULL, 2, NULL, NULL, 15002079, NULL, 40),
  -- Toxapex - Infestation - TM83
  (748, 74800, 611, 15, NULL, 2, NULL, NULL, 15002083, NULL, 41),
  -- Toxapex - Poison Jab - TM84
  (748, 74800, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 42),
  -- Toxapex - Swagger - TM87
  (748, 74800, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 43),
  -- Toxapex - Sleep Talk - TM88
  (748, 74800, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 44),
  -- Toxapex - Substitute - TM90
  (748, 74800, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 45),
  -- Toxapex - Surf - TM94
  (748, 74800, 57, 15, NULL, 2, NULL, NULL, 15002094, NULL, 46),
  -- Toxapex - Confide - TM100
  (748, 74800, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 47),
  -- Toxapex - Baneful Bunker - Evolution
  (748, 74800, 661, 15, NULL, 7, NULL, NULL, NULL, NULL, 48),

  -- Mudbray - Mud-Slap - Level 1
  (749, 74900, 189, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mudbray - Mud Sport - Level 3
  (749, 74900, 300, 15, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Mudbray - Rototiller - Level 8
  (749, 74900, 563, 15, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Mudbray - Bulldoze - Level 10
  (749, 74900, 523, 15, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Mudbray - Double Kick - Level 15
  (749, 74900, 24, 15, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Mudbray - Stomp - Level 17
  (749, 74900, 23, 15, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Mudbray - Bide - Level 22
  (749, 74900, 117, 15, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Mudbray - High Horsepower - Level 24
  (749, 74900, 667, 15, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Mudbray - Iron Defense - Level 29
  (749, 74900, 334, 15, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Mudbray - Heavy Slam - Level 31
  (749, 74900, 484, 15, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Mudbray - Counter - Level 36
  (749, 74900, 68, 15, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Mudbray - Earthquake - Level 38
  (749, 74900, 89, 15, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Mudbray - Mega Kick - Level 43
  (749, 74900, 25, 15, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Mudbray - Superpower - Level 45
  (749, 74900, 276, 15, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Mudbray - Roar - TM05
  (749, 74900, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 15),
  -- Mudbray - Toxic - TM06
  (749, 74900, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 16),
  -- Mudbray - Hidden Power - TM10
  (749, 74900, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 17),
  -- Mudbray - Protect - TM17
  (749, 74900, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 18),
  -- Mudbray - Frustration - TM21
  (749, 74900, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 19),
  -- Mudbray - Earthquake - TM26
  (749, 74900, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 20),
  -- Mudbray - Return - TM27
  (749, 74900, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 21),
  -- Mudbray - Double Team - TM32
  (749, 74900, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 22),
  -- Mudbray - Sandstorm - TM37
  (749, 74900, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 23),
  -- Mudbray - Rock Tomb - TM39
  (749, 74900, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 24),
  -- Mudbray - Facade - TM42
  (749, 74900, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 25),
  -- Mudbray - Rest - TM44
  (749, 74900, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 26),
  -- Mudbray - Attract - TM45
  (749, 74900, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 27),
  -- Mudbray - Low Sweep - TM47
  (749, 74900, 490, 15, NULL, 2, NULL, NULL, 15002047, NULL, 28),
  -- Mudbray - Round - TM48
  (749, 74900, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 29),
  -- Mudbray - Payback - TM66
  (749, 74900, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 30),
  -- Mudbray - Bulldoze - TM78
  (749, 74900, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 31),
  -- Mudbray - Rock Slide - TM80
  (749, 74900, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 32),
  -- Mudbray - Swagger - TM87
  (749, 74900, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 33),
  -- Mudbray - Sleep Talk - TM88
  (749, 74900, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 34),
  -- Mudbray - Substitute - TM90
  (749, 74900, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 35),
  -- Mudbray - Confide - TM100
  (749, 74900, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 36),
  -- Mudbray - Body Slam - Egg
  (749, 74900, 34, 15, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Mudbray - Double-Edge - Egg
  (749, 74900, 38, 15, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Mudbray - Magnitude - Egg
  (749, 74900, 222, 15, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Mudbray - Close Combat - Egg
  (749, 74900, 370, 15, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Mudbray - Mud Bomb - Egg
  (749, 74900, 426, 15, NULL, 5, NULL, NULL, NULL, NULL, 41),

  -- Mudsdale - Mud-Slap - Level 1
  (750, 75000, 189, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mudsdale - Mud Sport - Level 1
  (750, 75000, 300, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mudsdale - Bulldoze - Level 1
  (750, 75000, 523, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mudsdale - Rototiller - Level 1
  (750, 75000, 563, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mudsdale - Mud Sport - Level 3
  (750, 75000, 300, 15, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Mudsdale - Rototiller - Level 8
  (750, 75000, 563, 15, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Mudsdale - Bulldoze - Level 10
  (750, 75000, 523, 15, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Mudsdale - Double Kick - Level 15
  (750, 75000, 24, 15, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Mudsdale - Stomp - Level 17
  (750, 75000, 23, 15, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Mudsdale - Bide - Level 22
  (750, 75000, 117, 15, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Mudsdale - High Horsepower - Level 24
  (750, 75000, 667, 15, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Mudsdale - Iron Defense - Level 29
  (750, 75000, 334, 15, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Mudsdale - Heavy Slam - Level 34
  (750, 75000, 484, 15, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Mudsdale - Counter - Level 42
  (750, 75000, 68, 15, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Mudsdale - Earthquake - Level 47
  (750, 75000, 89, 15, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Mudsdale - Mega Kick - Level 55
  (750, 75000, 25, 15, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Mudsdale - Superpower - Level 60
  (750, 75000, 276, 15, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Mudsdale - Roar - TM05
  (750, 75000, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 18),
  -- Mudsdale - Toxic - TM06
  (750, 75000, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Mudsdale - Hidden Power - TM10
  (750, 75000, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 20),
  -- Mudsdale - Protect - TM17
  (750, 75000, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 21),
  -- Mudsdale - Frustration - TM21
  (750, 75000, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 22),
  -- Mudsdale - Earthquake - TM26
  (750, 75000, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 23),
  -- Mudsdale - Return - TM27
  (750, 75000, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 24),
  -- Mudsdale - Double Team - TM32
  (750, 75000, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 25),
  -- Mudsdale - Sandstorm - TM37
  (750, 75000, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 26),
  -- Mudsdale - Rock Tomb - TM39
  (750, 75000, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 27),
  -- Mudsdale - Facade - TM42
  (750, 75000, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 28),
  -- Mudsdale - Rest - TM44
  (750, 75000, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 29),
  -- Mudsdale - Attract - TM45
  (750, 75000, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 30),
  -- Mudsdale - Low Sweep - TM47
  (750, 75000, 490, 15, NULL, 2, NULL, NULL, 15002047, NULL, 31),
  -- Mudsdale - Round - TM48
  (750, 75000, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 32),
  -- Mudsdale - Focus Blast - TM52
  (750, 75000, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 33),
  -- Mudsdale - Payback - TM66
  (750, 75000, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 34),
  -- Mudsdale - Giga Impact - TM68
  (750, 75000, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 35),
  -- Mudsdale - Bulldoze - TM78
  (750, 75000, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 36),
  -- Mudsdale - Rock Slide - TM80
  (750, 75000, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 37),
  -- Mudsdale - Swagger - TM87
  (750, 75000, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 38),
  -- Mudsdale - Sleep Talk - TM88
  (750, 75000, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 39),
  -- Mudsdale - Substitute - TM90
  (750, 75000, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 40),
  -- Mudsdale - Confide - TM100
  (750, 75000, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 41),

  -- Dewpider - Bubble - Level 1
  (751, 75100, 145, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dewpider - Water Sport - Level 1
  (751, 75100, 346, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dewpider - Infestation - Level 5
  (751, 75100, 611, 15, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Dewpider - Spider Web - Level 8
  (751, 75100, 169, 15, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Dewpider - Bug Bite - Level 13
  (751, 75100, 450, 15, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Dewpider - Bubble Beam - Level 16
  (751, 75100, 61, 15, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Dewpider - Bite - Level 21
  (751, 75100, 44, 15, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Dewpider - Aqua Ring - Level 24
  (751, 75100, 392, 15, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Dewpider - Leech Life - Level 29
  (751, 75100, 141, 15, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Dewpider - Crunch - Level 32
  (751, 75100, 242, 15, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Dewpider - Lunge - Level 37
  (751, 75100, 679, 15, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Dewpider - Mirror Coat - Level 40
  (751, 75100, 243, 15, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Dewpider - Liquidation - Level 45
  (751, 75100, 710, 15, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Dewpider - Entrainment - Level 48
  (751, 75100, 494, 15, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Dewpider - Toxic - TM06
  (751, 75100, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 15),
  -- Dewpider - Hidden Power - TM10
  (751, 75100, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 16),
  -- Dewpider - Ice Beam - TM13
  (751, 75100, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 17),
  -- Dewpider - Blizzard - TM14
  (751, 75100, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 18),
  -- Dewpider - Protect - TM17
  (751, 75100, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 19),
  -- Dewpider - Rain Dance - TM18
  (751, 75100, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 20),
  -- Dewpider - Frustration - TM21
  (751, 75100, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 21),
  -- Dewpider - Return - TM27
  (751, 75100, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 22),
  -- Dewpider - Leech Life - TM28
  (751, 75100, 141, 15, NULL, 2, NULL, NULL, 15002028, NULL, 23),
  -- Dewpider - Double Team - TM32
  (751, 75100, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 24),
  -- Dewpider - Facade - TM42
  (751, 75100, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 25),
  -- Dewpider - Rest - TM44
  (751, 75100, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 26),
  -- Dewpider - Attract - TM45
  (751, 75100, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 27),
  -- Dewpider - Round - TM48
  (751, 75100, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 28),
  -- Dewpider - Scald - TM55
  (751, 75100, 503, 15, NULL, 2, NULL, NULL, 15002055, NULL, 29),
  -- Dewpider - Frost Breath - TM79
  (751, 75100, 524, 15, NULL, 2, NULL, NULL, 15002079, NULL, 30),
  -- Dewpider - X-Scissor - TM81
  (751, 75100, 404, 15, NULL, 2, NULL, NULL, 15002081, NULL, 31),
  -- Dewpider - Infestation - TM83
  (751, 75100, 611, 15, NULL, 2, NULL, NULL, 15002083, NULL, 32),
  -- Dewpider - Poison Jab - TM84
  (751, 75100, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 33),
  -- Dewpider - Swagger - TM87
  (751, 75100, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 34),
  -- Dewpider - Sleep Talk - TM88
  (751, 75100, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 35),
  -- Dewpider - Substitute - TM90
  (751, 75100, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 36),
  -- Dewpider - Surf - TM94
  (751, 75100, 57, 15, NULL, 2, NULL, NULL, 15002094, NULL, 37),
  -- Dewpider - Waterfall - TM98
  (751, 75100, 127, 15, NULL, 2, NULL, NULL, 15002098, NULL, 38),
  -- Dewpider - Confide - TM100
  (751, 75100, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 39),
  -- Dewpider - Aurora Beam - Egg
  (751, 75100, 62, 15, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Dewpider - Stockpile - Egg
  (751, 75100, 254, 15, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Dewpider - Spit Up - Egg
  (751, 75100, 255, 15, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Dewpider - Power Split - Egg
  (751, 75100, 471, 15, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Dewpider - Sticky Web - Egg
  (751, 75100, 564, 15, NULL, 5, NULL, NULL, NULL, NULL, 44),

  -- Araquanid - Bubble - Level 1
  (752, 75200, 145, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Araquanid - Spider Web - Level 1
  (752, 75200, 169, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Araquanid - Bug Bite - Level 1
  (752, 75200, 450, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Araquanid - Wide Guard - Level 1
  (752, 75200, 469, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Araquanid - Soak - Level 1
  (752, 75200, 487, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Araquanid - Infestation - Level 1
  (752, 75200, 611, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Araquanid - Infestation - Level 5
  (752, 75200, 611, 15, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Araquanid - Spider Web - Level 8
  (752, 75200, 169, 15, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Araquanid - Bug Bite - Level 13
  (752, 75200, 450, 15, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Araquanid - Bubble Beam - Level 16
  (752, 75200, 61, 15, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Araquanid - Bite - Level 21
  (752, 75200, 44, 15, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Araquanid - Aqua Ring - Level 26
  (752, 75200, 392, 15, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Araquanid - Leech Life - Level 33
  (752, 75200, 141, 15, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Araquanid - Crunch - Level 38
  (752, 75200, 242, 15, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Araquanid - Lunge - Level 45
  (752, 75200, 679, 15, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Araquanid - Mirror Coat - Level 50
  (752, 75200, 243, 15, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Araquanid - Liquidation - Level 57
  (752, 75200, 710, 15, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Araquanid - Entrainment - Level 62
  (752, 75200, 494, 15, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Araquanid - Toxic - TM06
  (752, 75200, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Araquanid - Hidden Power - TM10
  (752, 75200, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 20),
  -- Araquanid - Ice Beam - TM13
  (752, 75200, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 21),
  -- Araquanid - Blizzard - TM14
  (752, 75200, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 22),
  -- Araquanid - Protect - TM17
  (752, 75200, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 23),
  -- Araquanid - Rain Dance - TM18
  (752, 75200, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 24),
  -- Araquanid - Safeguard - TM20
  (752, 75200, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 25),
  -- Araquanid - Frustration - TM21
  (752, 75200, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 26),
  -- Araquanid - Return - TM27
  (752, 75200, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 27),
  -- Araquanid - Leech Life - TM28
  (752, 75200, 141, 15, NULL, 2, NULL, NULL, 15002028, NULL, 28),
  -- Araquanid - Double Team - TM32
  (752, 75200, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 29),
  -- Araquanid - Reflect - TM33
  (752, 75200, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 30),
  -- Araquanid - Facade - TM42
  (752, 75200, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 31),
  -- Araquanid - Rest - TM44
  (752, 75200, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 32),
  -- Araquanid - Attract - TM45
  (752, 75200, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 33),
  -- Araquanid - Round - TM48
  (752, 75200, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 34),
  -- Araquanid - Scald - TM55
  (752, 75200, 503, 15, NULL, 2, NULL, NULL, 15002055, NULL, 35),
  -- Araquanid - Frost Breath - TM79
  (752, 75200, 524, 15, NULL, 2, NULL, NULL, 15002079, NULL, 36),
  -- Araquanid - X-Scissor - TM81
  (752, 75200, 404, 15, NULL, 2, NULL, NULL, 15002081, NULL, 37),
  -- Araquanid - Infestation - TM83
  (752, 75200, 611, 15, NULL, 2, NULL, NULL, 15002083, NULL, 38),
  -- Araquanid - Poison Jab - TM84
  (752, 75200, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 39),
  -- Araquanid - Swagger - TM87
  (752, 75200, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 40),
  -- Araquanid - Sleep Talk - TM88
  (752, 75200, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 41),
  -- Araquanid - Substitute - TM90
  (752, 75200, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 42),
  -- Araquanid - Surf - TM94
  (752, 75200, 57, 15, NULL, 2, NULL, NULL, 15002094, NULL, 43),
  -- Araquanid - Waterfall - TM98
  (752, 75200, 127, 15, NULL, 2, NULL, NULL, 15002098, NULL, 44),
  -- Araquanid - Confide - TM100
  (752, 75200, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 45),

  -- Fomantis - Fury Cutter - Level 1
  (753, 75300, 210, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fomantis - Leafage - Level 5
  (753, 75300, 670, 15, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Fomantis - Razor Leaf - Level 10
  (753, 75300, 75, 15, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Fomantis - Growth - Level 14
  (753, 75300, 74, 15, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Fomantis - Ingrain - Level 19
  (753, 75300, 275, 15, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Fomantis - Leaf Blade - Level 23
  (753, 75300, 348, 15, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Fomantis - Synthesis - Level 28
  (753, 75300, 235, 15, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Fomantis - Slash - Level 32
  (753, 75300, 163, 15, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Fomantis - Sweet Scent - Level 37
  (753, 75300, 230, 15, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Fomantis - Solar Beam - Level 41
  (753, 75300, 76, 15, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Fomantis - Sunny Day - Level 46
  (753, 75300, 241, 15, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Fomantis - Toxic - TM06
  (753, 75300, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 12),
  -- Fomantis - Hidden Power - TM10
  (753, 75300, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 13),
  -- Fomantis - Sunny Day - TM11
  (753, 75300, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 14),
  -- Fomantis - Protect - TM17
  (753, 75300, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 15),
  -- Fomantis - Safeguard - TM20
  (753, 75300, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 16),
  -- Fomantis - Frustration - TM21
  (753, 75300, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 17),
  -- Fomantis - Solar Beam - TM22
  (753, 75300, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 18),
  -- Fomantis - Return - TM27
  (753, 75300, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 19),
  -- Fomantis - Leech Life - TM28
  (753, 75300, 141, 15, NULL, 2, NULL, NULL, 15002028, NULL, 20),
  -- Fomantis - Double Team - TM32
  (753, 75300, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 21),
  -- Fomantis - Facade - TM42
  (753, 75300, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 22),
  -- Fomantis - Rest - TM44
  (753, 75300, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 23),
  -- Fomantis - Attract - TM45
  (753, 75300, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 24),
  -- Fomantis - Round - TM48
  (753, 75300, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 25),
  -- Fomantis - Energy Ball - TM53
  (753, 75300, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 26),
  -- Fomantis - False Swipe - TM54
  (753, 75300, 206, 15, NULL, 2, NULL, NULL, 15002054, NULL, 27),
  -- Fomantis - Fling - TM56
  (753, 75300, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 28),
  -- Fomantis - Payback - TM66
  (753, 75300, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 29),
  -- Fomantis - Swords Dance - TM75
  (753, 75300, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 30),
  -- Fomantis - X-Scissor - TM81
  (753, 75300, 404, 15, NULL, 2, NULL, NULL, 15002081, NULL, 31),
  -- Fomantis - Poison Jab - TM84
  (753, 75300, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 32),
  -- Fomantis - Grass Knot - TM86
  (753, 75300, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 33),
  -- Fomantis - Swagger - TM87
  (753, 75300, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 34),
  -- Fomantis - Sleep Talk - TM88
  (753, 75300, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 35),
  -- Fomantis - Substitute - TM90
  (753, 75300, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 36),
  -- Fomantis - Nature Power - TM96
  (753, 75300, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 37),
  -- Fomantis - Confide - TM100
  (753, 75300, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 38),
  -- Fomantis - Giga Drain - Egg
  (753, 75300, 202, 15, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Fomantis - Weather Ball - Egg
  (753, 75300, 311, 15, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Fomantis - Aromatherapy - Egg
  (753, 75300, 312, 15, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Fomantis - Defog - Egg
  (753, 75300, 432, 15, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Fomantis - Leaf Storm - Egg
  (753, 75300, 437, 15, NULL, 5, NULL, NULL, NULL, NULL, 43),

  -- Lurantis - Growth - Level 1
  (754, 75400, 74, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lurantis - Razor Leaf - Level 1
  (754, 75400, 75, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lurantis - Fury Cutter - Level 1
  (754, 75400, 210, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lurantis - X-Scissor - Level 1
  (754, 75400, 404, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lurantis - Petal Blizzard - Level 1
  (754, 75400, 572, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lurantis - Leafage - Level 1
  (754, 75400, 670, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lurantis - Leafage - Level 5
  (754, 75400, 670, 15, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Lurantis - Razor Leaf - Level 10
  (754, 75400, 75, 15, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Lurantis - Growth - Level 14
  (754, 75400, 74, 15, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Lurantis - Ingrain - Level 19
  (754, 75400, 275, 15, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Lurantis - Leaf Blade - Level 23
  (754, 75400, 348, 15, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Lurantis - Synthesis - Level 28
  (754, 75400, 235, 15, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Lurantis - Slash - Level 32
  (754, 75400, 163, 15, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Lurantis - Sweet Scent - Level 40
  (754, 75400, 230, 15, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Lurantis - Solar Blade - Level 47
  (754, 75400, 669, 15, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Lurantis - Sunny Day - Level 55
  (754, 75400, 241, 15, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Lurantis - Toxic - TM06
  (754, 75400, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Lurantis - Hidden Power - TM10
  (754, 75400, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Lurantis - Sunny Day - TM11
  (754, 75400, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 19),
  -- Lurantis - Hyper Beam - TM15
  (754, 75400, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 20),
  -- Lurantis - Protect - TM17
  (754, 75400, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 21),
  -- Lurantis - Safeguard - TM20
  (754, 75400, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 22),
  -- Lurantis - Frustration - TM21
  (754, 75400, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 23),
  -- Lurantis - Solar Beam - TM22
  (754, 75400, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 24),
  -- Lurantis - Return - TM27
  (754, 75400, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 25),
  -- Lurantis - Leech Life - TM28
  (754, 75400, 141, 15, NULL, 2, NULL, NULL, 15002028, NULL, 26),
  -- Lurantis - Brick Break - TM31
  (754, 75400, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 27),
  -- Lurantis - Double Team - TM32
  (754, 75400, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 28),
  -- Lurantis - Aerial Ace - TM40
  (754, 75400, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 29),
  -- Lurantis - Facade - TM42
  (754, 75400, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 30),
  -- Lurantis - Rest - TM44
  (754, 75400, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 31),
  -- Lurantis - Attract - TM45
  (754, 75400, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 32),
  -- Lurantis - Low Sweep - TM47
  (754, 75400, 490, 15, NULL, 2, NULL, NULL, 15002047, NULL, 33),
  -- Lurantis - Round - TM48
  (754, 75400, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 34),
  -- Lurantis - Energy Ball - TM53
  (754, 75400, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 35),
  -- Lurantis - False Swipe - TM54
  (754, 75400, 206, 15, NULL, 2, NULL, NULL, 15002054, NULL, 36),
  -- Lurantis - Fling - TM56
  (754, 75400, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 37),
  -- Lurantis - Payback - TM66
  (754, 75400, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 38),
  -- Lurantis - Giga Impact - TM68
  (754, 75400, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 39),
  -- Lurantis - Swords Dance - TM75
  (754, 75400, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 40),
  -- Lurantis - X-Scissor - TM81
  (754, 75400, 404, 15, NULL, 2, NULL, NULL, 15002081, NULL, 41),
  -- Lurantis - Poison Jab - TM84
  (754, 75400, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 42),
  -- Lurantis - Grass Knot - TM86
  (754, 75400, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 43),
  -- Lurantis - Swagger - TM87
  (754, 75400, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 44),
  -- Lurantis - Sleep Talk - TM88
  (754, 75400, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 45),
  -- Lurantis - Substitute - TM90
  (754, 75400, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 46),
  -- Lurantis - Nature Power - TM96
  (754, 75400, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 47),
  -- Lurantis - Confide - TM100
  (754, 75400, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 48),
  -- Lurantis - Petal Blizzard - Evolution
  (754, 75400, 572, 15, NULL, 7, NULL, NULL, NULL, NULL, 49),

  -- Morelull - Absorb - Level 1
  (755, 75500, 71, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Morelull - Astonish - Level 4
  (755, 75500, 310, 15, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Morelull - Flash - Level 8
  (755, 75500, 148, 15, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Morelull - Moonlight - Level 11
  (755, 75500, 236, 15, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Morelull - Mega Drain - Level 15
  (755, 75500, 72, 15, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Morelull - Sleep Powder - Level 18
  (755, 75500, 79, 15, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Morelull - Ingrain - Level 22
  (755, 75500, 275, 15, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Morelull - Confuse Ray - Level 25
  (755, 75500, 109, 15, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Morelull - Giga Drain - Level 29
  (755, 75500, 202, 15, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Morelull - Strength Sap - Level 32
  (755, 75500, 668, 15, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Morelull - Spore - Level 36
  (755, 75500, 147, 15, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Morelull - Moonblast - Level 39
  (755, 75500, 585, 15, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Morelull - Dream Eater - Level 43
  (755, 75500, 138, 15, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Morelull - Spotlight - Level 46
  (755, 75500, 671, 15, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Morelull - Toxic - TM06
  (755, 75500, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 15),
  -- Morelull - Hidden Power - TM10
  (755, 75500, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 16),
  -- Morelull - Sunny Day - TM11
  (755, 75500, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 17),
  -- Morelull - Light Screen - TM16
  (755, 75500, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 18),
  -- Morelull - Protect - TM17
  (755, 75500, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 19),
  -- Morelull - Safeguard - TM20
  (755, 75500, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 20),
  -- Morelull - Frustration - TM21
  (755, 75500, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 21),
  -- Morelull - Solar Beam - TM22
  (755, 75500, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 22),
  -- Morelull - Return - TM27
  (755, 75500, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 23),
  -- Morelull - Double Team - TM32
  (755, 75500, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 24),
  -- Morelull - Sludge Bomb - TM36
  (755, 75500, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 25),
  -- Morelull - Rest - TM44
  (755, 75500, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 26),
  -- Morelull - Attract - TM45
  (755, 75500, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 27),
  -- Morelull - Round - TM48
  (755, 75500, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 28),
  -- Morelull - Energy Ball - TM53
  (755, 75500, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 29),
  -- Morelull - Thunder Wave - TM73
  (755, 75500, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 30),
  -- Morelull - Dream Eater - TM85
  (755, 75500, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 31),
  -- Morelull - Grass Knot - TM86
  (755, 75500, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 32),
  -- Morelull - Swagger - TM87
  (755, 75500, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 33),
  -- Morelull - Sleep Talk - TM88
  (755, 75500, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 34),
  -- Morelull - Substitute - TM90
  (755, 75500, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 35),
  -- Morelull - Nature Power - TM96
  (755, 75500, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 36),
  -- Morelull - Dazzling Gleam - TM99
  (755, 75500, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 37),
  -- Morelull - Confide - TM100
  (755, 75500, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 38),
  -- Morelull - Leech Seed - Egg
  (755, 75500, 73, 15, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Morelull - Growth - Egg
  (755, 75500, 74, 15, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Morelull - Poison Powder - Egg
  (755, 75500, 77, 15, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Morelull - Stun Spore - Egg
  (755, 75500, 78, 15, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Morelull - Amnesia - Egg
  (755, 75500, 133, 15, NULL, 5, NULL, NULL, NULL, NULL, 43),

  -- Shiinotic - Absorb - Level 1
  (756, 75600, 71, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shiinotic - Flash - Level 1
  (756, 75600, 148, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shiinotic - Ingrain - Level 1
  (756, 75600, 275, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shiinotic - Astonish - Level 1
  (756, 75600, 310, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Shiinotic - Astonish - Level 4
  (756, 75600, 310, 15, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Shiinotic - Flash - Level 8
  (756, 75600, 148, 15, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Shiinotic - Moonlight - Level 11
  (756, 75600, 236, 15, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Shiinotic - Mega Drain - Level 15
  (756, 75600, 72, 15, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Shiinotic - Sleep Powder - Level 18
  (756, 75600, 79, 15, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Shiinotic - Ingrain - Level 22
  (756, 75600, 275, 15, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Shiinotic - Confuse Ray - Level 26
  (756, 75600, 109, 15, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Shiinotic - Giga Drain - Level 31
  (756, 75600, 202, 15, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Shiinotic - Strength Sap - Level 35
  (756, 75600, 668, 15, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Shiinotic - Spore - Level 40
  (756, 75600, 147, 15, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Shiinotic - Moonblast - Level 44
  (756, 75600, 585, 15, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Shiinotic - Dream Eater - Level 49
  (756, 75600, 138, 15, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Shiinotic - Spotlight - Level 53
  (756, 75600, 671, 15, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Shiinotic - Toxic - TM06
  (756, 75600, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 18),
  -- Shiinotic - Hidden Power - TM10
  (756, 75600, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 19),
  -- Shiinotic - Sunny Day - TM11
  (756, 75600, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 20),
  -- Shiinotic - Light Screen - TM16
  (756, 75600, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 21),
  -- Shiinotic - Protect - TM17
  (756, 75600, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 22),
  -- Shiinotic - Safeguard - TM20
  (756, 75600, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 23),
  -- Shiinotic - Frustration - TM21
  (756, 75600, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 24),
  -- Shiinotic - Solar Beam - TM22
  (756, 75600, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 25),
  -- Shiinotic - Return - TM27
  (756, 75600, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 26),
  -- Shiinotic - Double Team - TM32
  (756, 75600, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 27),
  -- Shiinotic - Sludge Bomb - TM36
  (756, 75600, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 28),
  -- Shiinotic - Rest - TM44
  (756, 75600, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 29),
  -- Shiinotic - Attract - TM45
  (756, 75600, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 30),
  -- Shiinotic - Round - TM48
  (756, 75600, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 31),
  -- Shiinotic - Energy Ball - TM53
  (756, 75600, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 32),
  -- Shiinotic - Charge Beam - TM57
  (756, 75600, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 33),
  -- Shiinotic - Giga Impact - TM68
  (756, 75600, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 34),
  -- Shiinotic - Thunder Wave - TM73
  (756, 75600, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 35),
  -- Shiinotic - Dream Eater - TM85
  (756, 75600, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 36),
  -- Shiinotic - Grass Knot - TM86
  (756, 75600, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 37),
  -- Shiinotic - Swagger - TM87
  (756, 75600, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 38),
  -- Shiinotic - Sleep Talk - TM88
  (756, 75600, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 39),
  -- Shiinotic - Substitute - TM90
  (756, 75600, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 40),
  -- Shiinotic - Nature Power - TM96
  (756, 75600, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 41),
  -- Shiinotic - Dazzling Gleam - TM99
  (756, 75600, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 42),
  -- Shiinotic - Confide - TM100
  (756, 75600, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 43),

  -- Salandit - Scratch - Level 1
  (757, 75700, 10, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Salandit - Poison Gas - Level 1
  (757, 75700, 139, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Salandit - Ember - Level 5
  (757, 75700, 52, 15, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Salandit - Sweet Scent - Level 8
  (757, 75700, 230, 15, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Salandit - Dragon Rage - Level 13
  (757, 75700, 82, 15, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Salandit - Smog - Level 16
  (757, 75700, 123, 15, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Salandit - Double Slap - Level 21
  (757, 75700, 3, 15, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Salandit - Flame Burst - Level 24
  (757, 75700, 481, 15, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Salandit - Toxic - Level 29
  (757, 75700, 92, 15, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Salandit - Nasty Plot - Level 32
  (757, 75700, 417, 15, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Salandit - Venoshock - Level 37
  (757, 75700, 474, 15, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Salandit - Flamethrower - Level 40
  (757, 75700, 53, 15, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Salandit - Venom Drench - Level 45
  (757, 75700, 599, 15, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Salandit - Dragon Pulse - Level 48
  (757, 75700, 406, 15, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Salandit - Dragon Claw - TM02
  (757, 75700, 337, 15, NULL, 2, NULL, NULL, 15002002, NULL, 15),
  -- Salandit - Toxic - TM06
  (757, 75700, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 16),
  -- Salandit - Venoshock - TM09
  (757, 75700, 474, 15, NULL, 2, NULL, NULL, 15002009, NULL, 17),
  -- Salandit - Hidden Power - TM10
  (757, 75700, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Salandit - Taunt - TM12
  (757, 75700, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 19),
  -- Salandit - Protect - TM17
  (757, 75700, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 20),
  -- Salandit - Frustration - TM21
  (757, 75700, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 21),
  -- Salandit - Return - TM27
  (757, 75700, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 22),
  -- Salandit - Leech Life - TM28
  (757, 75700, 141, 15, NULL, 2, NULL, NULL, 15002028, NULL, 23),
  -- Salandit - Double Team - TM32
  (757, 75700, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 24),
  -- Salandit - Sludge Wave - TM34
  (757, 75700, 482, 15, NULL, 2, NULL, NULL, 15002034, NULL, 25),
  -- Salandit - Flamethrower - TM35
  (757, 75700, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 26),
  -- Salandit - Sludge Bomb - TM36
  (757, 75700, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 27),
  -- Salandit - Fire Blast - TM38
  (757, 75700, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 28),
  -- Salandit - Torment - TM41
  (757, 75700, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 29),
  -- Salandit - Facade - TM42
  (757, 75700, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 30),
  -- Salandit - Flame Charge - TM43
  (757, 75700, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 31),
  -- Salandit - Rest - TM44
  (757, 75700, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 32),
  -- Salandit - Attract - TM45
  (757, 75700, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 33),
  -- Salandit - Thief - TM46
  (757, 75700, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 34),
  -- Salandit - Round - TM48
  (757, 75700, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 35),
  -- Salandit - Overheat - TM50
  (757, 75700, 315, 15, NULL, 2, NULL, NULL, 15002050, NULL, 36),
  -- Salandit - Fling - TM56
  (757, 75700, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 37),
  -- Salandit - Will-O-Wisp - TM61
  (757, 75700, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 38),
  -- Salandit - Shadow Claw - TM65
  (757, 75700, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 39),
  -- Salandit - Payback - TM66
  (757, 75700, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 40),
  -- Salandit - Poison Jab - TM84
  (757, 75700, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 41),
  -- Salandit - Swagger - TM87
  (757, 75700, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 42),
  -- Salandit - Sleep Talk - TM88
  (757, 75700, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 43),
  -- Salandit - Substitute - TM90
  (757, 75700, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 44),
  -- Salandit - Confide - TM100
  (757, 75700, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 45),
  -- Salandit - Sand Attack - Egg
  (757, 75700, 28, 15, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Salandit - Fake Out - Egg
  (757, 75700, 252, 15, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Salandit - Knock Off - Egg
  (757, 75700, 282, 15, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Salandit - Snatch - Egg
  (757, 75700, 289, 15, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Salandit - Belch - Egg
  (757, 75700, 562, 15, NULL, 5, NULL, NULL, NULL, NULL, 50),

  -- Salazzle - Pound - Level 1
  (758, 75800, 1, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Salazzle - Disable - Level 1
  (758, 75800, 50, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Salazzle - Ember - Level 1
  (758, 75800, 52, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Salazzle - Poison Gas - Level 1
  (758, 75800, 139, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Salazzle - Swagger - Level 1
  (758, 75800, 207, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Salazzle - Encore - Level 1
  (758, 75800, 227, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Salazzle - Sweet Scent - Level 1
  (758, 75800, 230, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Salazzle - Torment - Level 1
  (758, 75800, 259, 15, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Salazzle - Captivate - Level 1
  (758, 75800, 445, 15, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Salazzle - Ember - Level 5
  (758, 75800, 52, 15, NULL, 1, 5, NULL, NULL, NULL, 10),
  -- Salazzle - Sweet Scent - Level 8
  (758, 75800, 230, 15, NULL, 1, 8, NULL, NULL, NULL, 11),
  -- Salazzle - Dragon Rage - Level 13
  (758, 75800, 82, 15, NULL, 1, 13, NULL, NULL, NULL, 12),
  -- Salazzle - Smog - Level 16
  (758, 75800, 123, 15, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Salazzle - Double Slap - Level 21
  (758, 75800, 3, 15, NULL, 1, 21, NULL, NULL, NULL, 14),
  -- Salazzle - Flame Burst - Level 24
  (758, 75800, 481, 15, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Salazzle - Toxic - Level 29
  (758, 75800, 92, 15, NULL, 1, 29, NULL, NULL, NULL, 16),
  -- Salazzle - Nasty Plot - Level 32
  (758, 75800, 417, 15, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Salazzle - Venoshock - Level 39
  (758, 75800, 474, 15, NULL, 1, 39, NULL, NULL, NULL, 18),
  -- Salazzle - Flamethrower - Level 44
  (758, 75800, 53, 15, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Salazzle - Venom Drench - Level 51
  (758, 75800, 599, 15, NULL, 1, 51, NULL, NULL, NULL, 20),
  -- Salazzle - Dragon Pulse - Level 56
  (758, 75800, 406, 15, NULL, 1, 56, NULL, NULL, NULL, 21),
  -- Salazzle - Dragon Claw - TM02
  (758, 75800, 337, 15, NULL, 2, NULL, NULL, 15002002, NULL, 22),
  -- Salazzle - Toxic - TM06
  (758, 75800, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 23),
  -- Salazzle - Venoshock - TM09
  (758, 75800, 474, 15, NULL, 2, NULL, NULL, 15002009, NULL, 24),
  -- Salazzle - Hidden Power - TM10
  (758, 75800, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 25),
  -- Salazzle - Taunt - TM12
  (758, 75800, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 26),
  -- Salazzle - Protect - TM17
  (758, 75800, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 27),
  -- Salazzle - Frustration - TM21
  (758, 75800, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 28),
  -- Salazzle - Return - TM27
  (758, 75800, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 29),
  -- Salazzle - Leech Life - TM28
  (758, 75800, 141, 15, NULL, 2, NULL, NULL, 15002028, NULL, 30),
  -- Salazzle - Double Team - TM32
  (758, 75800, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 31),
  -- Salazzle - Sludge Wave - TM34
  (758, 75800, 482, 15, NULL, 2, NULL, NULL, 15002034, NULL, 32),
  -- Salazzle - Flamethrower - TM35
  (758, 75800, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 33),
  -- Salazzle - Sludge Bomb - TM36
  (758, 75800, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 34),
  -- Salazzle - Fire Blast - TM38
  (758, 75800, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 35),
  -- Salazzle - Torment - TM41
  (758, 75800, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 36),
  -- Salazzle - Facade - TM42
  (758, 75800, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 37),
  -- Salazzle - Flame Charge - TM43
  (758, 75800, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 38),
  -- Salazzle - Rest - TM44
  (758, 75800, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 39),
  -- Salazzle - Attract - TM45
  (758, 75800, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 40),
  -- Salazzle - Thief - TM46
  (758, 75800, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 41),
  -- Salazzle - Round - TM48
  (758, 75800, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 42),
  -- Salazzle - Overheat - TM50
  (758, 75800, 315, 15, NULL, 2, NULL, NULL, 15002050, NULL, 43),
  -- Salazzle - Fling - TM56
  (758, 75800, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 44),
  -- Salazzle - Will-O-Wisp - TM61
  (758, 75800, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 45),
  -- Salazzle - Acrobatics - TM62
  (758, 75800, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 46),
  -- Salazzle - Shadow Claw - TM65
  (758, 75800, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 47),
  -- Salazzle - Payback - TM66
  (758, 75800, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 48),
  -- Salazzle - Dragon Tail - TM82
  (758, 75800, 525, 15, NULL, 2, NULL, NULL, 15002082, NULL, 49),
  -- Salazzle - Poison Jab - TM84
  (758, 75800, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 50),
  -- Salazzle - Swagger - TM87
  (758, 75800, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 51),
  -- Salazzle - Sleep Talk - TM88
  (758, 75800, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 52),
  -- Salazzle - Substitute - TM90
  (758, 75800, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 53),
  -- Salazzle - Confide - TM100
  (758, 75800, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 54),
  -- Salazzle - Captivate - Evolution
  (758, 75800, 445, 15, NULL, 7, NULL, NULL, NULL, NULL, 55),

  -- Stufful - Tackle - Level 1
  (759, 75900, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stufful - Leer - Level 1
  (759, 75900, 43, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stufful - Bide - Level 5
  (759, 75900, 117, 15, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Stufful - Baby-Doll Eyes - Level 10
  (759, 75900, 608, 15, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Stufful - Brutal Swing - Level 14
  (759, 75900, 693, 15, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Stufful - Flail - Level 19
  (759, 75900, 175, 15, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Stufful - Payback - Level 23
  (759, 75900, 371, 15, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Stufful - Take Down - Level 28
  (759, 75900, 36, 15, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Stufful - Hammer Arm - Level 32
  (759, 75900, 359, 15, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Stufful - Thrash - Level 37
  (759, 75900, 37, 15, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Stufful - Pain Split - Level 41
  (759, 75900, 220, 15, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Stufful - Double-Edge - Level 46
  (759, 75900, 38, 15, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Stufful - Superpower - Level 50
  (759, 75900, 276, 15, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Stufful - Work Up - TM01
  (759, 75900, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 14),
  -- Stufful - Roar - TM05
  (759, 75900, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 15),
  -- Stufful - Toxic - TM06
  (759, 75900, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 16),
  -- Stufful - Bulk Up - TM08
  (759, 75900, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 17),
  -- Stufful - Hidden Power - TM10
  (759, 75900, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Stufful - Taunt - TM12
  (759, 75900, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 19),
  -- Stufful - Protect - TM17
  (759, 75900, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 20),
  -- Stufful - Frustration - TM21
  (759, 75900, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 21),
  -- Stufful - Earthquake - TM26
  (759, 75900, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 22),
  -- Stufful - Return - TM27
  (759, 75900, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 23),
  -- Stufful - Brick Break - TM31
  (759, 75900, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 24),
  -- Stufful - Double Team - TM32
  (759, 75900, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 25),
  -- Stufful - Rock Tomb - TM39
  (759, 75900, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 26),
  -- Stufful - Aerial Ace - TM40
  (759, 75900, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 27),
  -- Stufful - Facade - TM42
  (759, 75900, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 28),
  -- Stufful - Rest - TM44
  (759, 75900, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 29),
  -- Stufful - Attract - TM45
  (759, 75900, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 30),
  -- Stufful - Low Sweep - TM47
  (759, 75900, 490, 15, NULL, 2, NULL, NULL, 15002047, NULL, 31),
  -- Stufful - Round - TM48
  (759, 75900, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 32),
  -- Stufful - Focus Blast - TM52
  (759, 75900, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 33),
  -- Stufful - Fling - TM56
  (759, 75900, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 34),
  -- Stufful - Brutal Swing - TM59
  (759, 75900, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 35),
  -- Stufful - Payback - TM66
  (759, 75900, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 36),
  -- Stufful - Swords Dance - TM75
  (759, 75900, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 37),
  -- Stufful - Bulldoze - TM78
  (759, 75900, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 38),
  -- Stufful - Rock Slide - TM80
  (759, 75900, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 39),
  -- Stufful - Swagger - TM87
  (759, 75900, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 40),
  -- Stufful - Sleep Talk - TM88
  (759, 75900, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 41),
  -- Stufful - Substitute - TM90
  (759, 75900, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 42),
  -- Stufful - Confide - TM100
  (759, 75900, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 43),
  -- Stufful - Ice Punch - Egg
  (759, 75900, 8, 15, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Stufful - Thunder Punch - Egg
  (759, 75900, 9, 15, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Stufful - Mega Kick - Egg
  (759, 75900, 25, 15, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Stufful - Endure - Egg
  (759, 75900, 203, 15, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Stufful - Force Palm - Egg
  (759, 75900, 395, 15, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Stufful - Wide Guard - Egg
  (759, 75900, 469, 15, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Stufful - Stomping Tantrum - Egg
  (759, 75900, 707, 15, NULL, 5, NULL, NULL, NULL, NULL, 50),

  -- Bewear - Tackle - Level 1
  (760, 76000, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bewear - Leer - Level 1
  (760, 76000, 43, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bewear - Bide - Level 5
  (760, 76000, 117, 15, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Bewear - Baby-Doll Eyes - Level 10
  (760, 76000, 608, 15, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Bewear - Brutal Swing - Level 14
  (760, 76000, 693, 15, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Bewear - Flail - Level 19
  (760, 76000, 175, 15, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Bewear - Payback - Level 23
  (760, 76000, 371, 15, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Bewear - Take Down - Level 30
  (760, 76000, 36, 15, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Bewear - Hammer Arm - Level 36
  (760, 76000, 359, 15, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Bewear - Thrash - Level 43
  (760, 76000, 37, 15, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Bewear - Pain Split - Level 49
  (760, 76000, 220, 15, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Bewear - Double-Edge - Level 56
  (760, 76000, 38, 15, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Bewear - Superpower - Level 62
  (760, 76000, 276, 15, NULL, 1, 62, NULL, NULL, NULL, 13),
  -- Bewear - Work Up - TM01
  (760, 76000, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 14),
  -- Bewear - Dragon Claw - TM02
  (760, 76000, 337, 15, NULL, 2, NULL, NULL, 15002002, NULL, 15),
  -- Bewear - Roar - TM05
  (760, 76000, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 16),
  -- Bewear - Toxic - TM06
  (760, 76000, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Bewear - Bulk Up - TM08
  (760, 76000, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 18),
  -- Bewear - Hidden Power - TM10
  (760, 76000, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 19),
  -- Bewear - Taunt - TM12
  (760, 76000, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 20),
  -- Bewear - Hyper Beam - TM15
  (760, 76000, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 21),
  -- Bewear - Protect - TM17
  (760, 76000, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 22),
  -- Bewear - Frustration - TM21
  (760, 76000, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 23),
  -- Bewear - Earthquake - TM26
  (760, 76000, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 24),
  -- Bewear - Return - TM27
  (760, 76000, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 25),
  -- Bewear - Brick Break - TM31
  (760, 76000, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 26),
  -- Bewear - Double Team - TM32
  (760, 76000, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 27),
  -- Bewear - Rock Tomb - TM39
  (760, 76000, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 28),
  -- Bewear - Aerial Ace - TM40
  (760, 76000, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 29),
  -- Bewear - Facade - TM42
  (760, 76000, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 30),
  -- Bewear - Rest - TM44
  (760, 76000, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 31),
  -- Bewear - Attract - TM45
  (760, 76000, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 32),
  -- Bewear - Low Sweep - TM47
  (760, 76000, 490, 15, NULL, 2, NULL, NULL, 15002047, NULL, 33),
  -- Bewear - Round - TM48
  (760, 76000, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 34),
  -- Bewear - Focus Blast - TM52
  (760, 76000, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 35),
  -- Bewear - Fling - TM56
  (760, 76000, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 36),
  -- Bewear - Brutal Swing - TM59
  (760, 76000, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 37),
  -- Bewear - Shadow Claw - TM65
  (760, 76000, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 38),
  -- Bewear - Payback - TM66
  (760, 76000, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 39),
  -- Bewear - Giga Impact - TM68
  (760, 76000, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 40),
  -- Bewear - Swords Dance - TM75
  (760, 76000, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 41),
  -- Bewear - Bulldoze - TM78
  (760, 76000, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 42),
  -- Bewear - Rock Slide - TM80
  (760, 76000, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 43),
  -- Bewear - Swagger - TM87
  (760, 76000, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 44),
  -- Bewear - Sleep Talk - TM88
  (760, 76000, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 45),
  -- Bewear - Substitute - TM90
  (760, 76000, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 46),
  -- Bewear - Confide - TM100
  (760, 76000, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 47),
  -- Bewear - Bind - Evolution
  (760, 76000, 20, 15, NULL, 7, NULL, NULL, NULL, NULL, 48);
