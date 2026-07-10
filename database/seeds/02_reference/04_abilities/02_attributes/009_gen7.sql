-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB ability list and ability pages for concise effect summaries.
-- Cross-check: Bulbapedia ability pages for generation/version behavior changes.
-- Sanity: PokeAPI ability changelog CSV for older machine-readable change hints.
-- Scope: product-facing summaries for mainline playthrough-game abilities.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 7 ability introduction summaries.
-- Effect summary is intentionally concise; deeper simulator mechanics belong in docs.
-- ============================================================================

INSERT INTO reference.ability_attributes (ability_id, version_group_start_id, effect_summary)
VALUES
  -- Stamina
  (192, 15, 'Raises Defense when attacked.'),
  -- Wimp Out
  (193, 15, 'Switches out when HP drops below half.'),
  -- Emergency Exit
  (194, 15, 'Switches out when HP falls below 50%.'),
  -- Water Compaction
  (195, 15, 'Sharply raises Defense when hit by a Water-type move.'),
  -- Merciless
  (196, 15, 'The Pokémon''s attacks become critical hits if the target is poisoned.'),
  -- Shields Down
  (197, 15, 'Changes stats when HP drops below half.'),
  -- Stakeout
  (198, 15, 'Deals double damage to Pokémon switching in.'),
  -- Water Bubble
  (199, 15, 'Halves damage from Fire-type moves, doubles power of Water-type moves used, and prevents burns.'),
  -- Steelworker
  (200, 15, 'Powers up Steel-type moves.'),
  -- Berserk
  (201, 15, 'Raises Special Attack when HP drops below half.'),
  -- Slush Rush
  (202, 15, 'Doubles Speed during hail.'),
  -- Long Reach
  (203, 15, 'The Pokémon uses its moves without making contact with the target.'),
  -- Liquid Voice
  (204, 15, 'All sound-based moves become Water-type moves.'),
  -- Triage
  (205, 15, 'Gives priority to restorative moves.'),
  -- Galvanize
  (206, 15, 'Normal-type moves become Electric-type moves and their power boosted.'),
  -- Surge Surfer
  (207, 15, 'Doubles Speed during Electric Terrain.'),
  -- Schooling
  (208, 15, 'Changes Wishiwashi to School Form.'),
  -- Disguise
  (209, 15, 'Blocks damage from one damaging move once per battle.'),
  -- Battle Bond
  (210, 15, 'After directly knocking out a Pokémon, transforms Greninja into Ash-Greninja and powers up Water Shuriken.'),
  -- Power Construct
  (211, 15, 'Changes form when HP drops below half.'),
  -- Corrosion
  (212, 15, 'The Pokémon can poison Steel and Poison types.'),
  -- Comatose
  (213, 15, 'The Pokémon is always asleep but can still attack.'),
  -- Queenly Majesty
  (214, 15, 'Prevents use of priority moves.'),
  -- Innards Out
  (215, 15, 'Deals damage upon fainting.'),
  -- Dancer
  (216, 15, 'Copies the foe''s Dance moves.'),
  -- Battery
  (217, 15, 'Raises power of teammates'' Special moves.'),
  -- Fluffy
  (218, 15, 'Halves damage from contact moves, but doubles damage from Fire-type moves.'),
  -- Dazzling
  (219, 15, 'Protects the Pokémon from high-priority moves.'),
  -- Soul-Heart
  (220, 15, 'Raises Special Attack when another Pokémon faints.'),
  -- Tangling Hair
  (221, 15, 'Contact with the Pokémon lowers the attacker''s Speed stat.'),
  -- Receiver
  (222, 15, 'Inherits an ally''s ability when it faints.'),
  -- Power of Alchemy
  (223, 15, 'The Pokémon copies the Ability of a defeated ally.'),
  -- Beast Boost
  (224, 15, 'The Pokémon boosts its most proficient stat each time it knocks out a Pokémon.'),
  -- RKS System
  (225, 15, 'Changes type depending on held item.'),
  -- Electric Surge
  (226, 15, 'The Pokémon creates an Electric Terrain when it enters a battle.'),
  -- Psychic Surge
  (227, 15, 'The Pokémon creates a Psychic Terrain when it enters a battle.'),
  -- Misty Surge
  (228, 15, 'The Pokémon creates a Misty Terrain when it enters a battle.'),
  -- Grassy Surge
  (229, 15, 'The Pokémon creates a Grassy Terrain when it enters a battle.'),
  -- Full Metal Body
  (230, 15, 'Prevents stat drops caused by opposing Pokémon.'),
  -- Shadow Shield
  (231, 15, 'Reduces damage when HP is full.'),
  -- Prism Armor
  (232, 15, 'Reduces damage from super-effective attacks.'),
  -- Neuroforce
  (233, 16, 'Powers up moves that are super effective.');
