-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia core-series game and DLC pages.
-- Cross-check: Nintendo and official Pokémon DLC pages for current Switch DLC.
-- Descriptions: written for Voydex in its own words from the games themselves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group content scopes. DLC is modeled as optional child version groups.
-- is_open_world: the story can be played in any order (Scarlet / Violet), so
-- Story never treats an earlier milestone as done before a later one.
-- ============================================================================
INSERT INTO reference.version_groups (id, slug, name, generation_id, parent_version_group_id, description, sort_order, is_open_world)
VALUES
  -- Red / Blue
  (1, 'rb', 'Red / Blue', 1, NULL, 'The first games: eight Gyms across Kanto, Team Rocket, 151 Pokémon and a rival who is always a step ahead. Red and Blue each keep a few Pokémon you can only trade for.', 1, FALSE),
  -- Yellow
  (2, 'yellow', 'Yellow', 1, NULL, 'Red / Blue retold after the animated series: Pikachu follows you, all three Kanto starters can be had, and Jessie and James stand in for Team Rocket.', 2, FALSE),
  -- Gold / Silver
  (3, 'gs', 'Gold / Silver', 2, NULL, 'Johto''s eight Gyms and then Kanto''s eight more, with day and night, breeding, held items, two new types and the Pokégear. Gold and Silver each have their exclusives.', 1, FALSE),
  -- Crystal
  (4, 'crystal', 'Crystal', 2, NULL, 'Gold / Silver with a choice of trainer, moving Pokémon sprites, the Battle Tower, and Suicune at the centre of the story.', 2, FALSE),
  -- Ruby / Sapphire
  (5, 'rs', 'Ruby / Sapphire', 3, NULL, 'Hoenn''s debut: abilities, natures, double battles, contests and secret bases. Ruby follows Team Magma and Groudon, Sapphire Team Aqua and Kyogre.', 1, FALSE),
  -- FireRed / LeafGreen
  (6, 'frlg', 'FireRed / LeafGreen', 3, NULL, 'Kanto remade for the Game Boy Advance, with abilities and natures, and the Sevii Islands to explore after the League.', 2, FALSE),
  -- Emerald
  (7, 'emerald', 'Emerald', 3, NULL, 'Ruby and Sapphire together: both teams, Rayquaza at the end, Juan''s Gym, animated sprites and the Battle Frontier.', 3, FALSE),

  -- Diamond / Pearl
  (8, 'dp', 'Diamond / Pearl', 4, NULL, 'Sinnoh''s debut: the physical and special split, online trading, the Underground, and a story around Team Galactic and the Pokémon of time and space.', 1, FALSE),
  -- Platinum
  (9, 'platinum', 'Platinum', 4, NULL, 'Diamond / Pearl revisited: the Distortion World, Giratina''s Origin Forme, a changed Gym order and the Battle Frontier.', 2, FALSE),
  -- HeartGold / SoulSilver
  (10, 'hgss', 'HeartGold / SoulSilver', 4, NULL, 'Gold / Silver remade: Johto and Kanto with any Pokémon walking behind you, the Pokéwalker, the Pokéathlon and the Safari Zone.', 3, FALSE),
  -- Black / White
  (11, 'bw', 'Black / White', 5, NULL, 'Unova and a fresh start: only new Pokémon until the credits, a story about Team Plasma and N, seasons, and triple and rotation battles.', 1, FALSE),
  -- Black 2 / White 2
  (12, 'b2w2', 'Black 2 / White 2', 5, NULL, 'Unova two years on: new towns in the west, Pokémon of every generation from the start, the Pokémon World Tournament and the rest of Team Plasma''s story.', 2, FALSE),
  -- X / Y
  (13, 'xy', 'X / Y', 6, NULL, 'Kalos and the move to 3D: Mega Evolution, the Fairy type, a trainer you can dress, and a region with Lumiose City at its centre.', 1, FALSE),
  -- Omega Ruby / Alpha Sapphire
  (14, 'oras', 'Omega Ruby / Alpha Sapphire', 6, NULL, 'Ruby / Sapphire remade: Hoenn in 3D with Mega Evolution, Primal Groudon and Kyogre, soaring on Latias or Latios, and the Delta Episode.', 2, FALSE),
  -- Sun / Moon
  (15, 'sm', 'Sun / Moon', 7, NULL, 'Alola''s debut: trials and island kahunas instead of Gyms, Z-Moves, Alolan forms, Ride Pokémon and the Ultra Beasts.', 1, FALSE),
  -- Ultra Sun / Ultra Moon
  (16, 'usum', 'Ultra Sun / Ultra Moon', 7, NULL, 'Sun / Moon with a changed story around Necrozma: Ultra Wormholes to travel, new Ultra Beasts, Mina''s trial and the Rainbow Rocket episode.', 2, FALSE),
  -- Let's Go, Pikachu! / Let's Go, Eevee!
  (17, 'lgpe', 'Let''s Go, Pikachu! / Let''s Go, Eevee!', 7, NULL, 'Kanto for the Switch in the style of Pokémon GO: catching with a throw, a partner Pikachu or Eevee on your shoulder, and Pokémon following you.', 3, FALSE),
  -- Sword / Shield
  (18, 'swsh', 'Sword / Shield', 8, NULL, 'Galar''s debut: Gym battles in stadiums, Dynamax and Gigantamax, the Wild Area, raids and the Galarian forms. Sword and Shield have different Gym Leaders and legends.', 1, FALSE),
  -- The Isle of Armor
  (19, 'swsh-ioa', 'The Isle of Armor', 8, 18, 'The first expansion: the Isle of Armor, Mustard''s dojo, Kubfu to train into Urshifu, and the Pokémon the island brings back.', 2, FALSE),
  -- The Crown Tundra
  (20, 'swsh-ct', 'The Crown Tundra', 8, 18, 'The second expansion: the Crown Tundra, Dynamax Adventures, Calyrex and its steeds, the Galarian birds and the Regis.', 3, FALSE),
  -- Brilliant Diamond / Shining Pearl
  (21, 'bdsp', 'Brilliant Diamond / Shining Pearl', 8, NULL, 'Diamond / Pearl remade: Sinnoh as it was, with the Grand Underground, Ramanas Park and the original story.', 4, FALSE),
  -- Pokémon Legends: Arceus
  (22, 'pla', 'Pokémon Legends: Arceus', 8, NULL, 'Hisui long before Sinnoh: catching Pokémon in the open field, the first Pokédex, noble Pokémon, Hisuian forms, and agile and strong styles for every move.', 5, FALSE),
  -- Scarlet / Violet
  (23, 'sv', 'Scarlet / Violet', 9, NULL, 'Paldea, open from the start: three paths in any order (the Gyms, the Titans and Team Star), Terastallisation, and Koraidon or Miraidon as your ride.', 1, TRUE),
  -- The Teal Mask
  (24, 'sv-tm', 'The Teal Mask', 9, 23, 'The first part of The Hidden Treasure of Area Zero: Kitakami, its festival, Ogerpon and the Loyal Three.', 2, FALSE),
  -- The Indigo Disk
  (25, 'sv-id', 'The Indigo Disk', 9, 23, 'The second part: Blueberry Academy and its Terarium, the BB League''s Elite Four and Champion, and a return to Area Zero for Terapagos.', 3, FALSE),
  -- Pokémon Legends: Z-A
  (26, 'za', 'Pokémon Legends: Z-A', 9, NULL, 'Lumiose City on its own, mid-redevelopment: Mega Evolution returns, battles play out in real time, and the Z-A Royale ranks trainers after dark.', 4, FALSE),
  -- Mega Dimension
  (27, 'za-md', 'Mega Dimension', 9, 26, 'The Mega Dimension expansion: a new area beyond the city, rogue Megas to face, legendary Pokémon to scan for, and Magearna.', 5, FALSE);
