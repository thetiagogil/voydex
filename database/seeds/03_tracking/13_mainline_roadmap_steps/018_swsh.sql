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
  -- 9: Rolling Fields
  (18, 9, 626, NULL, 'The open grassland just past the station, the south end of the Wild Area. Strong Pokémon roam outside the grass, but you can catch only up to level 20 for now. Raid dens glow red.'),
  -- 10: Dappled Grove
  (18, 10, 584, NULL, 'A side trip west of Rolling Fields into a wood along the Wild Area''s west wall. Many items lie hidden at the foot of its trees.'),
  -- 11: Watchtower Ruins
  (18, 11, 655, NULL, 'A bluff north of Dappled Grove, over the northwest part of Lake Axewell.'),
  -- 12: Watchtower Lair
  (18, 12, 654, NULL, 'A special den in the Watchtower Ruins. Only an event Dynamax Crystal starts a raid here.'),
  -- 13: West Lake Axewell
  (18, 13, 657, NULL, 'East of the Watchtower Ruins, around the west half of Lake Axewell and its bridge.'),
  -- 14: Axew's Eye
  (18, 14, 573, NULL, 'A small island in the middle of Lake Axewell, reached once your bike can ride on water.'),
  -- 15: South Lake Miloch
  (18, 15, 641, NULL, 'Back through Rolling Fields to the lake on the east side of the Wild Area.'),
  -- 16: Giant's Seat
  (18, 16, 599, NULL, 'Land on the east shore of Lake Miloch, with a tall spire of rock at its south end.'),
  -- 17: North Lake Miloch
  (18, 17, 619, NULL, 'The north arm of Lake Miloch. The bridge at its north end opens once you have three badges.'),
  -- 18: East Lake Axewell
  (18, 18, 587, NULL, 'Around the south gate of Motostoke, at the north edge of the south Wild Area.'),
  -- 19: Motostoke
  (18, 19, 615, NULL, 'A city of brick and steam. Sign up for the Gym Challenge at the Stadium, where you meet Chairman Rose, Bede and Marnie. Team Yell fills the lobby of the Budew Drop Inn. After the opening ceremony, Hop battles you at the west exit.'),
  -- 20: Route 3
  (18, 20, 630, NULL, 'West of Motostoke, to Galar Mine.'),
  -- 21: Galar Mine
  (18, 21, 593, NULL, 'A mine of glittering rock. Bede, the chairman''s own challenger, battles you inside.'),
  -- 22: Route 4
  (18, 22, 631, NULL, 'Farm fields on the way to Turffield.'),
  -- 23: Turffield
  (18, 23, 651, NULL, 'A farming town under a great hill figure, where Sonia is taking notes. Milo''s Stadium uses Grass types.'),
  -- 24: Grass Badge (milestone)
  (18, 24, NULL, 180003, NULL),
  -- 25: Route 5
  (18, 25, 632, NULL, 'East to Hulbury. Stop Team Yell bothering a man by the Pokémon Nursery and he gives you a Rotom Bike. Hop battles you on the bridge. The breeder inside gives you a Toxel.'),
  -- 26: Hulbury
  (18, 26, 605, NULL, 'A harbour town. Nessa is at the lighthouse. Her Stadium uses Water types. After you win, Chairman Rose asks you to dinner at the seafood restaurant.'),
  -- 27: Water Badge (milestone)
  (18, 27, NULL, 180004, NULL),
  -- 28: Galar Mine No. 2
  (18, 28, 594, NULL, 'A flooded mine on the way back to Motostoke. Bede battles you again, and Team Yell blocks the far end.'),
  -- 29: Motostoke Outskirts
  (18, 29, 616, NULL, 'A short road back into Motostoke.'),
  -- 30: Motostoke
  (18, 30, 615, NULL, 'Kabu''s Stadium uses Fire types. Marnie battles you at the Budew Drop Inn before you face him.'),
  -- 31: Fire Badge (milestone)
  (18, 31, NULL, 180005, NULL),
  -- 32: Motostoke Riverbank
  (18, 32, 617, NULL, 'The Gym Leaders see you off into the north of the Wild Area. This bank east of Motostoke links its two halves.'),
  -- 33: Bridge Field
  (18, 33, 578, NULL, 'North of the Riverbank. A Pokémon Nursery stands here, and the Digging Duo dig up items for Watts once a day.'),
  -- 34: Stony Wilderness
  (18, 34, 645, NULL, 'Rocky ground north of Bridge Field.'),
  -- 35: Giant's Mirror
  (18, 35, 598, NULL, 'A side trip to the east part of the north Wild Area.'),
  -- 36: Dusty Bowl
  (18, 36, 585, NULL, 'A sandy hollow in the middle of the north Wild Area, with a stone arch.'),
  -- 37: Giant's Cap
  (18, 37, 596, NULL, 'The west of the north Wild Area. A Watt Trader stands by a tree west of the lake.'),
  -- 38: Lake of Outrage
  (18, 38, 609, NULL, 'A lake off the southwest of Giant''s Cap, crossed once your bike can ride on water. Then back through Giant''s Cap.'),
  -- 39: Hammerlocke Hills
  (18, 39, 602, NULL, 'North of Giant''s Cap, Dusty Bowl and Giant''s Mirror. Bede gloats about beating Hop at the stairs up to Hammerlocke.'),
  -- 40: Hammerlocke
  (18, 40, 601, NULL, 'A castle city. Chairman Rose shows you his energy plant, and Sonia the tapestries in the vault. The Stadium here takes only challengers with seven badges.'),
  -- 41: Route 6
  (18, 41, 633, NULL, 'A canyon road west to Stow-on-Side. Team Yell blocks it until you beat them. Cara Liss revives fossils here.'),
  -- 42: Stow-on-Side
  (18, 42, 646, NULL, 'A market town under an old mural. Hop battles you at the Stadium stairs. The Stadium uses Fighting types in Sword and Ghost types in Shield. After you win, Bede is caught smashing the mural and battles you.'),
  -- 43: Fighting Badge (milestone)
  (18, 43, NULL, 183106, NULL),
  -- 44: Ghost Badge (milestone)
  (18, 44, NULL, 183206, NULL),
  -- 45: Glimwood Tangle
  (18, 45, 600, NULL, 'A dark wood of glowing mushrooms, on the way to Ballonlea.'),
  -- 46: Ballonlea
  (18, 46, 936, NULL, 'A town lit by mushrooms. Opal''s Stadium uses Fairy types.'),
  -- 47: Fairy Badge (milestone)
  (18, 47, NULL, 180007, NULL),
  -- 48: Hammerlocke
  (18, 48, 601, NULL, 'Back through the city to Route 7. Opal takes Bede away to train him as her heir.'),
  -- 49: Route 7
  (18, 49, 634, NULL, 'East of Hammerlocke. Hop, out of sorts since he lost to Bede, battles you on the bridge.'),
  -- 50: Route 8
  (18, 50, 635, NULL, 'Ruins and ladders, then snow, up to Circhester.'),
  -- 51: Circhester
  (18, 51, 581, NULL, 'A snowy spa city with the Hero''s Bath. The Stadium uses Rock types in Sword and Ice types in Shield.'),
  -- 52: Rock Badge (milestone)
  (18, 52, NULL, 183108, NULL),
  -- 53: Ice Badge (milestone)
  (18, 53, NULL, 183208, NULL),
  -- 54: Circhester
  (18, 54, 581, NULL, 'Hop battles you in town with a changed team before you leave for Route 9.'),
  -- 55: Route 9
  (18, 55, 636, NULL, 'A frozen bay. Your bike is fitted to ride on water here. Team Yell has shut Spikemuth''s gate, and Marnie battles you before she shows you the way in.'),
  -- 56: Spikemuth
  (18, 56, 642, NULL, 'A run-down town under one roof, with no power spot. Team Yell fills the street up to the stage where Piers waits.'),
  -- 57: Dark Badge (milestone)
  (18, 57, NULL, 180009, NULL),
  -- 58: Hammerlocke
  (18, 58, 601, NULL, 'A tunnel from Route 9 brings you back. With seven badges, Raihan''s Stadium is open.'),
  -- 59: Dragon Badge (milestone)
  (18, 59, NULL, 180010, NULL),
  -- 60: Route 10
  (18, 60, 628, NULL, 'A snowy road north to Wyndon.'),
  -- 61: Wyndon
  (18, 61, 659, NULL, 'Galar''s capital. The Champion Cup is held at Wyndon Stadium.'),
  -- 62: Champion Cup (milestone)
  (18, 62, NULL, 180015, NULL),
  -- 63: Slumbering Weald
  (18, 63, 638, NULL, 'Take a Flying Taxi back to Postwick. The Darkest Day has begun. You and Hop find a rusted sword and a rusted shield at the altar deep in the wood.'),
  -- 64: Hammerlocke
  (18, 64, 601, NULL, 'Take the lift in Hammerlocke Stadium down to the Energy Plant.'),
  -- 65: Tower summit
  (18, 65, 648, NULL, 'Beat Chairman Rose in the Energy Plant, then ride up to the tower summit, where Eternatus has woken.'),
  -- 66: Defeat Eternatus (milestone)
  (18, 66, NULL, 180011, NULL),
  -- 67: Champion Leon (milestone)
  (18, 67, NULL, 180012, NULL),
  -- 68: Post-Game Episode (milestone)
  (18, 68, NULL, 180014, NULL),
  -- 69: Battle Tower
  (18, 69, 576, NULL, 'Back in Wyndon, Leon has made Rose Tower into the Battle Tower. A staff member inside gives you a Type: Null with all its Memories.');
