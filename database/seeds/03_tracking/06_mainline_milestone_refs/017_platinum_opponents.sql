-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and Platinum pages.
-- Cross-check: Pokémon Platinum source page.
-- Legendary encounters: Serebii, cross-checked with Pokémon Database and the pret disassemblies.
-- Galactic Commanders (Mars, Jupiter, Saturn): the pret pokeplatinum trainer data,
-- which names each battle's place, cross-checked with Bulbapedia's trainer pages.
-- Scope: Pokémon Platinum milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Platinum battle milestones to their primary opponents, in Red /
-- Blue's pattern. The Pokémon League holds its six battles in the order they
-- are fought: Barry in the lobby, the Elite Four, then Champion Cynthia. A
-- Gym lists only its own battle, so each Commander is on the beat where she
-- or he is fought.
-- location_id is set only where the battle is fought away from its milestone's
-- place: Barry on Route 203, in Hearthome City, in Pastoria City and in
-- Canalave City, and Mars and Jupiter on the Spear Pillar before the
-- Distortion World. NULL means the battle is at the milestone's place.
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
  -- Choose Starter -> Barry
  (90001, 9014, 9, 'battle-opponent', 1, 'Right after you both pick.', NULL),
  -- Coal Badge -> Barry (Route 203)
  (90003, 9014, 9, 'battle-opponent', 1, 'Just outside Jubilife City, on your way to Oreburgh Gate.', 291),
  -- Coal Badge -> Roark
  (90003, 9001, 9, 'battle-opponent', 2, NULL, NULL),
  -- Valley Windworks -> Mars
  (90028, 9028, 9, 'battle-opponent', 1, 'Valley Windworks, the back room', NULL),
  -- Forest Badge -> Gardenia
  (90004, 9002, 9, 'battle-opponent', 1, NULL, NULL),
  -- Team Galactic Eterna Building -> Jupiter
  (90029, 9029, 9, 'battle-opponent', 1, 'Team Galactic Eterna Building, top floor', NULL),
  -- Relic Badge -> Fantina
  (90005, 9003, 9, 'battle-opponent', 1, NULL, NULL),
  -- Cobble Badge -> Barry (Hearthome City)
  (90006, 9014, 9, 'battle-opponent', 1, 'At the gate to Route 209, after the Relic Badge.', 269),
  -- Cobble Badge -> Maylene
  (90006, 9004, 9, 'battle-opponent', 2, NULL, NULL),
  -- Fen Badge -> Barry (Pastoria City)
  (90007, 9014, 9, 'battle-opponent', 1, 'In front of the Gym.', 283),
  -- Fen Badge -> Crasher Wake
  (90007, 9005, 9, 'battle-opponent', 2, NULL, NULL),
  -- Celestic Town -> Cyrus
  (90017, 9015, 9, 'battle-opponent', 1, 'Inside the Celestic Town ruins', NULL),
  -- Mine Badge -> Barry (Canalave City)
  (90008, 9014, 9, 'battle-opponent', 1, 'On the drawbridge.', 257),
  -- Mine Badge -> Byron
  (90008, 9006, 9, 'battle-opponent', 2, NULL, NULL),
  -- Lake Valor -> Saturn
  (90030, 9030, 9, 'battle-opponent', 1, 'Valor Cavern', NULL),
  -- Lake Verity -> Mars
  (90031, 9028, 9, 'battle-opponent', 1, 'By the water, where she has cornered the professor''s assistant', NULL),
  -- Icicle Badge -> Candice
  (90009, 9007, 9, 'battle-opponent', 1, NULL, NULL),
  -- Team Galactic HQ -> Cyrus
  (90018, 9015, 9, 'battle-opponent', 1, 'Team Galactic HQ, Cyrus''s office', NULL),
  -- Team Galactic HQ -> Saturn
  (90018, 9030, 9, 'battle-opponent', 2, 'Team Galactic HQ, the laboratory', NULL),
  -- Distortion World -> Mars & Jupiter (Spear Pillar)
  (90019, 9031, 9, 'battle-opponent', 1, 'A Multi Battle with Barry at your side', 870),
  -- Distortion World -> Cyrus
  (90019, 9015, 9, 'battle-opponent', 2, 'Deep in the Distortion World', NULL),
  -- Distortion World -> Giratina
  (90019, 9016, 9, 'battle-opponent', 3, 'After Cyrus, in its Origin Forme', NULL),
  -- Beacon Badge -> Volkner
  (90010, 9008, 9, 'battle-opponent', 1, NULL, NULL),
  -- Pokémon League -> Barry
  (90015, 9014, 9, 'battle-opponent', 1, 'In the lobby, before the Elite Four''s door', NULL),
  -- Pokémon League -> Aaron
  (90015, 9009, 9, 'battle-opponent', 2, NULL, NULL),
  -- Pokémon League -> Bertha
  (90015, 9010, 9, 'battle-opponent', 3, NULL, NULL),
  -- Pokémon League -> Flint
  (90015, 9011, 9, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Lucian
  (90015, 9012, 9, 'battle-opponent', 5, NULL, NULL),
  -- Pokémon League -> Cynthia
  (90015, 9013, 9, 'battle-opponent', 6, NULL, NULL),
  -- Stark Mountain -> Barry
  (90020, 9014, 9, 'battle-opponent', 1, 'In the Survival Area. You can skip this battle.', NULL),
  -- Stark Mountain -> Mars
  (90020, 9028, 9, 'battle-opponent', 2, 'Stark Mountain, entrance chamber', NULL),
  -- Stark Mountain -> Jupiter
  (90020, 9029, 9, 'battle-opponent', 3, 'Stark Mountain, entrance chamber, right after Mars', NULL),
  -- Stark Mountain -> Heatran
  (90020, 9020, 9, 'battle-opponent', 4, 'Stark Mountain, the room where Charon was arrested. You can skip this battle.', NULL),
  -- Lake Guardians -> Uxie
  (90021, 9017, 9, 'battle-opponent', 1, 'Acuity Cavern, Lake Acuity. You can skip this battle.', NULL),
  -- Lake Guardians -> Azelf
  (90021, 9018, 9, 'battle-opponent', 2, 'Valor Cavern, Lake Valor. You can skip this battle.', NULL),
  -- Lake Guardians -> Mesprit
  (90021, 9019, 9, 'battle-opponent', 3, 'Roams Sinnoh after you meet it in Verity Cavern. You can skip this battle.', NULL),
  -- Roaming Cresselia -> Cresselia
  (90022, 9021, 9, 'battle-opponent', 1, 'Roams Sinnoh after you meet it on Fullmoon Island. You can skip this battle.', NULL),
  -- Snowpoint Temple -> Regigigas
  (90023, 9022, 9, 'battle-opponent', 1, 'Snowpoint Temple B5F. You can skip this battle.', NULL),
  -- Spear Pillar -> Dialga
  (90024, 9023, 9, 'battle-opponent', 1, 'The blue rift, with the Adamant Orb. You can skip this battle.', NULL),
  -- Spear Pillar -> Palkia
  (90024, 9024, 9, 'battle-opponent', 2, 'The pink rift, with the Lustrous Orb. You can skip this battle.', NULL),
  -- Roaming Articuno -> Articuno
  (90025, 9025, 9, 'battle-opponent', 1, 'Roams Sinnoh. You can skip this battle.', NULL),
  -- Roaming Zapdos -> Zapdos
  (90026, 9026, 9, 'battle-opponent', 1, 'Roams Sinnoh. You can skip this battle.', NULL),
  -- Roaming Moltres -> Moltres
  (90027, 9027, 9, 'battle-opponent', 1, 'Roams Sinnoh. You can skip this battle.', NULL);
