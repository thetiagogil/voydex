-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet, Gym Leader, Elite Four, Champion, Team Star, Titan Pokémon, The Way Home, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and data-mined game data.
-- Scope: Pokémon Scarlet / Violet milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Scarlet / Violet battle milestones to their primary opponents, in Red
-- / Blue's pattern. The Pokémon League holds its six battles in the order
-- they are fought: the Elite Four, Top Champion Geeta, then Nemona in
-- Mesagoza. Nemona's battles at your third, fifth and seventh Gym are on the
-- Gyms the walkthrough's order puts there. Director Clavell's battle comes
-- right before Penny's, on the same beat.
-- location_id is set only where the battle is fought away from its milestone's
-- place: Arven at the Poco Path Lighthouse and Nemona at Mesagoza's south gate.
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
  -- Choose Starter -> Nemona
  (230001, 23029, 23, 'battle-opponent', 1, 'On the beach behind her house', NULL),
  -- Treasure Hunt -> Arven (Poco Path Lighthouse)
  (230002, 23027, 23, 'battle-opponent', 1, 'He hands over the legendary Pokémon''s Poké Ball after this battle.', 969),
  -- Treasure Hunt -> Nemona (South Province (Area One))
  (230002, 23029, 23, 'battle-opponent', 2, 'At Mesagoza''s south gate, to show you Terastallizing.', 783),
  -- Bug Badge -> Katy
  (230003, 23001, 23, 'battle-opponent', 1, NULL, NULL),
  -- Grass Badge -> Brassius
  (230004, 23002, 23, 'battle-opponent', 1, NULL, NULL),
  -- Electric Badge -> Nemona
  (230005, 23029, 23, 'battle-opponent', 1, 'Inside your third Gym, whichever it is, before the test', NULL),
  -- Electric Badge -> Iono
  (230005, 23003, 23, 'battle-opponent', 2, NULL, NULL),
  -- Water Badge -> Kofu
  (230006, 23004, 23, 'battle-opponent', 1, NULL, NULL),
  -- Normal Badge -> Larry
  (230007, 23005, 23, 'battle-opponent', 1, NULL, NULL),
  -- Normal Badge -> Nemona
  (230007, 23029, 23, 'battle-opponent', 2, 'At your fifth Gym, whichever it is, after you beat its Leader', NULL),
  -- Ghost Badge -> Ryme
  (230008, 23006, 23, 'battle-opponent', 1, NULL, NULL),
  -- Psychic Badge -> Nemona
  (230009, 23029, 23, 'battle-opponent', 1, 'At your seventh Gym, whichever it is', NULL),
  -- Psychic Badge -> Tulip
  (230009, 23007, 23, 'battle-opponent', 2, NULL, NULL),
  -- Ice Badge -> Grusha
  (230010, 23008, 23, 'battle-opponent', 1, NULL, NULL),
  -- Pokémon League -> Rika
  (230015, 23009, 23, 'battle-opponent', 1, NULL, NULL),
  -- Pokémon League -> Poppy
  (230015, 23010, 23, 'battle-opponent', 2, NULL, NULL),
  -- Pokémon League -> Larry (Elite Four)
  (230015, 23011, 23, 'battle-opponent', 3, NULL, NULL),
  -- Pokémon League -> Hassel
  (230015, 23012, 23, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Geeta
  (230015, 23013, 23, 'battle-opponent', 5, NULL, NULL),
  -- Pokémon League -> Champion Nemona
  (230015, 23014, 23, 'battle-opponent', 6, 'In Mesagoza, right after you become a Champion', NULL),
  -- Dark Crew -> Giacomo
  (230017, 23015, 23, 'battle-opponent', 1, NULL, NULL),
  -- Fire Crew -> Mela
  (230018, 23016, 23, 'battle-opponent', 1, NULL, NULL),
  -- Poison Crew -> Atticus
  (230019, 23017, 23, 'battle-opponent', 1, NULL, NULL),
  -- Fairy Crew -> Ortega
  (230020, 23018, 23, 'battle-opponent', 1, NULL, NULL),
  -- Fighting Crew -> Eri
  (230021, 23019, 23, 'battle-opponent', 1, NULL, NULL),
  -- Defeat Penny -> Clavell
  (230023, 23020, 23, 'battle-opponent', 1, 'In Cassiopeia''s place, to test you', NULL),
  -- Defeat Penny -> Penny
  (230023, 23021, 23, 'battle-opponent', 2, NULL, NULL),
  -- Stony Cliff Titan -> Stony Cliff Titan
  (230024, 23022, 23, 'battle-opponent', 1, NULL, NULL),
  -- Open Sky Titan -> Open Sky Titan
  (230025, 23023, 23, 'battle-opponent', 1, NULL, NULL),
  -- Lurking Steel Titan -> Lurking Steel Titan
  (230026, 23024, 23, 'battle-opponent', 1, NULL, NULL),
  -- Quaking Earth Titan -> Quaking Earth Titan
  (230027, 23025, 23, 'battle-opponent', 1, NULL, NULL),
  -- False Dragon Titan -> False Dragon Titan
  (230028, 23026, 23, 'battle-opponent', 1, NULL, NULL),
  -- Defeat Arven -> Arven
  (230029, 23027, 23, 'battle-opponent', 1, NULL, NULL),
  -- Defeat AI Professor -> AI Professor
  (230031, 23028, 23, 'battle-opponent', 1, NULL, NULL),
  -- Academy Ace Tournament -> Arven
  (230032, 23027, 23, 'battle-opponent', 1, 'First round of your first tournament. You can skip this battle.', NULL),
  -- Grasswither Shrine -> Wo-Chien
  (230033, 23032, 23, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Icerend Shrine -> Chien-Pao
  (230034, 23033, 23, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Groundblight Shrine -> Ting-Lu
  (230035, 23034, 23, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Firescourge Shrine -> Chi-Yu
  (230036, 23035, 23, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Area Zero Depths -> Koraidon (Scarlet)
  (230037, 23030, 23, 'battle-opponent', 1, '(Scarlet) You can skip this battle.', NULL),
  -- Area Zero Depths -> Miraidon (Violet)
  (230037, 23031, 23, 'battle-opponent', 2, '(Violet) You can skip this battle.', NULL);

-- Battles with their own rules for the player's side: player_side.
INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  location_id,
  player_side
) VALUES
  -- Defeat AI Professor -> Koraidon (Scarlet)
  (230031, 23030, 23, 'battle-opponent', 2, 'The Paradise Protection Protocol, with only your own Koraidon (Scarlet)', NULL, 'one-own-pokemon'),
  -- Defeat AI Professor -> Miraidon (Violet)
  (230031, 23031, 23, 'battle-opponent', 3, 'The Paradise Protection Protocol, with only your own Miraidon (Violet)', NULL, 'one-own-pokemon');
