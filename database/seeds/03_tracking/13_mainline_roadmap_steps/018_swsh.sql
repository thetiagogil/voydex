-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Sword / Shield walkthrough (the order the story
-- passes each place and reaches each beat, and what happens there), with its
-- location pages for the places.
-- Scope: Pokémon Sword / Shield Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Sword / Shield's Story roadmap, step by step, in Red / Blue's pattern: a
-- place the walkthrough passes (location_id) or a milestone (milestone_id),
-- which sits at its own place. Places repeat where the walkthrough comes
-- back. The version-only Gyms are both steps, and a Play sees its own.
-- A place step carries a note on what happens there. It shows in the place's
-- detail only, and never lists the Pokémon found there, which the detail
-- already shows.
-- ============================================================================
INSERT INTO tracking.mainline_roadmap_steps (
  version_group_id,
  sort_order,
  location_id,
  milestone_id,
  note
) VALUES
  -- 1: Postwick
  (18, 1, 622, NULL, 'Your home village. Your neighbour Hop is waiting for his brother Leon, the Champion, who is bringing you both a Pokémon. After you become Champion, a Charmander waits in Leon''s room.'),
  -- 2: Choose Starter (milestone)
  (18, 2, NULL, 180001, NULL),
  -- 3: Slumbering Weald
  (18, 3, 638, NULL, 'A Wooloo breaks through the gate into the forbidden wood, and you and Hop go after it. A Pokémon your moves pass through appears in the fog, and you both pass out.'),
  -- 4: Route 1
  (18, 4, 627, NULL, 'The short road to Wedgehurst.'),
  -- 5: Wedgehurst
  (18, 5, 656, NULL, 'A market town with the Pokémon Research Lab and a station. Leon sends you to Sonia at the lab.'),
  -- 6: Receive Pokédex (milestone)
  (18, 6, NULL, 180002, NULL),
  -- 7: Route 2
  (18, 7, 629, NULL, 'North to Professor Magnolia''s house by the lake. Hop battles you in front of it to earn Leon''s endorsement. That night two wishing stars fall beside you, and the professor makes them into Dynamax Bands.'),
  -- 8: Meetup Spot
  (18, 8, 614, NULL, 'The train from Wedgehurst stops short, with Wooloo on the tracks, so you get off at the edge of the Wild Area. Motostoke is across it to the north. Children in the station give you a Pikachu or an Eevee if your Switch has Let''s Go save data.'),
  -- 9: Motostoke
  (18, 9, 615, NULL, 'A city of brick and steam. Sign up for the Gym Challenge at the Stadium, where you meet Chairman Rose, Bede and Marnie. Team Yell fills the lobby of the Budew Drop Inn. After the opening ceremony, Hop battles you at the west exit.'),
  -- 10: Route 3
  (18, 10, 630, NULL, 'West of Motostoke, to Galar Mine.'),
  -- 11: Galar Mine
  (18, 11, 593, NULL, 'A mine of glittering rock. Bede, the chairman''s own challenger, battles you inside.'),
  -- 12: Route 4
  (18, 12, 631, NULL, 'Farm fields on the way to Turffield.'),
  -- 13: Turffield
  (18, 13, 651, NULL, 'A farming town under a great hill figure, where Sonia is taking notes. Milo''s Stadium uses Grass types.'),
  -- 14: Grass Badge (milestone)
  (18, 14, NULL, 180003, NULL),
  -- 15: Route 5
  (18, 15, 632, NULL, 'East to Hulbury. Stop Team Yell bothering a man by the Pokémon Nursery and he gives you a Rotom Bike. Hop battles you on the bridge. The breeder inside gives you a Toxel.'),
  -- 16: Hulbury
  (18, 16, 605, NULL, 'A harbour town. Nessa is at the lighthouse. Her Stadium uses Water types. After you win, Chairman Rose asks you to dinner at the seafood restaurant.'),
  -- 17: Water Badge (milestone)
  (18, 17, NULL, 180004, NULL),
  -- 18: Galar Mine No. 2
  (18, 18, 594, NULL, 'A flooded mine on the way back to Motostoke. Bede battles you again, and Team Yell blocks the far end.'),
  -- 19: Motostoke Outskirts
  (18, 19, 616, NULL, 'A short road back into Motostoke.'),
  -- 20: Motostoke
  (18, 20, 615, NULL, 'Kabu''s Stadium uses Fire types. Marnie battles you at the Budew Drop Inn before you face him.'),
  -- 21: Fire Badge (milestone)
  (18, 21, NULL, 180005, NULL),
  -- 22: Hammerlocke Hills
  (18, 22, 602, NULL, 'The Gym Leaders see you off into the north of the Wild Area, toward Hammerlocke.'),
  -- 23: Hammerlocke
  (18, 23, 601, NULL, 'A castle city. Chairman Rose shows you his energy plant, and Sonia the tapestries in the vault. The Stadium here takes only challengers with seven badges.'),
  -- 24: Route 6
  (18, 24, 633, NULL, 'A canyon road west to Stow-on-Side. Team Yell blocks it until you beat them. Cara Liss revives fossils here.'),
  -- 25: Stow-on-Side
  (18, 25, 646, NULL, 'A market town under an old mural. Hop battles you at the Stadium stairs. The Stadium uses Fighting types in Sword and Ghost types in Shield. After you win, Bede is caught smashing the mural and battles you.'),
  -- 26: Fighting Badge (milestone)
  (18, 26, NULL, 183106, NULL),
  -- 27: Ghost Badge (milestone)
  (18, 27, NULL, 183206, NULL),
  -- 28: Glimwood Tangle
  (18, 28, 600, NULL, 'A dark wood of glowing mushrooms, on the way to Ballonlea.'),
  -- 29: Ballonlea
  (18, 29, 936, NULL, 'A town lit by mushrooms. Opal''s Stadium uses Fairy types.'),
  -- 30: Fairy Badge (milestone)
  (18, 30, NULL, 180007, NULL),
  -- 31: Hammerlocke
  (18, 31, 601, NULL, 'Back through the city to Route 7. Opal takes Bede away to train him as her heir.'),
  -- 32: Route 7
  (18, 32, 634, NULL, 'East of Hammerlocke. Hop, out of sorts since he lost to Bede, battles you on the bridge.'),
  -- 33: Route 8
  (18, 33, 635, NULL, 'Ruins and ladders, then snow, up to Circhester.'),
  -- 34: Circhester
  (18, 34, 581, NULL, 'A snowy spa city with the Hero''s Bath. The Stadium uses Rock types in Sword and Ice types in Shield.'),
  -- 35: Rock Badge (milestone)
  (18, 35, NULL, 183108, NULL),
  -- 36: Ice Badge (milestone)
  (18, 36, NULL, 183208, NULL),
  -- 37: Circhester
  (18, 37, 581, NULL, 'Hop battles you in town with a changed team before you leave for Route 9.'),
  -- 38: Route 9
  (18, 38, 636, NULL, 'A frozen bay. Your bike is fitted to ride on water here. Team Yell has shut Spikemuth''s gate, and Marnie battles you before she shows you the way in.'),
  -- 39: Spikemuth
  (18, 39, 642, NULL, 'A run-down town under one roof, with no power spot. Team Yell fills the street up to the stage where Piers waits.'),
  -- 40: Dark Badge (milestone)
  (18, 40, NULL, 180009, NULL),
  -- 41: Hammerlocke
  (18, 41, 601, NULL, 'A tunnel from Route 9 brings you back. With seven badges, Raihan''s Stadium is open.'),
  -- 42: Dragon Badge (milestone)
  (18, 42, NULL, 180010, NULL),
  -- 43: Route 10
  (18, 43, 628, NULL, 'A snowy road north to Wyndon.'),
  -- 44: Wyndon
  (18, 44, 659, NULL, 'Galar''s capital. The Champion Cup is held at Wyndon Stadium. After the credits, a League Staff member in the Battle Tower gives you a Type: Null.'),
  -- 45: Champion Cup (milestone)
  (18, 45, NULL, 180015, NULL),
  -- 46: Slumbering Weald
  (18, 46, 638, NULL, 'Take a Flying Taxi back to Postwick. The Darkest Day has begun. You and Hop find a rusted sword and a rusted shield at the altar deep in the wood.'),
  -- 47: Hammerlocke
  (18, 47, 601, NULL, 'Take the lift in Hammerlocke Stadium down to the Energy Plant.'),
  -- 48: Defeat Eternatus (milestone)
  (18, 48, NULL, 180011, NULL),
  -- 49: Champion Leon (milestone)
  (18, 49, NULL, 180012, NULL),
  -- 50: Post-Game Episode (milestone)
  (18, 50, NULL, 180014, NULL);
