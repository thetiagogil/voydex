-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia form change, Primal Reversion and battle-only form pages.
-- Cross-check: Serebii Pokédex form pages.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 3-9
-- Table: reference.pokemon_form_rules
-- Scope: battle-only, never team selectable; condition_summary says what triggers it.
INSERT INTO reference.pokemon_form_rules (form_id, form_class, is_team_selectable, is_battle_only, is_cosmetic, is_regional, is_evolution_locked, battle_mechanic, condition_summary, notes)
VALUES
  -- Primal Kyogre
  (38201, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'primal-reversion', 'Primal Reversion when it enters battle holding the Blue Orb, in Omega Ruby / Alpha Sapphire to Ultra Sun / Ultra Moon and in Mega Dimension, where the Rogue Primals are boss battles.', NULL),
  -- Primal Groudon
  (38301, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'primal-reversion', 'Primal Reversion when it enters battle holding the Red Orb, in Omega Ruby / Alpha Sapphire to Ultra Sun / Ultra Moon and in Mega Dimension, where the Rogue Primals are boss battles.', NULL),
  -- Castform (Sunny Form)
  (35101, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form in battle in harsh sunlight (Forecast).', NULL),
  -- Castform (Rainy Form)
  (35102, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form in battle in rain (Forecast).', NULL),
  -- Castform (Snowy Form)
  (35103, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form in battle in hail or snow (Forecast).', NULL),
  -- Cherrim (Sunshine Form)
  (42101, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form in battle in harsh sunlight (Flower Gift).', NULL),
  -- Darmanitan (Zen Mode)
  (55501, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form in battle below half HP with Zen Mode.', NULL),
  -- Galarian Darmanitan (Zen Mode)
  (55503, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form in battle below half HP with Zen Mode.', NULL),
  -- Meloetta (Pirouette Forme)
  (64801, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form in battle after using Relic Song.', NULL),
  -- Ash-Greninja
  (65803, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form in battle after Battle Bond Greninja directly knocks out a Pokémon.', NULL),
  -- Aegislash (Blade Forme)
  (68101, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form in battle when it uses a damaging move (Stance Change).', NULL),
  -- Zygarde (Complete Forme)
  (71803, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form in battle below half HP with Power Construct.', NULL),
  -- Wishiwashi (School Form)
  (74601, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form in battle from level 20 while above a quarter of its HP (Schooling).', NULL),
  -- Minior (Core)
  (77401, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form in battle below half HP (Shields Down).', NULL),
  -- Mimikyu (Busted Form)
  (77801, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form in battle once its Disguise is broken.', NULL),
  -- Ultra Necrozma
  (80003, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'ultra-burst', 'Ultra Bursts in battle from Dusk Mane or Dawn Wings Necrozma holding Ultranecrozium Z.', NULL),
  -- Cramorant (Gulping Form)
  (84501, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form in battle after Surf or Dive above half HP (Gulp Missile).', NULL),
  -- Cramorant (Gorging Form)
  (84502, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form in battle after Surf or Dive at half HP or below (Gulp Missile).', NULL),
  -- Eiscue (Noice Face)
  (87501, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form in battle once its Ice Face breaks.', NULL),
  -- Morpeko (Hangry Mode)
  (87701, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Switches to this form at the end of each turn in battle (Hunger Switch).', NULL),
  -- Zacian (Crowned Sword)
  (88801, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form when it enters battle holding the Rusted Sword.', NULL),
  -- Zamazenta (Crowned Shield)
  (88901, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form when it enters battle holding the Rusted Shield.', NULL),
  -- Eternamax Eternatus
  (89001, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'dynamax', 'Story battle form only; it cannot be caught or used.', NULL),
  -- Palafin (Hero Form)
  (96401, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form after it switches out of battle once (Zero to Hero).', NULL),
  -- Terapagos (Terastal Form)
  (102401, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form when it enters battle (Tera Shift).', NULL),
  -- Terapagos (Stellar Form)
  (102402, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'in-battle', 'Takes this form when it Terastallizes from its Terastal Form.', NULL);
