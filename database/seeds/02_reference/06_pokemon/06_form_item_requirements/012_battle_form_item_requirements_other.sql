-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia form change, Primal Reversion and battle-only form pages.
-- Cross-check: Serebii Pokédex form pages.
-- Scope note: the held item that triggers a battle form when it enters battle, bounded to the
-- games where a player's Pokémon uses it.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation Start: 6
-- Table: reference.pokemon_form_item_requirements
-- Scope: Primal orbs, Ultranecrozium Z and the Rusted Sword and Shield.
INSERT INTO reference.pokemon_form_item_requirements (form_id, item_id, generation_start_id, generation_end_id, version_group_start_id, version_group_end_id, requirement_kind, type_effect_scope, type_id, notes)
VALUES
  -- Primal Kyogre -> Blue Orb -> required_held_item (Omega Ruby / Alpha Sapphire to Ultra Sun / Ultra Moon)
  (38201, 360, 6, 7, 14, 16, 'required_held_item', NULL, NULL, 'Held-item trigger in Omega Ruby / Alpha Sapphire, Sun / Moon and Ultra Sun / Ultra Moon.'),
  -- Primal Kyogre -> Blue Orb -> required_held_item (Mega Dimension)
  (38201, 360, 9, 9, 27, 27, 'required_held_item', NULL, NULL, 'The player''s own Kyogre Primal Reverts in Mega Dimension while holding the Blue Orb; the Rogue Primals are boss battles.'),
  -- Primal Groudon -> Red Orb -> required_held_item (Omega Ruby / Alpha Sapphire to Ultra Sun / Ultra Moon)
  (38301, 359, 6, 7, 14, 16, 'required_held_item', NULL, NULL, 'Held-item trigger in Omega Ruby / Alpha Sapphire, Sun / Moon and Ultra Sun / Ultra Moon.'),
  -- Primal Groudon -> Red Orb -> required_held_item (Mega Dimension)
  (38301, 359, 9, 9, 27, 27, 'required_held_item', NULL, NULL, 'The player''s own Groudon Primal Reverts in Mega Dimension while holding the Red Orb; the Rogue Primals are boss battles.'),
  -- Ultra Necrozma -> Ultranecrozium Z -> required_held_item (Ultra Sun / Ultra Moon)
  (80003, 262, 7, 7, 16, 16, 'required_held_item', NULL, NULL, 'Ultra Burst exists only in Ultra Sun / Ultra Moon.'),
  -- Zacian (Crowned Sword) -> Rusted Sword -> required_held_item
  (88801, 361, 8, NULL, NULL, NULL, 'required_held_item', NULL, NULL, NULL),
  -- Zamazenta (Crowned Shield) -> Rusted Shield -> required_held_item
  (88901, 362, 8, NULL, NULL, NULL, 'required_held_item', NULL, NULL, NULL);
