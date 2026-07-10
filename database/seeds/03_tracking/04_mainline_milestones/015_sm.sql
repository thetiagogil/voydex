-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Sun / Moon, Island challenge, Elite Four, Champion, and First partner Pokémon pages.
-- Scope: Pokémon Sun / Moon major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Sun / Moon mainline progression milestones. Dense rival, evil-team, rematch, and route-level story beats outside these anchors remain part of the later story-boss pass.
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
  (150001, 15, NULL, 1501, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Choose Rowlet, Litten, or Popplio as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (150002, 15, NULL, 1501, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Rotom Pokedex and begin the Alola adventure record.', 2, true),
  -- Ilima Trial
  (150003, 15, NULL, 1502, 3, 2, NULL, 'ilima-trial', 'Ilima Trial', 'Complete Ilima''s Verdant Cavern trial.', 1, true),
  -- Grand Trial Hala
  (150004, 15, NULL, 1502, 4, 2, NULL, 'grand-trial-hala', 'Grand Trial Hala', 'Defeat Island Kahuna Hala in the Melemele grand trial.', 2, true),
  -- Lana Trial
  (150005, 15, NULL, 1502, 3, 2, NULL, 'lana-trial', 'Lana Trial', 'Complete Lana''s Brooklet Hill trial.', 3, true),
  -- Kiawe Trial
  (150006, 15, NULL, 1502, 3, 2, NULL, 'kiawe-trial', 'Kiawe Trial', 'Complete Kiawe''s Wela Volcano Park trial.', 4, true),
  -- Mallow Trial
  (150007, 15, NULL, 1502, 3, 2, NULL, 'mallow-trial', 'Mallow Trial', 'Complete Mallow''s Lush Jungle trial.', 5, true),
  -- Grand Trial Olivia
  (150008, 15, NULL, 1502, 4, 2, NULL, 'grand-trial-olivia', 'Grand Trial Olivia', 'Defeat Island Kahuna Olivia in the Akala grand trial.', 6, true),
  -- Sophocles Trial
  (150009, 15, NULL, 1502, 3, 2, NULL, 'sophocles-trial', 'Sophocles Trial', 'Complete Sophocles''s Hokulani Observatory trial.', 7, true),
  -- Acerola Trial
  (150010, 15, NULL, 1502, 3, 2, NULL, 'acerola-trial', 'Acerola Trial', 'Complete Acerola''s Thrifty Megamart trial.', 8, true),
  -- Grand Trial Nanu
  (150011, 15, NULL, 1502, 4, 2, NULL, 'grand-trial-nanu', 'Grand Trial Nanu', 'Defeat Island Kahuna Nanu in the Ula''ula grand trial.', 9, true),
  -- Vast Poni Canyon Trial
  (150012, 15, NULL, 1502, 3, 2, NULL, 'vast-poni-canyon-trial', 'Vast Poni Canyon Trial', 'Complete the trial in Vast Poni Canyon.', 10, true),
  -- Grand Trial Hapu
  (150013, 15, NULL, 1502, 4, 2, NULL, 'grand-trial-hapu', 'Grand Trial Hapu', 'Defeat Island Kahuna Hapu in the Poni grand trial.', 11, true),
  -- Elite Four Hala
  (150014, 15, NULL, 1503, 7, 2, NULL, 'elite-four-hala', 'Elite Four Hala', 'Defeat Hala at the Pokémon League.', 1, true),
  -- Elite Four Olivia
  (150015, 15, NULL, 1503, 7, 2, NULL, 'elite-four-olivia', 'Elite Four Olivia', 'Defeat Olivia at the Pokémon League.', 2, true),
  -- Elite Four Acerola
  (150016, 15, NULL, 1503, 7, 2, NULL, 'elite-four-acerola', 'Elite Four Acerola', 'Defeat Acerola at the Pokémon League.', 3, true),
  -- Elite Four Kahili
  (150017, 15, NULL, 1503, 7, 2, NULL, 'elite-four-kahili', 'Elite Four Kahili', 'Defeat Kahili at the Pokémon League.', 4, true),
  -- Professor Kukui
  (150018, 15, NULL, 1503, 8, 2, NULL, 'champion-kukui', 'Professor Kukui', 'Defeat Professor Kukui in the first Champion title-defense battle.', 5, true),
  -- Hall of Fame
  (150019, 15, NULL, 1503, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame as Alola''s first Champion.', 6, true),
  -- Ultra Beast Missions
  (150020, 15, NULL, 1504, 1, 1, NULL, 'ultra-beast-missions', 'Ultra Beast Missions', 'Complete the post-game Ultra Beast missions.', 1, false);
