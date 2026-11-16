-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Let's Go, Pikachu! / Let's Go, Eevee!, Badge, Elite Four, and Gift Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- Scope: Pokémon: Let's Go, Pikachu! / Let's Go, Eevee! milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Let's Go battle milestones to their primary opponents, in Red /
-- Blue's pattern. The Pokémon League holds its six battles in the order they
-- are fought: Trace on Route 22, the Elite Four, then Champion Trace. A Gym
-- lists only its own battle and the battles on the way to it.
-- location_id is set only where the battle is fought away from its milestone's
-- place: Trace on Route 22, in Cerulean City and in Pokémon Tower, and Jessie
-- and James in Mt. Moon and on Route 17. NULL means the battle is at the
-- milestone's place.
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
  -- Receive Pokédex -> Trace
  (170002, 17016, 17, 'battle-opponent', 1, 'Before you leave the lab.', NULL),
  -- Boulder Badge -> Trace (Route 22)
  (170003, 17016, 17, 'battle-opponent', 1, 'A short way into the route. You can skip this battle.', 52),
  -- Boulder Badge -> Brock
  (170003, 17001, 17, 'battle-opponent', 2, NULL, NULL),
  -- Cascade Badge -> Jessie & James (Mt. Moon)
  (170004, 17022, 17, 'battle-opponent', 1, 'By the last ladder.', 27),
  -- Cascade Badge -> Trace (Cerulean City)
  (170004, 17016, 17, 'battle-opponent', 2, 'At the bridge to Route 24.', 9),
  -- Cascade Badge -> Misty
  (170004, 17002, 17, 'battle-opponent', 3, NULL, NULL),
  -- S.S. Anne -> Trace
  (170020, 17016, 17, 'battle-opponent', 1, 'On the ship, before the captain''s cabin', NULL),
  -- Thunder Badge -> Lt. Surge
  (170005, 17003, 17, 'battle-opponent', 1, NULL, NULL),
  -- Rainbow Badge -> Trace (Pokémon Tower)
  (170006, 17016, 17, 'battle-opponent', 1, 'On the second floor, following a Cubone.', 33),
  -- Rainbow Badge -> Erika
  (170006, 17004, 17, 'battle-opponent', 2, NULL, NULL),
  -- Rocket Hideout -> Jessie & James
  (170021, 17022, 17, 'battle-opponent', 1, 'On guard inside the hideout', NULL),
  -- Rocket Hideout -> Archer
  (170021, 17023, 17, 'battle-opponent', 2, 'On the lowest floor, before Giovanni''s office', NULL),
  -- Rocket Hideout -> Giovanni
  (170021, 17017, 17, 'battle-opponent', 3, 'In his office', NULL),
  -- Pokémon Tower -> Jessie & James
  (170028, 17022, 17, 'battle-opponent', 1, 'At the top of the tower', NULL),
  -- Silph Co. -> Blue
  (170022, 17014, 17, 'battle-opponent', 1, 'At the door, before you go in with Trace', NULL),
  -- Silph Co. -> Jessie & James
  (170022, 17022, 17, 'battle-opponent', 2, 'On the way up', NULL),
  -- Silph Co. -> Archer
  (170022, 17023, 17, 'battle-opponent', 3, 'Before the president''s office', NULL),
  -- Silph Co. -> Giovanni
  (170022, 17017, 17, 'battle-opponent', 4, 'In the president''s office', NULL),
  -- Marsh Badge -> Sabrina
  (170009, 17006, 17, 'battle-opponent', 1, NULL, NULL),
  -- Soul Badge -> Jessie & James (Route 17)
  (170008, 17022, 17, 'battle-opponent', 1, 'On Pokémon Road.', 46),
  -- Soul Badge -> Koga
  (170008, 17005, 17, 'battle-opponent', 2, NULL, NULL),
  -- Volcano Badge -> Blaine
  (170010, 17007, 17, 'battle-opponent', 1, NULL, NULL),
  -- Earth Badge -> Giovanni (Gym Leader)
  (170011, 17008, 17, 'battle-opponent', 1, NULL, NULL),
  -- Pokémon League -> Trace (Route 22)
  (170016, 17016, 17, 'battle-opponent', 1, 'On your way to the League gate.', 52),
  -- Pokémon League -> Lorelei
  (170016, 17009, 17, 'battle-opponent', 2, NULL, NULL),
  -- Pokémon League -> Bruno
  (170016, 17010, 17, 'battle-opponent', 3, NULL, NULL),
  -- Pokémon League -> Agatha
  (170016, 17011, 17, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Lance
  (170016, 17012, 17, 'battle-opponent', 5, NULL, NULL),
  -- Pokémon League -> Champion Trace
  (170016, 17013, 17, 'battle-opponent', 6, NULL, NULL),
  -- Battle Blue -> Blue
  (170018, 17014, 17, 'battle-opponent', 1, NULL, NULL),
  -- Battle Green -> Green
  (170019, 17015, 17, 'battle-opponent', 1, NULL, NULL),
  -- Battle Red -> Red
  (170027, 17024, 17, 'battle-opponent', 1, 'With six Pokémon and no Bag items. You can skip this battle.', NULL),
  -- Power Plant -> Zapdos
  (170023, 17018, 17, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Seafoam Islands -> Articuno
  (170024, 17019, 17, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Victory Road -> Moltres
  (170025, 17020, 17, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Cerulean Cave -> Mewtwo
  (170026, 17021, 17, 'battle-opponent', 1, 'You can skip this battle.', NULL);
