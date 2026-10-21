-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet, Gym Leader, Elite Four, Champion, Team Star, Titan Pokémon, The Way Home, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and data-mined game data.
-- Scope: Pokémon Scarlet / Violet major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Scarlet / Violet mainline progression milestones. Dense rival, evil-team, rematch, and route-level story beats outside these anchors remain part of the later story-boss pass.
-- ============================================================================

INSERT INTO tracking.mainline_milestones (
  id,
  version_group_id,
  game_id,
  category_id,
  milestone_type_id,
  snapshot_policy_id,
  parent_milestone_id,
  slug,
  name,
  description,
  sort_order,
  is_required_for_completion
) VALUES
  -- Choose Starter
  (230001, 23, NULL, 2301, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Choose Sprigatito, Fuecoco, or Quaxly as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (230002, 23, NULL, 2301, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Pokedex and begin the Paldea adventure record.', 2, true),
  -- Bug Badge
  (230003, 23, NULL, 2302, 2, 2, NULL, 'bug-badge', 'Bug Badge', 'Defeat Katy at Cortondo Gym and receive the Bug Badge.', 1, true),
  -- Grass Badge
  (230004, 23, NULL, 2302, 2, 2, NULL, 'grass-badge', 'Grass Badge', 'Defeat Brassius at Artazon Gym and receive the Grass Badge.', 2, true),
  -- Electric Badge
  (230005, 23, NULL, 2302, 2, 2, NULL, 'electric-badge', 'Electric Badge', 'Defeat Iono at Levincia Gym and receive the Electric Badge.', 3, true),
  -- Water Badge
  (230006, 23, NULL, 2302, 2, 2, NULL, 'water-badge', 'Water Badge', 'Defeat Kofu at Cascarrafa Gym and receive the Water Badge.', 4, true),
  -- Normal Badge
  (230007, 23, NULL, 2302, 2, 2, NULL, 'normal-badge', 'Normal Badge', 'Defeat Larry at Medali Gym and receive the Normal Badge.', 5, true),
  -- Ghost Badge
  (230008, 23, NULL, 2302, 2, 2, NULL, 'ghost-badge', 'Ghost Badge', 'Defeat Ryme at Montenevera Gym and receive the Ghost Badge.', 6, true),
  -- Psychic Badge
  (230009, 23, NULL, 2302, 2, 2, NULL, 'psychic-badge', 'Psychic Badge', 'Defeat Tulip at Alfornada Gym and receive the Psychic Badge.', 7, true),
  -- Ice Badge
  (230010, 23, NULL, 2302, 2, 2, NULL, 'ice-badge', 'Ice Badge', 'Defeat Grusha at Glaseado Gym and receive the Ice Badge.', 8, true),
  -- Elite Four Rika
  (230011, 23, NULL, 2302, 7, 2, NULL, 'elite-four-rika', 'Elite Four Rika', 'Defeat Rika at the Pokémon League.', 9, true),
  -- Elite Four Poppy
  (230012, 23, NULL, 2302, 7, 2, NULL, 'elite-four-poppy', 'Elite Four Poppy', 'Defeat Poppy at the Pokémon League.', 10, true),
  -- Elite Four Larry
  (230013, 23, NULL, 2302, 7, 2, NULL, 'elite-four-larry', 'Elite Four Larry', 'Defeat Larry at the Pokémon League.', 11, true),
  -- Elite Four Hassel
  (230014, 23, NULL, 2302, 7, 2, NULL, 'elite-four-hassel', 'Elite Four Hassel', 'Defeat Hassel at the Pokémon League.', 12, true),
  -- Champion Geeta
  (230015, 23, NULL, 2302, 8, 2, NULL, 'champion-geeta', 'Champion Geeta', 'Defeat Top Champion Geeta at the Pokémon League.', 13, true),
  -- Champion Nemona
  (230016, 23, NULL, 2302, 8, 2, NULL, 'champion-nemona', 'Champion Nemona', 'Defeat Nemona after completing the Champion Assessment.', 14, true),
  -- Dark Crew
  (230017, 23, NULL, 2303, 10, 2, NULL, 'dark-crew', 'Dark Crew', 'Defeat Giacomo and the Segin Squad.', 1, true),
  -- Fire Crew
  (230018, 23, NULL, 2303, 10, 2, NULL, 'fire-crew', 'Fire Crew', 'Defeat Mela and the Schedar Squad.', 2, true),
  -- Poison Crew
  (230019, 23, NULL, 2303, 10, 2, NULL, 'poison-crew', 'Poison Crew', 'Defeat Atticus and the Navi Squad.', 3, true),
  -- Fairy Crew
  (230020, 23, NULL, 2303, 10, 2, NULL, 'fairy-crew', 'Fairy Crew', 'Defeat Ortega and the Ruchbah Squad.', 4, true),
  -- Fighting Crew
  (230021, 23, NULL, 2303, 10, 2, NULL, 'fighting-crew', 'Fighting Crew', 'Defeat Eri and the Caph Squad.', 5, true),
  -- Defeat Clavell
  (230022, 23, NULL, 2303, 6, 3, NULL, 'defeat-clavell', 'Defeat Clavell', 'Defeat Director Clavell during Starfall Street.', 6, true),
  -- Defeat Penny
  (230023, 23, NULL, 2303, 6, 3, NULL, 'defeat-penny', 'Defeat Penny', 'Defeat Penny and complete Starfall Street.', 7, true),
  -- Stony Cliff Titan
  (230024, 23, NULL, 2304, 9, 3, NULL, 'stony-cliff-titan', 'Stony Cliff Titan', 'Defeat the Stony Cliff Titan.', 1, true),
  -- Open Sky Titan
  (230025, 23, NULL, 2304, 9, 3, NULL, 'open-sky-titan', 'Open Sky Titan', 'Defeat the Open Sky Titan.', 2, true),
  -- Lurking Steel Titan
  (230026, 23, NULL, 2304, 9, 3, NULL, 'lurking-steel-titan', 'Lurking Steel Titan', 'Defeat the Lurking Steel Titan.', 3, true),
  -- Quaking Earth Titan
  (230027, 23, NULL, 2304, 9, 3, NULL, 'quaking-earth-titan', 'Quaking Earth Titan', 'Defeat the Quaking Earth Titan.', 4, true),
  -- False Dragon Titan
  (230028, 23, NULL, 2304, 9, 3, NULL, 'false-dragon-titan', 'False Dragon Titan', 'Defeat the False Dragon Titan.', 5, true),
  -- Defeat Arven
  (230029, 23, NULL, 2304, 5, 3, NULL, 'defeat-arven', 'Defeat Arven', 'Defeat Arven and complete Path of Legends.', 6, true),
  -- Area Zero
  (230030, 23, NULL, 2305, 1, 1, NULL, 'area-zero', 'Area Zero', 'Enter Area Zero and begin The Way Home.', 1, true),
  -- Defeat AI Professor
  (230031, 23, NULL, 2305, 6, 3, NULL, 'defeat-ai-professor', 'Defeat AI Professor', 'Defeat the AI Professor and complete The Way Home.', 2, true),
  -- Academy Ace Tournament
  (230032, 23, NULL, 2306, 1, 1, NULL, 'academy-ace-tournament', 'Academy Ace Tournament', 'Win the Academy Ace Tournament.', 1, false),
  -- Grasswither Shrine
  (230033, 23, NULL, 2307, 6, 2, NULL, 'grasswither-shrine', 'Grasswither Shrine', 'Pull the eight purple stakes nearby to open the Grasswither Shrine and battle Wo-Chien.', 1, false),
  -- Icerend Shrine
  (230034, 23, NULL, 2307, 6, 2, NULL, 'icerend-shrine', 'Icerend Shrine', 'Pull the eight yellow stakes nearby to open the Icerend Shrine and battle Chien-Pao.', 2, false),
  -- Groundblight Shrine
  (230035, 23, NULL, 2307, 6, 2, NULL, 'groundblight-shrine', 'Groundblight Shrine', 'Pull the eight green stakes nearby to open the Groundblight Shrine and battle Ting-Lu.', 3, false),
  -- Firescourge Shrine
  (230036, 23, NULL, 2307, 6, 2, NULL, 'firescourge-shrine', 'Firescourge Shrine', 'Pull the eight light-blue stakes nearby to open the Firescourge Shrine and battle Chi-Yu.', 4, false),
  -- Area Zero Depths
  (230037, 23, NULL, 2307, 6, 2, NULL, 'area-zero-depths', 'Area Zero Depths', 'After The Way Home, battle and catch a second Koraidon (Scarlet) or Miraidon (Violet) at the bottom of Area Zero.', 5, false);
