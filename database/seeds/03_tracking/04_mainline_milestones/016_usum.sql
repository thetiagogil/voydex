-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia island challenge, Elite Four and Team Rainbow Rocket
-- pages, and its Ultra Sun / Ultra Moon walkthrough and location pages for
-- the story's order, the beats the game forces and every beat's place.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon Ultra Sun / Ultra Moon shared story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Ultra Sun / Ultra Moon story, decision, trial and League milestones, each at
-- the place it happens (location_id), in Red / Blue's pattern. Main Story is
-- the island challenge in the order the walkthrough reaches each trial and
-- grand trial, with the beats the game forces between them as their own
-- milestones (the Iki Town festival, the first visit to Aether Paradise, Po
-- Town, the raid on Aether Paradise and Ultra Necrozma). The Pokémon League
-- closes Main Story as one milestone: the four Elite Four milestones (160016
-- to 160019) and the Hall of Fame milestone (160021) merged into it
-- (160020); database/game-data/id-changes.json moves saved Plays over. Post
-- Game is Team Rainbow Rocket. Side Content is the legendary Pokémon and
-- Ilima's bonus trial. Dense optional walkthrough beats (Mantine Surf, the
-- Battle Agency, Ultra Warp Ride, the Battle Tree) are intentionally
-- excluded.
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
  is_required_for_completion,
  location_id
) VALUES
  -- Choose Starter (Route 1)
  (160001, 16, NULL, 1601, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Professor Kukui lets you pick Rowlet, Litten or Popplio on Route 1. Hau takes the one that is weak to yours and battles you.', 1, true, 543),
  -- Receive Pokédex (Route 1)
  (160002, 16, NULL, 1601, 1, 1, NULL, 'receive-pokedex', 'Receive Pokédex', 'Professor Kukui gives you a Pokédex, and at his lab on the beach a Rotom moves into it.', 2, true, 543),
  -- Iki Town Festival (Iki Town)
  (160033, 16, NULL, 1601, 1, 2, NULL, 'iki-town-festival', 'Iki Town Festival', 'Battle Hau at the festival in Iki Town, held for Tapu Koko. Hala takes the Sparkling Stone it left you and brings it back the next day as a Z-Ring.', 3, true, 519),
  -- Ilima Trial (Verdant Cavern)
  (160003, 16, NULL, 1601, 3, 2, NULL, 'ilima-trial', 'Ilima Trial', 'Find the three Pokémon hiding in the dens of Verdant Cavern, then beat the Totem Pokémon, Gumshoos in Ultra Sun or Raticate in Ultra Moon. Ilima gives you Normalium Z.', 4, true, 571),
  -- Grand Trial Hala (Iki Town)
  (160004, 16, NULL, 1601, 4, 2, NULL, 'grand-trial-hala', 'Grand Trial Hala', 'Beat Kahuna Hala and his Fighting types in Iki Town. He gives you Fightinium Z and a Ride Pager that calls a Tauros.', 5, true, 519),
  -- Lana Trial (Brooklet Hill)
  (160005, 16, NULL, 1601, 3, 2, NULL, 'lana-trial', 'Lana Trial', 'Follow the splashes down Brooklet Hill with Lana and beat the Totem Araquanid in the rain. Lana gives you Waterium Z and a Fishing Rod.', 6, true, 509),
  -- Kiawe Trial (Wela Volcano Park)
  (160006, 16, NULL, 1601, 3, 2, NULL, 'kiawe-trial', 'Kiawe Trial', 'Spot what changes in the Marowak dances at the top of Wela Volcano Park, then beat the Totem Marowak. Kiawe gives you Firium Z and adds Charizard to your Ride Pager.', 7, true, 572),
  -- Mallow Trial (Lush Jungle)
  (160007, 16, NULL, 1601, 3, 2, NULL, 'mallow-trial', 'Mallow Trial', 'Gather Mallow''s ingredients in Lush Jungle. The smell of her cooking draws the Totem Lurantis. Beat it for Grassium Z.', 8, true, 524),
  -- Grand Trial Olivia (Ruins of Life)
  (160008, 16, NULL, 1601, 4, 2, NULL, 'grand-trial-olivia', 'Grand Trial Olivia', 'Beat Kahuna Olivia and her Rock types at the Ruins of Life. She gives you Rockium Z.', 9, true, 928),
  -- Aether Paradise Visit (Aether Paradise)
  (160034, 16, NULL, 1601, 6, 2, NULL, 'aether-paradise-visit', 'Aether Paradise Visit', 'Faba takes you and Hau from the Hano Grand Resort to Aether Paradise, where Lusamine shows you around. An Ultra Wormhole opens in front of her and a Nihilego comes through. Beat it. You can''t catch it.', 10, true, 505),
  -- Sophocles Trial (Hokulani Observatory)
  (160009, 16, NULL, 1601, 3, 2, NULL, 'sophocles-trial', 'Sophocles Trial', 'Help Sophocles line up his Charjabug at Hokulani Observatory as the power fails, then beat the Totem Togedemaru. He gives you Electrium Z.', 11, true, 924),
  -- Acerola Trial (Thrifty Megamart (Abandoned Site))
  (160010, 16, NULL, 1601, 3, 2, NULL, 'acerola-trial', 'Acerola Trial', 'Photograph the ghosts in the abandoned Thrifty Megamart and follow the Pikachu into the back room. Beat the Totem Mimikyu for Ghostium Z.', 12, true, 566),
  -- Po Town (Po Town)
  (160035, 16, NULL, 1601, 1, 2, NULL, 'po-town', 'Po Town', 'Team Skull has taken a child''s Yungoos from the Aether House. Nanu lets you into Po Town. Fight through the Grunts in the rain and beat Guzma in the Shady House to get it back.', 13, true, 925),
  -- Grand Trial Nanu (Malie City)
  (160011, 16, NULL, 1601, 4, 2, NULL, 'grand-trial-nanu', 'Grand Trial Nanu', 'Team Skull took Lillie while you were in Po Town, and Gladion battles you at the Aether House in his anger. Nanu, who turns out to be the kahuna, then gives you your grand trial in Malie City. Beat his Dark types for Darkinium Z.', 14, true, 525),
  -- Aether Paradise (Aether Paradise)
  (160023, 16, NULL, 1601, 1, 2, NULL, 'aether-paradise', 'Aether Paradise', 'Storm Aether Paradise with Gladion and Hau to rescue Lillie. Beat Faba twice, then Guzma, a member of the Ultra Recon Squad and Lusamine in her house. She goes through an Ultra Wormhole with Guzma to fight Necrozma.', 15, true, 505),
  -- Vast Poni Canyon Trial (Vast Poni Canyon)
  (160013, 16, NULL, 1601, 3, 2, NULL, 'vast-poni-canyon-trial', 'Vast Poni Canyon Trial', 'Climb through Vast Poni Canyon, where the Ultra Recon Squad tests you once more, to the trial site that has no captain. Beat the Pokémon that guard it and then the Totem Kommo-o for Dragonium Z.', 16, true, 570),
  -- Ultra Necrozma (Megalo Tower)
  (160015, 16, NULL, 1601, 6, 3, NULL, 'ultra-necrozma', 'Ultra Necrozma', 'At the altar above Vast Poni Canyon, Necrozma comes through an Ultra Wormhole and takes over Nebby. Beat it as Dusk Mane Necrozma in Ultra Sun or Dawn Wings Necrozma in Ultra Moon. Then ride to Ultra Megalopolis and beat Ultra Necrozma on Megalo Tower to bring Alola''s light back.', 17, true, 932),
  -- Mina Trial (Seafolk Village)
  (160012, 16, NULL, 1601, 3, 2, NULL, 'mina-trial', 'Mina Trial', 'Mina starts her trial at her houseboat in Seafolk Village and sends you round the islands. Battle her and then the captains for their petals, and bring all seven back to draw out the Totem Ribombee. Beat it for Fairium Z.', 18, true, 562),
  -- Grand Trial Hapu (Exeggutor Island)
  (160014, 16, NULL, 1601, 4, 2, NULL, 'grand-trial-hapu', 'Grand Trial Hapu', 'Beat Kahuna Hapu and her Ground types on Exeggutor Island. She gives you Groundium Z, and the way up Mount Lanakila opens.', 19, true, 512),
  -- Pokémon League (Pokémon League)
  (160020, 16, NULL, 1601, 8, 3, NULL, 'pokemon-league', 'Pokémon League', 'Beat the Elite Four in any order at Alola''s new Pokémon League on Mount Lanakila. Hau then comes up as the last challenger for the title of first Champion. Your team enters the Hall of Fame.', 20, true, 931),
  -- Team Rainbow Rocket (Aether Paradise)
  (160022, 16, NULL, 1604, 6, 3, NULL, 'team-rainbow-rocket', 'Team Rainbow Rocket', 'After the credits, Team Rainbow Rocket takes over Aether Paradise. Fight through its castle with Lillie and Guzma, beating Faba and then the bosses Archie, Maxie, Cyrus, Lysandre and Ghetsis on the way to Giovanni.', 1, false, 505),
  -- Mahalo Trail (Mahalo Trail)
  (160024, 16, NULL, 1605, 6, 2, NULL, 'mahalo-trail', 'Mahalo Trail', 'After you become Champion, Lillie waits on the plank bridge of Mahalo Trail with Nebby, now Solgaleo in Ultra Sun or Lunala in Ultra Moon. Catch or defeat it.', 1, false, 933),
  -- Mount Lanakila Crater (Mount Lanakila)
  (160025, 16, NULL, 1605, 6, 2, NULL, 'mount-lanakila-crater', 'Mount Lanakila Crater', 'After you become Champion, the weakened Necrozma lies in the crater of Mount Lanakila. Share your Z-Ring''s light with it, then catch or defeat it.', 2, false, 531),
  -- Ruins of Conflict (Ruins of Conflict)
  (160026, 16, NULL, 1605, 6, 2, NULL, 'ruins-of-conflict', 'Ruins of Conflict', 'After you become Champion, Tapu Koko, Melemele''s guardian, waits in the Ruins of Conflict. Catch or defeat it.', 3, false, 927),
  -- Ruins of Life (Ruins of Life)
  (160027, 16, NULL, 1605, 6, 2, NULL, 'ruins-of-life', 'Ruins of Life', 'After you become Champion, Tapu Lele, Akala''s guardian, waits in the Ruins of Life. Catch or defeat it.', 4, false, 928),
  -- Ruins of Abundance (Ruins of Abundance)
  (160028, 16, NULL, 1605, 6, 2, NULL, 'ruins-of-abundance', 'Ruins of Abundance', 'After you become Champion, Tapu Bulu, Ula''ula''s guardian, waits in the Ruins of Abundance beyond Haina Desert. Catch or defeat it.', 5, false, 929),
  -- Ruins of Hope (Ruins of Hope)
  (160029, 16, NULL, 1605, 6, 2, NULL, 'ruins-of-hope', 'Ruins of Hope', 'After you become Champion, Tapu Fini, Poni''s guardian, waits in the Ruins of Hope. Catch or defeat it.', 6, false, 930),
  -- Resolution Cave (Resolution Cave)
  (160030, 16, NULL, 1605, 6, 2, NULL, 'resolution-cave', 'Resolution Cave', 'After you become Champion, Zygarde waits at the bottom of Resolution Cave on Poni Island. Catch or defeat it.', 7, false, 542),
  -- Poni Grove (Poni Grove)
  (160031, 16, NULL, 1605, 6, 2, NULL, 'poni-grove', 'Poni Grove', 'After you become Champion, help the Ultra Recon Squad and Hau with the Ultra Beasts loose in Poni Grove, Blacephalon in Ultra Sun or Stakataka in Ultra Moon. Catch or defeat them.', 8, false, 538),
  -- Ilima Bonus Trial (Verdant Cavern)
  (160032, 16, NULL, 1605, 3, 2, NULL, 'ilima-bonus-trial', 'Ilima Bonus Trial', 'After you become Champion, pick up Ilima''s Normalium Z in the Totem''s Den of Verdant Cavern and its Totem Pokémon attacks again. Beat it.', 9, false, 571);
