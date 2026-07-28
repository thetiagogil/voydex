-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Ultra Sun / Ultra Moon, Island challenge, Elite Four, Champion, Team Rainbow Rocket, and First partner Pokémon pages.
-- Scope: Pokémon Ultra Sun / Ultra Moon major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Ultra Sun / Ultra Moon mainline progression milestones. Dense rival, evil-team, rematch, and route-level story beats outside these anchors remain part of the later story-boss pass.
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
  (160001, 16, NULL, 1601, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Choose Rowlet, Litten, or Popplio as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (160002, 16, NULL, 1601, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Rotom Pokedex and begin the Alola adventure record.', 2, true),
  -- Ilima Trial
  (160003, 16, NULL, 1602, 3, 2, NULL, 'ilima-trial', 'Ilima Trial', 'Complete Ilima''s Verdant Cavern trial.', 1, true),
  -- Grand Trial Hala
  (160004, 16, NULL, 1602, 4, 2, NULL, 'grand-trial-hala', 'Grand Trial Hala', 'Defeat Island Kahuna Hala in the Melemele grand trial.', 2, true),
  -- Lana Trial
  (160005, 16, NULL, 1602, 3, 2, NULL, 'lana-trial', 'Lana Trial', 'Complete Lana''s Brooklet Hill trial.', 3, true),
  -- Kiawe Trial
  (160006, 16, NULL, 1602, 3, 2, NULL, 'kiawe-trial', 'Kiawe Trial', 'Complete Kiawe''s Wela Volcano Park trial.', 4, true),
  -- Mallow Trial
  (160007, 16, NULL, 1602, 3, 2, NULL, 'mallow-trial', 'Mallow Trial', 'Complete Mallow''s Lush Jungle trial.', 5, true),
  -- Grand Trial Olivia
  (160008, 16, NULL, 1602, 4, 2, NULL, 'grand-trial-olivia', 'Grand Trial Olivia', 'Defeat Island Kahuna Olivia in the Akala grand trial.', 6, true),
  -- Sophocles Trial
  (160009, 16, NULL, 1602, 3, 2, NULL, 'sophocles-trial', 'Sophocles Trial', 'Complete Sophocles''s Hokulani Observatory trial.', 7, true),
  -- Acerola Trial
  (160010, 16, NULL, 1602, 3, 2, NULL, 'acerola-trial', 'Acerola Trial', 'Complete Acerola''s Thrifty Megamart trial.', 8, true),
  -- Grand Trial Nanu
  (160011, 16, NULL, 1602, 4, 2, NULL, 'grand-trial-nanu', 'Grand Trial Nanu', 'Defeat Island Kahuna Nanu in the Ula''ula grand trial.', 9, true),
  -- Mina Trial
  (160012, 16, NULL, 1602, 3, 2, NULL, 'mina-trial', 'Mina Trial', 'Complete Mina''s trial on Poni Island.', 12, true),
  -- Vast Poni Canyon Trial
  (160013, 16, NULL, 1602, 3, 2, NULL, 'vast-poni-canyon-trial', 'Vast Poni Canyon Trial', 'Complete the trial in Vast Poni Canyon.', 10, true),
  -- Grand Trial Hapu
  (160014, 16, NULL, 1602, 4, 2, NULL, 'grand-trial-hapu', 'Grand Trial Hapu', 'Defeat Island Kahuna Hapu in the Poni grand trial.', 13, true),
  -- Ultra Necrozma
  (160015, 16, NULL, 1602, 6, 3, NULL, 'ultra-necrozma', 'Ultra Necrozma', 'Defeat Ultra Necrozma at Megalo Tower.', 11, true),
  -- Elite Four Molayne
  (160016, 16, NULL, 1603, 7, 2, NULL, 'elite-four-molayne', 'Elite Four Molayne', 'Defeat Molayne at the Pokémon League.', 1, true),
  -- Elite Four Olivia
  (160017, 16, NULL, 1603, 7, 2, NULL, 'elite-four-olivia', 'Elite Four Olivia', 'Defeat Olivia at the Pokémon League.', 2, true),
  -- Elite Four Acerola
  (160018, 16, NULL, 1603, 7, 2, NULL, 'elite-four-acerola', 'Elite Four Acerola', 'Defeat Acerola at the Pokémon League.', 3, true),
  -- Elite Four Kahili
  (160019, 16, NULL, 1603, 7, 2, NULL, 'elite-four-kahili', 'Elite Four Kahili', 'Defeat Kahili at the Pokémon League.', 4, true),
  -- Champion Battle Hau
  (160020, 16, NULL, 1603, 8, 2, NULL, 'champion-hau', 'Champion Battle Hau', 'Defeat Hau in the first Champion title-defense battle.', 5, true),
  -- Hall of Fame
  (160021, 16, NULL, 1603, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame as Alola''s first Champion.', 6, true),
  -- Team Rainbow Rocket
  (160022, 16, NULL, 1604, 6, 3, NULL, 'team-rainbow-rocket', 'Team Rainbow Rocket', 'Complete the Team Rainbow Rocket Episode and defeat Giovanni.', 1, true);
