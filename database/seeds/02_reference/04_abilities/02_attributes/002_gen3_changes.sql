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
-- Emerald ability change-point summaries.
-- Effect summary is intentionally concise; deeper simulator mechanics belong in docs.
-- ============================================================================

INSERT INTO reference.ability_attributes (ability_id, version_group_start_id, effect_summary)
VALUES
  -- Stench
  (1, 6, 'No battle effect; as lead, lowers wild encounter rate.'),
  -- Static
  (9, 6, 'Contact may paralyze the attacker; as lead, makes Electric-type wild encounters more likely.'),
  -- Compound Eyes
  (14, 6, 'Boosts accuracy; as lead, makes wild held items more common.'),
  -- Suction Cups
  (21, 6, 'Prevents forced switching; as lead, makes fishing bites more likely.'),
  -- Intimidate
  (22, 6, 'Lowers opposing Attack on entry; as lead, lowers encounters with weaker wild Pokémon.'),
  -- Synchronize
  (28, 6, 'Mirrors poison, paralysis, or burn; as lead, makes same-nature wild encounters more likely.'),
  -- Lightning Rod
  (31, 6, 'Redirects Electric-type moves without absorbing them or raising Sp. Atk; as lead, increases Match Call activity.'),
  -- Magma Armor
  (40, 6, 'Prevents freezing; halves Egg hatch cycles while in the party.'),
  -- Magnet Pull
  (42, 6, 'Traps Steel-type Pokémon; as lead, makes Steel-type wild encounters more likely.'),
  -- Pressure
  (46, 6, 'Makes opposing moves use 1 extra PP; as lead, makes higher-level wild encounters more likely.'),
  -- Flame Body
  (49, 6, 'Contact may burn the attacker; halves Egg hatch cycles while in the party.'),
  -- Keen Eye
  (51, 6, 'Prevents accuracy drops; as lead, lowers encounters with weaker wild Pokémon.'),
  -- Hyper Cutter
  (52, 6, 'Prevents Attack drops; doubles Cut''s grass-clearing radius while in the party.'),
  -- Hustle
  (55, 6, 'Boosts Attack but lowers physical move accuracy; as lead, makes higher-level wild encounters more likely.'),
  -- Cute Charm
  (56, 6, 'Contact may infatuate the attacker; as lead, makes opposite-gender wild encounters more likely.'),
  -- Sticky Hold
  (60, 6, 'Prevents held item theft; as lead, makes fishing bites more likely.'),
  -- Swarm
  (68, 6, 'Powers up Bug-type moves in a pinch; as lead, makes wild Pokémon cries more common.'),
  -- Arena Trap
  (71, 6, 'Traps grounded opposing Pokémon; as lead, increases wild encounter rate.'),
  -- Vital Spirit
  (72, 6, 'Prevents sleep; as lead, makes higher-level wild encounters more likely.'),
  -- White Smoke
  (73, 6, 'Prevents stat drops caused by opposing Pokémon; as lead, lowers wild encounter rate.');
