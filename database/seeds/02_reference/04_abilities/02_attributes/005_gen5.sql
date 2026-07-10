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
-- Generation 5 ability introduction summaries.
-- Effect summary is intentionally concise; deeper simulator mechanics belong in docs.
-- ============================================================================

INSERT INTO reference.ability_attributes (ability_id, version_group_start_id, effect_summary)
VALUES
  -- Pickpocket
  (124, 11, 'Steals an item when hit by another Pokémon.'),
  -- Sheer Force
  (125, 11, 'Removes added effects to increase move damage.'),
  -- Contrary
  (126, 11, 'Makes stat changes have an opposite effect.'),
  -- Unnerve
  (127, 11, 'Makes the foe nervous and unable to eat Berries.'),
  -- Defiant
  (128, 11, 'Sharply raises Attack when the Pokémon''s stats are lowered.'),
  -- Defeatist
  (129, 11, 'Lowers stats when HP drops below half.'),
  -- Cursed Body
  (130, 11, 'May disable a move used on the Pokémon.'),
  -- Healer
  (131, 11, 'May heal an ally''s status conditions.'),
  -- Friend Guard
  (132, 11, 'Reduces damage done to allies.'),
  -- Weak Armor
  (133, 11, 'Physical attacks lower Defense and raise Speed.'),
  -- Heavy Metal
  (134, 11, 'Doubles the Pokémon''s weight.'),
  -- Light Metal
  (135, 11, 'Halves the Pokémon''s weight.'),
  -- Multiscale
  (136, 11, 'Reduces damage when HP is full.'),
  -- Toxic Boost
  (137, 11, 'Powers up physical attacks when poisoned.'),
  -- Flare Boost
  (138, 11, 'Powers up special attacks when burned.'),
  -- Harvest
  (139, 11, 'May create another Berry after one is used.'),
  -- Telepathy
  (140, 11, 'Anticipates an ally''s attack and dodges it.'),
  -- Moody
  (141, 11, 'At the end of each turn, raises one stat and lowers another, including accuracy and evasion.'),
  -- Overcoat
  (142, 11, 'Protects from weather damage.'),
  -- Poison Touch
  (143, 11, 'May poison targets when a Pokémon makes contact.'),
  -- Regenerator
  (144, 11, 'Restores a little HP when withdrawn from battle.'),
  -- Big Pecks
  (145, 11, 'Protects the Pokémon from Defense-lowering attacks.'),
  -- Sand Rush
  (146, 11, 'Boosts the Pokémon''s Speed in a sandstorm.'),
  -- Wonder Skin
  (147, 11, 'Makes status-changing moves more likely to miss.'),
  -- Analytic
  (148, 11, 'Boosts move power when the Pokémon moves last.'),
  -- Illusion
  (149, 11, 'Enters battle disguised as the last Pokémon in the party.'),
  -- Imposter
  (150, 11, 'It transforms itself into the Pokémon it is facing.'),
  -- Infiltrator
  (151, 11, 'Passes through Reflect, Light Screen, Mist, and Safeguard.'),
  -- Mummy
  (152, 11, 'Contact with this Pokémon spreads this Ability.'),
  -- Moxie
  (153, 11, 'Boosts Attack after knocking out any Pokémon.'),
  -- Justified
  (154, 11, 'Raises Attack when hit by a Dark-type move.'),
  -- Rattled
  (155, 11, 'Raises Speed when hit by Bug-, Ghost-, or Dark-type moves.'),
  -- Magic Bounce
  (156, 11, 'Reflects status- changing moves.'),
  -- Sap Sipper
  (157, 11, 'Boosts Attack when hit by a Grass-type move.'),
  -- Prankster
  (158, 11, 'Gives status moves +1 priority; Quick Guard does not block the boosted moves.'),
  -- Sand Force
  (159, 11, 'Boosts certain moves'' power in a sandstorm.'),
  -- Iron Barbs
  (160, 11, 'Inflicts damage to the Pokémon on contact.'),
  -- Zen Mode
  (161, 11, 'Changes form when HP drops below half.'),
  -- Victory Star
  (162, 11, 'Boosts the accuracy of its allies and itself.'),
  -- Turboblaze
  (163, 11, 'Moves can be used regardless of Abilities.'),
  -- Teravolt
  (164, 11, 'Moves can be used regardless of Abilities.');
