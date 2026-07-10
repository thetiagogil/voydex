-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia ability list.
-- Cross-check: PokemonDB ability list for ID/name sanity.
-- Scope limit: official mainline playthrough-game ability identities.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 5 Pokémon ability identity rows. Ability mechanics/effect
-- text are intentionally seeded separately as generation-aware attributes.
-- ============================================================================

INSERT INTO reference.abilities (id, slug, name, external_id, introduced_generation_id, sort_order)
VALUES
  -- Pickpocket
  (124, 'pickpocket', 'Pickpocket', 124, 5, 124),
  -- Sheer Force
  (125, 'sheer-force', 'Sheer Force', 125, 5, 125),
  -- Contrary
  (126, 'contrary', 'Contrary', 126, 5, 126),
  -- Unnerve
  (127, 'unnerve', 'Unnerve', 127, 5, 127),
  -- Defiant
  (128, 'defiant', 'Defiant', 128, 5, 128),
  -- Defeatist
  (129, 'defeatist', 'Defeatist', 129, 5, 129),
  -- Cursed Body
  (130, 'cursed-body', 'Cursed Body', 130, 5, 130),
  -- Healer
  (131, 'healer', 'Healer', 131, 5, 131),
  -- Friend Guard
  (132, 'friend-guard', 'Friend Guard', 132, 5, 132),
  -- Weak Armor
  (133, 'weak-armor', 'Weak Armor', 133, 5, 133),
  -- Heavy Metal
  (134, 'heavy-metal', 'Heavy Metal', 134, 5, 134),
  -- Light Metal
  (135, 'light-metal', 'Light Metal', 135, 5, 135),
  -- Multiscale
  (136, 'multiscale', 'Multiscale', 136, 5, 136),
  -- Toxic Boost
  (137, 'toxic-boost', 'Toxic Boost', 137, 5, 137),
  -- Flare Boost
  (138, 'flare-boost', 'Flare Boost', 138, 5, 138),
  -- Harvest
  (139, 'harvest', 'Harvest', 139, 5, 139),
  -- Telepathy
  (140, 'telepathy', 'Telepathy', 140, 5, 140),
  -- Moody
  (141, 'moody', 'Moody', 141, 5, 141),
  -- Overcoat
  (142, 'overcoat', 'Overcoat', 142, 5, 142),
  -- Poison Touch
  (143, 'poison-touch', 'Poison Touch', 143, 5, 143),
  -- Regenerator
  (144, 'regenerator', 'Regenerator', 144, 5, 144),
  -- Big Pecks
  (145, 'big-pecks', 'Big Pecks', 145, 5, 145),
  -- Sand Rush
  (146, 'sand-rush', 'Sand Rush', 146, 5, 146),
  -- Wonder Skin
  (147, 'wonder-skin', 'Wonder Skin', 147, 5, 147),
  -- Analytic
  (148, 'analytic', 'Analytic', 148, 5, 148),
  -- Illusion
  (149, 'illusion', 'Illusion', 149, 5, 149),
  -- Imposter
  (150, 'imposter', 'Imposter', 150, 5, 150),
  -- Infiltrator
  (151, 'infiltrator', 'Infiltrator', 151, 5, 151),
  -- Mummy
  (152, 'mummy', 'Mummy', 152, 5, 152),
  -- Moxie
  (153, 'moxie', 'Moxie', 153, 5, 153),
  -- Justified
  (154, 'justified', 'Justified', 154, 5, 154),
  -- Rattled
  (155, 'rattled', 'Rattled', 155, 5, 155),
  -- Magic Bounce
  (156, 'magic-bounce', 'Magic Bounce', 156, 5, 156),
  -- Sap Sipper
  (157, 'sap-sipper', 'Sap Sipper', 157, 5, 157),
  -- Prankster
  (158, 'prankster', 'Prankster', 158, 5, 158),
  -- Sand Force
  (159, 'sand-force', 'Sand Force', 159, 5, 159),
  -- Iron Barbs
  (160, 'iron-barbs', 'Iron Barbs', 160, 5, 160),
  -- Zen Mode
  (161, 'zen-mode', 'Zen Mode', 161, 5, 161),
  -- Victory Star
  (162, 'victory-star', 'Victory Star', 162, 5, 162),
  -- Turboblaze
  (163, 'turboblaze', 'Turboblaze', 163, 5, 163),
  -- Teravolt
  (164, 'teravolt', 'Teravolt', 164, 5, 164);
