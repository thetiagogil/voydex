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
-- Generation 6 ability introduction summaries.
-- Effect summary is intentionally concise; deeper simulator mechanics belong in docs.
-- ============================================================================

INSERT INTO reference.ability_attributes (ability_id, version_group_start_id, effect_summary)
VALUES
  -- Aroma Veil
  (165, 13, 'Protects allies from attacks that limit their move choices.'),
  -- Flower Veil
  (166, 13, 'Prevents lowering of ally Grass-type Pokémon''s stats.'),
  -- Cheek Pouch
  (167, 13, 'Restores additional HP when a Berry is consumed.'),
  -- Protean
  (168, 13, 'Changes type to match the move it is about to use.'),
  -- Fur Coat
  (169, 13, 'Reduces damage from physical moves.'),
  -- Magician
  (170, 13, 'The Pokémon steals the held item of a Pokémon it hits with a move.'),
  -- Bulletproof
  (171, 13, 'Protects from most ball and bomb moves, but not Rock Blast.'),
  -- Competitive
  (172, 13, 'Sharply raises Special Attack when the Pokémon''s stats are lowered.'),
  -- Strong Jaw
  (173, 13, 'Boosts the power of biting moves.'),
  -- Refrigerate
  (174, 13, 'Turns Normal-type moves into Ice-type moves and boosts their power by 30%.'),
  -- Sweet Veil
  (175, 13, 'Prevents the Pokémon and allies from falling asleep.'),
  -- Stance Change
  (176, 13, 'Changes form depending on moves used.'),
  -- Gale Wings
  (177, 13, 'Gives priority to Flying-type moves.'),
  -- Mega Launcher
  (178, 13, 'Boosts the power of aura and pulse moves.'),
  -- Grass Pelt
  (179, 13, 'Boosts the Defense stat in Grassy Terrain.'),
  -- Symbiosis
  (180, 13, 'The Pokémon can pass an item to an ally.'),
  -- Tough Claws
  (181, 13, 'Boosts the power of contact moves.'),
  -- Pixilate
  (182, 13, 'Turns Normal-type moves into Fairy-type moves and boosts their power by 30%.'),
  -- Gooey
  (183, 13, 'Contact with the Pokémon lowers the attacker''s Speed stat.'),
  -- Aerilate
  (184, 13, 'Turns Normal-type moves into Flying-type moves and boosts their power by 30%.'),
  -- Parental Bond
  (185, 13, 'Attacks twice; the second hit has 50% of the first hit''s power.'),
  -- Dark Aura
  (186, 13, 'Raises power of Dark type moves for all Pokémon in battle.'),
  -- Fairy Aura
  (187, 13, 'Raises power of Fairy type moves for all Pokémon in battle.'),
  -- Aura Break
  (188, 13, 'Reduces power of Dark- and Fairy-type moves.'),
  -- Primordial Sea
  (189, 14, 'Makes it rain heavily when the ability activates.'),
  -- Desolate Land
  (190, 14, 'Turns the sunlight extremely harsh when the ability activates.'),
  -- Delta Stream
  (191, 14, 'Creates strong winds when the ability activates.');
