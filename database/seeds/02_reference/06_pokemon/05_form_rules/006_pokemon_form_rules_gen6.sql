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
INSERT INTO reference.pokemon_form_rules (form_id, form_class, is_team_selectable, is_battle_only, is_cosmetic, is_regional, is_evolution_locked, condition_summary, notes)
VALUES
  -- Arceus (Fairy)
  (49317, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by Multitype when holding a matching Plate or type-specific Z-Crystal where supported.', NULL),
  -- Floette (Eternal Flower)
  (67002, 'variant', TRUE, FALSE, FALSE, FALSE, FALSE, 'Floette that carries the Eternal Flower, with its own stats; it cannot evolve into Florges.', NULL),
  -- Meowstic (Female)
  (67801, 'variant', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Pumpkaboo (Small)
  (71001, 'variant', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Pumpkaboo (Large)
  (71002, 'variant', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Pumpkaboo (Super)
  (71003, 'variant', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Gourgeist (Small)
  (71101, 'variant', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Gourgeist (Large)
  (71102, 'variant', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Gourgeist (Super)
  (71103, 'variant', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Hoopa (Unbound)
  (72001, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent Prison Bottle form where supported, with game/time restrictions.', NULL);
