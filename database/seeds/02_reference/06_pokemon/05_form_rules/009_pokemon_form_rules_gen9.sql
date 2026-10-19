-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product scope for team-selectable Pokémon forms.
-- Cross-check: Bulbapedia form behavior pages, Serebii form pages, and PokemonDB all-forms output.
-- Scope note: every seeded non-default form receives behavior metadata; item-driven behavior lives in reference.pokemon_form_item_requirements.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 9
-- Table: reference.pokemon_form_rules
-- Scope: UI/planning behavior for curated non-default forms.
INSERT INTO reference.pokemon_form_rules (form_id, form_kind, is_team_selectable, is_battle_only, is_cosmetic, is_regional, is_evolution_locked, condition_summary, notes)
VALUES
  -- Paldean Tauros (Combat Breed)
  (12801, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Paldea.', NULL),
  -- Paldean Tauros (Blaze Breed)
  (12802, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Paldea.', NULL),
  -- Paldean Tauros (Aqua Breed)
  (12803, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Paldea.', NULL),
  -- Paldean Wooper
  (19401, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Paldea.', NULL),
  -- Ursaluna (Bloodmoon)
  (90101, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Oinkologne (Female)
  (91601, 'alternate', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Maushold (Family of Three)
  (92501, 'special', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Squawkabilly (Blue Plumage)
  (93101, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Squawkabilly (Yellow Plumage)
  (93102, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Squawkabilly (White Plumage)
  (93103, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Tatsugiri (Droopy)
  (97801, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Tatsugiri (Stretchy)
  (97802, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Dudunsparce (Three-Segment)
  (98201, 'special', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Poltchageist (Artisan)
  (101201, 'special', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Sinistcha (Masterpiece)
  (101301, 'special', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Ogerpon (Wellspring Mask)
  (101701, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Mask form selected by the matching Ogerpon mask held item.', NULL),
  -- Ogerpon (Hearthflame Mask)
  (101702, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Mask form selected by the matching Ogerpon mask held item.', NULL),
  -- Ogerpon (Cornerstone Mask)
  (101703, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Mask form selected by the matching Ogerpon mask held item.', NULL);
