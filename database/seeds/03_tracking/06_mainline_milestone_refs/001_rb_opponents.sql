-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge and Elite Four pages.
-- Cross-check: legacy Voydex Red / Blue tracking seeds.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and the pret disassemblies.
-- Scope: Pokémon Red / Blue milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links required Red / Blue battle milestones to their primary opponents.
-- The Pokémon League holds its six battles in the order they are fought: Blue
-- on Route 22, the Elite Four, then Champion Blue.
-- location_id is set only where the battle is fought away from its milestone's
-- place: the two rival battles on Route 22 (before the Boulder Badge and before
-- Victory Road). NULL means the battle is at the milestone's place.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  location_id
) VALUES
  -- Boulder Badge -> Brock
  (10003, 1001, 1, 'battle-opponent', 2, NULL, NULL),
  -- Cascade Badge -> Misty
  (10005, 1002, 1, 'battle-opponent', 2, NULL, NULL),
  -- Thunder Badge -> Lt. Surge
  (10006, 1003, 1, 'battle-opponent', 1, NULL, NULL),
  -- Rainbow Badge -> Erika
  (10007, 1004, 1, 'battle-opponent', 1, NULL, NULL),
  -- Soul Badge -> Koga
  (10008, 1005, 1, 'battle-opponent', 1, NULL, NULL),
  -- Marsh Badge -> Sabrina
  (10009, 1006, 1, 'battle-opponent', 1, NULL, NULL),
  -- Volcano Badge -> Blaine
  (10011, 1007, 1, 'battle-opponent', 1, NULL, NULL),
  -- Earth Badge -> Giovanni
  (10012, 1008, 1, 'battle-opponent', 1, NULL, NULL),
  -- Pokémon League -> Blue (Route 22, before Victory Road)
  (10017, 1014, 1, 'battle-opponent', 1, NULL, 52),
  -- Pokémon League -> Lorelei
  (10017, 1009, 1, 'battle-opponent', 2, NULL, NULL),
  -- Pokémon League -> Bruno
  (10017, 1010, 1, 'battle-opponent', 3, NULL, NULL),
  -- Pokémon League -> Agatha
  (10017, 1011, 1, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Lance
  (10017, 1012, 1, 'battle-opponent', 5, NULL, NULL),
  -- Pokémon League -> Champion Blue
  (10017, 1013, 1, 'battle-opponent', 6, NULL, NULL),
  -- Choose Starter -> Blue
  (10001, 1014, 1, 'battle-opponent', 1, 'Oak''s Lab, Pallet Town', NULL),
  -- Boulder Badge -> Blue (Route 22)
  (10003, 1014, 1, 'battle-opponent', 1, 'You can skip this battle.', 52),
  -- Cascade Badge -> Blue
  (10005, 1014, 1, 'battle-opponent', 1, 'Cerulean City (north exit, before Nugget Bridge)', NULL),
  -- S.S. Anne -> Blue
  (10019, 1014, 1, 'battle-opponent', 1, 'S.S. Anne 2F, Vermilion City', NULL),
  -- Pokémon Tower -> Blue
  (10021, 1014, 1, 'battle-opponent', 1, 'Pokémon Tower 2F, Lavender Town', NULL),
  -- Rocket Hideout -> Giovanni
  (10020, 1015, 1, 'battle-opponent', 1, 'Rocket Hideout B4F, Celadon City', NULL),
  -- Silph Co. -> Blue
  (10022, 1014, 1, 'battle-opponent', 1, 'Silph Co. 7F, Saffron City', NULL),
  -- Silph Co. -> Giovanni
  (10022, 1015, 1, 'battle-opponent', 2, 'Silph Co. 11F, Saffron City', NULL),
  -- Power Plant -> Zapdos
  (10023, 1016, 1, 'battle-opponent', 1, 'Power Plant. You can skip this battle.', NULL),
  -- Seafoam Islands -> Articuno
  (10024, 1017, 1, 'battle-opponent', 1, 'Seafoam Islands B4F. You can skip this battle.', NULL),
  -- Victory Road -> Moltres
  (10025, 1018, 1, 'battle-opponent', 1, 'Victory Road 2F. You can skip this battle.', NULL),
  -- Cerulean Cave -> Mewtwo
  (10026, 1019, 1, 'battle-opponent', 1, 'Cerulean Cave B1F. You can skip this battle.', NULL);
