-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia ability list.
-- Cross-check: PokemonDB ability list for ID/name sanity.
-- Scope limit: official mainline playthrough-game ability identities.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 4 Pokémon ability identity rows. Ability mechanics/effect
-- text are intentionally seeded separately as generation-aware attributes.
-- ============================================================================

INSERT INTO reference.abilities (id, slug, name, external_id, introduced_generation_id, sort_order)
VALUES
  -- Tangled Feet
  (77, 'tangled-feet', 'Tangled Feet', 77, 4, 77),
  -- Motor Drive
  (78, 'motor-drive', 'Motor Drive', 78, 4, 78),
  -- Rivalry
  (79, 'rivalry', 'Rivalry', 79, 4, 79),
  -- Steadfast
  (80, 'steadfast', 'Steadfast', 80, 4, 80),
  -- Snow Cloak
  (81, 'snow-cloak', 'Snow Cloak', 81, 4, 81),
  -- Gluttony
  (82, 'gluttony', 'Gluttony', 82, 4, 82),
  -- Anger Point
  (83, 'anger-point', 'Anger Point', 83, 4, 83),
  -- Unburden
  (84, 'unburden', 'Unburden', 84, 4, 84),
  -- Heatproof
  (85, 'heatproof', 'Heatproof', 85, 4, 85),
  -- Simple
  (86, 'simple', 'Simple', 86, 4, 86),
  -- Dry Skin
  (87, 'dry-skin', 'Dry Skin', 87, 4, 87),
  -- Download
  (88, 'download', 'Download', 88, 4, 88),
  -- Iron Fist
  (89, 'iron-fist', 'Iron Fist', 89, 4, 89),
  -- Poison Heal
  (90, 'poison-heal', 'Poison Heal', 90, 4, 90),
  -- Adaptability
  (91, 'adaptability', 'Adaptability', 91, 4, 91),
  -- Skill Link
  (92, 'skill-link', 'Skill Link', 92, 4, 92),
  -- Hydration
  (93, 'hydration', 'Hydration', 93, 4, 93),
  -- Solar Power
  (94, 'solar-power', 'Solar Power', 94, 4, 94),
  -- Quick Feet
  (95, 'quick-feet', 'Quick Feet', 95, 4, 95),
  -- Normalize
  (96, 'normalize', 'Normalize', 96, 4, 96),
  -- Sniper
  (97, 'sniper', 'Sniper', 97, 4, 97),
  -- Magic Guard
  (98, 'magic-guard', 'Magic Guard', 98, 4, 98),
  -- No Guard
  (99, 'no-guard', 'No Guard', 99, 4, 99),
  -- Stall
  (100, 'stall', 'Stall', 100, 4, 100),
  -- Technician
  (101, 'technician', 'Technician', 101, 4, 101),
  -- Leaf Guard
  (102, 'leaf-guard', 'Leaf Guard', 102, 4, 102),
  -- Klutz
  (103, 'klutz', 'Klutz', 103, 4, 103),
  -- Mold Breaker
  (104, 'mold-breaker', 'Mold Breaker', 104, 4, 104),
  -- Super Luck
  (105, 'super-luck', 'Super Luck', 105, 4, 105),
  -- Aftermath
  (106, 'aftermath', 'Aftermath', 106, 4, 106),
  -- Anticipation
  (107, 'anticipation', 'Anticipation', 107, 4, 107),
  -- Forewarn
  (108, 'forewarn', 'Forewarn', 108, 4, 108),
  -- Unaware
  (109, 'unaware', 'Unaware', 109, 4, 109),
  -- Tinted Lens
  (110, 'tinted-lens', 'Tinted Lens', 110, 4, 110),
  -- Filter
  (111, 'filter', 'Filter', 111, 4, 111),
  -- Slow Start
  (112, 'slow-start', 'Slow Start', 112, 4, 112),
  -- Scrappy
  (113, 'scrappy', 'Scrappy', 113, 4, 113),
  -- Storm Drain
  (114, 'storm-drain', 'Storm Drain', 114, 4, 114),
  -- Ice Body
  (115, 'ice-body', 'Ice Body', 115, 4, 115),
  -- Solid Rock
  (116, 'solid-rock', 'Solid Rock', 116, 4, 116),
  -- Snow Warning
  (117, 'snow-warning', 'Snow Warning', 117, 4, 117),
  -- Honey Gather
  (118, 'honey-gather', 'Honey Gather', 118, 4, 118),
  -- Frisk
  (119, 'frisk', 'Frisk', 119, 4, 119),
  -- Reckless
  (120, 'reckless', 'Reckless', 120, 4, 120),
  -- Multitype
  (121, 'multitype', 'Multitype', 121, 4, 121),
  -- Flower Gift
  (122, 'flower-gift', 'Flower Gift', 122, 4, 122),
  -- Bad Dreams
  (123, 'bad-dreams', 'Bad Dreams', 123, 4, 123);
