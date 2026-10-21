-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Sword / Shield, Badge, Gym Leader, Champion Cup, Legendary Pokémon, and First partner Pokémon pages.
-- Scope: Pokémon Sword / Shield major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Sword / Shield mainline progression milestones. Dense rival, evil-team, rematch, and route-level story beats outside these anchors remain part of the later story-boss pass.
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
  (180001, 18, NULL, 1801, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Choose Grookey, Scorbunny, or Sobble as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (180002, 18, NULL, 1801, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Pokedex and begin the Galar adventure record.', 2, true),
  -- Grass Badge
  (180003, 18, NULL, 1801, 2, 2, NULL, 'grass-badge', 'Grass Badge', 'Defeat Milo at Turffield Stadium and receive the Grass Badge.', 3, true),
  -- Water Badge
  (180004, 18, NULL, 1801, 2, 2, NULL, 'water-badge', 'Water Badge', 'Defeat Nessa at Hulbury Stadium and receive the Water Badge.', 4, true),
  -- Fire Badge
  (180005, 18, NULL, 1801, 2, 2, NULL, 'fire-badge', 'Fire Badge', 'Defeat Kabu at Motostoke Stadium and receive the Fire Badge.', 5, true),
  -- Fighting Badge
  (183106, 18, 31, 1801, 2, 2, NULL, 'fighting-badge', 'Fighting Badge', 'Defeat Bea at Stow-on-Side Stadium and receive the Fighting Badge.', 6, true),
  -- Ghost Badge
  (183206, 18, 32, 1801, 2, 2, NULL, 'ghost-badge', 'Ghost Badge', 'Defeat Allister at Stow-on-Side Stadium and receive the Ghost Badge.', 6, true),
  -- Fairy Badge
  (180007, 18, NULL, 1801, 2, 2, NULL, 'fairy-badge', 'Fairy Badge', 'Defeat Opal at Ballonlea Stadium and receive the Fairy Badge.', 7, true),
  -- Rock Badge
  (183108, 18, 31, 1801, 2, 2, NULL, 'rock-badge', 'Rock Badge', 'Defeat Gordie at Circhester Stadium and receive the Rock Badge.', 8, true),
  -- Ice Badge
  (183208, 18, 32, 1801, 2, 2, NULL, 'ice-badge', 'Ice Badge', 'Defeat Melony at Circhester Stadium and receive the Ice Badge.', 8, true),
  -- Dark Badge
  (180009, 18, NULL, 1801, 2, 2, NULL, 'dark-badge', 'Dark Badge', 'Defeat Piers at Spikemuth Gym and receive the Dark Badge.', 9, true),
  -- Dragon Badge
  (180010, 18, NULL, 1801, 2, 2, NULL, 'dragon-badge', 'Dragon Badge', 'Defeat Raihan at Hammerlocke Stadium and receive the Dragon Badge.', 10, true),
  -- Champion Cup
  (183209, 18, NULL, 1801, 1, 2, NULL, 'champion-cup', 'Champion Cup', 'Win the Champion Cup semifinals and finals at Wyndon Stadium to earn the right to challenge Leon.', 11, true),
  -- Defeat Eternatus
  (180011, 18, NULL, 1801, 6, 3, NULL, 'defeat-eternatus', 'Defeat Eternatus', 'Defeat Eternatus during the Darkest Day crisis.', 12, true),
  -- Champion Leon
  (180012, 18, NULL, 1802, 8, 2, NULL, 'champion-leon', 'Champion Leon', 'Defeat Champion Leon at Wyndon Stadium.', 1, true),
  -- Hall of Fame
  (180013, 18, NULL, 1802, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame after becoming Champion.', 2, true),
  -- Post-Game Episode
  (180014, 18, NULL, 1803, 1, 1, NULL, 'post-game-episode', 'Post-Game Episode', 'Complete the post-game episode involving Sordward and Shielbert.', 1, true);
