-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Ultra Sun / Ultra Moon, Island challenge, Elite Four, Champion, Team Rainbow Rocket, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- When Solgaleo / Lunala can be caught on Mahalo Trail is confirmed by one source only.
-- Team size: Bulbapedia's Battle Royal Dome page (the player fights with the lead Pokémon in their party), matching a walkthrough's "one pokémon per trainer".
-- Dulse and Soliera's first two battles (Seaward Cave, Paniola Ranch): Bulbapedia's
-- trainer pages, with Serebii as the second reading.
-- Scope: Pokémon Ultra Sun / Ultra Moon milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Ultra Sun / Ultra Moon battle milestones to their primary opponents,
-- in Red / Blue's pattern. The Pokémon League holds its six battles in the
-- order they are fought: Gladion on Mount Lanakila, the Elite Four, then Hau.
-- A trial lists its Totem Pokémon and the battles on the way to it. Mina's
-- trial lists the captains it sends you to, each with its place in the note.
-- location_id is set only where the battle is fought away from its milestone's
-- place on the way to it. NULL means the battle is at the milestone's place.
-- The Battle Royal is fought with one Pokémon.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  location_id
) VALUES
  -- Choose Starter -> Hau
  (160001, 16019, 16, 'battle-opponent', 1, 'Right after you pick.', NULL),
  -- Iki Town Festival -> Hau
  (160033, 16019, 16, 'battle-opponent', 1, 'On the festival stage.', NULL),
  -- Ilima Trial -> Ilima (Hau'oli City)
  (160003, 16001, 16, 'battle-opponent', 1, 'At the marina, to see if you are ready for his trial.', 516),
  -- Ilima Trial -> Totem Gumshoos
  (160003, 16038, 16, 'battle-opponent', 2, 'Totem''s Den (Ultra Sun)', NULL),
  -- Ilima Trial -> Totem Raticate
  (160003, 16039, 16, 'battle-opponent', 3, 'Totem''s Den (Ultra Moon)', NULL),
  -- Grand Trial Hala -> Hau (Route 3)
  (160004, 16019, 16, 'battle-opponent', 1, 'Once you have found Nebby.', 553),
  -- Grand Trial Hala -> Dulse (Seaward Cave)
  (160004, 16050, 16, 'battle-opponent', 2, 'The Ultra Recon Squad tests you (Ultra Sun).', 563),
  -- Grand Trial Hala -> Soliera (Seaward Cave)
  (160004, 16051, 16, 'battle-opponent', 3, 'The Ultra Recon Squad tests you (Ultra Moon).', 563),
  -- Grand Trial Hala -> Hala
  (160004, 16002, 16, 'battle-opponent', 4, NULL, NULL),
  -- Lana Trial -> Hau (Paniola Town)
  (160005, 16019, 16, 'battle-opponent', 1, 'On your way through town.', 533),
  -- Lana Trial -> Dulse (Paniola Ranch)
  (160005, 16050, 16, 'battle-opponent', 2, 'The Ultra Recon Squad again (Ultra Sun).', 532),
  -- Lana Trial -> Soliera (Paniola Ranch)
  (160005, 16051, 16, 'battle-opponent', 3, 'The Ultra Recon Squad again (Ultra Moon).', 532),
  -- Lana Trial -> Gladion (Route 5)
  (160005, 16020, 16, 'battle-opponent', 4, 'Gladion, Team Skull''s enforcer, stops you.', 555),
  -- Lana Trial -> Totem Araquanid
  (160005, 16040, 16, 'battle-opponent', 5, 'At the bottom of the hill', NULL),
  -- Kiawe Trial -> Totem Marowak
  (160006, 16041, 16, 'battle-opponent', 2, 'At the top of the park', NULL),
  -- Mallow Trial -> Totem Lurantis
  (160007, 16042, 16, 'battle-opponent', 1, NULL, NULL),
  -- Grand Trial Olivia -> Plumeria (Akala Outskirts)
  (160008, 16049, 16, 'battle-opponent', 1, 'Plumeria, Team Skull''s big sister, steps in.', 506),
  -- Grand Trial Olivia -> Olivia
  (160008, 16006, 16, 'battle-opponent', 2, NULL, NULL),
  -- Aether Paradise Visit -> Nihilego
  (160034, 16024, 16, 'battle-opponent', 1, 'You can''t catch it.', NULL),
  -- Sophocles Trial -> Hau (Malie City)
  (160009, 16019, 16, 'battle-opponent', 1, 'When you land on Ula''ula Island.', 525),
  -- Sophocles Trial -> Guzma (Malie Garden)
  (160009, 16022, 16, 'battle-opponent', 2, 'Guzma, the boss of Team Skull, turns on you.', 526),
  -- Sophocles Trial -> Totem Togedemaru
  (160009, 16043, 16, 'battle-opponent', 3, NULL, NULL),
  -- Acerola Trial -> Totem Mimikyu
  (160010, 16044, 16, 'battle-opponent', 1, NULL, NULL),
  -- Po Town -> Plumeria (Route 15)
  (160035, 16049, 16, 'battle-opponent', 1, 'When Team Skull takes the Yungoos.', 549),
  -- Po Town -> Guzma
  (160035, 16022, 16, 'battle-opponent', 2, 'In the Shady House', NULL),
  -- Grand Trial Nanu -> Gladion (Aether House)
  (160011, 16020, 16, 'battle-opponent', 1, 'He blames you for losing Lillie.', 504),
  -- Grand Trial Nanu -> Nanu
  (160011, 16009, 16, 'battle-opponent', 2, NULL, NULL),
  -- Aether Paradise -> Faba
  (160023, 16046, 16, 'battle-opponent', 1, 'At the entrance', NULL),
  -- Aether Paradise -> Faba (Secret Lab)
  (160023, 16047, 16, 'battle-opponent', 2, 'In Secret Lab B', NULL),
  -- Aether Paradise -> Guzma
  (160023, 16022, 16, 'battle-opponent', 3, 'In front of Lusamine''s house', NULL),
  -- Aether Paradise -> Dulse
  (160023, 16050, 16, 'battle-opponent', 4, 'In Lusamine''s house (Ultra Sun)', NULL),
  -- Aether Paradise -> Soliera
  (160023, 16051, 16, 'battle-opponent', 5, 'In Lusamine''s house (Ultra Moon)', NULL),
  -- Aether Paradise -> Lusamine
  (160023, 16023, 16, 'battle-opponent', 6, 'In her house', NULL),
  -- Vast Poni Canyon Trial -> Dulse
  (160013, 16050, 16, 'battle-opponent', 1, 'On the way up (Ultra Sun)', NULL),
  -- Vast Poni Canyon Trial -> Soliera
  (160013, 16051, 16, 'battle-opponent', 2, 'On the way up (Ultra Moon)', NULL),
  -- Vast Poni Canyon Trial -> Totem Kommo-o
  (160013, 16037, 16, 'battle-opponent', 3, NULL, NULL),
  -- Ultra Necrozma -> Dusk Mane Necrozma
  (160015, 16025, 16, 'battle-opponent', 1, 'At the Altar of the Sunne (Ultra Sun)', NULL),
  -- Ultra Necrozma -> Dawn Wings Necrozma
  (160015, 16026, 16, 'battle-opponent', 2, 'At the Altar of the Moone (Ultra Moon)', NULL),
  -- Ultra Necrozma -> Ultra Necrozma
  (160015, 16012, 16, 'battle-opponent', 3, 'At the top of Megalo Tower', NULL),
  -- Mina Trial -> Mina
  (160012, 16010, 16, 'battle-opponent', 1, 'At her houseboat, to start the trial', NULL),
  -- Mina Trial -> Ilima
  (160012, 16001, 16, 'battle-opponent', 2, 'Hau''oli Cemetery', NULL),
  -- Mina Trial -> Mallow
  (160012, 16005, 16, 'battle-opponent', 3, 'Lush Jungle (Ultra Sun)', NULL),
  -- Mina Trial -> Lana
  (160012, 16003, 16, 'battle-opponent', 4, 'Lush Jungle (Ultra Moon)', NULL),
  -- Mina Trial -> Kiawe
  (160012, 16004, 16, 'battle-opponent', 5, 'Wela Volcano Park', NULL),
  -- Mina Trial -> Sophocles
  (160012, 16007, 16, 'battle-opponent', 6, 'Hokulani Observatory (Ultra Sun)', NULL),
  -- Mina Trial -> Nanu (Mina's trial)
  (160012, 16052, 16, 'battle-opponent', 7, 'Aether House (Ultra Moon)', NULL),
  -- Mina Trial -> Totem Ribombee
  (160012, 16045, 16, 'battle-opponent', 8, 'Back at Mina''s houseboat', NULL),
  -- Grand Trial Hapu -> Hapu
  (160014, 16011, 16, 'battle-opponent', 1, NULL, NULL),
  -- Pokémon League -> Gladion (Mount Lanakila)
  (160020, 16020, 16, 'battle-opponent', 1, 'On the way up the mountain.', 531),
  -- Pokémon League -> Molayne
  (160020, 16013, 16, 'battle-opponent', 2, NULL, NULL),
  -- Pokémon League -> Olivia (Elite Four)
  (160020, 16014, 16, 'battle-opponent', 3, NULL, NULL),
  -- Pokémon League -> Acerola (Elite Four)
  (160020, 16015, 16, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Kahili
  (160020, 16016, 16, 'battle-opponent', 5, NULL, NULL),
  -- Pokémon League -> Hau (title defence)
  (160020, 16017, 16, 'battle-opponent', 6, NULL, NULL),
  -- Team Rainbow Rocket -> Faba (Team Rainbow Rocket)
  (160022, 16048, 16, 'battle-opponent', 1, 'Outside, before the castle', NULL),
  -- Team Rainbow Rocket -> Archie
  (160022, 16053, 16, 'battle-opponent', 2, 'In the castle', NULL),
  -- Team Rainbow Rocket -> Maxie
  (160022, 16054, 16, 'battle-opponent', 3, 'In the castle', NULL),
  -- Team Rainbow Rocket -> Cyrus
  (160022, 16055, 16, 'battle-opponent', 4, 'In the castle', NULL),
  -- Team Rainbow Rocket -> Lysandre
  (160022, 16056, 16, 'battle-opponent', 5, 'In the castle', NULL),
  -- Team Rainbow Rocket -> Ghetsis
  (160022, 16057, 16, 'battle-opponent', 6, 'In the castle, before Giovanni', NULL),
  -- Team Rainbow Rocket -> Giovanni
  (160022, 16018, 16, 'battle-opponent', 7, 'In the last room', NULL),
  -- Mahalo Trail -> Solgaleo
  (160024, 16027, 16, 'battle-opponent', 1, '(Ultra Sun) You can skip this battle.', NULL),
  -- Mahalo Trail -> Lunala
  (160024, 16028, 16, 'battle-opponent', 2, '(Ultra Moon) You can skip this battle.', NULL),
  -- Mount Lanakila Crater -> Necrozma
  (160025, 16029, 16, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Ruins of Conflict -> Tapu Koko
  (160026, 16030, 16, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Ruins of Life -> Tapu Lele
  (160027, 16031, 16, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Ruins of Abundance -> Tapu Bulu
  (160028, 16032, 16, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Ruins of Hope -> Tapu Fini
  (160029, 16033, 16, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Resolution Cave -> Zygarde
  (160030, 16034, 16, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Poni Grove -> Blacephalon
  (160031, 16035, 16, 'battle-opponent', 1, '(Ultra Sun) You can skip this battle.', NULL),
  -- Poni Grove -> Stakataka
  (160031, 16036, 16, 'battle-opponent', 2, '(Ultra Moon) You can skip this battle.', NULL),
  -- Ilima Bonus Trial -> Totem Gumshoos
  (160032, 16038, 16, 'battle-opponent', 1, '(Ultra Sun) You can skip this battle.', NULL),
  -- Ilima Bonus Trial -> Totem Raticate
  (160032, 16039, 16, 'battle-opponent', 2, '(Ultra Moon) You can skip this battle.', NULL);

-- Battles with their own rules for the player's side: team_size_limit.
INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  location_id,
  team_size_limit
) VALUES
  -- Kiawe Trial -> Hau, Gladion & the Masked Royal (Royal Avenue)
  (160006, 16021, 16, 'battle-opponent', 1, 'A Battle Royal, with one Pokémon each.', 560, 1);
