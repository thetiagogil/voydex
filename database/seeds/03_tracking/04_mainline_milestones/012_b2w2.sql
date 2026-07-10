-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Black 2 / White 2, and First partner Pokémon pages.
-- Scope: Pokémon Black 2 / White 2 major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Black 2 / White 2 mainline progression milestones. Dense rival, evil-team, rematch, and route-level story beats outside these anchors remain part of the later story-boss pass.
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
  (120001, 12, NULL, 1201, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Choose Snivy, Tepig, or Oshawott as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (120002, 12, NULL, 1201, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Pokedex and begin the Unova adventure record.', 2, true),
  -- Basic Badge
  (120003, 12, NULL, 1201, 2, 2, NULL, 'basic-badge', 'Basic Badge', 'Defeat Cheren at Aspertia Gym and receive the Basic Badge.', 3, true),
  -- Toxic Badge
  (120004, 12, NULL, 1201, 2, 2, NULL, 'toxic-badge', 'Toxic Badge', 'Defeat Roxie at Virbank Gym and receive the Toxic Badge.', 4, true),
  -- Insect Badge
  (120005, 12, NULL, 1201, 2, 2, NULL, 'insect-badge', 'Insect Badge', 'Defeat Burgh at Castelia Gym and receive the Insect Badge.', 5, true),
  -- Bolt Badge
  (120006, 12, NULL, 1201, 2, 2, NULL, 'bolt-badge', 'Bolt Badge', 'Defeat Elesa at Nimbasa Gym and receive the Bolt Badge.', 6, true),
  -- Quake Badge
  (120007, 12, NULL, 1201, 2, 2, NULL, 'quake-badge', 'Quake Badge', 'Defeat Clay at Driftveil Gym and receive the Quake Badge.', 7, true),
  -- Jet Badge
  (120008, 12, NULL, 1201, 2, 2, NULL, 'jet-badge', 'Jet Badge', 'Defeat Skyla at Mistralton Gym and receive the Jet Badge.', 8, true),
  -- Legend Badge
  (120009, 12, NULL, 1201, 2, 2, NULL, 'legend-badge', 'Legend Badge', 'Defeat Drayden at Opelucid Gym and receive the Legend Badge.', 9, true),
  -- Wave Badge
  (120010, 12, NULL, 1201, 2, 2, NULL, 'wave-badge', 'Wave Badge', 'Defeat Marlon at Humilau Gym and receive the Wave Badge.', 10, true),
  -- Defeat Colress
  (120011, 12, NULL, 1201, 6, 2, NULL, 'defeat-colress', 'Defeat Colress', 'Defeat Colress on the Plasma Frigate.', 11, true),
  -- Defeat Ghetsis
  (120012, 12, NULL, 1201, 6, 3, NULL, 'defeat-ghetsis', 'Defeat Ghetsis', 'Defeat Ghetsis in the Giant Chasm climax.', 12, true),
  -- Elite Four Shauntal
  (120013, 12, NULL, 1202, 7, 2, NULL, 'elite-four-shauntal', 'Elite Four Shauntal', 'Defeat Shauntal at the Pokémon League.', 1, true),
  -- Elite Four Grimsley
  (120014, 12, NULL, 1202, 7, 2, NULL, 'elite-four-grimsley', 'Elite Four Grimsley', 'Defeat Grimsley at the Pokémon League.', 2, true),
  -- Elite Four Caitlin
  (120015, 12, NULL, 1202, 7, 2, NULL, 'elite-four-caitlin', 'Elite Four Caitlin', 'Defeat Caitlin at the Pokémon League.', 3, true),
  -- Elite Four Marshal
  (120016, 12, NULL, 1202, 7, 2, NULL, 'elite-four-marshal', 'Elite Four Marshal', 'Defeat Marshal at the Pokémon League.', 4, true),
  -- Champion Iris
  (120017, 12, NULL, 1202, 8, 2, NULL, 'champion-iris', 'Champion Iris', 'Defeat Champion Iris at the Pokémon League.', 5, true),
  -- Hall of Fame
  (120018, 12, NULL, 1202, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame after becoming Champion.', 6, true);
