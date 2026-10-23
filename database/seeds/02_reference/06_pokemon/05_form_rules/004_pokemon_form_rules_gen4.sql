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
INSERT INTO reference.pokemon_form_rules (form_id, form_class, is_team_selectable, is_battle_only, is_cosmetic, is_regional, is_evolution_locked, condition_summary, notes)
VALUES
  -- Burmy (Sandy Cloak)
  (41201, 'form', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Burmy (Trash Cloak)
  (41202, 'form', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Wormadam (Sandy Cloak)
  (41301, 'variant', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Wormadam (Trash Cloak)
  (41302, 'variant', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Rotom (Heat)
  (47901, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent appliance form changed with Rotom form-change mechanics.', NULL),
  -- Rotom (Wash)
  (47902, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent appliance form changed with Rotom form-change mechanics.', NULL),
  -- Rotom (Frost)
  (47903, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent appliance form changed with Rotom form-change mechanics.', NULL),
  -- Rotom (Fan)
  (47904, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent appliance form changed with Rotom form-change mechanics.', NULL),
  -- Rotom (Mow)
  (47905, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent appliance form changed with Rotom form-change mechanics.', NULL),
  -- Giratina (Origin)
  (48701, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Origin Forme selected by Griseous Orb where supported.', NULL),
  -- Shaymin (Sky)
  (49201, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent Gracidea form where supported, with game/time restrictions.', NULL),
  -- Arceus (Fighting)
  (49301, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Flying)
  (49302, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Poison)
  (49303, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Ground)
  (49304, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Rock)
  (49305, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Bug)
  (49306, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Ghost)
  (49307, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Steel)
  (49308, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Fire)
  (49309, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Water)
  (49310, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Grass)
  (49311, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Electric)
  (49312, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Psychic)
  (49313, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Ice)
  (49314, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Dragon)
  (49315, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Arceus (Dark)
  (49316, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL);
