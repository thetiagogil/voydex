-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and Diamond / Pearl pages.
-- Cross-check: Pokémon Diamond / Pearl source page.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and data-mined game data.
-- Galactic Commanders (Mars, Jupiter, Saturn): the pret pokediamond trainer data
-- (parties, set moves, held items), cross-checked with Bulbapedia's trainer pages.
-- Scope: Pokémon Diamond / Pearl milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Diamond / Pearl battle milestones to their primary opponents, in Red /
-- Blue's pattern. The Pokémon League holds its six battles in the order they
-- are fought: Barry in the lobby, the Elite Four, then Champion Cynthia. A
-- Gym lists only its own battle, so each Commander is on the beat where she
-- or he is fought.
-- location_id is set only where the battle is fought away from its milestone's
-- place: Barry on Route 203, in Hearthome City, in Pastoria City and in
-- Canalave City. NULL means the battle is at the milestone's place.
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
  -- Coal Badge -> Barry (Route 203)
  (80003, 8014, 8, 'battle-opponent', 1, 'Just outside Jubilife City, on your way to Oreburgh Gate.', 291),
  -- Coal Badge -> Roark
  (80003, 8001, 8, 'battle-opponent', 2, NULL, NULL),
  -- Valley Windworks -> Mars
  (80025, 8025, 8, 'battle-opponent', 1, 'Valley Windworks, the back room', NULL),
  -- Forest Badge -> Gardenia
  (80004, 8002, 8, 'battle-opponent', 1, NULL, NULL),
  -- Team Galactic Eterna Building -> Jupiter
  (80027, 8026, 8, 'battle-opponent', 1, 'Team Galactic Eterna Building, top floor', NULL),
  -- Cobble Badge -> Barry (Hearthome City)
  (80005, 8014, 8, 'battle-opponent', 1, 'By the south gate, on your way out to Route 209.', 269),
  -- Cobble Badge -> Maylene
  (80005, 8003, 8, 'battle-opponent', 2, NULL, NULL),
  -- Fen Badge -> Crasher Wake
  (80006, 8004, 8, 'battle-opponent', 1, NULL, NULL),
  -- Celestic Town -> Barry (Pastoria City)
  (80028, 8014, 8, 'battle-opponent', 1, 'At the east gate after the Fen Badge, as you chase the Grunt.', 283),
  -- Relic Badge -> Fantina
  (80007, 8005, 8, 'battle-opponent', 1, NULL, NULL),
  -- Mine Badge -> Barry (Canalave City)
  (80008, 8014, 8, 'battle-opponent', 1, 'On the drawbridge.', 257),
  -- Mine Badge -> Byron
  (80008, 8006, 8, 'battle-opponent', 2, NULL, NULL),
  -- Lake Valor -> Saturn
  (80029, 8027, 8, 'battle-opponent', 1, 'Valor Cavern', NULL),
  -- Lake Verity -> Mars
  (80030, 8025, 8, 'battle-opponent', 1, 'By the water, where she has cornered the professor''s assistant', NULL),
  -- Icicle Badge -> Candice
  (80009, 8007, 8, 'battle-opponent', 1, NULL, NULL),
  -- Team Galactic HQ -> Cyrus
  (80017, 8015, 8, 'battle-opponent', 1, 'Team Galactic HQ, Cyrus''s office', NULL),
  -- Team Galactic HQ -> Saturn
  (80017, 8027, 8, 'battle-opponent', 2, 'Team Galactic HQ, the laboratory', NULL),
  -- Spear Pillar -> Mars & Jupiter
  (80018, 8028, 8, 'battle-opponent', 1, 'A Multi Battle with Barry at your side', NULL),
  -- Spear Pillar -> Cyrus
  (80018, 8015, 8, 'battle-opponent', 2, 'After Mars and Jupiter. Barry heals your team first.', NULL),
  -- Spear Pillar -> Dialga (Diamond)
  (80018, 8016, 8, 'battle-opponent', 3, 'After Cyrus (Diamond)', NULL),
  -- Spear Pillar -> Palkia (Pearl)
  (80018, 8017, 8, 'battle-opponent', 4, 'After Cyrus (Pearl)', NULL),
  -- Beacon Badge -> Volkner
  (80010, 8008, 8, 'battle-opponent', 1, NULL, NULL),
  -- Pokémon League -> Barry
  (80015, 8014, 8, 'battle-opponent', 1, 'In the lobby, before the Elite Four''s door', NULL),
  -- Pokémon League -> Aaron
  (80015, 8009, 8, 'battle-opponent', 2, NULL, NULL),
  -- Pokémon League -> Bertha
  (80015, 8010, 8, 'battle-opponent', 3, NULL, NULL),
  -- Pokémon League -> Flint
  (80015, 8011, 8, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Lucian
  (80015, 8012, 8, 'battle-opponent', 5, NULL, NULL),
  -- Pokémon League -> Cynthia
  (80015, 8013, 8, 'battle-opponent', 6, NULL, NULL),
  -- Fight Area -> Barry
  (80019, 8014, 8, 'battle-opponent', 1, 'At the Battle Park gate on Saturdays and Sundays, once the Magma Stone is back. You can skip this battle.', NULL),
  -- Stark Mountain -> Heatran
  (80024, 8024, 8, 'battle-opponent', 1, 'Stark Mountain, deepest room. You can skip this battle.', NULL),
  -- Lake Guardians -> Uxie
  (80020, 8018, 8, 'battle-opponent', 1, 'Acuity Cavern, Lake Acuity. You can skip this battle.', NULL),
  -- Lake Guardians -> Azelf
  (80020, 8019, 8, 'battle-opponent', 2, 'Valor Cavern, Lake Valor. You can skip this battle.', NULL),
  -- Roaming Mesprit -> Mesprit
  (80031, 8020, 8, 'battle-opponent', 1, 'Roams Sinnoh after you meet it in Verity Cavern. You can skip this battle.', NULL),
  -- Turnback Cave -> Giratina
  (80021, 8021, 8, 'battle-opponent', 1, 'Altered Forme. You can skip this battle.', NULL),
  -- Roaming Cresselia -> Cresselia
  (80022, 8022, 8, 'battle-opponent', 1, 'Roams Sinnoh after you meet it on Fullmoon Island. You can skip this battle.', NULL),
  -- Snowpoint Temple -> Regigigas
  (80023, 8023, 8, 'battle-opponent', 1, 'Snowpoint Temple B5F. You can skip this battle.', NULL);
