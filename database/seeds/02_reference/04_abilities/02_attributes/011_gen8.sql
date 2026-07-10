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
-- Generation 8 ability introduction summaries.
-- Effect summary is intentionally concise; deeper simulator mechanics belong in docs.
-- ============================================================================

INSERT INTO reference.ability_attributes (ability_id, version_group_start_id, effect_summary)
VALUES
  -- Intrepid Sword
  (234, 18, 'Raises Attack each time the Pokémon enters battle.'),
  -- Dauntless Shield
  (235, 18, 'Raises Defense each time the Pokémon enters battle.'),
  -- Libero
  (236, 18, 'Changes type to match the move it is about to use.'),
  -- Ball Fetch
  (237, 18, 'Retrieves a Poke Ball from a failed throw.'),
  -- Cotton Down
  (238, 18, 'Lowers foe''s Speed when hit.'),
  -- Propeller Tail
  (239, 18, 'Ignores moves and abilities that draw in moves.'),
  -- Mirror Armor
  (240, 18, 'Reflects any stat-lowering effects.'),
  -- Gulp Missile
  (241, 18, 'Returns with a catch in its mouth after using Surf or Dive.'),
  -- Stalwart
  (242, 18, 'Ignores moves and abilities that draw in moves.'),
  -- Steam Engine
  (243, 18, 'Drastically raises Speed when hit by a Fire- or Water-type move.'),
  -- Punk Rock
  (244, 18, 'Boosts sound-based moves and halves damage from the same moves.'),
  -- Sand Spit
  (245, 18, 'Creates a sandstorm when hit by an attack.'),
  -- Ice Scales
  (246, 18, 'Halves damage from Special moves.'),
  -- Ripen
  (247, 18, 'Doubles the effect of berries.'),
  -- Ice Face
  (248, 18, 'Avoids damage from Physical moves for one turn.'),
  -- Power Spot
  (249, 18, 'Just being next to the Pokémon powers up moves.'),
  -- Mimicry
  (250, 18, 'Changes type depending on the terrain.'),
  -- Screen Cleaner
  (251, 18, 'Nullifies effects of Light Screen, Reflect, and Aurora Veil.'),
  -- Steely Spirit
  (252, 18, 'Powers up ally Pokémon''s Steel-type moves.'),
  -- Perish Body
  (253, 18, 'When hit by a move that makes direct contact, the Pokémon and the attacker will faint after three turns unless they switch out of battle.'),
  -- Wandering Spirit
  (254, 18, 'Swaps abilities with opponents on contact.'),
  -- Gorilla Tactics
  (255, 18, 'Boosts the Pokémon''s Attack stat but only allows the use of the first selected move.'),
  -- Neutralizing Gas
  (256, 18, 'Neutralizes abilities of all Pokémon in battle.'),
  -- Pastel Veil
  (257, 18, 'Prevents the Pokémon and its allies from being poisoned.'),
  -- Hunger Switch
  (258, 18, 'Changes forms each turn.'),
  -- Quick Draw
  (259, 19, 'May move first within its priority bracket.'),
  -- Unseen Fist
  (260, 19, 'Contact moves can strike through Protect/Detect.'),
  -- Curious Medicine
  (261, 19, 'Resets all stat changes upon entering battlefield.'),
  -- Transistor
  (262, 20, 'Boosts Electric-type move damage by 50%.'),
  -- Dragon's Maw
  (263, 20, 'Powers up Dragon-type moves.'),
  -- Chilling Neigh
  (264, 20, 'Boosts Attack after knocking out a Pokémon.'),
  -- Grim Neigh
  (265, 20, 'Boosts Special Attack after knocking out a Pokémon.'),
  -- As One (Glastrier)
  (266, 20, 'Combines Unnerve with Chilling Neigh.'),
  -- As One (Spectrier)
  (267, 20, 'Combines Unnerve with Grim Neigh.');
