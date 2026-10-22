-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen5 changes move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class, effect_summary)
VALUES
  -- Whirlwind Generation V
  (18, 5, 1, NULL, 100, 20, -6, 'status', 'Moves last and forces the target to switch out, or ends a wild battle.'),
  -- Bind Generation V
  (20, 5, 1, 15, 85, 20, 0, 'physical', 'Traps the target for four to five turns, dealing 1/8 of its max HP each turn. In Gen 5 it dealt 1/16.'),
  -- Jump Kick Generation V
  (26, 5, 7, 100, 95, 10, 0, 'physical', 'If it misses, the user loses half of its max HP.'),
  -- Tackle Generation V
  (33, 5, 1, 50, 100, 35, 0, 'physical', 'A plain attack with no added effect.'),
  -- Wrap Generation V
  (35, 5, 1, 15, 90, 20, 0, 'physical', 'Traps the target for four to five turns, dealing 1/8 of its max HP each turn. In Gen 5 it dealt 1/16.'),
  -- Thrash Generation V
  (37, 5, 1, 120, 100, 10, 0, 'physical', 'Attacks for two to three turns in a row, then confuses the user.'),
  -- Roar Generation V
  (46, 5, 1, NULL, 100, 20, -6, 'status', 'Moves last and forces the target to switch out, or ends a wild battle.'),
  -- Disable Generation V
  (50, 5, 1, NULL, 100, 20, 0, 'status', 'Stops the target from using its last move for four turns.'),
  -- Petal Dance Generation V
  (80, 5, 5, 120, 100, 10, 0, 'special', 'Attacks for two to three turns in a row, then confuses the user.'),
  -- Fire Spin Generation V
  (83, 5, 2, 35, 85, 15, 0, 'special', 'Traps the target for four to five turns, dealing 1/8 of its max HP each turn. In Gen 5 it dealt 1/16.'),
  -- Toxic Generation V
  (92, 5, 8, NULL, 90, 10, 0, 'status', 'Badly poisons the target, with damage that grows each turn.'),
  -- Clamp Generation V
  (128, 5, 3, 35, 85, 15, 0, 'physical', 'Traps the target for four to five turns, dealing 1/8 of its max HP each turn. In Gen 5 it dealt 1/16.'),
  -- High Jump Kick Generation V
  (136, 5, 7, 130, 90, 10, 0, 'physical', 'If it misses, the user loses half of its max HP.'),
  -- Glare Generation V
  (137, 5, 1, NULL, 90, 30, 0, 'status', 'Paralyzes the target.'),
  -- Poison Gas Generation V
  (139, 5, 8, NULL, 80, 40, 0, 'status', 'Poisons the target.'),
  -- Crabhammer Generation V
  (152, 5, 3, 90, 90, 10, 0, 'physical', 'Has a high critical-hit ratio.'),
  -- Mind Reader Generation V
  (170, 5, 1, NULL, NULL, 5, 0, 'status', 'Makes the user''s next move certain to hit the target.'),
  -- Curse Generation V
  (174, 5, 14, NULL, NULL, 10, 0, 'status', 'A non-Ghost user lowers its Speed to raise Attack and Defense by one stage; a Ghost user spends half its HP to curse the target.'),
  -- Cotton Spore Generation V
  (178, 5, 5, NULL, 100, 40, 0, 'status', 'Lowers the target''s Speed by two stages.'),
  -- Protect Generation V
  (182, 5, 1, NULL, NULL, 10, 4, 'status', 'Blocks moves aimed at the user this turn; fails more often when used in a row.'),
  -- Scary Face Generation V
  (184, 5, 1, NULL, 100, 10, 0, 'status', 'Lowers the target''s Speed by two stages.'),
  -- Detect Generation V
  (197, 5, 7, NULL, NULL, 5, 4, 'status', 'Blocks moves aimed at the user this turn; fails more often when used in a row.'),
  -- Bone Rush Generation V
  (198, 5, 9, 25, 90, 10, 0, 'physical', 'Hits two to five times in a row.'),
  -- Outrage Generation V
  (200, 5, 15, 120, 100, 10, 0, 'physical', 'Attacks for two to three turns in a row, then confuses the user.'),
  -- Giga Drain Generation V
  (202, 5, 5, 75, 100, 10, 0, 'special', 'Restores the user''s HP by half of the damage dealt.'),
  -- Endure Generation V
  (203, 5, 1, NULL, NULL, 10, 4, 'status', 'Leaves the user with at least 1 HP this turn; fails more often when used in a row.'),
  -- Fury Cutter Generation V
  (210, 5, 12, 20, 95, 20, 0, 'physical', 'Doubles in power each time it hits in a row.'),
  -- Extreme Speed Generation V
  (245, 5, 1, 80, 100, 5, 2, 'physical', 'Always strikes first (+2 priority).'),
  -- Future Sight Generation V
  (248, 5, 11, 100, 100, 10, 0, 'special', 'Strikes the target two turns after it is used.'),
  -- Whirlpool Generation V
  (250, 5, 3, 35, 85, 15, 0, 'special', 'Traps the target for four to five turns, dealing 1/8 of its max HP each turn. In Gen 5 it dealt 1/16.'),
  -- Beat Up Generation V
  (251, 5, 16, NULL, 100, 10, 0, 'physical', 'Each healthy member of the user''s party joins in for one hit.'),
  -- Fake Out Generation V
  (252, 5, 1, 40, 100, 10, 3, 'physical', 'Strikes first and makes the target flinch; works only on the user''s first turn out.'),
  -- Uproar Generation V
  (253, 5, 1, 90, 100, 10, 0, 'special', 'Causes an uproar for three turns that keeps every Pokémon awake.'),
  -- Sand Tomb Generation V
  (328, 5, 9, 35, 85, 15, 0, 'physical', 'Traps the target for four to five turns, dealing 1/8 of its max HP each turn. In Gen 5 it dealt 1/16.'),
  -- Bullet Seed Generation V
  (331, 5, 5, 25, 100, 30, 0, 'physical', 'Hits two to five times in a row.'),
  -- Icicle Spear Generation V
  (333, 5, 6, 25, 100, 30, 0, 'physical', 'Hits two to five times in a row.'),
  -- Covet Generation V
  (343, 5, 1, 60, 100, 40, 0, 'physical', 'Steals the target''s held item if the user holds none.'),
  -- Rock Blast Generation V
  (350, 5, 13, 25, 90, 10, 0, 'physical', 'Hits two to five times in a row.'),
  -- Doom Desire Generation V
  (353, 5, 17, 140, 100, 5, 0, 'special', 'Strikes the target two turns after it is used.'),
  -- Feint Generation V
  (364, 5, 1, 30, 100, 10, 2, 'physical', 'Strikes first (+2 priority) and breaks through protecting moves.'),
  -- Me First Generation V
  (382, 5, 1, NULL, NULL, 20, 0, 'status', 'Uses the target''s chosen move first, with 50% more power.'),
  -- Punishment Generation V
  (386, 5, 16, NULL, 100, 5, 0, 'physical', 'Stronger the more stat boosts the target has.'),
  -- Last Resort Generation V
  (387, 5, 1, 140, 100, 5, 0, 'physical', 'Works only after the user has used every move it knows.'),
  -- Drain Punch Generation V
  (409, 5, 7, 75, 100, 10, 0, 'physical', 'Restores the user''s HP by half of the damage dealt.'),
  -- Magma Storm Generation V
  (463, 5, 2, 120, 75, 5, 0, 'special', 'Traps the target for four to five turns, dealing 1/16 of its max HP each turn.');
