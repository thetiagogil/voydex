-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii ItemDex held item index and individual item pages.
-- Cross-check: Bulbapedia held item, type-enhancing item, incense, gem, and item pages.
-- Machine-readable sanity: PokeAPI item IDs where available.
-- Scope note: reduced held-item catalog for Pokémon team planning, biography, and future filters.
-- Effect summaries: own-words summaries of each held item's behaviour in recent games, checked against Bulbapedia and Serebii item pages.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.items
-- Scope: species-specific held items catalog rows.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order, effect_summary)
VALUES
  -- Adamant Orb
  (356, 'adamant-orb', 'Adamant Orb', 15, 4, 112, 356, 'Raises the power of Dialga''s Dragon- and Steel-type moves by 20%.'),
  -- Lustrous Orb
  (357, 'lustrous-orb', 'Lustrous Orb', 15, 4, 113, 357, 'Raises the power of Palkia''s Dragon- and Water-type moves by 20%.'),
  -- Soul Dew
  (358, 'soul-dew', 'Soul Dew', 15, 3, 202, 358, 'Raises the power of Latias''s and Latios''s Psychic- and Dragon-type moves by 20%. In Gen 3-6 it raised their Sp. Atk and Sp. Def by 50% instead.'),
  -- Red Orb
  (359, 'red-orb', 'Red Orb', 15, 3, 467, 359, 'Groudon holding it undergoes Primal Reversion into Primal Groudon when it enters battle.'),
  -- Blue Orb
  (360, 'blue-orb', 'Blue Orb', 15, 3, 468, 360, 'Kyogre holding it undergoes Primal Reversion into Primal Kyogre when it enters battle.'),
  -- Rusted Sword
  (361, 'rusted-sword', 'Rusted Sword', 15, 8, 1161, 361, 'Zacian holding it becomes Crowned Sword Zacian, and its Iron Head becomes Behemoth Blade.'),
  -- Rusted Shield
  (362, 'rusted-shield', 'Rusted Shield', 15, 8, 1162, 362, 'Zamazenta holding it becomes Crowned Shield Zamazenta, and its Iron Head becomes Behemoth Bash.'),
  -- Leek
  (363, 'leek', 'Leek', 15, 2, 236, 363, 'Raises the critical-hit ratio of Farfetch''d and Sirfetch''d by two stages.'),
  -- Light Ball
  (364, 'light-ball', 'Light Ball', 15, 2, 213, 364, 'Doubles Pikachu''s Attack and Sp. Atk; a Pikachu or Raichu parent holding it passes Volt Tackle to its Pichu Egg.'),
  -- Lucky Punch
  (365, 'lucky-punch', 'Lucky Punch', 15, 2, 233, 365, 'Raises Chansey''s critical-hit ratio by two stages.'),
  -- Metal Powder
  (366, 'metal-powder', 'Metal Powder', 15, 2, 234, 366, 'Doubles Ditto''s Defense while it has not transformed.'),
  -- Quick Powder
  (367, 'quick-powder', 'Quick Powder', 15, 4, 251, 367, 'Doubles Ditto''s Speed while it has not transformed.'),
  -- Thick Club
  (368, 'thick-club', 'Thick Club', 15, 2, 235, 368, 'Doubles the Attack of Cubone and Marowak, Alolan Marowak included.'),
  -- Booster Energy
  (369, 'booster-energy', 'Booster Energy', 15, 9, 1696, 369, 'Triggers the holder''s Protosynthesis or Quark Drive without sun or Electric Terrain, then is used up.');
