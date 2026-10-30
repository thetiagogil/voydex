-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Black 2 / White 2, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- Team Plasma (Zinzolin, the Shadow Triad) and Hugh's partner teams: Bulbapedia's trainer
-- and Plasma Frigate pages (Normal Mode levels), cross-checked with Serebii's Pokéarth.
-- N at N's Castle after the credits: Bulbapedia's N page, cross-checked with Serebii.
-- He brings Zekrom (Black 2) or Reshiram (White 2); his later seasonal teams are
-- rematches and stay out.
-- Scope: Pokémon Black 2 / White 2 milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Black 2 / White 2 battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Basic Badge -> Cheren
  (120003, 12001, 12, 'battle-opponent', 2, NULL),
  -- Toxic Badge -> Roxie
  (120004, 12002, 12, 'battle-opponent', 1, NULL),
  -- Insect Badge -> Burgh
  (120005, 12003, 12, 'battle-opponent', 1, NULL),
  -- Bolt Badge -> Elesa
  (120006, 12004, 12, 'battle-opponent', 2, NULL),
  -- Quake Badge -> Clay
  (120007, 12005, 12, 'battle-opponent', 1, NULL),
  -- Jet Badge -> Skyla
  (120008, 12006, 12, 'battle-opponent', 1, NULL),
  -- Legend Badge -> Drayden
  (120009, 12007, 12, 'battle-opponent', 3, NULL),
  -- Wave Badge -> Marlon
  (120010, 12008, 12, 'battle-opponent', 1, NULL),
  -- Defeat Colress -> Colress
  (120011, 12009, 12, 'battle-opponent', 3, NULL),
  -- Defeat Ghetsis -> Ghetsis
  (120012, 12010, 12, 'battle-opponent', 5, NULL),
  -- Elite Four Shauntal -> Shauntal
  (120013, 12011, 12, 'battle-opponent', 2, NULL),
  -- Elite Four Grimsley -> Grimsley
  (120014, 12012, 12, 'battle-opponent', 1, NULL),
  -- Elite Four Caitlin -> Caitlin
  (120015, 12013, 12, 'battle-opponent', 1, NULL),
  -- Elite Four Marshal -> Marshal
  (120016, 12014, 12, 'battle-opponent', 1, NULL),
  -- Champion Iris -> Iris
  (120017, 12015, 12, 'battle-opponent', 1, NULL),
  -- Choose Starter -> Hugh
  (120001, 12016, 12, 'battle-opponent', 1, 'Aspertia City'),
  -- Basic Badge -> Hugh
  (120003, 12016, 12, 'battle-opponent', 1, 'Floccesy Ranch'),
  -- Bolt Badge -> Colress
  (120006, 12009, 12, 'battle-opponent', 1, 'Route 4'),
  -- Quake Badge -> Hugh
  (120007, 12016, 12, 'battle-opponent', 2, 'Pokémon World Tournament (Driftveil Tournament, round 1)'),
  -- Quake Badge -> Colress
  (120007, 12009, 12, 'battle-opponent', 3, 'Pokémon World Tournament (Driftveil Tournament, final)'),
  -- Legend Badge -> Hugh
  (120009, 12016, 12, 'battle-opponent', 1, 'Undella Town'),
  -- Defeat Ghetsis -> Kyurem
  (120012, 12017, 12, 'battle-opponent', 4, 'Giant Chasm (deepest cave)'),
  -- Elite Four Shauntal -> Hugh
  (120013, 12016, 12, 'battle-opponent', 1, 'Victory Road'),
  -- Hugh in Undella Town -> Hugh
  (120028, 12016, 12, 'battle-opponent', 1, 'Undella Town, after the Hall of Fame'),
  -- Swords of Justice -> Cobalion
  (120019, 12018, 12, 'battle-opponent', 1, 'Route 13 (northern part, above the cuttable trees). You can skip this battle.'),
  -- Swords of Justice -> Virizion
  (120019, 12019, 12, 'battle-opponent', 2, 'Route 11 (western end, by the waterfall). You can skip this battle.'),
  -- Swords of Justice -> Terrakion
  (120019, 12020, 12, 'battle-opponent', 3, 'Route 22 (middle of the route). You can skip this battle.'),
  -- Dreamyard -> Latios
  (120020, 12021, 12, 'battle-opponent', 1, 'Dreamyard (ruins, after a chase). You can skip this battle.'),
  -- Dreamyard -> Latias
  (120020, 12022, 12, 'battle-opponent', 2, 'Dreamyard (ruins, after a chase). You can skip this battle.'),
  -- Cave of Being -> Uxie
  (120021, 12023, 12, 'battle-opponent', 1, 'Nacrene City (outside the museum). You can skip this battle.'),
  -- Cave of Being -> Mesprit
  (120021, 12024, 12, 'battle-opponent', 2, 'Celestial Tower (summit). You can skip this battle.'),
  -- Cave of Being -> Azelf
  (120021, 12025, 12, 'battle-opponent', 3, 'Route 23 (pedestal, needs Cut). You can skip this battle.'),
  -- Dragonspiral Tower -> Zekrom
  (120022, 12026, 12, 'battle-opponent', 2, 'Dragonspiral Tower (top, with the Dark Stone). You can skip this battle.'),
  -- Dragonspiral Tower -> Reshiram
  (120022, 12027, 12, 'battle-opponent', 3, 'Dragonspiral Tower (top, with the Light Stone). You can skip this battle.'),
  -- Giant Chasm -> Kyurem
  (120023, 12017, 12, 'battle-opponent', 1, 'Giant Chasm (cave depths). You can skip this battle.'),
  -- Underground Ruins -> Regirock
  (120024, 12028, 12, 'battle-opponent', 1, 'Underground Ruins (Rock Peak Chamber, Clay Tunnel). You can skip this battle.'),
  -- Underground Ruins -> Registeel
  (120024, 12029, 12, 'battle-opponent', 2, 'Underground Ruins (Iron Chamber, Clay Tunnel). You can skip this battle.'),
  -- Underground Ruins -> Regice
  (120024, 12030, 12, 'battle-opponent', 3, 'Underground Ruins (Iceberg Chamber, Clay Tunnel). You can skip this battle.'),
  -- Twist Mountain -> Regigigas
  (120025, 12031, 12, 'battle-opponent', 1, 'Twist Mountain (room behind the Ice Rock). You can skip this battle.'),
  -- Reversal Mountain -> Heatran
  (120026, 12032, 12, 'battle-opponent', 1, 'Reversal Mountain (B1F special chamber). You can skip this battle.'),
  -- Marvelous Bridge -> Cresselia
  (120027, 12033, 12, 'battle-opponent', 1, 'Marvelous Bridge (centre). You can skip this battle.'),
  -- Legend Badge -> Zinzolin & Grunt (a Multi Battle, Hugh at your side)
  (120009, 12035, 12, 'battle-opponent', 2, 'Lacunosa Town (with Hugh)'),
  -- Legend Badge -> Zinzolin
  (120009, 12034, 12, 'battle-opponent', 4, 'Opelucid City'),
  -- Legend Badge -> Shadow (Absol)
  (120009, 12036, 12, 'battle-opponent', 5, 'Opelucid City'),
  -- Defeat Colress -> Zinzolin & Grunt (a Multi Battle, Hugh at your side)
  (120011, 12035, 12, 'battle-opponent', 1, 'Plasma Frigate (with Hugh)'),
  -- Defeat Colress -> Zinzolin
  (120011, 12034, 12, 'battle-opponent', 2, 'Plasma Frigate, Giant Chasm'),
  -- Defeat Ghetsis -> Shadow (Absol)
  (120012, 12036, 12, 'battle-opponent', 1, 'Plasma Frigate, Giant Chasm'),
  -- Defeat Ghetsis -> Shadow (Banette)
  (120012, 12037, 12, 'battle-opponent', 2, 'Plasma Frigate, Giant Chasm'),
  -- Defeat Ghetsis -> Shadow (Accelgor)
  (120012, 12038, 12, 'battle-opponent', 3, 'Plasma Frigate, Giant Chasm'),
  -- Dragonspiral Tower -> N
  (120022, 12039, 12, 'battle-opponent', 1, 'N''s Castle, past Victory Road, after the Hall of Fame');
