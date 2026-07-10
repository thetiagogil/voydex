-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia ability list.
-- Cross-check: PokemonDB ability list for ID/name sanity.
-- Scope limit: official mainline playthrough-game ability identities.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 6 Pokémon ability identity rows. Ability mechanics/effect
-- text are intentionally seeded separately as generation-aware attributes.
-- ============================================================================

INSERT INTO reference.abilities (id, slug, name, external_id, introduced_generation_id, sort_order)
VALUES
  -- Aroma Veil
  (165, 'aroma-veil', 'Aroma Veil', 165, 6, 165),
  -- Flower Veil
  (166, 'flower-veil', 'Flower Veil', 166, 6, 166),
  -- Cheek Pouch
  (167, 'cheek-pouch', 'Cheek Pouch', 167, 6, 167),
  -- Protean
  (168, 'protean', 'Protean', 168, 6, 168),
  -- Fur Coat
  (169, 'fur-coat', 'Fur Coat', 169, 6, 169),
  -- Magician
  (170, 'magician', 'Magician', 170, 6, 170),
  -- Bulletproof
  (171, 'bulletproof', 'Bulletproof', 171, 6, 171),
  -- Competitive
  (172, 'competitive', 'Competitive', 172, 6, 172),
  -- Strong Jaw
  (173, 'strong-jaw', 'Strong Jaw', 173, 6, 173),
  -- Refrigerate
  (174, 'refrigerate', 'Refrigerate', 174, 6, 174),
  -- Sweet Veil
  (175, 'sweet-veil', 'Sweet Veil', 175, 6, 175),
  -- Stance Change
  (176, 'stance-change', 'Stance Change', 176, 6, 176),
  -- Gale Wings
  (177, 'gale-wings', 'Gale Wings', 177, 6, 177),
  -- Mega Launcher
  (178, 'mega-launcher', 'Mega Launcher', 178, 6, 178),
  -- Grass Pelt
  (179, 'grass-pelt', 'Grass Pelt', 179, 6, 179),
  -- Symbiosis
  (180, 'symbiosis', 'Symbiosis', 180, 6, 180),
  -- Tough Claws
  (181, 'tough-claws', 'Tough Claws', 181, 6, 181),
  -- Pixilate
  (182, 'pixilate', 'Pixilate', 182, 6, 182),
  -- Gooey
  (183, 'gooey', 'Gooey', 183, 6, 183),
  -- Aerilate
  (184, 'aerilate', 'Aerilate', 184, 6, 184),
  -- Parental Bond
  (185, 'parental-bond', 'Parental Bond', 185, 6, 185),
  -- Dark Aura
  (186, 'dark-aura', 'Dark Aura', 186, 6, 186),
  -- Fairy Aura
  (187, 'fairy-aura', 'Fairy Aura', 187, 6, 187),
  -- Aura Break
  (188, 'aura-break', 'Aura Break', 188, 6, 188),
  -- Primordial Sea
  (189, 'primordial-sea', 'Primordial Sea', 189, 6, 189),
  -- Desolate Land
  (190, 'desolate-land', 'Desolate Land', 190, 6, 190),
  -- Delta Stream
  (191, 'delta-stream', 'Delta Stream', 191, 6, 191);
