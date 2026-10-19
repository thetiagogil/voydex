-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VII raw learnset pages, LGPE sections.
-- Cross-check: PokemonDB Let's Go learnset pages and Serebii LGPE Pokedex pages.
-- Machine normalization: Bulbapedia Generation VII TM catalog data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Let's Go, Pikachu! / Let's Go, Eevee! learnsets for default forms, species 808-809.
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
  -- Meltan - Headbutt - Level 1
  (808, 80800, 29, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meltan - Harden - Level 1
  (808, 80800, 106, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meltan - Tail Whip - Level 9
  (808, 80800, 39, 17, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Meltan - Thunder Wave - Level 18
  (808, 80800, 86, 17, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Meltan - Thunder Shock - Level 27
  (808, 80800, 84, 17, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Meltan - Acid Armor - Level 36
  (808, 80800, 151, 17, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Meltan - Flash Cannon - Level 45
  (808, 80800, 430, 17, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Meltan - Headbutt - TM01
  (808, 80800, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 8),
  -- Meltan - Rest - TM05
  (808, 80800, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 9),
  -- Meltan - Protect - TM07
  (808, 80800, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 10),
  -- Meltan - Substitute - TM08
  (808, 80800, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 11),
  -- Meltan - Thunder Wave - TM16
  (808, 80800, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 12),
  -- Meltan - Toxic - TM27
  (808, 80800, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 13),
  -- Meltan - Thunderbolt - TM36
  (808, 80800, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 14),
  -- Meltan - Flash Cannon - TM54
  (808, 80800, 430, 17, NULL, 2, NULL, NULL, 17002054, NULL, 15),
  -- Melmetal - Thunder Punch - Level 1
  (809, 80900, 9, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Melmetal - Headbutt - Level 1
  (809, 80900, 29, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Melmetal - Harden - Level 1
  (809, 80900, 106, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Melmetal - Tail Whip - Level 1
  (809, 80900, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Melmetal - Thunder Wave - Level 1
  (809, 80900, 86, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Melmetal - Thunder Punch - Evolution
  (809, 80900, 9, 17, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Melmetal - Tail Whip - Level 9
  (809, 80900, 39, 17, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Melmetal - Thunder Wave - Level 18
  (809, 80900, 86, 17, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Melmetal - Thunder Shock - Level 27
  (809, 80900, 84, 17, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Melmetal - Acid Armor - Level 36
  (809, 80900, 151, 17, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Melmetal - Flash Cannon - Level 45
  (809, 80900, 430, 17, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Melmetal - Mega Punch - Level 54
  (809, 80900, 5, 17, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Melmetal - Protect - Level 63
  (809, 80900, 182, 17, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Melmetal - Double Iron Bash - Level 72
  (809, 80900, 742, 17, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Melmetal - Superpower - Level 81
  (809, 80900, 276, 17, NULL, 1, 81, NULL, NULL, NULL, 15),
  -- Melmetal - Hyper Beam - Level 90
  (809, 80900, 63, 17, NULL, 1, 90, NULL, NULL, NULL, 16),
  -- Melmetal - Headbutt - TM01
  (809, 80900, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Melmetal - Rest - TM05
  (809, 80900, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 18),
  -- Melmetal - Protect - TM07
  (809, 80900, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 19),
  -- Melmetal - Substitute - TM08
  (809, 80900, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 20),
  -- Melmetal - Facade - TM12
  (809, 80900, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 21),
  -- Melmetal - Brick Break - TM13
  (809, 80900, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 22),
  -- Melmetal - Thunder Wave - TM16
  (809, 80900, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 23),
  -- Melmetal - Rock Slide - TM22
  (809, 80900, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 24),
  -- Melmetal - Thunder Punch - TM23
  (809, 80900, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 25),
  -- Melmetal - Toxic - TM27
  (809, 80900, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 26),
  -- Melmetal - Ice Punch - TM35
  (809, 80900, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 27),
  -- Melmetal - Thunderbolt - TM36
  (809, 80900, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 28),
  -- Melmetal - Thunder - TM38
  (809, 80900, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 29),
  -- Melmetal - Earthquake - TM41
  (809, 80900, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 30),
  -- Melmetal - Self-Destruct - TM42
  (809, 80900, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 31),
  -- Melmetal - Solar Beam - TM45
  (809, 80900, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 32),
  -- Melmetal - Hyper Beam - TM48
  (809, 80900, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 33),
  -- Melmetal - Superpower - TM49
  (809, 80900, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 34),
  -- Melmetal - Flash Cannon - TM54
  (809, 80900, 430, 17, NULL, 2, NULL, NULL, 17002054, NULL, 35),
  -- Melmetal - Ice Beam - TM55
  (809, 80900, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 36);
