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
-- Links Diamond / Pearl battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Coal Badge -> Roark
  (80003, 8001, 8, 'battle-opponent', 2, NULL),
  -- Forest Badge -> Gardenia
  (80004, 8002, 8, 'battle-opponent', 2, NULL),
  -- Cobble Badge -> Maylene
  (80005, 8003, 8, 'battle-opponent', 2, NULL),
  -- Fen Badge -> Crasher Wake
  (80006, 8004, 8, 'battle-opponent', 1, NULL),
  -- Relic Badge -> Fantina
  (80007, 8005, 8, 'battle-opponent', 1, NULL),
  -- Mine Badge -> Byron
  (80008, 8006, 8, 'battle-opponent', 2, NULL),
  -- Icicle Badge -> Candice
  (80009, 8007, 8, 'battle-opponent', 3, NULL),
  -- Beacon Badge -> Volkner
  (80010, 8008, 8, 'battle-opponent', 1, NULL),
  -- Elite Four Aaron -> Aaron
  (80011, 8009, 8, 'battle-opponent', 2, NULL),
  -- Elite Four Bertha -> Bertha
  (80012, 8010, 8, 'battle-opponent', 1, NULL),
  -- Elite Four Flint -> Flint
  (80013, 8011, 8, 'battle-opponent', 1, NULL),
  -- Elite Four Lucian -> Lucian
  (80014, 8012, 8, 'battle-opponent', 1, NULL),
  -- Champion Cynthia -> Cynthia
  (80015, 8013, 8, 'battle-opponent', 1, NULL),
  -- Coal Badge -> Barry
  (80003, 8014, 8, 'battle-opponent', 1, 'Route 203'),
  -- Cobble Badge -> Barry
  (80005, 8014, 8, 'battle-opponent', 1, 'Hearthome City'),
  -- Fen Badge -> Barry
  (80006, 8014, 8, 'battle-opponent', 2, 'Pastoria City'),
  -- Mine Badge -> Barry
  (80008, 8014, 8, 'battle-opponent', 1, 'Canalave City'),
  -- Team Galactic HQ -> Cyrus
  (80017, 8015, 8, 'battle-opponent', 2, 'Team Galactic HQ, Veilstone City'),
  -- Spear Pillar -> Cyrus
  (80018, 8015, 8, 'battle-opponent', 2, 'Spear Pillar'),
  -- Elite Four Aaron -> Barry
  (80011, 8014, 8, 'battle-opponent', 1, 'Pokémon League'),
  -- Fight Area -> Barry
  (80019, 8014, 8, 'battle-opponent', 1, 'Fight Area. You can skip this battle.'),
  -- Spear Pillar -> Dialga
  (80018, 8016, 8, 'battle-opponent', 3, 'Spear Pillar, Mt. Coronet (after defeating Cyrus)'),
  -- Spear Pillar -> Palkia
  (80018, 8017, 8, 'battle-opponent', 4, 'Spear Pillar, Mt. Coronet (after defeating Cyrus)'),
  -- Lake Guardians -> Uxie
  (80020, 8018, 8, 'battle-opponent', 1, 'Acuity Cavern, Lake Acuity. You can skip this battle.'),
  -- Lake Guardians -> Azelf
  (80020, 8019, 8, 'battle-opponent', 2, 'Valor Cavern, Lake Valor. You can skip this battle.'),
  -- Lake Guardians -> Mesprit
  (80020, 8020, 8, 'battle-opponent', 3, 'Roams Sinnoh after fleeing from Verity Cavern, Lake Verity. You can skip this battle.'),
  -- Turnback Cave -> Giratina
  (80021, 8021, 8, 'battle-opponent', 1, 'Turnback Cave, Giratina''s room (Altered Forme). You can skip this battle.'),
  -- Roaming Cresselia -> Cresselia
  (80022, 8022, 8, 'battle-opponent', 1, 'Roams Sinnoh after meeting it on Fullmoon Island. You can skip this battle.'),
  -- Snowpoint Temple -> Regigigas
  (80023, 8023, 8, 'battle-opponent', 1, 'Snowpoint Temple B5F. You can skip this battle.'),
  -- Stark Mountain -> Heatran
  (80024, 8024, 8, 'battle-opponent', 1, 'Stark Mountain, deepest room. You can skip this battle.'),
  -- Forest Badge -> Mars
  (80004, 8025, 8, 'battle-opponent', 1, 'Valley Windworks'),
  -- Forest Badge -> Jupiter
  (80004, 8026, 8, 'battle-opponent', 3, 'Team Galactic Eterna Building'),
  -- Icicle Badge -> Saturn
  (80009, 8027, 8, 'battle-opponent', 1, 'Lake Valor'),
  -- Icicle Badge -> Mars
  (80009, 8025, 8, 'battle-opponent', 2, 'Lake Verity'),
  -- Team Galactic HQ -> Saturn
  (80017, 8027, 8, 'battle-opponent', 1, 'Team Galactic HQ, Veilstone City'),
  -- Spear Pillar -> Mars & Jupiter (a Multi Battle, Barry at your side)
  (80018, 8028, 8, 'battle-opponent', 1, 'Spear Pillar (with Barry)');
