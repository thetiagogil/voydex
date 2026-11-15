-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Scarlet / Violet story pages (Victory Road, Starfall
-- Street, Path of Legends, The Way Home) and location pages for every beat's
-- place.
-- Scope: Pokémon Scarlet / Violet shared story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Scarlet / Violet story, decision, badge and League milestones, each at the
-- place it happens (location_id), in Red / Blue's pattern. The three stories
-- keep their own chapters, which play in any order, and each chapter lists
-- its beats in the order the opponents' levels suggest. A badge is won at its
-- Gym. The Pokémon League is one milestone: the four Elite Four milestones
-- (230011 to 230014) merged into it (230015, once Champion Geeta);
-- database/game-data/id-changes.json moves saved Plays over. The academy has
-- a different name in each version, so its beats are placed at Mesagoza.
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
  is_required_for_completion,
  location_id
) VALUES
  -- Choose Starter (Cabo Poco)
  (230001, 23, NULL, 2301, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Director Clavell brings three Pokémon to your door in Cabo Poco. Pick Sprigatito, Fuecoco or Quaxly. Your neighbour Nemona takes the one that is weak to yours, battles you on her beach and adds the Pokédex app to your phone.', 1, true, 741),
  -- Treasure Hunt (Mesagoza)
  (230002, 23, NULL, 2301, 1, 1, NULL, 'treasure-hunt', 'Treasure Hunt', 'Enrol at the academy in Mesagoza. Director Clavell opens the Treasure Hunt, and three people ask for your help: Nemona with the Gyms, Arven with the Titans and a caller named Cassiopeia with Team Star. Take the three in any order.', 2, true, 951),
  -- Bug Badge (Cortondo Gym)
  (230003, 23, NULL, 2302, 2, 2, NULL, 'bug-badge', 'Bug Badge', 'Roll the giant olive through the maze for the Gym test in Cortondo, then beat Katy and her Bug types.', 1, true, 952),
  -- Grass Badge (Artazon Gym)
  (230004, 23, NULL, 2302, 2, 2, NULL, 'grass-badge', 'Grass Badge', 'Find the ten Sunflora hiding around Artazon for the Gym test, then beat Brassius and his Grass types.', 2, true, 954),
  -- Electric Badge (Levincia Gym)
  (230005, 23, NULL, 2302, 2, 2, NULL, 'electric-badge', 'Electric Badge', 'Find Director Clavell in Iono''s livestream for the Gym test in Levincia, then beat Iono and her Electric types.', 3, true, 955),
  -- Water Badge (Cascarrafa Gym)
  (230006, 23, NULL, 2302, 2, 2, NULL, 'water-badge', 'Water Badge', 'Take Kofu''s wallet to him at Porto Marinada and bid at the market for the Gym test, then beat him and his Water types in Cascarrafa.', 4, true, 956),
  -- Normal Badge (Medali Gym)
  (230007, 23, NULL, 2302, 2, 2, NULL, 'normal-badge', 'Normal Badge', 'Work out the secret menu order at the Treasure Eatery for the Gym test in Medali, then beat Larry and his Normal types.', 5, true, 958),
  -- Ghost Badge (Montenevera Gym)
  (230008, 23, NULL, 2302, 2, 2, NULL, 'ghost-badge', 'Ghost Badge', 'Win the Double Battles on stage for the Gym test in Montenevera, then beat Ryme and her Ghost types in a Double Battle.', 6, true, 960),
  -- Psychic Badge (Alfornada Gym)
  (230009, 23, NULL, 2302, 2, 2, NULL, 'psychic-badge', 'Psychic Badge', 'Get through Emotional Spectrum Practice for the Gym test in Alfornada, then beat Tulip and her Psychic types.', 7, true, 962),
  -- Ice Badge (Glaseado Gym)
  (230010, 23, NULL, 2302, 2, 2, NULL, 'ice-badge', 'Ice Badge', 'Race down the snow slope for the Gym test on Glaseado Mountain, then beat Grusha and his Ice types.', 8, true, 963),
  -- Pokémon League (Pokémon League)
  (230015, 23, NULL, 2302, 8, 3, NULL, 'pokemon-league', 'Pokémon League', 'Answer Rika''s interview at the Pokémon League, then beat the Elite Four and Top Champion Geeta back to back. You earn the rank of Champion, and Nemona asks for the battle she has been waiting for in Mesagoza. Beat her to finish Victory Road.', 9, true, 775),
  -- Dark Crew (Team Star's Dark Crew Base)
  (230017, 23, NULL, 2303, 10, 2, NULL, 'dark-crew', 'Dark Crew', 'Storm the Dark crew''s base in West Province (Area One). Beat 30 of its Pokémon within ten minutes using your first three, then beat Giacomo and the Starmobile.', 1, true, 964),
  -- Fire Crew (Team Star's Fire Crew Base)
  (230018, 23, NULL, 2303, 10, 2, NULL, 'fire-crew', 'Fire Crew', 'Storm the Fire crew''s base in East Province (Area One). Beat 30 of its Pokémon within ten minutes using your first three, then beat Mela and the Starmobile.', 2, true, 965),
  -- Poison Crew (Team Star's Poison Crew Base)
  (230019, 23, NULL, 2303, 10, 2, NULL, 'poison-crew', 'Poison Crew', 'Storm the Poison crew''s base in Tagtree Thicket. Beat 30 of its Pokémon within ten minutes using your first three, then beat Atticus and the Starmobile.', 3, true, 966),
  -- Fairy Crew (Team Star's Fairy Crew Base)
  (230020, 23, NULL, 2303, 10, 2, NULL, 'fairy-crew', 'Fairy Crew', 'Storm the Fairy crew''s base in North Province (Area Three). Beat 30 of its Pokémon within ten minutes using your first three, then beat Ortega and the Starmobile.', 4, true, 967),
  -- Fighting Crew (Team Star's Fighting Crew Base)
  (230021, 23, NULL, 2303, 10, 2, NULL, 'fighting-crew', 'Fighting Crew', 'Storm the Fighting crew''s base in North Province (Area Two). Beat 30 of its Pokémon within ten minutes using your first three, then beat Eri and the Starmobile.', 5, true, 968),
  -- Defeat Penny (Mesagoza)
  (230023, 23, NULL, 2303, 6, 3, NULL, 'defeat-penny', 'Defeat Penny', 'With the five crews beaten, go to the academy''s schoolyard at night to meet Cassiopeia. Director Clavell is waiting in her place and tests you. Cassiopeia then turns out to be Penny, who founded Team Star. Beat her to finish Starfall Street.', 6, true, 951),
  -- Stony Cliff Titan (South Province (Area Three))
  (230024, 23, NULL, 2304, 9, 3, NULL, 'stony-cliff-titan', 'Stony Cliff Titan', 'Help Arven beat the Stony Cliff Titan, a giant Klawf, in South Province (Area Three). It eats a Herba Mystica and comes back for a second round. Your ride learns to dash.', 1, true, 785),
  -- Open Sky Titan (West Province (Area One))
  (230025, 23, NULL, 2304, 9, 3, NULL, 'open-sky-titan', 'Open Sky Titan', 'Help Arven beat the Open Sky Titan, a giant Bombirdier, in West Province (Area One). It eats a Herba Mystica and comes back for a second round. Your ride learns to swim.', 2, true, 791),
  -- Lurking Steel Titan (East Province (Area Three))
  (230026, 23, NULL, 2304, 9, 3, NULL, 'lurking-steel-titan', 'Lurking Steel Titan', 'Help Arven beat the Lurking Steel Titan, a giant Orthworm, in East Province (Area Three). It eats a Herba Mystica and comes back for a second round. Your ride learns to jump higher.', 3, true, 754),
  -- Quaking Earth Titan (Asado Desert)
  (230027, 23, NULL, 2304, 9, 3, NULL, 'quaking-earth-titan', 'Quaking Earth Titan', 'Help Arven beat the Quaking Earth Titan, Great Tusk in Scarlet or Iron Treads in Violet, in Asado Desert. It eats a Herba Mystica and comes back for a second round. Your ride learns to glide.', 4, true, 740),
  -- False Dragon Titan (Casseroya Lake)
  (230028, 23, NULL, 2304, 9, 3, NULL, 'false-dragon-titan', 'False Dragon Titan', 'Help Arven beat the False Dragon Titan, a giant Dondozo with a Tatsugiri, in Casseroya Lake. It eats a Herba Mystica and comes back for a second round. Your ride learns to climb walls.', 5, true, 744),
  -- Defeat Arven (Poco Path Lighthouse)
  (230029, 23, NULL, 2304, 5, 3, NULL, 'defeat-arven', 'Defeat Arven', 'With the five Herba Mystica found and his Mabosstiff well again, Arven asks you for a real battle at the Poco Path lighthouse. Beat him to finish Path of Legends.', 6, true, 969),
  -- Area Zero (Area Zero)
  (230030, 23, NULL, 2305, 1, 1, NULL, 'area-zero', 'Area Zero', 'With all three stories done, go down into the Great Crater of Paldea with Nemona, Arven and Penny. Work through the four research stations to the Zero Lab at the bottom.', 1, true, 739),
  -- Defeat AI Professor (Zero Lab)
  (230031, 23, NULL, 2305, 6, 3, NULL, 'defeat-ai-professor', 'Defeat AI Professor', 'The professor in the Zero Lab is an AI, Sada in Scarlet or Turo in Violet. Beat it, then beat the second Koraidon or Miraidon with only your own legendary Pokémon to shut the time machine down.', 2, true, 795),
  -- Academy Ace Tournament (Mesagoza)
  (230032, 23, NULL, 2306, 1, 1, NULL, 'academy-ace-tournament', 'Academy Ace Tournament', 'After the credits, beat the eight Gym Leaders again and Geeta opens the Academy Ace Tournament in Mesagoza. Win its four rounds.', 1, false, 951),
  -- Grasswither Shrine (South Province (Area One))
  (230033, 23, NULL, 2307, 6, 2, NULL, 'grasswither-shrine', 'Grasswither Shrine', 'Pull out the eight purple stakes scattered around Paldea to open the Grasswither Shrine in South Province (Area One). Wo-Chien waits inside. Catch or defeat it.', 1, false, 783),
  -- Icerend Shrine (West Province (Area One))
  (230034, 23, NULL, 2307, 6, 2, NULL, 'icerend-shrine', 'Icerend Shrine', 'Pull out the eight yellow stakes scattered around Paldea to open the Icerend Shrine in West Province (Area One). Chien-Pao waits inside. Catch or defeat it.', 2, false, 791),
  -- Groundblight Shrine (Socarrat Trail)
  (230035, 23, NULL, 2307, 6, 2, NULL, 'groundblight-shrine', 'Groundblight Shrine', 'Pull out the eight green stakes scattered around Paldea to open the Groundblight Shrine in Socarrat Trail. Ting-Lu waits inside. Catch or defeat it.', 3, false, 779),
  -- Firescourge Shrine (North Province (Area Two))
  (230036, 23, NULL, 2307, 6, 2, NULL, 'firescourge-shrine', 'Firescourge Shrine', 'Pull out the eight blue stakes scattered around Paldea to open the Firescourge Shrine in North Province (Area Two). Chi-Yu waits inside. Catch or defeat it.', 4, false, 770),
  -- Area Zero Depths (Area Zero)
  (230037, 23, NULL, 2307, 6, 2, NULL, 'area-zero-depths', 'Area Zero Depths', 'After The Way Home, a second Koraidon in Scarlet or Miraidon in Violet waits at the bottom of Area Zero. Catch or defeat it.', 5, false, 739);
