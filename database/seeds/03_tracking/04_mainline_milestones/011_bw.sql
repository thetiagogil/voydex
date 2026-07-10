-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Black / White, and First partner Pokémon pages.
-- Scope: Pokémon Black / White major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Black / White mainline progression milestones. Dense rival, evil-team, rematch, and route-level story beats outside these anchors remain part of the later story-boss pass.
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
  (110001, 11, NULL, 1101, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Choose Snivy, Tepig, or Oshawott as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (110002, 11, NULL, 1101, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Pokedex and begin the Unova adventure record.', 2, true),
  -- Trio Badge
  (110003, 11, NULL, 1101, 2, 2, NULL, 'trio-badge', 'Trio Badge', 'Defeat Cilan, Chili, or Cress at Striaton Gym and receive the Trio Badge.', 3, true),
  -- Basic Badge
  (110004, 11, NULL, 1101, 2, 2, NULL, 'basic-badge', 'Basic Badge', 'Defeat Lenora at Nacrene Gym and receive the Basic Badge.', 4, true),
  -- Insect Badge
  (110005, 11, NULL, 1101, 2, 2, NULL, 'insect-badge', 'Insect Badge', 'Defeat Burgh at Castelia Gym and receive the Insect Badge.', 5, true),
  -- Bolt Badge
  (110006, 11, NULL, 1101, 2, 2, NULL, 'bolt-badge', 'Bolt Badge', 'Defeat Elesa at Nimbasa Gym and receive the Bolt Badge.', 6, true),
  -- Quake Badge
  (110007, 11, NULL, 1101, 2, 2, NULL, 'quake-badge', 'Quake Badge', 'Defeat Clay at Driftveil Gym and receive the Quake Badge.', 7, true),
  -- Jet Badge
  (110008, 11, NULL, 1101, 2, 2, NULL, 'jet-badge', 'Jet Badge', 'Defeat Skyla at Mistralton Gym and receive the Jet Badge.', 8, true),
  -- Freeze Badge
  (110009, 11, NULL, 1101, 2, 2, NULL, 'freeze-badge', 'Freeze Badge', 'Defeat Brycen at Icirrus Gym and receive the Freeze Badge.', 9, true),
  -- Legend Badge
  (110010, 11, NULL, 1101, 2, 2, NULL, 'legend-badge', 'Legend Badge', 'Defeat Drayden or Iris at Opelucid Gym and receive the Legend Badge.', 10, true),
  -- Elite Four Shauntal
  (110011, 11, NULL, 1102, 7, 2, NULL, 'elite-four-shauntal', 'Elite Four Shauntal', 'Defeat Shauntal at the Pokémon League.', 1, true),
  -- Elite Four Grimsley
  (110012, 11, NULL, 1102, 7, 2, NULL, 'elite-four-grimsley', 'Elite Four Grimsley', 'Defeat Grimsley at the Pokémon League.', 2, true),
  -- Elite Four Caitlin
  (110013, 11, NULL, 1102, 7, 2, NULL, 'elite-four-caitlin', 'Elite Four Caitlin', 'Defeat Caitlin at the Pokémon League.', 3, true),
  -- Elite Four Marshal
  (110014, 11, NULL, 1102, 7, 2, NULL, 'elite-four-marshal', 'Elite Four Marshal', 'Defeat Marshal at the Pokémon League.', 4, true),
  -- Battle N
  (110015, 11, NULL, 1102, 6, 3, NULL, 'battle-n', 'Battle N', 'Defeat N in N''s Castle.', 5, true),
  -- Defeat Ghetsis
  (110016, 11, NULL, 1102, 6, 3, NULL, 'defeat-ghetsis', 'Defeat Ghetsis', 'Defeat Ghetsis in N''s Castle.', 6, true),
  -- Champion Alder
  (110017, 11, NULL, 1103, 8, 2, NULL, 'champion-alder', 'Champion Alder', 'Defeat Champion Alder at the Pokémon League.', 1, true),
  -- Hall of Fame
  (110018, 11, NULL, 1103, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame after defeating Champion Alder.', 2, true);
