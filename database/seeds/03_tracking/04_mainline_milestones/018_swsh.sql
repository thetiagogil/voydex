-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Gym Challenge, Champion Cup and Leon pages, and its
-- Sword / Shield walkthrough and location pages for the story's order and
-- every beat's place.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii.
-- Scope: Pokémon Sword / Shield shared story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Sword / Shield story, decision, badge and Champion milestones, each at the
-- place it happens (location_id), in Red / Blue's pattern. A badge is won at
-- its Stadium (Spikemuth's Gym has none). The fourth and sixth Gyms differ
-- by version, so each has one milestone for Sword and one for Shield
-- (game_id). Main Story ends with the Champion Cup, Eternatus and Leon: the
-- Hall of Fame milestone (180013) merged into Champion Leon (180012);
-- database/game-data/id-changes.json moves saved Plays over. Post Game is the
-- Sordward and Shielbert episode. The Wild Area's raids and the Battle Tower
-- are intentionally excluded.
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
  -- Choose Starter (Postwick)
  (180001, 18, NULL, 1801, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Leon, the Champion, brings three Pokémon home to Postwick. Pick Grookey, Scorbunny or Sobble. His brother Hop takes one of the two left and battles you in the yard.', 1, true, 622),
  -- Receive Pokédex (Wedgehurst)
  (180002, 18, NULL, 1801, 1, 1, NULL, 'receive-pokedex', 'Receive Pokédex', 'Take Route 1 to Wedgehurst and visit the Pokémon Research Lab. Sonia, the professor''s granddaughter, adds a Pokédex to your Rotom Phone.', 2, true, 656),
  -- Grass Badge (Turffield Stadium)
  (180003, 18, NULL, 1801, 2, 2, NULL, 'grass-badge', 'Grass Badge', 'Herd the Wooloo through the Gym mission at Turffield Stadium, then beat Milo and his Grass types.', 3, true, 652),
  -- Water Badge (Hulbury Stadium)
  (180004, 18, NULL, 1801, 2, 2, NULL, 'water-badge', 'Water Badge', 'Work the water pipes of the Gym mission at Hulbury Stadium, then beat Nessa and her Water types.', 4, true, 934),
  -- Fire Badge (Motostoke Stadium)
  (180005, 18, NULL, 1801, 2, 2, NULL, 'fire-badge', 'Fire Badge', 'Score points in the Gym mission at Motostoke Stadium by catching or beating wild Pokémon, then beat Kabu and his Fire types.', 5, true, 618),
  -- Fighting Badge (Stow-on-Side Stadium)
  (183106, 18, 31, 1801, 2, 2, NULL, 'fighting-badge', 'Fighting Badge', 'Ride the spinning cup through the Gym mission at Stow-on-Side Stadium, then beat Bea and her Fighting types. This is Sword''s fourth Gym.', 6, true, 935),
  -- Ghost Badge (Stow-on-Side Stadium)
  (183206, 18, 32, 1801, 2, 2, NULL, 'ghost-badge', 'Ghost Badge', 'Ride the spinning cup through the Gym mission at Stow-on-Side Stadium, then beat Allister and his Ghost types. This is Shield''s fourth Gym.', 6, true, 935),
  -- Fairy Badge (Ballonlea Stadium)
  (180007, 18, NULL, 1801, 2, 2, NULL, 'fairy-badge', 'Fairy Badge', 'Answer Opal''s quiz as you battle through the Gym mission at Ballonlea Stadium, then beat her and her Fairy types.', 7, true, 575),
  -- Rock Badge (Circhester Stadium)
  (183108, 18, 31, 1801, 2, 2, NULL, 'rock-badge', 'Rock Badge', 'Find the pitfalls of the Gym mission at Circhester Stadium with the detector, then beat Gordie and his Rock types. This is Sword''s sixth Gym.', 8, true, 937),
  -- Ice Badge (Circhester Stadium)
  (183208, 18, 32, 1801, 2, 2, NULL, 'ice-badge', 'Ice Badge', 'Find the pitfalls of the Gym mission at Circhester Stadium with the detector, then beat Melony and her Ice types. This is Shield''s sixth Gym.', 8, true, 937),
  -- Dark Badge (Spikemuth Gym)
  (180009, 18, NULL, 1801, 2, 2, NULL, 'dark-badge', 'Dark Badge', 'Fight through Team Yell in the street of Spikemuth to reach Piers, and beat his Dark types. Nothing can Dynamax here.', 9, true, 938),
  -- Dragon Badge (Hammerlocke Stadium)
  (180010, 18, NULL, 1801, 2, 2, NULL, 'dragon-badge', 'Dragon Badge', 'Win three Double Battles in the vault for the Gym mission of Hammerlocke Stadium, then beat Raihan and his weather teams in a Double Battle.', 10, true, 939),
  -- Champion Cup (Wyndon Stadium)
  (180015, 18, NULL, 1801, 1, 2, NULL, 'champion-cup', 'Champion Cup', 'Win the Champion Cup at Wyndon Stadium. Beat Marnie and Hop in the semifinals, fetch Leon from Rose Tower past Oleana, then beat Bede, Nessa, Bea in Sword or Allister in Shield, and Raihan in the finals.', 11, true, 940),
  -- Defeat Eternatus (Energy Plant)
  (180011, 18, NULL, 1801, 6, 3, NULL, 'defeat-eternatus', 'Defeat Eternatus', 'Chairman Rose wakes Eternatus and the Darkest Day begins. Take the rusted sword and shield from the Slumbering Weald with Hop, beat Rose in the Energy Plant under Hammerlocke, then beat Eternatus. Zacian and Zamazenta join you against its Eternamax form, and you catch it.', 12, true, 941),
  -- Champion Leon (Wyndon Stadium)
  (180012, 18, NULL, 1801, 8, 3, NULL, 'champion-leon', 'Champion Leon', 'Three days later, face Leon, the unbeaten Champion, at Wyndon Stadium. Beat him and you are Galar''s Champion.', 13, true, 940),
  -- Post-Game Episode (Slumbering Weald)
  (180014, 18, NULL, 1803, 1, 1, NULL, 'post-game-episode', 'Post-Game Episode', 'After the credits, Sordward and Shielbert steal a rusted relic and drive Dynamax Pokémon wild in the stadiums. Chase them with Hop and Piers from the Slumbering Weald to the Energy Plant. Zamazenta in Sword or Zacian in Shield attacks there, and the one on your side lets you catch it in the Slumbering Weald.', 1, false, 638);
