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
-- Links Black 2 / White 2 battle milestones to their primary opponents, in
-- Red / Blue's pattern. The Pokémon League holds its six battles in the order
-- they are fought: Hugh in Victory Road, the Elite Four, then Champion Iris.
-- A Gym lists only its own battle and the battles on the way to it. The
-- Driftveil Tournament's battles are fought with three Pokémon.
-- location_id is set only where the battle is fought away from its milestone's
-- place: Hugh at Floccesy Ranch, in Undella Town and in Victory Road, Colress
-- on Route 4, and Zinzolin and a Grunt in Lacunosa Town. NULL means the battle
-- is at the milestone's place.
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
  -- Choose Starter -> Hugh
  (120001, 12016, 12, 'battle-opponent', 1, 'On the lookout, right after you pick.', NULL),
  -- Basic Badge -> Hugh (Floccesy Ranch)
  (120003, 12016, 12, 'battle-opponent', 1, 'At the gate to the pastures.', 357),
  -- Basic Badge -> Cheren
  (120003, 12001, 12, 'battle-opponent', 2, NULL, NULL),
  -- Toxic Badge -> Roxie
  (120004, 12002, 12, 'battle-opponent', 1, NULL, NULL),
  -- Insect Badge -> Burgh
  (120005, 12003, 12, 'battle-opponent', 1, NULL, NULL),
  -- Bolt Badge -> Colress (Route 4)
  (120006, 12009, 12, 'battle-opponent', 1, 'On your way north. He battles you for his research.', 392),
  -- Bolt Badge -> Elesa
  (120006, 12004, 12, 'battle-opponent', 2, NULL, NULL),
  -- Quake Badge -> Clay
  (120007, 12005, 12, 'battle-opponent', 1, NULL, NULL),
  -- Jet Badge -> Skyla
  (120008, 12006, 12, 'battle-opponent', 1, NULL, NULL),
  -- Legend Badge -> Hugh (Undella Town)
  (120009, 12016, 12, 'battle-opponent', 1, 'At the gate to Route 13.', 403),
  -- Legend Badge -> Zinzolin & Grunt (Lacunosa Town)
  (120009, 12035, 12, 'battle-opponent', 2, 'A Multi Battle with Hugh at your side.', 895),
  -- Legend Badge -> Drayden
  (120009, 12007, 12, 'battle-opponent', 3, NULL, NULL),
  -- Team Plasma's Attack -> Zinzolin
  (120031, 12034, 12, 'battle-opponent', 1, 'In front of the Gym, after the three Grunts', NULL),
  -- Team Plasma's Attack -> Shadow (Absol)
  (120031, 12036, 12, 'battle-opponent', 2, 'After Zinzolin, when the Shadow Triad takes the DNA Splicers', NULL),
  -- Wave Badge -> Marlon
  (120010, 12008, 12, 'battle-opponent', 1, NULL, NULL),
  -- Plasma Frigate -> Zinzolin & Grunt
  (120011, 12035, 12, 'battle-opponent', 1, 'Off Route 21, in the command center. A Multi Battle with Hugh at your side.', NULL),
  -- Plasma Frigate -> Zinzolin
  (120011, 12034, 12, 'battle-opponent', 2, 'In the Giant Chasm, on the way to Colress', NULL),
  -- Plasma Frigate -> Colress
  (120011, 12009, 12, 'battle-opponent', 3, 'In the Giant Chasm, in his cabin', NULL),
  -- Defeat Ghetsis -> Shadow (Absol)
  (120012, 12036, 12, 'battle-opponent', 1, 'On the frigate, the first of the three', NULL),
  -- Defeat Ghetsis -> Shadow (Banette)
  (120012, 12037, 12, 'battle-opponent', 2, 'On the frigate, the second', NULL),
  -- Defeat Ghetsis -> Shadow (Accelgor)
  (120012, 12038, 12, 'battle-opponent', 3, 'On the frigate, the third', NULL),
  -- Defeat Ghetsis -> Kyurem
  (120012, 12017, 12, 'battle-opponent', 4, 'Deepest cave. Black Kyurem or White Kyurem, which you can''t catch.', NULL),
  -- Defeat Ghetsis -> Ghetsis
  (120012, 12010, 12, 'battle-opponent', 5, 'Right after Kyurem', NULL),
  -- Pokémon League -> Hugh (Victory Road (Black 2 and White 2))
  (120017, 12016, 12, 'battle-opponent', 1, NULL, 405),
  -- Pokémon League -> Shauntal
  (120017, 12011, 12, 'battle-opponent', 2, NULL, NULL),
  -- Pokémon League -> Grimsley
  (120017, 12012, 12, 'battle-opponent', 3, NULL, NULL),
  -- Pokémon League -> Caitlin
  (120017, 12013, 12, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Marshal
  (120017, 12014, 12, 'battle-opponent', 5, NULL, NULL),
  -- Pokémon League -> Iris
  (120017, 12015, 12, 'battle-opponent', 6, NULL, NULL),
  -- Hugh in Undella Town -> Hugh
  (120028, 12016, 12, 'battle-opponent', 1, NULL, NULL),
  -- Swords of Justice -> Cobalion
  (120019, 12018, 12, 'battle-opponent', 1, 'Route 13, past the trees that need Cut. You can skip this battle.', NULL),
  -- Swords of Justice -> Virizion
  (120019, 12019, 12, 'battle-opponent', 2, 'Route 11, by the waterfall. You can skip this battle.', NULL),
  -- Swords of Justice -> Terrakion
  (120019, 12020, 12, 'battle-opponent', 3, 'Route 22, in the middle of the route. You can skip this battle.', NULL),
  -- Dreamyard -> Latios (Black 2)
  (120020, 12021, 12, 'battle-opponent', 1, 'After the chase (Black 2). You can skip this battle.', NULL),
  -- Dreamyard -> Latias (White 2)
  (120020, 12022, 12, 'battle-opponent', 2, 'After the chase (White 2). You can skip this battle.', NULL),
  -- Cave of Being -> Uxie
  (120021, 12023, 12, 'battle-opponent', 1, 'Outside Nacrene Museum. You can skip this battle.', NULL),
  -- Cave of Being -> Mesprit
  (120021, 12024, 12, 'battle-opponent', 2, 'On top of Celestial Tower. You can skip this battle.', NULL),
  -- Cave of Being -> Azelf
  (120021, 12025, 12, 'battle-opponent', 3, 'Route 23, past a tree that needs Cut. You can skip this battle.', NULL),
  -- Dragonspiral Tower -> N
  (120022, 12039, 12, 'battle-opponent', 1, 'N''s Castle, past Victory Road', NULL),
  -- Dragonspiral Tower -> Zekrom (Black 2)
  (120022, 12026, 12, 'battle-opponent', 2, 'At the top, with the Dark Stone (Black 2). You can skip this battle.', NULL),
  -- Dragonspiral Tower -> Reshiram (White 2)
  (120022, 12027, 12, 'battle-opponent', 3, 'At the top, with the Light Stone (White 2). You can skip this battle.', NULL),
  -- Giant Chasm -> Kyurem
  (120023, 12017, 12, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Underground Ruins -> Regirock
  (120024, 12028, 12, 'battle-opponent', 1, 'Rock Peak Chamber. You can skip this battle.', NULL),
  -- Underground Ruins -> Registeel
  (120024, 12029, 12, 'battle-opponent', 2, 'Iron Chamber. You can skip this battle.', NULL),
  -- Underground Ruins -> Regice
  (120024, 12030, 12, 'battle-opponent', 3, 'Iceberg Chamber. You can skip this battle.', NULL),
  -- Twist Mountain -> Regigigas
  (120025, 12031, 12, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Reversal Mountain -> Heatran
  (120026, 12032, 12, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Marvelous Bridge -> Cresselia
  (120027, 12033, 12, 'battle-opponent', 1, 'You can skip this battle.', NULL);

-- Battles with their own rules for the player's side: team_size_limit.
INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  location_id,
  team_size_limit
) VALUES
  -- Pokémon World Tournament -> Hugh
  (120030, 12016, 12, 'battle-opponent', 1, 'Driftveil Tournament, first round', NULL, 3),
  -- Pokémon World Tournament -> Colress
  (120030, 12009, 12, 'battle-opponent', 2, 'Driftveil Tournament, final. Cheren is the round in between.', NULL, 3);
