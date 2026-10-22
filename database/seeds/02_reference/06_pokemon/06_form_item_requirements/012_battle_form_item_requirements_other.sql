-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia form change, Primal Reversion and battle-only form pages.
-- Cross-check: Serebii Pokédex form pages.
-- Scope note: the held item that triggers a battle form when it enters battle.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation Start: 6
-- Table: reference.pokemon_form_item_requirements
-- Scope: Primal orbs, Ultranecrozium Z and the Rusted Sword and Shield.
INSERT INTO reference.pokemon_form_item_requirements (form_id, item_id, generation_start_id, generation_end_id, version_group_start_id, version_group_end_id, requirement_kind, type_effect_scope, type_id, notes)
VALUES
  -- Primal Kyogre -> Blue Orb -> required_held_item
  (38201, 360, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in Omega Ruby / Alpha Sapphire, Sun / Moon and Ultra Sun / Ultra Moon.'),
  -- Primal Groudon -> Red Orb -> required_held_item
  (38301, 359, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in Omega Ruby / Alpha Sapphire, Sun / Moon and Ultra Sun / Ultra Moon.'),
  -- Ultra Necrozma -> Ultranecrozium Z -> required_held_item
  (80003, 262, 7, NULL, NULL, NULL, 'required_held_item', NULL, NULL, NULL),
  -- Zacian (Crowned Sword) -> Rusted Sword -> required_held_item
  (88801, 361, 8, NULL, NULL, NULL, 'required_held_item', NULL, NULL, NULL),
  -- Zamazenta (Crowned Shield) -> Rusted Shield -> required_held_item
  (88901, 362, 8, NULL, NULL, NULL, 'required_held_item', NULL, NULL, NULL);
