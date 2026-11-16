-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Black / White, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- Scope: Pokémon Black / White milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Black / White battle milestones to their primary opponents, in Red /
-- Blue's pattern. The Pokémon League holds its nine battles in the order
-- they are fought: Cheren on Route 10, the Elite Four, Reshiram or Zekrom,
-- N, then Ghetsis. A Gym lists only its own battle and the battles on the way
-- to it.
-- location_id is set only where the battle is fought away from its milestone's
-- place: N in Accumula Town, Nacrene City, Nimbasa City and Chargestone Cave,
-- Bianca on Route 2, in Castelia City, in Driftveil City and on Route 8, and
-- Cheren in Striaton City and on Routes 3, 4, 5, 7 and 10. NULL means the
-- battle is at the milestone's place.
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
  -- Choose Starter -> Bianca
  (110001, 11016, 11, 'battle-opponent', 1, 'In your room, right after you all pick.', NULL),
  -- Choose Starter -> Cheren
  (110001, 11017, 11, 'battle-opponent', 2, 'In your room, after Bianca.', NULL),
  -- Trio Badge -> N (Accumula Town)
  (110003, 11013, 11, 'battle-opponent', 1, 'In the plaza, after Ghetsis''s speech.', 343),
  -- Trio Badge -> Bianca (Route 2)
  (110003, 11016, 11, 'battle-opponent', 2, 'Just before Striaton City.', 386),
  -- Trio Badge -> Cheren (Striaton City)
  (110003, 11017, 11, 'battle-opponent', 3, 'In the Trainers'' School.', 400),
  -- Trio Badge -> Cilan / Chili / Cress
  (110003, 11001, 11, 'battle-opponent', 4, NULL, NULL),
  -- Basic Badge -> Cheren (Route 3)
  (110004, 11017, 11, 'battle-opponent', 1, 'At the fork past the Day Care.', 391),
  -- Basic Badge -> N (Nacrene City)
  (110004, 11013, 11, 'battle-opponent', 2, 'Outside the museum.', 367),
  -- Basic Badge -> Lenora
  (110004, 11002, 11, 'battle-opponent', 3, NULL, NULL),
  -- Insect Badge -> Burgh
  (110005, 11003, 11, 'battle-opponent', 1, NULL, NULL),
  -- Bolt Badge -> Bianca (Castelia City)
  (110006, 11016, 11, 'battle-opponent', 1, 'At the gate to Route 4, after the Insect Badge.', 345),
  -- Bolt Badge -> Cheren (Route 4)
  (110006, 11017, 11, 'battle-opponent', 2, 'On your way north through the sand.', 392),
  -- Bolt Badge -> N (Nimbasa City)
  (110006, 11013, 11, 'battle-opponent', 3, 'After the Ferris wheel ride.', 368),
  -- Bolt Badge -> Elesa
  (110006, 11004, 11, 'battle-opponent', 4, NULL, NULL),
  -- Cold Storage -> Cheren (Route 5)
  (110025, 11017, 11, 'battle-opponent', 1, 'Before the drawbridge.', 393),
  -- Quake Badge -> Clay
  (110007, 11005, 11, 'battle-opponent', 1, NULL, NULL),
  -- Jet Badge -> Bianca (Driftveil City)
  (110008, 11016, 11, 'battle-opponent', 1, 'At the exit to Route 6, after the Quake Badge. Bianca gives you HM02 Fly afterward.', 355),
  -- Jet Badge -> N (Chargestone Cave)
  (110008, 11013, 11, 'battle-opponent', 2, 'Near the exit.', 349),
  -- Jet Badge -> Skyla
  (110008, 11006, 11, 'battle-opponent', 3, NULL, NULL),
  -- Freeze Badge -> Cheren (Route 7)
  (110009, 11017, 11, 'battle-opponent', 1, 'At the entrance to Twist Mountain.', 395),
  -- Freeze Badge -> Brycen
  (110009, 11007, 11, 'battle-opponent', 2, NULL, NULL),
  -- Legend Badge -> Bianca (Route 8)
  (110010, 11016, 11, 'battle-opponent', 1, 'On your way to Tubeline Bridge.', 396),
  -- Legend Badge -> Drayden / Iris
  (110010, 11008, 11, 'battle-opponent', 2, NULL, NULL),
  -- Pokémon League -> Cheren (Route 10)
  (110016, 11017, 11, 'battle-opponent', 1, 'Before the badge gates.', 376),
  -- Pokémon League -> Shauntal
  (110016, 11009, 11, 'battle-opponent', 2, NULL, NULL),
  -- Pokémon League -> Grimsley
  (110016, 11010, 11, 'battle-opponent', 3, NULL, NULL),
  -- Pokémon League -> Caitlin
  (110016, 11011, 11, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Marshal
  (110016, 11012, 11, 'battle-opponent', 5, NULL, NULL),
  -- Pokémon League -> Reshiram (Black)
  (110016, 11018, 11, 'battle-opponent', 6, 'N''s Castle, throne room (Black). You have to catch it.', NULL),
  -- Pokémon League -> Zekrom (White)
  (110016, 11019, 11, 'battle-opponent', 7, 'N''s Castle, throne room (White). You have to catch it.', NULL),
  -- Pokémon League -> N
  (110016, 11013, 11, 'battle-opponent', 8, 'N''s Castle, throne room', NULL),
  -- Pokémon League -> Ghetsis
  (110016, 11014, 11, 'battle-opponent', 9, 'Right after N', NULL),
  -- Champion Alder -> Alder
  (110017, 11015, 11, 'battle-opponent', 1, NULL, NULL),
  -- Swords of Justice -> Cobalion
  (110019, 11020, 11, 'battle-opponent', 1, 'Mistralton Cave, Guidance Chamber. You can skip this battle.', NULL),
  -- Swords of Justice -> Terrakion
  (110019, 11021, 11, 'battle-opponent', 2, 'Victory Road, Trial Chamber. You can skip this battle.', NULL),
  -- Swords of Justice -> Virizion
  (110019, 11022, 11, 'battle-opponent', 3, 'Pinwheel Forest, Rumination Field. You can skip this battle.', NULL),
  -- Roaming Tornadus or Thundurus -> Tornadus (Black)
  (110020, 11023, 11, 'battle-opponent', 1, 'Roams Unova''s routes (Black). You can skip this battle.', NULL),
  -- Roaming Tornadus or Thundurus -> Thundurus (White)
  (110020, 11024, 11, 'battle-opponent', 2, 'Roams Unova''s routes (White). You can skip this battle.', NULL),
  -- Giant Chasm -> Kyurem
  (110021, 11025, 11, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Abundant Shrine -> Landorus
  (110022, 11026, 11, 'battle-opponent', 1, 'You can skip this battle.', NULL);
