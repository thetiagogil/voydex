-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product scope for team-selectable Pokémon forms.
-- Cross-check: Bulbapedia form behavior pages, Serebii form pages, and PokemonDB all-forms output.
-- Scope note: every seeded non-default form receives behavior metadata; item-driven behavior lives in reference.pokemon_form_item_requirements.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 3
-- Table: reference.pokemon_form_rules
-- Scope: UI/planning behavior for curated non-default forms.
INSERT INTO reference.pokemon_form_rules (form_id, form_class, is_team_selectable, is_battle_only, is_cosmetic, is_regional, is_evolution_locked, condition_summary, notes)
VALUES
  -- Deoxys (Attack)
  (38601, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent form changed by game/version or meteorite mechanics.', NULL),
  -- Deoxys (Defense)
  (38602, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent form changed by game/version or meteorite mechanics.', NULL),
  -- Deoxys (Speed)
  (38603, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent form changed by game/version or meteorite mechanics.', NULL);
