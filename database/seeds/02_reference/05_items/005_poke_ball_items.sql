-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Poke Ball item pages.
-- Cross-check: Serebii item location pages and PokemonDB item pages where available.
-- Machine-readable sanity: PokeAPI item IDs only where available.
-- Scope note: Poke Ball items that matter for caught-ball biography.
-- Park Ball and Strange Ball are intentionally excluded because source pages state they cannot be a Pokémon's own registered Poke Ball.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.items
-- Scope: Poke Ball catalog rows for caught-ball biography.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order)
VALUES
  -- Poke Ball
  (117, 'poke-ball', 'Poke Ball', 1, 1, 4, 117),
  -- Great Ball
  (118, 'great-ball', 'Great Ball', 1, 1, 3, 118),
  -- Ultra Ball
  (119, 'ultra-ball', 'Ultra Ball', 1, 1, 2, 119),
  -- Master Ball
  (120, 'master-ball', 'Master Ball', 1, 1, 1, 120),
  -- Safari Ball
  (121, 'safari-ball', 'Safari Ball', 1, 1, 5, 121),
  -- Fast Ball
  (122, 'fast-ball', 'Fast Ball', 1, 2, 453, 122),
  -- Level Ball
  (123, 'level-ball', 'Level Ball', 1, 2, 450, 123),
  -- Lure Ball
  (124, 'lure-ball', 'Lure Ball', 1, 2, 449, 124),
  -- Heavy Ball
  (125, 'heavy-ball', 'Heavy Ball', 1, 2, 452, 125),
  -- Love Ball
  (126, 'love-ball', 'Love Ball', 1, 2, 455, 126),
  -- Friend Ball
  (127, 'friend-ball', 'Friend Ball', 1, 2, 454, 127),
  -- Moon Ball
  (128, 'moon-ball', 'Moon Ball', 1, 2, 451, 128),
  -- Sport Ball
  (129, 'sport-ball', 'Sport Ball', 1, 2, 457, 129),
  -- Net Ball
  (130, 'net-ball', 'Net Ball', 1, 3, 6, 130),
  -- Dive Ball
  (131, 'dive-ball', 'Dive Ball', 1, 3, 7, 131),
  -- Nest Ball
  (132, 'nest-ball', 'Nest Ball', 1, 3, 8, 132),
  -- Repeat Ball
  (133, 'repeat-ball', 'Repeat Ball', 1, 3, 9, 133),
  -- Timer Ball
  (134, 'timer-ball', 'Timer Ball', 1, 3, 10, 134),
  -- Luxury Ball
  (135, 'luxury-ball', 'Luxury Ball', 1, 3, 11, 135),
  -- Premier Ball
  (136, 'premier-ball', 'Premier Ball', 1, 3, 12, 136),
  -- Dusk Ball
  (137, 'dusk-ball', 'Dusk Ball', 1, 4, 13, 137),
  -- Heal Ball
  (138, 'heal-ball', 'Heal Ball', 1, 4, 14, 138),
  -- Quick Ball
  (139, 'quick-ball', 'Quick Ball', 1, 4, 15, 139),
  -- Cherish Ball
  (140, 'cherish-ball', 'Cherish Ball', 1, 4, 16, 140),
  -- Dream Ball
  (141, 'dream-ball', 'Dream Ball', 1, 5, 617, 141),
  -- Beast Ball
  (142, 'beast-ball', 'Beast Ball', 1, 7, 887, 142),
  -- Poke Ball (Hisui)
  (143, 'hisuian-poke-ball', 'Poke Ball (Hisui)', 1, 8, NULL, 143),
  -- Great Ball (Hisui)
  (144, 'hisuian-great-ball', 'Great Ball (Hisui)', 1, 8, NULL, 144),
  -- Ultra Ball (Hisui)
  (145, 'hisuian-ultra-ball', 'Ultra Ball (Hisui)', 1, 8, NULL, 145),
  -- Heavy Ball (Hisui)
  (146, 'hisuian-heavy-ball', 'Heavy Ball (Hisui)', 1, 8, NULL, 146),
  -- Leaden Ball
  (147, 'leaden-ball', 'Leaden Ball', 1, 8, NULL, 147),
  -- Gigaton Ball
  (148, 'gigaton-ball', 'Gigaton Ball', 1, 8, NULL, 148),
  -- Feather Ball
  (149, 'feather-ball', 'Feather Ball', 1, 8, NULL, 149),
  -- Wing Ball
  (150, 'wing-ball', 'Wing Ball', 1, 8, NULL, 150),
  -- Jet Ball
  (151, 'jet-ball', 'Jet Ball', 1, 8, NULL, 151),
  -- Origin Ball
  (152, 'origin-ball', 'Origin Ball', 1, 8, NULL, 152);
