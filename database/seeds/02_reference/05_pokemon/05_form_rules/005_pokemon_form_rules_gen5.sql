-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product scope for team-selectable Pokémon forms.
-- Cross-check: Bulbapedia form behavior pages, Serebii form pages, and PokemonDB all-forms output.
-- Scope note: every seeded non-default form receives behavior metadata; item-driven behavior lives in reference.pokemon_form_item_requirements.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 5
-- Table: reference.pokemon_form_rules
-- Scope: UI/planning behavior for curated non-default forms.
INSERT INTO reference.pokemon_form_rules (form_id, form_kind, is_team_selectable, is_battle_only, is_cosmetic, is_regional, is_evolution_locked, condition_summary, notes)
VALUES
  -- Basculin (Blue-Striped)
  (55001, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Tornadus (Therian)
  (64101, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent Reveal Glass form.', NULL),
  -- Thundurus (Therian)
  (64201, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent Reveal Glass form.', NULL),
  -- Landorus (Therian)
  (64501, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent Reveal Glass form.', NULL),
  -- Kyurem (White)
  (64601, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent DNA Splicers fusion form.', NULL),
  -- Kyurem (Black)
  (64602, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent DNA Splicers fusion form.', NULL),
  -- Genesect (Douse Drive)
  (64901, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Drive form selected by holding the matching Drive. This changes Techno Blast type, not Genesect typing.', NULL),
  -- Genesect (Shock Drive)
  (64902, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Drive form selected by holding the matching Drive. This changes Techno Blast type, not Genesect typing.', NULL),
  -- Genesect (Burn Drive)
  (64903, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Drive form selected by holding the matching Drive. This changes Techno Blast type, not Genesect typing.', NULL),
  -- Genesect (Chill Drive)
  (64904, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Drive form selected by holding the matching Drive. This changes Techno Blast type, not Genesect typing.', NULL);
