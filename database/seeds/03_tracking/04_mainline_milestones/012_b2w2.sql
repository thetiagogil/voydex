-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Black 2 / White 2, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
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
  (120018, 12, NULL, 1202, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame after becoming Champion.', 6, true),
  -- Swords of Justice
  (120019, 12, NULL, 1204, 6, 2, NULL, 'swords-of-justice', 'Swords of Justice', 'Find Cobalion on Route 13, Virizion on Route 11 and, after the Wave Badge, Terrakion on Route 22.', 1, false),
  -- Dreamyard
  (120020, 12, NULL, 1204, 6, 2, NULL, 'dreamyard', 'Dreamyard', 'After the Hall of Fame, chase Latios (Black 2) or Latias (White 2) through the Dreamyard until it stops to battle.', 2, false),
  -- Cave of Being
  (120021, 12, NULL, 1204, 6, 2, NULL, 'cave-of-being', 'Cave of Being', 'After the Hall of Fame, meet Professor Juniper in the Cave of Being, then find Uxie, Mesprit and Azelf where they fled.', 3, false),
  -- Dragonspiral Tower
  (120022, 12, NULL, 1204, 6, 2, NULL, 'dragonspiral-tower', 'Dragonspiral Tower', 'Take the stone N gives you in N''s Castle to Dragonspiral Tower to face Zekrom (Black 2) or Reshiram (White 2).', 4, false),
  -- Giant Chasm
  (120023, 12, NULL, 1204, 6, 2, NULL, 'giant-chasm', 'Giant Chasm', 'After Dragonspiral Tower, return to the Giant Chasm''s deepest cave to face Kyurem in its normal form.', 5, false),
  -- Underground Ruins
  (120024, 12, NULL, 1204, 6, 2, NULL, 'underground-ruins', 'Underground Ruins', 'Solve the door puzzle in the Underground Ruins under Clay Tunnel to face Regirock, then Registeel or Regice with the matching key.', 6, false),
  -- Twist Mountain
  (120025, 12, NULL, 1204, 6, 2, NULL, 'twist-mountain', 'Twist Mountain', 'Bring Regirock, Regice and Registeel to the chamber behind the Ice Rock in Twist Mountain to wake Regigigas.', 7, false),
  -- Reversal Mountain
  (120026, 12, NULL, 1204, 6, 2, NULL, 'reversal-mountain', 'Reversal Mountain', 'Bring the Magma Stone from Route 18 to Reversal Mountain''s lowest floor to make Heatran appear.', 8, false),
  -- Marvelous Bridge
  (120027, 12, NULL, 1204, 6, 2, NULL, 'marvelous-bridge', 'Marvelous Bridge', 'Take the Lunar Wing from the Strange House to Marvelous Bridge to face Cresselia.', 9, false);
