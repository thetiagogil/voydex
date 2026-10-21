-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet, Gym Leader, Elite Four, Champion, Team Star, Titan Pokémon, The Way Home, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and data-mined game data.
-- Scope: Pokémon Scarlet / Violet milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Scarlet / Violet battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Bug Badge -> Katy
  (230003, 23001, 23, 'battle-opponent', 1, NULL),
  -- Grass Badge -> Brassius
  (230004, 23002, 23, 'battle-opponent', 1, NULL),
  -- Electric Badge -> Iono
  (230005, 23003, 23, 'battle-opponent', 2, NULL),
  -- Water Badge -> Kofu
  (230006, 23004, 23, 'battle-opponent', 1, NULL),
  -- Normal Badge -> Larry
  (230007, 23005, 23, 'battle-opponent', 2, NULL),
  -- Ghost Badge -> Ryme
  (230008, 23006, 23, 'battle-opponent', 1, NULL),
  -- Psychic Badge -> Tulip
  (230009, 23007, 23, 'battle-opponent', 2, NULL),
  -- Ice Badge -> Grusha
  (230010, 23008, 23, 'battle-opponent', 1, NULL),
  -- Elite Four Rika -> Rika
  (230011, 23009, 23, 'battle-opponent', 1, NULL),
  -- Elite Four Poppy -> Poppy
  (230012, 23010, 23, 'battle-opponent', 1, NULL),
  -- Elite Four Larry -> Larry
  (230013, 23011, 23, 'battle-opponent', 1, NULL),
  -- Elite Four Hassel -> Hassel
  (230014, 23012, 23, 'battle-opponent', 1, NULL),
  -- Champion Geeta -> Geeta
  (230015, 23013, 23, 'battle-opponent', 1, NULL),
  -- Champion Nemona -> Nemona
  (230016, 23014, 23, 'battle-opponent', 1, NULL),
  -- Dark Crew -> Giacomo
  (230017, 23015, 23, 'battle-opponent', 1, NULL),
  -- Fire Crew -> Mela
  (230018, 23016, 23, 'battle-opponent', 1, NULL),
  -- Poison Crew -> Atticus
  (230019, 23017, 23, 'battle-opponent', 1, NULL),
  -- Fairy Crew -> Ortega
  (230020, 23018, 23, 'battle-opponent', 1, NULL),
  -- Fighting Crew -> Eri
  (230021, 23019, 23, 'battle-opponent', 1, NULL),
  -- Defeat Clavell -> Clavell
  (230022, 23020, 23, 'battle-opponent', 1, NULL),
  -- Defeat Penny -> Penny
  (230023, 23021, 23, 'battle-opponent', 1, NULL),
  -- Stony Cliff Titan -> Stony Cliff Titan
  (230024, 23022, 23, 'battle-opponent', 1, NULL),
  -- Open Sky Titan -> Open Sky Titan
  (230025, 23023, 23, 'battle-opponent', 1, NULL),
  -- Lurking Steel Titan -> Lurking Steel Titan
  (230026, 23024, 23, 'battle-opponent', 1, NULL),
  -- Quaking Earth Titan -> Quaking Earth Titan
  (230027, 23025, 23, 'battle-opponent', 1, NULL),
  -- False Dragon Titan -> False Dragon Titan
  (230028, 23026, 23, 'battle-opponent', 1, NULL),
  -- Defeat Arven -> Arven
  (230029, 23027, 23, 'battle-opponent', 1, NULL),
  -- Defeat AI Professor -> AI Professor
  (230031, 23028, 23, 'battle-opponent', 1, NULL),
  -- Choose Starter -> Nemona
  (230001, 23029, 23, 'battle-opponent', 1, 'Cabo Poco (beach behind her house)'),
  -- Receive Pokedex -> Arven
  (230002, 23027, 23, 'battle-opponent', 1, 'Poco Path lighthouse'),
  -- Receive Pokedex -> Nemona
  (230002, 23029, 23, 'battle-opponent', 2, 'South gate of Mesagoza (South Province Area One)'),
  -- Electric Badge -> Nemona
  (230005, 23029, 23, 'battle-opponent', 1, 'Outside your third Gym'),
  -- Normal Badge -> Nemona
  (230007, 23029, 23, 'battle-opponent', 1, 'Outside your fifth Gym'),
  -- Psychic Badge -> Nemona
  (230009, 23029, 23, 'battle-opponent', 1, 'Outside your seventh Gym'),
  -- Academy Ace Tournament -> Arven
  (230032, 23027, 23, 'battle-opponent', 1, 'Academy Ace Tournament, Mesagoza (first round of the first tournament). You can skip this battle.'),
  -- Defeat AI Professor -> Koraidon
  (230031, 23030, 23, 'battle-opponent', 2, 'Zero Lab, Area Zero (the Paradise Protection Protocol battle)'),
  -- Defeat AI Professor -> Miraidon
  (230031, 23031, 23, 'battle-opponent', 3, 'Zero Lab, Area Zero (the Paradise Protection Protocol battle)'),
  -- Grasswither Shrine -> Wo-Chien
  (230033, 23032, 23, 'battle-opponent', 1, 'Grasswither Shrine, South Province (Area One). You can skip this battle.'),
  -- Icerend Shrine -> Chien-Pao
  (230034, 23033, 23, 'battle-opponent', 1, 'Icerend Shrine, West Province (Area One). You can skip this battle.'),
  -- Groundblight Shrine -> Ting-Lu
  (230035, 23034, 23, 'battle-opponent', 1, 'Groundblight Shrine, Socarrat Trail. You can skip this battle.'),
  -- Firescourge Shrine -> Chi-Yu
  (230036, 23035, 23, 'battle-opponent', 1, 'Firescourge Shrine, North Province (Area Two). You can skip this battle.'),
  -- Area Zero Depths -> Koraidon
  (230037, 23030, 23, 'battle-opponent', 1, 'Area Zero, bottom of the crater near the Zero Lab. You can skip this battle.'),
  -- Area Zero Depths -> Miraidon
  (230037, 23031, 23, 'battle-opponent', 2, 'Area Zero, bottom of the crater near the Zero Lab. You can skip this battle.');
