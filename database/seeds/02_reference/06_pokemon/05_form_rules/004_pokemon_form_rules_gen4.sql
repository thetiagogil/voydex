-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product scope for team-selectable Pokémon forms.
-- Cross-check: Bulbapedia form behavior pages, Serebii form pages, and PokemonDB all-forms output.
-- Scope note: every seeded non-default form receives behavior metadata; item-driven behavior lives in reference.pokemon_form_item_requirements.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 4
-- Table: reference.pokemon_form_rules
-- Scope: UI/planning behavior for curated non-default forms.
INSERT INTO reference.pokemon_form_rules (form_id, form_kind, is_team_selectable, is_battle_only, is_cosmetic, is_regional, is_evolution_locked, condition_summary, notes)
VALUES
  -- Burmy (Sandy Cloak)
  (41201, 'alternate', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Burmy (Trash Cloak)
  (41202, 'alternate', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Wormadam (Sandy Cloak)
  (41301, 'alternate', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Wormadam (Trash Cloak)
  (41302, 'alternate', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Rotom (Heat)
  (47901, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent appliance form changed with Rotom form-change mechanics.', NULL),
  -- Rotom (Wash)
  (47902, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent appliance form changed with Rotom form-change mechanics.', NULL),
  -- Rotom (Frost)
  (47903, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent appliance form changed with Rotom form-change mechanics.', NULL),
  -- Rotom (Fan)
  (47904, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent appliance form changed with Rotom form-change mechanics.', NULL),
  -- Rotom (Mow)
  (47905, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent appliance form changed with Rotom form-change mechanics.', NULL),
  -- Giratina (Origin)
  (48701, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Origin Forme selected by Griseous Orb where supported.', NULL),
  -- Shaymin (Sky)
  (49201, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent Gracidea form where supported, with game/time restrictions.', NULL),
  -- Arceus (Fighting)
  (49301, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Flying)
  (49302, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Poison)
  (49303, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Ground)
  (49304, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Rock)
  (49305, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Bug)
  (49306, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Ghost)
  (49307, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Steel)
  (49308, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Fire)
  (49309, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Water)
  (49310, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Grass)
  (49311, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Electric)
  (49312, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Psychic)
  (49313, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Ice)
  (49314, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Dragon)
  (49315, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Dark)
  (49316, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL);
