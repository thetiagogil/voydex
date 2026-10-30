-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Ultra Sun / Ultra Moon, Island challenge, Elite Four, Champion, Team Rainbow Rocket, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- When Solgaleo / Lunala can be caught on Mahalo Trail is confirmed by one source only.
-- Team size: Bulbapedia's Battle Royal Dome page (the player fights with the lead Pokémon in their party), matching a walkthrough's "one pokémon per trainer".
-- Scope: Pokémon Ultra Sun / Ultra Moon milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Ultra Sun / Ultra Moon battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Ilima Trial -> Ilima
  (160003, 16001, 16, 'battle-opponent', 1, 'Hau''oli City, before the trial'),
  -- Ilima Trial -> Totem Gumshoos
  (160003, 16038, 16, 'battle-opponent', 2, 'Verdant Cavern, Totem''s Den (Ultra Sun)'),
  -- Ilima Trial -> Totem Raticate
  (160003, 16039, 16, 'battle-opponent', 3, 'Verdant Cavern, Totem''s Den (Ultra Moon)'),
  -- Grand Trial Hala -> Hala
  (160004, 16002, 16, 'battle-opponent', 2, NULL),
  -- Lana Trial -> Totem Araquanid
  (160005, 16040, 16, 'battle-opponent', 3, 'Brooklet Hill'),
  -- Kiawe Trial -> Totem Marowak
  (160006, 16041, 16, 'battle-opponent', 2, 'Wela Volcano Park'),
  -- Mallow Trial -> Totem Lurantis
  (160007, 16042, 16, 'battle-opponent', 1, 'Lush Jungle'),
  -- Grand Trial Olivia -> Plumeria
  (160008, 16049, 16, 'battle-opponent', 1, 'Akala Outskirts'),
  -- Grand Trial Olivia -> Olivia
  (160008, 16006, 16, 'battle-opponent', 2, NULL),
  -- Sophocles Trial -> Totem Togedemaru
  (160009, 16043, 16, 'battle-opponent', 4, 'Hokulani Observatory'),
  -- Acerola Trial -> Totem Mimikyu
  (160010, 16044, 16, 'battle-opponent', 1, 'Thrifty Megamart (Abandoned Site)'),
  -- Grand Trial Nanu -> Nanu
  (160011, 16009, 16, 'battle-opponent', 4, NULL),
  -- Mina Trial -> Mina
  (160012, 16010, 16, 'battle-opponent', 1, 'Seafolk Village'),
  -- Mina Trial -> Ilima
  (160012, 16001, 16, 'battle-opponent', 2, 'Hau''oli Cemetery'),
  -- Mina Trial -> Mallow
  (160012, 16005, 16, 'battle-opponent', 3, 'Lush Jungle (Ultra Sun)'),
  -- Mina Trial -> Lana
  (160012, 16003, 16, 'battle-opponent', 4, 'Lush Jungle (Ultra Moon)'),
  -- Mina Trial -> Kiawe
  (160012, 16004, 16, 'battle-opponent', 5, 'Wela Volcano Park'),
  -- Mina Trial -> Sophocles
  (160012, 16007, 16, 'battle-opponent', 6, 'Hokulani Observatory (Ultra Sun)'),
  -- Mina Trial -> Nanu
  (160012, 16052, 16, 'battle-opponent', 7, 'Aether House (Ultra Moon)'),
  -- Mina Trial -> Totem Ribombee
  (160012, 16045, 16, 'battle-opponent', 8, 'Seafolk Village, Mina''s houseboat'),
  -- Vast Poni Canyon Trial -> Dulse
  (160013, 16050, 16, 'battle-opponent', 1, 'Vast Poni Canyon (Ultra Sun)'),
  -- Vast Poni Canyon Trial -> Soliera
  (160013, 16051, 16, 'battle-opponent', 2, 'Vast Poni Canyon (Ultra Moon)'),
  -- Vast Poni Canyon Trial -> Totem Kommo-o
  (160013, 16037, 16, 'battle-opponent', 3, NULL),
  -- Grand Trial Hapu -> Hapu
  (160014, 16011, 16, 'battle-opponent', 1, NULL),
  -- Ultra Necrozma -> Ultra Necrozma
  (160015, 16012, 16, 'battle-opponent', 3, NULL),
  -- Elite Four Molayne -> Molayne
  (160016, 16013, 16, 'battle-opponent', 2, NULL),
  -- Elite Four Olivia -> Olivia
  (160017, 16014, 16, 'battle-opponent', 1, NULL),
  -- Elite Four Acerola -> Acerola
  (160018, 16015, 16, 'battle-opponent', 1, NULL),
  -- Elite Four Kahili -> Kahili
  (160019, 16016, 16, 'battle-opponent', 1, NULL),
  -- Champion Battle Hau -> Hau
  (160020, 16017, 16, 'battle-opponent', 1, NULL),
  -- Team Rainbow Rocket -> Faba
  (160022, 16048, 16, 'battle-opponent', 1, 'Aether Paradise, exterior'),
  -- Team Rainbow Rocket -> Archie
  (160022, 16053, 16, 'battle-opponent', 2, 'Team Rocket''s Castle'),
  -- Team Rainbow Rocket -> Maxie
  (160022, 16054, 16, 'battle-opponent', 3, 'Team Rocket''s Castle'),
  -- Team Rainbow Rocket -> Cyrus
  (160022, 16055, 16, 'battle-opponent', 4, 'Team Rocket''s Castle'),
  -- Team Rainbow Rocket -> Lysandre
  (160022, 16056, 16, 'battle-opponent', 5, 'Team Rocket''s Castle'),
  -- Team Rainbow Rocket -> Ghetsis
  (160022, 16057, 16, 'battle-opponent', 6, 'Team Rocket''s Castle'),
  -- Team Rainbow Rocket -> Giovanni
  (160022, 16018, 16, 'battle-opponent', 7, 'Team Rocket''s Castle'),
  -- Choose Starter -> Hau
  (160001, 16019, 16, 'battle-opponent', 1, 'Route 1'),
  -- Iki Town Festival -> Hau
  (160033, 16019, 16, 'battle-opponent', 1, 'Iki Town (festival)'),
  -- Grand Trial Hala -> Hau
  (160004, 16019, 16, 'battle-opponent', 1, 'Route 3'),
  -- Lana Trial -> Hau
  (160005, 16019, 16, 'battle-opponent', 1, 'Paniola Town'),
  -- Lana Trial -> Gladion
  (160005, 16020, 16, 'battle-opponent', 2, 'Route 5'),
  -- Sophocles Trial -> Hau
  (160009, 16019, 16, 'battle-opponent', 2, 'Malie City'),
  -- Sophocles Trial -> Guzma
  (160009, 16022, 16, 'battle-opponent', 3, 'Malie Garden'),
  -- Grand Trial Nanu -> Plumeria
  (160011, 16049, 16, 'battle-opponent', 1, 'Route 15'),
  -- Grand Trial Nanu -> Guzma
  (160011, 16022, 16, 'battle-opponent', 2, 'Shady House, Po Town'),
  -- Grand Trial Nanu -> Gladion
  (160011, 16020, 16, 'battle-opponent', 3, 'Aether House, Route 15'),
  -- Aether Paradise -> Faba (entrance)
  (160023, 16046, 16, 'battle-opponent', 1, 'Aether Paradise, entrance'),
  -- Aether Paradise -> Faba (labs)
  (160023, 16047, 16, 'battle-opponent', 2, 'Aether Paradise, Secret Lab B'),
  -- Aether Paradise -> Guzma
  (160023, 16022, 16, 'battle-opponent', 3, 'Aether Paradise'),
  -- Aether Paradise -> Dulse
  (160023, 16050, 16, 'battle-opponent', 4, 'Aether Paradise, Lusamine''s mansion (Ultra Sun)'),
  -- Aether Paradise -> Soliera
  (160023, 16051, 16, 'battle-opponent', 5, 'Aether Paradise, Lusamine''s mansion (Ultra Moon)'),
  -- Aether Paradise -> Lusamine
  (160023, 16023, 16, 'battle-opponent', 6, 'Aether Paradise'),
  -- Elite Four Molayne -> Gladion
  (160016, 16020, 16, 'battle-opponent', 1, 'Mount Lanakila'),
  -- Sophocles Trial -> Nihilego
  (160009, 16024, 16, 'battle-opponent', 1, 'Aether Paradise (first visit)'),
  -- Ultra Necrozma -> Necrozma
  (160015, 16025, 16, 'battle-opponent', 1, 'Altar of the Sunne (Poni Island)'),
  -- Ultra Necrozma -> Necrozma
  (160015, 16026, 16, 'battle-opponent', 2, 'Altar of the Moone (Poni Island)'),
  -- Mahalo Trail -> Solgaleo
  (160024, 16027, 16, 'battle-opponent', 1, 'Mahalo Trail, plank bridge (Melemele Island). You can skip this battle.'),
  -- Mahalo Trail -> Lunala
  (160024, 16028, 16, 'battle-opponent', 2, 'Mahalo Trail, plank bridge (Melemele Island). You can skip this battle.'),
  -- Mount Lanakila Crater -> Necrozma
  (160025, 16029, 16, 'battle-opponent', 1, 'Mount Lanakila, crater. You can skip this battle.'),
  -- Ruins of Conflict -> Tapu Koko
  (160026, 16030, 16, 'battle-opponent', 1, 'Ruins of Conflict (Melemele Island). You can skip this battle.'),
  -- Ruins of Life -> Tapu Lele
  (160027, 16031, 16, 'battle-opponent', 1, 'Ruins of Life (Akala Island). You can skip this battle.'),
  -- Ruins of Abundance -> Tapu Bulu
  (160028, 16032, 16, 'battle-opponent', 1, 'Ruins of Abundance (Ula''ula Island, beyond Haina Desert). You can skip this battle.'),
  -- Ruins of Hope -> Tapu Fini
  (160029, 16033, 16, 'battle-opponent', 1, 'Ruins of Hope (Poni Island). You can skip this battle.'),
  -- Resolution Cave -> Zygarde
  (160030, 16034, 16, 'battle-opponent', 1, 'Resolution Cave (Poni Island). You can skip this battle.'),
  -- Poni Grove -> Blacephalon
  (160031, 16035, 16, 'battle-opponent', 1, 'Poni Grove (Poni Island). You can skip this battle.'),
  -- Poni Grove -> Stakataka
  (160031, 16036, 16, 'battle-opponent', 2, 'Poni Grove (Poni Island). You can skip this battle.'),
  -- Ilima Bonus Trial -> Totem Gumshoos
  (160032, 16038, 16, 'battle-opponent', 1, 'Verdant Cavern, Totem''s Den (Melemele Island, Ultra Sun). You can skip this battle.'),
  -- Ilima Bonus Trial -> Totem Raticate
  (160032, 16039, 16, 'battle-opponent', 2, 'Verdant Cavern, Totem''s Den (Melemele Island, Ultra Moon). You can skip this battle.');

-- Battles where the player may bring only some of their team.
INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  team_size_limit
) VALUES
  -- Kiawe Trial -> Hau, Gladion & the Masked Royal (the Battle Royal: one Pokémon per trainer, the player's lead)
  (160006, 16021, 16, 'battle-opponent', 1, 'Battle Royal Dome, Royal Avenue', 1);
