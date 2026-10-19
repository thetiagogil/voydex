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

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Bind Generation V
  (20, 5, 1, 15, 85, 20, 0, 'physical'),
  -- Jump Kick Generation V
  (26, 5, 7, 100, 95, 10, 0, 'physical'),
  -- Tackle Generation V
  (33, 5, 1, 50, 100, 35, 0, 'physical'),
  -- Wrap Generation V
  (35, 5, 1, 15, 90, 20, 0, 'physical'),
  -- Thrash Generation V
  (37, 5, 1, 120, 100, 10, 0, 'physical'),
  -- Disable Generation V
  (50, 5, 1, NULL, 100, 20, 0, 'status'),
  -- Petal Dance Generation V
  (80, 5, 5, 120, 100, 10, 0, 'special'),
  -- Fire Spin Generation V
  (83, 5, 2, 35, 85, 15, 0, 'special'),
  -- Toxic Generation V
  (92, 5, 8, NULL, 90, 10, 0, 'status'),
  -- Clamp Generation V
  (128, 5, 3, 35, 85, 15, 0, 'physical'),
  -- High Jump Kick Generation V
  (136, 5, 7, 130, 90, 10, 0, 'physical'),
  -- Glare Generation V
  (137, 5, 1, NULL, 90, 30, 0, 'status'),
  -- Poison Gas Generation V
  (139, 5, 8, NULL, 80, 40, 0, 'status'),
  -- Crabhammer Generation V
  (152, 5, 3, 90, 90, 10, 0, 'physical'),
  -- Mind Reader Generation V
  (170, 5, 1, NULL, NULL, 5, 0, 'status'),
  -- Curse Generation V
  (174, 5, 14, NULL, NULL, 10, 0, 'status'),
  -- Cotton Spore Generation V
  (178, 5, 5, NULL, 100, 40, 0, 'status'),
  -- Scary Face Generation V
  (184, 5, 1, NULL, 100, 10, 0, 'status'),
  -- Bone Rush Generation V
  (198, 5, 9, 25, 90, 10, 0, 'physical'),
  -- Outrage Generation V
  (200, 5, 15, 120, 100, 10, 0, 'physical'),
  -- Giga Drain Generation V
  (202, 5, 5, 75, 100, 10, 0, 'special'),
  -- Fury Cutter Generation V
  (210, 5, 12, 20, 95, 20, 0, 'physical'),
  -- Future Sight Generation V
  (248, 5, 11, 100, 100, 10, 0, 'special'),
  -- Whirlpool Generation V
  (250, 5, 3, 35, 85, 15, 0, 'special'),
  -- Beat Up Generation V
  (251, 5, 16, NULL, 100, 10, 0, 'physical'),
  -- Uproar Generation V
  (253, 5, 1, 90, 100, 10, 0, 'special'),
  -- Sand Tomb Generation V
  (328, 5, 9, 35, 85, 15, 0, 'physical'),
  -- Bullet Seed Generation V
  (331, 5, 5, 25, 100, 30, 0, 'physical'),
  -- Icicle Spear Generation V
  (333, 5, 6, 25, 100, 30, 0, 'physical'),
  -- Covet Generation V
  (343, 5, 1, 60, 100, 40, 0, 'physical'),
  -- Rock Blast Generation V
  (350, 5, 13, 25, 90, 10, 0, 'physical'),
  -- Doom Desire Generation V
  (353, 5, 17, 140, 100, 5, 0, 'special'),
  -- Feint Generation V
  (364, 5, 1, 30, 100, 10, 2, 'physical'),
  -- Me First Generation V
  (382, 5, 1, NULL, NULL, 20, 0, 'status'),
  -- Punishment Generation V
  (386, 5, 16, NULL, 100, 5, 0, 'physical'),
  -- Last Resort Generation V
  (387, 5, 1, 140, 100, 5, 0, 'physical'),
  -- Drain Punch Generation V
  (409, 5, 7, 75, 100, 10, 0, 'physical'),
  -- Magma Storm Generation V
  (463, 5, 2, 120, 75, 5, 0, 'special');
