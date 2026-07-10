-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen6 changes move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Bind Generation VI
  (20, 6, 1, 15, 85, 20, 0, 'physical'),
  -- Jump Kick Generation VI
  (26, 6, 7, 100, 95, 10, 0, 'physical'),
  -- Tackle Generation VI
  (33, 6, 1, 50, 100, 35, 0, 'physical'),
  -- Wrap Generation VI
  (35, 6, 1, 15, 90, 20, 0, 'physical'),
  -- Thrash Generation VI
  (37, 6, 1, 120, 100, 10, 0, 'physical'),
  -- Disable Generation VI
  (50, 6, 1, NULL, 100, 20, 0, 'status'),
  -- Petal Dance Generation VI
  (80, 6, 5, 120, 100, 10, 0, 'special'),
  -- Fire Spin Generation VI
  (83, 6, 2, 35, 85, 15, 0, 'special'),
  -- Toxic Generation VI
  (92, 6, 8, NULL, 90, 10, 0, 'status'),
  -- Clamp Generation VI
  (128, 6, 3, 35, 85, 15, 0, 'physical'),
  -- High Jump Kick Generation VI
  (136, 6, 7, 130, 90, 10, 0, 'physical'),
  -- Glare Generation VI
  (137, 6, 1, NULL, 90, 30, 0, 'status'),
  -- Poison Gas Generation VI
  (139, 6, 8, NULL, 80, 40, 0, 'status'),
  -- Crabhammer Generation VI
  (152, 6, 3, 90, 90, 10, 0, 'physical'),
  -- Mind Reader Generation VI
  (170, 6, 1, NULL, NULL, 5, 0, 'status'),
  -- Curse Generation VI
  (174, 6, 14, NULL, NULL, 10, 0, 'status'),
  -- Cotton Spore Generation VI
  (178, 6, 5, NULL, 100, 40, 0, 'status'),
  -- Scary Face Generation VI
  (184, 6, 1, NULL, 100, 10, 0, 'status'),
  -- Bone Rush Generation VI
  (198, 6, 9, 25, 90, 10, 0, 'physical'),
  -- Outrage Generation VI
  (200, 6, 15, 120, 100, 10, 0, 'physical'),
  -- Giga Drain Generation VI
  (202, 6, 5, 75, 100, 10, 0, 'special'),
  -- Fury Cutter Generation VI
  (210, 6, 12, 20, 95, 20, 0, 'physical'),
  -- Future Sight Generation VI
  (248, 6, 11, 100, 100, 10, 0, 'special'),
  -- Whirlpool Generation VI
  (250, 6, 3, 35, 85, 15, 0, 'special'),
  -- Beat Up Generation VI
  (251, 6, 16, NULL, 100, 10, 0, 'physical'),
  -- Uproar Generation VI
  (253, 6, 1, 90, 100, 10, 0, 'special'),
  -- Sand Tomb Generation VI
  (328, 6, 9, 35, 85, 15, 0, 'physical'),
  -- Bullet Seed Generation VI
  (331, 6, 5, 25, 100, 30, 0, 'physical'),
  -- Icicle Spear Generation VI
  (333, 6, 6, 25, 100, 30, 0, 'physical'),
  -- Covet Generation VI
  (343, 6, 1, 60, 100, 40, 0, 'physical'),
  -- Rock Blast Generation VI
  (350, 6, 13, 25, 90, 10, 0, 'physical'),
  -- Doom Desire Generation VI
  (353, 6, 17, 140, 100, 5, 0, 'special'),
  -- Feint Generation VI
  (364, 6, 1, 30, 100, 10, 2, 'physical'),
  -- Me First Generation VI
  (382, 6, 1, NULL, NULL, 20, 0, 'status'),
  -- Punishment Generation VI
  (386, 6, 16, NULL, 100, 5, 0, 'physical'),
  -- Last Resort Generation VI
  (387, 6, 1, 140, 100, 5, 0, 'physical'),
  -- Drain Punch Generation VI
  (409, 6, 7, 75, 100, 10, 0, 'physical'),
  -- Magma Storm Generation VI
  (463, 6, 2, 120, 75, 5, 0, 'special');
