-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, X / Y, Gift Pokémon, Fossil, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- Lysandre's two Team Flare Secret HQ battles: Bulbapedia, cross-checked with Serebii.
-- Team Flare scientists (Aliana, Celosia, Bryony, Mable, Xerosic) and Serena / Calem's
-- partner team: Bulbapedia's trainer pages, cross-checked with Serebii's Pokéarth.
-- Scope: Pokémon X / Y milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links X / Y battle milestones to their primary opponents, in Red / Blue's
-- pattern. The Pokémon League holds its seven battles in the order they are
-- fought: Serena or Calem in Victory Road, the Elite Four, Champion Diantha,
-- then AZ at the parade. A Gym lists only its own battle and the battles on
-- the way to it, so each Team Flare scientist is on the beat where she is
-- fought.
-- location_id is set only where the battle is fought away from its milestone's
-- place: Tierno on Route 5, Tierno and Trevor on Route 7, Korrina in Geosenge
-- Town, Serena or Calem at the Tower of Mastery, in Coumarine City, on Route
-- 14, in Anistar City and in Victory Road, and Shauna, Tierno and Trevor on
-- Route 19. NULL means the battle is at the milestone's place.
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
  -- Choose Kalos Starter -> Shauna
  (130001, 13015, 13, 'battle-opponent', 1, 'At the café table, right after you pick.', NULL),
  -- Bug Badge -> Viola
  (130003, 13001, 13, 'battle-opponent', 1, NULL, NULL),
  -- Fossil Choice -> Tierno (Route 5)
  (130005, 13016, 13, 'battle-opponent', 1, 'By the skate park.', 467),
  -- Fossil Choice -> Tierno & Trevor (Route 7)
  (130005, 13017, 13, 'battle-opponent', 2, 'A Multi Battle with Serena or Calem at your side.', 469),
  -- Cliff Badge -> Grant
  (130006, 13002, 13, 'battle-opponent', 1, NULL, NULL),
  -- Rumble Badge -> Korrina (two Lucario) (Geosenge Town)
  (130007, 13029, 13, 'battle-opponent', 1, 'On your way out to Route 11. She uses her two Lucario.', 432),
  -- Rumble Badge -> Serena / Calem (Tower of Mastery)
  (130007, 13018, 13, 'battle-opponent', 2, 'A battle for the Mega Ring.', 480),
  -- Rumble Badge -> Korrina
  (130007, 13003, 13, 'battle-opponent', 3, NULL, NULL),
  -- Plant Badge -> Serena / Calem (Coumarine City)
  (130008, 13018, 13, 'battle-opponent', 1, 'In front of the Gym.', 420),
  -- Plant Badge -> Ramos
  (130008, 13004, 13, 'battle-opponent', 2, NULL, NULL),
  -- Kalos Power Plant -> Aliana
  (130027, 13030, 13, 'battle-opponent', 1, 'In the generator room, after the Admin', NULL),
  -- Voltage Badge -> Clemont
  (130009, 13005, 13, 'battle-opponent', 1, NULL, NULL),
  -- Fairy Badge -> Serena / Calem (Route 14)
  (130010, 13018, 13, 'battle-opponent', 1, 'On the way to Laverre City.', 455),
  -- Fairy Badge -> Valerie
  (130010, 13006, 13, 'battle-opponent', 2, NULL, NULL),
  -- Poké Ball Factory -> Celosia & Bryony
  (130028, 13031, 13, 'battle-opponent', 1, 'In the president''s office. A Multi Battle with Serena or Calem at your side.', NULL),
  -- Frost Cavern -> Mable
  (130029, 13034, 13, 'battle-opponent', 1, 'At the back of the cave, after the Grunts', NULL),
  -- Psychic Badge -> Serena / Calem (Anistar City)
  (130011, 13018, 13, 'battle-opponent', 1, 'In front of the Gym.', 908),
  -- Psychic Badge -> Olympia
  (130011, 13007, 13, 'battle-opponent', 2, NULL, NULL),
  -- Lysandre Labs -> Lysandre
  (130021, 13019, 13, 'battle-opponent', 1, 'In the first room', NULL),
  -- Lysandre Labs -> Aliana
  (130021, 13030, 13, 'battle-opponent', 2, 'The first of the four scientists', NULL),
  -- Lysandre Labs -> Celosia
  (130021, 13032, 13, 'battle-opponent', 3, 'In the northeast room', NULL),
  -- Lysandre Labs -> Bryony
  (130021, 13033, 13, 'battle-opponent', 4, 'Right after Celosia', NULL),
  -- Lysandre Labs -> Mable
  (130021, 13034, 13, 'battle-opponent', 5, 'The last of the four scientists', NULL),
  -- Lysandre Labs -> Xerosic
  (130021, 13035, 13, 'battle-opponent', 6, 'Before the two buttons', NULL),
  -- Team Flare Secret HQ -> Lysandre (first battle)
  (130022, 13028, 13, 'battle-opponent', 1, 'By the ultimate weapon', NULL),
  -- Team Flare Secret HQ -> Xerneas (X)
  (130022, 13021, 13, 'battle-opponent', 2, 'In the deepest room (X). You have to catch it.', NULL),
  -- Team Flare Secret HQ -> Yveltal (Y)
  (130022, 13022, 13, 'battle-opponent', 3, 'In the deepest room (Y). You have to catch it.', NULL),
  -- Team Flare Secret HQ -> Lysandre
  (130022, 13019, 13, 'battle-opponent', 4, 'Right after, with his Mega Gyarados', NULL),
  -- Iceberg Badge -> Shauna (Route 19)
  (130012, 13015, 13, 'battle-opponent', 1, 'On the long bridge.', 460),
  -- Iceberg Badge -> Tierno (Route 19)
  (130012, 13016, 13, 'battle-opponent', 2, 'Right after Shauna.', 460),
  -- Iceberg Badge -> Trevor (Route 19)
  (130012, 13020, 13, 'battle-opponent', 3, 'Right after Tierno. Shauna then gives you HM05 Waterfall.', 460),
  -- Iceberg Badge -> Wulfric
  (130012, 13008, 13, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Serena / Calem (Victory Road)
  (130017, 13018, 13, 'battle-opponent', 1, NULL, 482),
  -- Pokémon League -> Malva
  (130017, 13009, 13, 'battle-opponent', 2, NULL, NULL),
  -- Pokémon League -> Siebold
  (130017, 13010, 13, 'battle-opponent', 3, NULL, NULL),
  -- Pokémon League -> Wikstrom
  (130017, 13011, 13, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Drasna
  (130017, 13012, 13, 'battle-opponent', 5, NULL, NULL),
  -- Pokémon League -> Diantha
  (130017, 13013, 13, 'battle-opponent', 6, NULL, NULL),
  -- Pokémon League -> AZ
  (130017, 13014, 13, 'battle-opponent', 7, 'At the parade in Lumiose City, after the Hall of Fame', NULL),
  -- Kiloude City -> Serena / Calem
  (130026, 13018, 13, 'battle-opponent', 1, NULL, NULL),
  -- Terminus Cave -> Zygarde
  (130023, 13023, 13, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Unknown Dungeon -> Mewtwo
  (130024, 13024, 13, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Roaming Legendary Bird -> Articuno
  (130025, 13025, 13, 'battle-opponent', 1, 'In the Sea Spirit''s Den, after the chase. You can skip this battle.', NULL),
  -- Roaming Legendary Bird -> Zapdos
  (130025, 13026, 13, 'battle-opponent', 2, 'In the Sea Spirit''s Den, after the chase. You can skip this battle.', NULL),
  -- Roaming Legendary Bird -> Moltres
  (130025, 13027, 13, 'battle-opponent', 3, 'In the Sea Spirit''s Den, after the chase. You can skip this battle.', NULL);
