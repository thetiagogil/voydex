-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Ultra Sun / Ultra Moon, Island challenge, Elite Four, Champion, Team Rainbow Rocket, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- When Solgaleo / Lunala can be caught on Mahalo Trail is confirmed by one source only.
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
  -- Aether Paradise
  (160023, 16, NULL, 1602, 1, 2, NULL, 'aether-paradise', 'Aether Paradise', 'Storm Aether Paradise with Gladion and Hau to rescue Lillie, then defeat Guzma and Lusamine.', 10, true),
  -- Mina Trial
  (160012, 16, NULL, 1602, 3, 2, NULL, 'mina-trial', 'Mina Trial', 'Complete Mina''s trial on Poni Island.', 13, true),
  -- Vast Poni Canyon Trial
  (160013, 16, NULL, 1602, 3, 2, NULL, 'vast-poni-canyon-trial', 'Vast Poni Canyon Trial', 'Complete the trial in Vast Poni Canyon.', 11, true),
  -- Grand Trial Hapu
  (160014, 16, NULL, 1602, 4, 2, NULL, 'grand-trial-hapu', 'Grand Trial Hapu', 'Defeat Island Kahuna Hapu in the Poni grand trial.', 14, true),
  -- Ultra Necrozma
  (160015, 16, NULL, 1602, 6, 3, NULL, 'ultra-necrozma', 'Ultra Necrozma', 'Defeat Ultra Necrozma at Megalo Tower.', 12, true),
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
  (160022, 16, NULL, 1604, 6, 3, NULL, 'team-rainbow-rocket', 'Team Rainbow Rocket', 'Complete the Team Rainbow Rocket Episode and defeat Giovanni.', 1, true),
  -- Mahalo Trail
  (160024, 16, NULL, 1605, 6, 2, NULL, 'mahalo-trail', 'Mahalo Trail', 'Battle and catch Nebby, now Solgaleo or Lunala, when Lillie hands it over on Mahalo Trail''s plank bridge.', 1, false),
  -- Mount Lanakila Crater
  (160025, 16, NULL, 1605, 6, 2, NULL, 'mount-lanakila-crater', 'Mount Lanakila Crater', 'Share your Z-Ring''s light with the weakened Necrozma in Mount Lanakila''s crater, then catch or defeat it.', 2, false),
  -- Ruins of Conflict
  (160026, 16, NULL, 1605, 6, 2, NULL, 'ruins-of-conflict', 'Ruins of Conflict', 'Catch or defeat Tapu Koko, Melemele''s guardian, at the Ruins of Conflict after becoming Champion.', 3, false),
  -- Ruins of Life
  (160027, 16, NULL, 1605, 6, 2, NULL, 'ruins-of-life', 'Ruins of Life', 'Catch or defeat Tapu Lele, Akala''s guardian, at the Ruins of Life after becoming Champion.', 4, false),
  -- Ruins of Abundance
  (160028, 16, NULL, 1605, 6, 2, NULL, 'ruins-of-abundance', 'Ruins of Abundance', 'Catch or defeat Tapu Bulu, Ula''ula''s guardian, at the Ruins of Abundance beyond Haina Desert after becoming Champion.', 5, false),
  -- Ruins of Hope
  (160029, 16, NULL, 1605, 6, 2, NULL, 'ruins-of-hope', 'Ruins of Hope', 'Catch or defeat Tapu Fini, Poni''s guardian, at the Ruins of Hope after becoming Champion.', 6, false),
  -- Resolution Cave
  (160030, 16, NULL, 1605, 6, 2, NULL, 'resolution-cave', 'Resolution Cave', 'Catch or defeat Zygarde in Resolution Cave on Poni Island after becoming Champion.', 7, false),
  -- Poni Grove
  (160031, 16, NULL, 1605, 6, 2, NULL, 'poni-grove', 'Poni Grove', 'Help the Ultra Recon Squad and Hau secure the Ultra Beasts loose in Poni Grove after becoming Champion.', 8, false);
