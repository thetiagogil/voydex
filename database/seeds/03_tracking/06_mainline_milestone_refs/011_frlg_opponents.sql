-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and FireRed / LeafGreen pages.
-- Cross-check: Pokémon FireRed / LeafGreen source pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and the pret disassemblies.
-- Navel Rock and Birth Island: event-only on the original cartridges; the 2026 Switch release hands out their tickets after the Hall of Fame.
-- Scope: Pokémon FireRed / LeafGreen milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links FireRed / LeafGreen battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Boulder Badge -> Brock
  (60003, 6001, 6, 'battle-opponent', 2, NULL),
  -- Cascade Badge -> Misty
  (60005, 6002, 6, 'battle-opponent', 2, NULL),
  -- Thunder Badge -> Lt. Surge
  (60006, 6003, 6, 'battle-opponent', 1, NULL),
  -- Rainbow Badge -> Erika
  (60007, 6004, 6, 'battle-opponent', 1, NULL),
  -- Soul Badge -> Koga
  (60008, 6005, 6, 'battle-opponent', 1, NULL),
  -- Marsh Badge -> Sabrina
  (60009, 6006, 6, 'battle-opponent', 1, NULL),
  -- Volcano Badge -> Blaine
  (60011, 6007, 6, 'battle-opponent', 1, NULL),
  -- Earth Badge -> Giovanni
  (60012, 6008, 6, 'battle-opponent', 1, NULL),
  -- Elite Four Lorelei -> Lorelei
  (60013, 6009, 6, 'battle-opponent', 2, NULL),
  -- Elite Four Bruno -> Bruno
  (60014, 6010, 6, 'battle-opponent', 1, NULL),
  -- Elite Four Agatha -> Agatha
  (60015, 6011, 6, 'battle-opponent', 1, NULL),
  -- Elite Four Lance -> Lance
  (60016, 6012, 6, 'battle-opponent', 1, NULL),
  -- Champion Blue -> Blue
  (60017, 6013, 6, 'battle-opponent', 1, NULL),
  -- Choose Starter -> Blue
  (60001, 6014, 6, 'battle-opponent', 1, 'Oak''s Lab, Pallet Town'),
  -- Boulder Badge -> Blue
  (60003, 6014, 6, 'battle-opponent', 1, 'Route 22. You can skip this battle.'),
  -- Cascade Badge -> Blue
  (60005, 6014, 6, 'battle-opponent', 1, 'Cerulean City (north exit, before Nugget Bridge)'),
  -- S.S. Anne -> Blue
  (60019, 6014, 6, 'battle-opponent', 1, 'S.S. Anne 2F, Vermilion City'),
  -- Pokémon Tower -> Blue
  (60021, 6014, 6, 'battle-opponent', 1, 'Pokémon Tower 2F, Lavender Town'),
  -- Rocket Hideout -> Giovanni
  (60020, 6015, 6, 'battle-opponent', 1, 'Rocket Hideout B4F, Celadon City'),
  -- Silph Co. -> Blue
  (60022, 6014, 6, 'battle-opponent', 1, 'Silph Co. 7F, Saffron City'),
  -- Silph Co. -> Giovanni
  (60022, 6015, 6, 'battle-opponent', 2, 'Silph Co. 11F, Saffron City'),
  -- Elite Four Lorelei -> Blue
  (60013, 6014, 6, 'battle-opponent', 1, 'Route 22'),
  -- Power Plant -> Zapdos
  (60023, 6016, 6, 'battle-opponent', 1, 'Power Plant. You can skip this battle.'),
  -- Seafoam Islands -> Articuno
  (60024, 6017, 6, 'battle-opponent', 1, 'Seafoam Islands B4F. You can skip this battle.'),
  -- Mt. Ember -> Moltres
  (60025, 6018, 6, 'battle-opponent', 1, 'Mt. Ember summit (One Island). You can skip this battle.'),
  -- Navel Rock -> Ho-Oh
  (60026, 6019, 6, 'battle-opponent', 1, 'Navel Rock summit (4F). You can skip this battle.'),
  -- Navel Rock -> Lugia
  (60026, 6020, 6, 'battle-opponent', 2, 'Navel Rock base (B14F). You can skip this battle.'),
  -- Birth Island -> Deoxys
  (60027, 6021, 6, 'battle-opponent', 1, 'Birth Island. You can skip this battle.'),
  -- Birth Island -> Deoxys
  (60027, 6022, 6, 'battle-opponent', 2, 'Birth Island. You can skip this battle.'),
  -- Roaming Legendary Beast -> Raikou
  (60028, 6023, 6, 'battle-opponent', 1, 'Roams Kanto routes. You can skip this battle.'),
  -- Roaming Legendary Beast -> Entei
  (60028, 6024, 6, 'battle-opponent', 2, 'Roams Kanto routes. You can skip this battle.'),
  -- Roaming Legendary Beast -> Suicune
  (60028, 6025, 6, 'battle-opponent', 3, 'Roams Kanto routes. You can skip this battle.'),
  -- Cerulean Cave -> Mewtwo
  (60029, 6026, 6, 'battle-opponent', 1, 'Cerulean Cave B1F. You can skip this battle.');
