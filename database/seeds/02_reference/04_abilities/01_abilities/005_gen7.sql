-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia ability list.
-- Cross-check: PokemonDB ability list for ID/name sanity.
-- Scope limit: official mainline playthrough-game ability identities.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 7 Pokémon ability identity rows. Ability mechanics/effect
-- text are intentionally seeded separately as generation-aware attributes.
-- ============================================================================

INSERT INTO reference.abilities (id, slug, name, external_id, introduced_generation_id, sort_order)
VALUES
  -- Stamina
  (192, 'stamina', 'Stamina', 192, 7, 192),
  -- Wimp Out
  (193, 'wimp-out', 'Wimp Out', 193, 7, 193),
  -- Emergency Exit
  (194, 'emergency-exit', 'Emergency Exit', 194, 7, 194),
  -- Water Compaction
  (195, 'water-compaction', 'Water Compaction', 195, 7, 195),
  -- Merciless
  (196, 'merciless', 'Merciless', 196, 7, 196),
  -- Shields Down
  (197, 'shields-down', 'Shields Down', 197, 7, 197),
  -- Stakeout
  (198, 'stakeout', 'Stakeout', 198, 7, 198),
  -- Water Bubble
  (199, 'water-bubble', 'Water Bubble', 199, 7, 199),
  -- Steelworker
  (200, 'steelworker', 'Steelworker', 200, 7, 200),
  -- Berserk
  (201, 'berserk', 'Berserk', 201, 7, 201),
  -- Slush Rush
  (202, 'slush-rush', 'Slush Rush', 202, 7, 202),
  -- Long Reach
  (203, 'long-reach', 'Long Reach', 203, 7, 203),
  -- Liquid Voice
  (204, 'liquid-voice', 'Liquid Voice', 204, 7, 204),
  -- Triage
  (205, 'triage', 'Triage', 205, 7, 205),
  -- Galvanize
  (206, 'galvanize', 'Galvanize', 206, 7, 206),
  -- Surge Surfer
  (207, 'surge-surfer', 'Surge Surfer', 207, 7, 207),
  -- Schooling
  (208, 'schooling', 'Schooling', 208, 7, 208),
  -- Disguise
  (209, 'disguise', 'Disguise', 209, 7, 209),
  -- Battle Bond
  (210, 'battle-bond', 'Battle Bond', 210, 7, 210),
  -- Power Construct
  (211, 'power-construct', 'Power Construct', 211, 7, 211),
  -- Corrosion
  (212, 'corrosion', 'Corrosion', 212, 7, 212),
  -- Comatose
  (213, 'comatose', 'Comatose', 213, 7, 213),
  -- Queenly Majesty
  (214, 'queenly-majesty', 'Queenly Majesty', 214, 7, 214),
  -- Innards Out
  (215, 'innards-out', 'Innards Out', 215, 7, 215),
  -- Dancer
  (216, 'dancer', 'Dancer', 216, 7, 216),
  -- Battery
  (217, 'battery', 'Battery', 217, 7, 217),
  -- Fluffy
  (218, 'fluffy', 'Fluffy', 218, 7, 218),
  -- Dazzling
  (219, 'dazzling', 'Dazzling', 219, 7, 219),
  -- Soul-Heart
  (220, 'soul-heart', 'Soul-Heart', 220, 7, 220),
  -- Tangling Hair
  (221, 'tangling-hair', 'Tangling Hair', 221, 7, 221),
  -- Receiver
  (222, 'receiver', 'Receiver', 222, 7, 222),
  -- Power of Alchemy
  (223, 'power-of-alchemy', 'Power of Alchemy', 223, 7, 223),
  -- Beast Boost
  (224, 'beast-boost', 'Beast Boost', 224, 7, 224),
  -- RKS System
  (225, 'rks-system', 'RKS System', 225, 7, 225),
  -- Electric Surge
  (226, 'electric-surge', 'Electric Surge', 226, 7, 226),
  -- Psychic Surge
  (227, 'psychic-surge', 'Psychic Surge', 227, 7, 227),
  -- Misty Surge
  (228, 'misty-surge', 'Misty Surge', 228, 7, 228),
  -- Grassy Surge
  (229, 'grassy-surge', 'Grassy Surge', 229, 7, 229),
  -- Full Metal Body
  (230, 'full-metal-body', 'Full Metal Body', 230, 7, 230),
  -- Shadow Shield
  (231, 'shadow-shield', 'Shadow Shield', 231, 7, 231),
  -- Prism Armor
  (232, 'prism-armor', 'Prism Armor', 232, 7, 232),
  -- Neuroforce
  (233, 'neuroforce', 'Neuroforce', 233, 7, 233);
