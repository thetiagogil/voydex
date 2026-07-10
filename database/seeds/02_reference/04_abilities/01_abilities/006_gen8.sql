-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia ability list.
-- Cross-check: PokemonDB ability list for ID/name sanity.
-- Scope limit: official mainline playthrough-game ability identities.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 8 Pokémon ability identity rows. Ability mechanics/effect
-- text are intentionally seeded separately as generation-aware attributes.
-- ============================================================================

INSERT INTO reference.abilities (id, slug, name, external_id, introduced_generation_id, sort_order)
VALUES
  -- Intrepid Sword
  (234, 'intrepid-sword', 'Intrepid Sword', 234, 8, 234),
  -- Dauntless Shield
  (235, 'dauntless-shield', 'Dauntless Shield', 235, 8, 235),
  -- Libero
  (236, 'libero', 'Libero', 236, 8, 236),
  -- Ball Fetch
  (237, 'ball-fetch', 'Ball Fetch', 237, 8, 237),
  -- Cotton Down
  (238, 'cotton-down', 'Cotton Down', 238, 8, 238),
  -- Propeller Tail
  (239, 'propeller-tail', 'Propeller Tail', 239, 8, 239),
  -- Mirror Armor
  (240, 'mirror-armor', 'Mirror Armor', 240, 8, 240),
  -- Gulp Missile
  (241, 'gulp-missile', 'Gulp Missile', 241, 8, 241),
  -- Stalwart
  (242, 'stalwart', 'Stalwart', 242, 8, 242),
  -- Steam Engine
  (243, 'steam-engine', 'Steam Engine', 243, 8, 243),
  -- Punk Rock
  (244, 'punk-rock', 'Punk Rock', 244, 8, 244),
  -- Sand Spit
  (245, 'sand-spit', 'Sand Spit', 245, 8, 245),
  -- Ice Scales
  (246, 'ice-scales', 'Ice Scales', 246, 8, 246),
  -- Ripen
  (247, 'ripen', 'Ripen', 247, 8, 247),
  -- Ice Face
  (248, 'ice-face', 'Ice Face', 248, 8, 248),
  -- Power Spot
  (249, 'power-spot', 'Power Spot', 249, 8, 249),
  -- Mimicry
  (250, 'mimicry', 'Mimicry', 250, 8, 250),
  -- Screen Cleaner
  (251, 'screen-cleaner', 'Screen Cleaner', 251, 8, 251),
  -- Steely Spirit
  (252, 'steely-spirit', 'Steely Spirit', 252, 8, 252),
  -- Perish Body
  (253, 'perish-body', 'Perish Body', 253, 8, 253),
  -- Wandering Spirit
  (254, 'wandering-spirit', 'Wandering Spirit', 254, 8, 254),
  -- Gorilla Tactics
  (255, 'gorilla-tactics', 'Gorilla Tactics', 255, 8, 255),
  -- Neutralizing Gas
  (256, 'neutralizing-gas', 'Neutralizing Gas', 256, 8, 256),
  -- Pastel Veil
  (257, 'pastel-veil', 'Pastel Veil', 257, 8, 257),
  -- Hunger Switch
  (258, 'hunger-switch', 'Hunger Switch', 258, 8, 258),
  -- Quick Draw
  (259, 'quick-draw', 'Quick Draw', 259, 8, 259),
  -- Unseen Fist
  (260, 'unseen-fist', 'Unseen Fist', 260, 8, 260),
  -- Curious Medicine
  (261, 'curious-medicine', 'Curious Medicine', 261, 8, 261),
  -- Transistor
  (262, 'transistor', 'Transistor', 262, 8, 262),
  -- Dragon's Maw
  (263, 'dragons-maw', 'Dragon''s Maw', 263, 8, 263),
  -- Chilling Neigh
  (264, 'chilling-neigh', 'Chilling Neigh', 264, 8, 264),
  -- Grim Neigh
  (265, 'grim-neigh', 'Grim Neigh', 265, 8, 265),
  -- As One (Glastrier)
  (266, 'as-one-glastrier', 'As One (Glastrier)', 266, 8, 266),
  -- As One (Spectrier)
  (267, 'as-one-spectrier', 'As One (Spectrier)', 267, 8, 267);
