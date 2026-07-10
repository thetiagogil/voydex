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
-- Generation 4 ability introduction summaries.
-- Effect summary is intentionally concise; deeper simulator mechanics belong in docs.
-- ============================================================================

INSERT INTO reference.ability_attributes (ability_id, version_group_start_id, effect_summary)
VALUES
  -- Tangled Feet
  (77, 8, 'Raises evasion if the Pokémon is confused.'),
  -- Motor Drive
  (78, 8, 'Raises Speed if hit by an Electric-type move.'),
  -- Rivalry
  (79, 8, 'Deals more damage to a Pokémon of same gender.'),
  -- Steadfast
  (80, 8, 'Raises Speed each time the Pokémon flinches.'),
  -- Snow Cloak
  (81, 8, 'Boosts evasion during hail.'),
  -- Gluttony
  (82, 8, 'Encourages the early use of a held Berry.'),
  -- Anger Point
  (83, 8, 'Maxes Attack after taking a critical hit.'),
  -- Unburden
  (84, 8, 'Raises Speed if a held item is used.'),
  -- Heatproof
  (85, 8, 'Weakens the power of Fire-type moves.'),
  -- Simple
  (86, 8, 'Doubles all stat changes.'),
  -- Dry Skin
  (87, 8, 'Reduces HP if it is hot. Water restores HP.'),
  -- Download
  (88, 8, 'Adjusts power according to a foe''s defenses.'),
  -- Iron Fist
  (89, 8, 'Boosts the power of punching moves.'),
  -- Poison Heal
  (90, 8, 'Restores HP from poison in battle, but poison still damages outside battle.'),
  -- Adaptability
  (91, 8, 'Powers up moves of the same type.'),
  -- Skill Link
  (92, 8, 'Increases the frequency of multi-strike moves.'),
  -- Hydration
  (93, 8, 'Heals status problems if it is raining.'),
  -- Solar Power
  (94, 8, 'In sunshine, Sp. Atk is boosted but HP decreases.'),
  -- Quick Feet
  (95, 8, 'Boosts Speed if there is a status problem.'),
  -- Normalize
  (96, 8, 'Turns the Pokémon''s moves into Normal-type moves.'),
  -- Sniper
  (97, 8, 'Powers up moves if they become critical hits.'),
  -- Magic Guard
  (98, 8, 'Only takes damage from direct attacks; in Generation IV it also blocks Toxic Spikes poisoning and full paralysis.'),
  -- No Guard
  (99, 8, 'Ensures attacks by or against the Pokémon land.'),
  -- Stall
  (100, 8, 'The Pokémon moves after every foe and ally in its priority bracket.'),
  -- Technician
  (101, 8, 'Powers up the Pokémon''s weaker moves.'),
  -- Leaf Guard
  (102, 8, 'Prevents problems with status in sunny weather.'),
  -- Klutz
  (103, 8, 'The Pokémon can''t use any held items.'),
  -- Mold Breaker
  (104, 8, 'Moves can be used regardless of Abilities.'),
  -- Super Luck
  (105, 8, 'Heightens the critical-hit ratios of moves.'),
  -- Aftermath
  (106, 8, 'Damages the attacker landing the finishing hit.'),
  -- Anticipation
  (107, 8, 'Senses a foe''s dangerous moves.'),
  -- Forewarn
  (108, 8, 'Determines what moves a foe has.'),
  -- Unaware
  (109, 8, 'Ignores any stat changes in the Pokémon.'),
  -- Tinted Lens
  (110, 8, 'Powers up "not very effective" moves.'),
  -- Filter
  (111, 8, 'Reduces damage from super-effective attacks.'),
  -- Slow Start
  (112, 8, 'Temporarily halves Attack and Speed.'),
  -- Scrappy
  (113, 8, 'Allows Normal- and Fighting-type moves to hit Ghost-type Pokémon.'),
  -- Storm Drain
  (114, 8, 'Redirects Water-type moves but does not absorb them or raise Sp. Atk.'),
  -- Ice Body
  (115, 8, 'Restores HP each turn during hail.'),
  -- Solid Rock
  (116, 8, 'Reduces damage from super-effective attacks.'),
  -- Snow Warning
  (117, 8, 'Summons hail indefinitely when entering battle.'),
  -- Honey Gather
  (118, 8, 'The Pokémon may gather Honey from somewhere.'),
  -- Frisk
  (119, 8, 'The Pokémon can check a foe''s held item.'),
  -- Reckless
  (120, 8, 'Powers up moves that have recoil damage.'),
  -- Multitype
  (121, 8, 'Changes type to match the held Plate.'),
  -- Flower Gift
  (122, 8, 'Powers up party Pokémon when it is sunny.'),
  -- Bad Dreams
  (123, 8, 'Reduces a sleeping foe''s HP.');
