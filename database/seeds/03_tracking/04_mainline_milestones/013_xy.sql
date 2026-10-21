-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, X / Y, Gift Pokémon, Fossil, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- Scope: Pokémon X / Y major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- X / Y mainline progression milestones. Dense rival, evil-team, rematch, and route-level story beats outside these anchors remain part of the later story-boss pass.
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
  -- Choose Kalos Starter
  (130001, 13, NULL, 1301, 12, 1, NULL, 'choose-kalos-starter', 'Choose Kalos Starter', 'Choose Chespin, Fennekin, or Froakie as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (130002, 13, NULL, 1301, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Pokedex and begin the Kalos adventure record.', 2, true),
  -- Bug Badge
  (130003, 13, NULL, 1301, 2, 2, NULL, 'bug-badge', 'Bug Badge', 'Defeat Viola at Santalune Gym and receive the Bug Badge.', 3, true),
  -- Choose Kanto Starter
  (130004, 13, NULL, 1301, 12, 1, NULL, 'choose-kanto-starter', 'Choose Kanto Starter', 'Choose Bulbasaur, Charmander, or Squirtle from Professor Sycamore.', 4, true),
  -- Fossil Choice: counts toward the story (a Swimmer on Route 8 blocks the way until you have a fossil); the pick itself can stay unrecorded
  (130005, 13, NULL, 1301, 12, 1, NULL, 'fossil-choice', 'Fossil Choice', 'Choose the Jaw Fossil or Sail Fossil in Glittering Cave.', 5, true),
  -- Cliff Badge
  (130006, 13, NULL, 1301, 2, 2, NULL, 'cliff-badge', 'Cliff Badge', 'Defeat Grant at Cyllage Gym and receive the Cliff Badge.', 6, true),
  -- Rumble Badge
  (130007, 13, NULL, 1301, 2, 2, NULL, 'rumble-badge', 'Rumble Badge', 'Defeat Korrina at Shalour Gym and receive the Rumble Badge.', 7, true),
  -- Plant Badge
  (130008, 13, NULL, 1301, 2, 2, NULL, 'plant-badge', 'Plant Badge', 'Defeat Ramos at Coumarine Gym and receive the Plant Badge.', 8, true),
  -- Voltage Badge
  (130009, 13, NULL, 1301, 2, 2, NULL, 'voltage-badge', 'Voltage Badge', 'Defeat Clemont at Lumiose Gym and receive the Voltage Badge.', 9, true),
  -- Fairy Badge
  (130010, 13, NULL, 1301, 2, 2, NULL, 'fairy-badge', 'Fairy Badge', 'Defeat Valerie at Laverre Gym and receive the Fairy Badge.', 10, true),
  -- Psychic Badge
  (130011, 13, NULL, 1301, 2, 2, NULL, 'psychic-badge', 'Psychic Badge', 'Defeat Olympia at Anistar Gym and receive the Psychic Badge.', 11, true),
  -- Lysandre Labs
  (130021, 13, NULL, 1301, 1, 2, NULL, 'lysandre-labs', 'Lysandre Labs', 'Confront Lysandre, revealed as Team Flare''s boss, in the lab under Lysandre Café in Lumiose City.', 12, true),
  -- Team Flare Secret HQ
  (130022, 13, NULL, 1301, 1, 2, NULL, 'team-flare-secret-hq', 'Team Flare Secret HQ', 'Storm Team Flare''s hideout in Geosenge Town, meet Xerneas or Yveltal and stop Lysandre''s ultimate weapon.', 13, true),
  -- Iceberg Badge
  (130012, 13, NULL, 1301, 2, 2, NULL, 'iceberg-badge', 'Iceberg Badge', 'Defeat Wulfric at Snowbelle Gym and receive the Iceberg Badge.', 14, true),
  -- Elite Four Malva
  (130013, 13, NULL, 1302, 7, 2, NULL, 'elite-four-malva', 'Elite Four Malva', 'Defeat Malva at the Pokémon League.', 1, true),
  -- Elite Four Siebold
  (130014, 13, NULL, 1302, 7, 2, NULL, 'elite-four-siebold', 'Elite Four Siebold', 'Defeat Siebold at the Pokémon League.', 2, true),
  -- Elite Four Wikstrom
  (130015, 13, NULL, 1302, 7, 2, NULL, 'elite-four-wikstrom', 'Elite Four Wikstrom', 'Defeat Wikstrom at the Pokémon League.', 3, true),
  -- Elite Four Drasna
  (130016, 13, NULL, 1302, 7, 2, NULL, 'elite-four-drasna', 'Elite Four Drasna', 'Defeat Drasna at the Pokémon League.', 4, true),
  -- Champion Diantha
  (130017, 13, NULL, 1302, 8, 2, NULL, 'champion-diantha', 'Champion Diantha', 'Defeat Champion Diantha at the Pokémon League.', 5, true),
  -- Hall of Fame
  (130018, 13, NULL, 1302, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame after becoming Champion.', 6, true),
  -- Battle AZ
  (130019, 13, NULL, 1301, 6, 2, NULL, 'battle-az', 'Battle AZ', 'Battle AZ during the Lumiose City parade after becoming Champion.', 15, true),
  -- Looker Bureau
  (130020, 13, NULL, 1303, 1, 1, NULL, 'looker-bureau', 'Looker Bureau', 'Complete the Looker Bureau quest in Lumiose City.', 1, false),
  -- Terminus Cave
  (130023, 13, NULL, 1304, 6, 2, NULL, 'terminus-cave', 'Terminus Cave', 'Catch or defeat Zygarde in the deepest chamber of Terminus Cave after entering the Hall of Fame.', 1, false),
  -- Unknown Dungeon
  (130024, 13, NULL, 1304, 6, 2, NULL, 'unknown-dungeon', 'Unknown Dungeon', 'Catch or defeat Mewtwo in the Unknown Dungeon off Pokémon Village after entering the Hall of Fame.', 2, false),
  -- Roaming Legendary Bird
  (130025, 13, NULL, 1304, 6, 2, NULL, 'roaming-legendary-bird', 'Roaming Legendary Bird', 'Chase the legendary bird that roams Kalos after the Hall of Fame until it settles in Sea Spirit''s Den, then catch or defeat it.', 3, false);
