-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Sun / Moon, Island challenge, Elite Four, Champion, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
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
  -- Iki Town Festival
  (150027, 15, NULL, 1501, 1, 2, NULL, 'iki-town-festival', 'Iki Town Festival', 'Battle Hau at the Iki Town festival and receive the Sparkling Stone from Tapu Koko.', 3, true),
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
  -- Aether Paradise
  (150021, 15, NULL, 1502, 1, 2, NULL, 'aether-paradise', 'Aether Paradise', 'Storm Aether Paradise with Gladion and Hau to rescue Lillie, then defeat Guzma and Lusamine.', 10, true),
  -- Vast Poni Canyon Trial
  (150012, 15, NULL, 1502, 3, 2, NULL, 'vast-poni-canyon-trial', 'Vast Poni Canyon Trial', 'Complete the trial in Vast Poni Canyon.', 11, true),
  -- Ultra Space
  (150022, 15, NULL, 1502, 1, 2, NULL, 'ultra-space', 'Ultra Space', 'Summon Solgaleo or Lunala at the altar on Poni Island and follow Lusamine into Ultra Space to stop her.', 12, true),
  -- Grand Trial Hapu
  (150013, 15, NULL, 1502, 4, 2, NULL, 'grand-trial-hapu', 'Grand Trial Hapu', 'Defeat Island Kahuna Hapu in the Poni grand trial.', 13, true),
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
  (150020, 15, NULL, 1504, 1, 1, NULL, 'ultra-beast-missions', 'Ultra Beast Missions', 'Complete the post-game Ultra Beast missions.', 1, false),
  -- Ruins of Life
  (150023, 15, NULL, 1505, 6, 2, NULL, 'ruins-of-life', 'Ruins of Life', 'Catch or defeat Tapu Lele, Akala''s guardian, at the Ruins of Life after becoming Champion.', 1, false),
  -- Ruins of Abundance
  (150024, 15, NULL, 1505, 6, 2, NULL, 'ruins-of-abundance', 'Ruins of Abundance', 'Catch or defeat Tapu Bulu, Ula''ula''s guardian, at the Ruins of Abundance beyond Haina Desert after becoming Champion.', 2, false),
  -- Ruins of Hope
  (150025, 15, NULL, 1505, 6, 2, NULL, 'ruins-of-hope', 'Ruins of Hope', 'Catch or defeat Tapu Fini, Poni''s guardian, at the Ruins of Hope after becoming Champion.', 3, false),
  -- Ten Carat Hill
  (150026, 15, NULL, 1505, 6, 2, NULL, 'ten-carat-hill', 'Ten Carat Hill', 'Catch or defeat Necrozma in the Farthest Hollow of Ten Carat Hill after the Ultra Beast missions.', 4, false);
