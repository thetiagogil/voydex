-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product scope for team-selectable Pokémon forms.
-- Cross-check: Bulbapedia form behavior pages, Serebii form pages, and PokemonDB all-forms output.
-- Scope note: every seeded non-default form receives behavior metadata; item-driven behavior lives in reference.pokemon_form_item_requirements.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 6
-- Table: reference.pokemon_form_rules
-- Scope: UI/planning behavior for curated non-default forms.
INSERT INTO reference.pokemon_form_rules (form_id, form_kind, is_team_selectable, is_battle_only, is_cosmetic, is_regional, is_evolution_locked, condition_summary, notes)
VALUES
  -- Arceus (Fairy)
  (49317, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Meowstic (Female)
  (67801, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Pumpkaboo (Small)
  (71001, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Pumpkaboo (Large)
  (71002, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Pumpkaboo (Super)
  (71003, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Gourgeist (Small)
  (71101, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Gourgeist (Large)
  (71102, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Gourgeist (Super)
  (71103, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Hoopa (Unbound)
  (72001, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent Prison Bottle form where supported, with game/time restrictions.', NULL);
