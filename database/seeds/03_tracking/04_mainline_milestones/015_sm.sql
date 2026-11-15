-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia island challenge, Elite Four and Professor Kukui pages,
-- and its Sun / Moon walkthrough and location pages for the story's order,
-- the beats the game forces and every beat's place.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon Sun / Moon shared story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Sun / Moon story, decision, trial and League milestones, each at the place
-- it happens (location_id), in Red / Blue's pattern. Main Story is the island
-- challenge in the order the walkthrough reaches each trial and grand trial,
-- with the beats the game forces between them as their own milestones (the
-- Iki Town festival, the first visit to Aether Paradise, Po Town, the raid
-- on Aether Paradise and Ultra Space). The Pokémon League closes Main Story
-- as one milestone: the four Elite Four milestones (150014 to 150017) and
-- the Hall of Fame milestone (150019) merged into it (150018);
-- database/game-data/id-changes.json moves saved Plays over. Post Game is the
-- Ultra Beast missions. Side Content is the three guardians left and
-- Necrozma. Dense optional walkthrough beats (the Battle Tree, Poké Pelago,
-- Festival Plaza) are intentionally excluded.
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
  -- Choose Starter (Iki Town)
  (150001, 15, NULL, 1501, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Pick Rowlet, Litten or Popplio from Kahuna Hala in Iki Town. Hau takes the one that is weak to yours and battles you right away.', 1, true, 519),
  -- Receive Pokédex (Iki Town)
  (150002, 15, NULL, 1501, 1, 1, NULL, 'receive-pokedex', 'Receive Pokédex', 'Professor Kukui gives you a Pokédex after your first battle. The next day, at his lab on the beach, a Rotom moves into it.', 2, true, 519),
  -- Iki Town Festival (Iki Town)
  (150027, 15, NULL, 1501, 1, 2, NULL, 'iki-town-festival', 'Iki Town Festival', 'Battle Hau at the festival in Iki Town, held for Tapu Koko. Hala takes the Sparkling Stone it left you and brings it back the next day as a Z-Ring.', 3, true, 519),
  -- Ilima Trial (Verdant Cavern)
  (150003, 15, NULL, 1501, 3, 2, NULL, 'ilima-trial', 'Ilima Trial', 'Find the three Pokémon hiding in the dens of Verdant Cavern, then beat the Totem Pokémon, Gumshoos in Sun or Raticate in Moon. Ilima gives you Normalium Z.', 4, true, 571),
  -- Grand Trial Hala (Iki Town)
  (150004, 15, NULL, 1501, 4, 2, NULL, 'grand-trial-hala', 'Grand Trial Hala', 'Beat Kahuna Hala and his Fighting types in Iki Town. He gives you Fightinium Z and a Ride Pager that calls a Tauros.', 5, true, 519),
  -- Lana Trial (Brooklet Hill)
  (150005, 15, NULL, 1501, 3, 2, NULL, 'lana-trial', 'Lana Trial', 'Follow the splashes down Brooklet Hill with Lana and beat the Totem Wishiwashi in the rain. Lana gives you Waterium Z and a Fishing Rod.', 6, true, 509),
  -- Kiawe Trial (Wela Volcano Park)
  (150006, 15, NULL, 1501, 3, 2, NULL, 'kiawe-trial', 'Kiawe Trial', 'Spot what changes in the Marowak dances at the top of Wela Volcano Park, then beat the Totem Salazzle. Kiawe gives you Firium Z and adds Charizard to your Ride Pager.', 7, true, 572),
  -- Mallow Trial (Lush Jungle)
  (150007, 15, NULL, 1501, 3, 2, NULL, 'mallow-trial', 'Mallow Trial', 'Gather Mallow''s ingredients in Lush Jungle. The smell of her cooking draws the Totem Lurantis. Beat it for Grassium Z.', 8, true, 524),
  -- Grand Trial Olivia (Ruins of Life)
  (150008, 15, NULL, 1501, 4, 2, NULL, 'grand-trial-olivia', 'Grand Trial Olivia', 'Beat Kahuna Olivia and her Rock types at the Ruins of Life. She gives you Rockium Z.', 9, true, 928),
  -- Aether Paradise Visit (Aether Paradise)
  (150028, 15, NULL, 1501, 6, 2, NULL, 'aether-paradise-visit', 'Aether Paradise Visit', 'Faba takes you and Hau from the Hano Grand Resort to Aether Paradise, where Lusamine shows you around. An Ultra Wormhole opens in front of her and a Nihilego comes through. Beat it. You can''t catch it.', 10, true, 505),
  -- Sophocles Trial (Hokulani Observatory)
  (150009, 15, NULL, 1501, 3, 2, NULL, 'sophocles-trial', 'Sophocles Trial', 'Answer Sophocles''s sound quiz at Hokulani Observatory as the power fails, then beat the Totem Vikavolt. He gives you Electrium Z, and Molayne gives you Steelium Z.', 11, true, 924),
  -- Acerola Trial (Thrifty Megamart (Abandoned Site))
  (150010, 15, NULL, 1501, 3, 2, NULL, 'acerola-trial', 'Acerola Trial', 'Photograph the ghosts in the abandoned Thrifty Megamart and follow the Pikachu into the back room. Beat the Totem Mimikyu for Ghostium Z.', 12, true, 566),
  -- Po Town (Po Town)
  (150029, 15, NULL, 1501, 1, 2, NULL, 'po-town', 'Po Town', 'Team Skull has taken a child''s Yungoos from the Aether House. Nanu lets you into Po Town. Fight through the Grunts in the rain and beat Guzma in the Shady House to get it back.', 13, true, 925),
  -- Grand Trial Nanu (Malie City)
  (150011, 15, NULL, 1501, 4, 2, NULL, 'grand-trial-nanu', 'Grand Trial Nanu', 'Team Skull took Lillie while you were in Po Town, and Gladion battles you at the Aether House in his anger. Nanu, who turns out to be the kahuna, then gives you your grand trial in Malie City. Beat his Dark types for Darkinium Z.', 14, true, 525),
  -- Aether Paradise (Aether Paradise)
  (150021, 15, NULL, 1501, 1, 2, NULL, 'aether-paradise', 'Aether Paradise', 'Storm Aether Paradise with Gladion and Hau to rescue Lillie. Beat Faba twice, then Guzma, then Lusamine in her house. She opens an Ultra Wormhole with Nebby''s power and goes through it with Guzma.', 15, true, 505),
  -- Vast Poni Canyon Trial (Vast Poni Canyon)
  (150012, 15, NULL, 1501, 3, 2, NULL, 'vast-poni-canyon-trial', 'Vast Poni Canyon Trial', 'Climb through Vast Poni Canyon to the trial site that has no captain. Beat the Pokémon that guard it and then the Totem Kommo-o for Dragonium Z.', 16, true, 570),
  -- Ultra Space (Ultra Space)
  (150022, 15, NULL, 1501, 6, 3, NULL, 'ultra-space', 'Ultra Space', 'Play the Sun Flute and the Moon Flute at the altar above Vast Poni Canyon. Nebby becomes Solgaleo in Sun or Lunala in Moon and takes you into Ultra Space, where Lusamine has merged with a Nihilego. Beat her, then catch the legendary Pokémon back at the altar.', 17, true, 926),
  -- Grand Trial Hapu (Exeggutor Island)
  (150013, 15, NULL, 1501, 4, 2, NULL, 'grand-trial-hapu', 'Grand Trial Hapu', 'Beat Kahuna Hapu and her Ground types on Exeggutor Island. She gives you Groundium Z, and the way up Mount Lanakila opens.', 18, true, 512),
  -- Pokémon League (Pokémon League)
  (150018, 15, NULL, 1501, 8, 3, NULL, 'pokemon-league', 'Pokémon League', 'Beat the Elite Four in any order at Alola''s new Pokémon League on Mount Lanakila, then Professor Kukui for the title of first Champion. Your team enters the Hall of Fame. After the festival, Lillie takes you to the Ruins of Conflict, where Tapu Koko battles you.', 19, true, 931),
  -- Ultra Beast Missions (Route 8)
  (150020, 15, NULL, 1504, 1, 1, NULL, 'ultra-beast-missions', 'Ultra Beast Missions', 'After the credits, meet Looker and Anabel at the motel on Route 8. They send you after the Ultra Beasts loose in Alola, one mission at a time. Catch or defeat each one.', 1, false, 558),
  -- Ruins of Life (Ruins of Life)
  (150023, 15, NULL, 1505, 6, 2, NULL, 'ruins-of-life', 'Ruins of Life', 'After you become Champion, Tapu Lele, Akala''s guardian, waits in the Ruins of Life. Catch or defeat it.', 1, false, 928),
  -- Ruins of Abundance (Ruins of Abundance)
  (150024, 15, NULL, 1505, 6, 2, NULL, 'ruins-of-abundance', 'Ruins of Abundance', 'After you become Champion, Tapu Bulu, Ula''ula''s guardian, waits in the Ruins of Abundance beyond Haina Desert. Catch or defeat it.', 2, false, 929),
  -- Ruins of Hope (Ruins of Hope)
  (150025, 15, NULL, 1505, 6, 2, NULL, 'ruins-of-hope', 'Ruins of Hope', 'After you become Champion, Tapu Fini, Poni''s guardian, waits in the Ruins of Hope. Catch or defeat it.', 3, false, 930),
  -- Ten Carat Hill (Ten Carat Hill)
  (150026, 15, NULL, 1505, 6, 2, NULL, 'ten-carat-hill', 'Ten Carat Hill', 'After the Ultra Beast missions, Necrozma waits in the Farthest Hollow of Ten Carat Hill. Catch or defeat it.', 4, false, 565);
