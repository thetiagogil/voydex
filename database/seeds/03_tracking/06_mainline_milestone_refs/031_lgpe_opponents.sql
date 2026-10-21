-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Let's Go, Pikachu! / Let's Go, Eevee!, Badge, Elite Four, and Gift Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- Scope: Pokémon Let's Go, Pikachu! / Let's Go, Eevee! milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Let's Go, Pikachu! / Let's Go, Eevee! battle milestones to their primary opponents.
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
  (170003, 17001, 17, 'battle-opponent', 2, NULL),
  -- Cascade Badge -> Misty
  (170004, 17002, 17, 'battle-opponent', 2, NULL),
  -- Thunder Badge -> Lt. Surge
  (170005, 17003, 17, 'battle-opponent', 1, NULL),
  -- Rainbow Badge -> Erika
  (170006, 17004, 17, 'battle-opponent', 2, NULL),
  -- Soul Badge -> Koga
  (170008, 17005, 17, 'battle-opponent', 1, NULL),
  -- Marsh Badge -> Sabrina
  (170009, 17006, 17, 'battle-opponent', 1, NULL),
  -- Volcano Badge -> Blaine
  (170010, 17007, 17, 'battle-opponent', 1, NULL),
  -- Earth Badge -> Giovanni
  (170011, 17008, 17, 'battle-opponent', 1, NULL),
  -- Elite Four Lorelei -> Lorelei
  (170012, 17009, 17, 'battle-opponent', 2, NULL),
  -- Elite Four Bruno -> Bruno
  (170013, 17010, 17, 'battle-opponent', 1, NULL),
  -- Elite Four Agatha -> Agatha
  (170014, 17011, 17, 'battle-opponent', 1, NULL),
  -- Elite Four Lance -> Lance
  (170015, 17012, 17, 'battle-opponent', 1, NULL),
  -- Champion Rival -> Rival
  (170016, 17013, 17, 'battle-opponent', 1, NULL),
  -- Battle Blue -> Blue
  (170018, 17014, 17, 'battle-opponent', 1, NULL),
  -- Battle Green -> Green
  (170019, 17015, 17, 'battle-opponent', 1, NULL),
  -- Receive Pokedex -> Trace
  (170002, 17016, 17, 'battle-opponent', 1, 'Professor Oak''s Laboratory, Pallet Town'),
  -- Boulder Badge -> Trace
  (170003, 17016, 17, 'battle-opponent', 1, 'Route 22. You can skip this battle.'),
  -- Cascade Badge -> Trace
  (170004, 17016, 17, 'battle-opponent', 1, 'Cerulean City (north exit to Route 24)'),
  -- S.S. Anne -> Trace
  (170020, 17016, 17, 'battle-opponent', 1, 'S.S. Anne, Vermilion City'),
  -- Rainbow Badge -> Trace
  (170006, 17016, 17, 'battle-opponent', 1, 'Pokémon Tower, Lavender Town'),
  -- Rocket Hideout -> Giovanni
  (170021, 17017, 17, 'battle-opponent', 1, 'Rocket Hideout, Celadon City'),
  -- Silph Co. -> Giovanni
  (170022, 17017, 17, 'battle-opponent', 1, 'Silph Co. 11F, Saffron City'),
  -- Elite Four Lorelei -> Trace
  (170012, 17016, 17, 'battle-opponent', 1, 'Route 22'),
  -- Power Plant -> Zapdos
  (170023, 17018, 17, 'battle-opponent', 1, 'Power Plant. You can skip this battle.'),
  -- Seafoam Islands -> Articuno
  (170024, 17019, 17, 'battle-opponent', 1, 'Seafoam Islands B4F. You can skip this battle.'),
  -- Victory Road -> Moltres
  (170025, 17020, 17, 'battle-opponent', 1, 'Victory Road. You can skip this battle.'),
  -- Cerulean Cave -> Mewtwo
  (170026, 17021, 17, 'battle-opponent', 1, 'Cerulean Cave B1F. You can skip this battle.');
