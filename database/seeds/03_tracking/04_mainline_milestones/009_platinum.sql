-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and Cynthia pages, and its Platinum
-- walkthrough (all 26 parts) and location pages for the story's order, the
-- beats the game forces and every beat's place.
-- Cross-check: the pret pokeplatinum trainer data.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and data-mined game data.
-- Scope: Pokémon Platinum story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Platinum story, decision, badge and League milestones, each at the place it
-- happens (location_id), in Red / Blue's pattern. Main Story follows the
-- order the walkthrough reaches each beat (Fantina third, Maylene fourth,
-- Crasher Wake fifth), with the beats the game forces between badges as
-- their own milestones (the Valley Windworks, Team Galactic's Eterna
-- building, Celestic Town, Lake Valor, Lake Verity, Team Galactic HQ and the
-- Distortion World, reached from the Spear Pillar). The Pokémon League closes
-- Main Story as one milestone: the four Elite Four milestones (90011 to
-- 90014) and the Hall of Fame milestone (90016) merged into it (90015);
-- database/game-data/id-changes.json moves saved Plays over. Post Game is
-- Stark Mountain. Side Content is the three lake Pokémon, Cresselia,
-- Snowpoint Temple, Dialga and Palkia back on the Spear Pillar and the three
-- roaming birds. Dense optional walkthrough beats (the Underground, Super
-- Contests, the Old Chateau, the Battle Frontier, the Battleground) are
-- intentionally excluded.
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
  -- Choose Starter (Route 201)
  (90001, 9, NULL, 901, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Professor Rowan catches you and Barry about to run into the tall grass on Route 201 with no Pokémon. Pick Turtwig, Chimchar or Piplup from his briefcase. Barry takes the one that beats yours and battles you on the spot.', 1, true, 289),
  -- Receive Pokédex (Professor Rowan's Laboratory)
  (90002, 9, NULL, 901, 1, 1, NULL, 'receive-pokedex', 'Receive Pokédex', 'Go to Professor Rowan''s lab in Sandgem Town. He gives you a Pokédex and asks you to fill it.', 2, true, 858),
  -- Coal Badge (Oreburgh Gym)
  (90003, 9, NULL, 901, 2, 2, NULL, 'coal-badge', 'Coal Badge', 'Fetch Roark from Oreburgh Mine, then beat him and his Rock types at Oreburgh Gym. The Coal Badge lets you use Rock Smash outside battle.', 3, true, 860),
  -- Valley Windworks (Valley Windworks)
  (90028, 9, NULL, 901, 1, 2, NULL, 'valley-windworks', 'Valley Windworks', 'Team Galactic has locked itself in the Valley Windworks with a little girl''s father. Win the Works Key from the Grunts in Floaroma Meadow, get in and beat Commander Mars.', 4, true, 335),
  -- Forest Badge (Eterna Gym)
  (90004, 9, NULL, 901, 2, 2, NULL, 'forest-badge', 'Forest Badge', 'Beat the trainers of Eterna Gym to turn the hands of its flower clock toward Gardenia, then beat her Grass types. The Forest Badge lets you use Cut outside battle and makes Pokémon up to level 30 obey you.', 5, true, 861),
  -- Team Galactic Eterna Building (Team Galactic Eterna Building)
  (90029, 9, NULL, 901, 1, 2, NULL, 'galactic-eterna-building', 'Team Galactic Eterna Building', 'Cut the trees in front of Team Galactic''s building in Eterna City and climb to the top floor. Beat Commander Jupiter to free the bike shop''s owner, who gives you a Bicycle at his shop.', 6, true, 862),
  -- Relic Badge (Hearthome Gym)
  (90005, 9, NULL, 901, 2, 2, NULL, 'relic-badge', 'Relic Badge', 'Find your way through the two dark rooms of Hearthome Gym with the flashlight, then beat Fantina and her Ghost types. The Relic Badge lets you use Defog outside battle.', 7, true, 866),
  -- Cobble Badge (Veilstone Gym)
  (90006, 9, NULL, 901, 2, 2, NULL, 'cobble-badge', 'Cobble Badge', 'Beat Maylene and her Fighting types at Veilstone Gym. The Cobble Badge lets you use Fly outside battle and makes Pokémon up to level 50 obey you.', 8, true, 864),
  -- Fen Badge (Pastoria Gym)
  (90007, 9, NULL, 901, 2, 2, NULL, 'fen-badge', 'Fen Badge', 'Raise and lower the water of Pastoria Gym with its buttons to reach Crasher Wake, then beat his Water types. The Fen Badge lets you use Surf outside battle.', 9, true, 865),
  -- Celestic Town (Celestic Town)
  (90017, 9, NULL, 901, 1, 2, NULL, 'celestic-town', 'Celestic Town', 'Bring the Old Charm to Cynthia''s grandmother in Celestic Town. Beat the Team Galactic Grunt at the ruins, then Cyrus himself inside. She gives you HM03 Surf.', 10, true, 258),
  -- Mine Badge (Canalave Gym)
  (90008, 9, NULL, 901, 2, 2, NULL, 'mine-badge', 'Mine Badge', 'Ride the lifts of Canalave Gym up to Byron and beat his Steel types. The Mine Badge lets you use Strength outside battle and makes Pokémon up to level 70 obey you.', 11, true, 867),
  -- Lake Valor (Lake Valor)
  (90030, 9, NULL, 901, 1, 2, NULL, 'lake-valor', 'Lake Valor', 'An explosion has drained Lake Valor. Fight through the Team Galactic Grunts on the dry lakebed and beat Commander Saturn in Valor Cavern. Azelf is already gone.', 12, true, 273),
  -- Lake Verity (Lake Verity)
  (90031, 9, NULL, 901, 1, 2, NULL, 'lake-verity', 'Lake Verity', 'Hurry to Lake Verity, where Professor Rowan and his assistant are holding off Team Galactic. Beat Commander Mars, who leaves with Mesprit all the same.', 13, true, 274),
  -- Icicle Badge (Snowpoint Gym)
  (90009, 9, NULL, 901, 2, 2, NULL, 'icicle-badge', 'Icicle Badge', 'Slide across the ice of Snowpoint Gym to smash the snowballs in your way, then beat Candice and her Ice types. The Icicle Badge lets you use Rock Climb outside battle.', 14, true, 868),
  -- Team Galactic HQ (Team Galactic HQ)
  (90018, 9, NULL, 901, 1, 2, NULL, 'galactic-hq', 'Team Galactic HQ', 'Looker lets you into Team Galactic''s headquarters in Veilstone City through the warehouse next door. Beat Cyrus, who hands you a Master Ball, then beat Commander Saturn and free Uxie, Mesprit and Azelf.', 15, true, 869),
  -- Distortion World (Distortion World)
  (90019, 9, NULL, 901, 6, 3, NULL, 'distortion-world', 'Distortion World', 'A shadow drags Cyrus off the Spear Pillar. Follow Cynthia through the portal into the Distortion World and cross its floating, turned-around floors. Beat Cyrus, then catch or defeat Giratina to close the rift.', 16, true, 874),
  -- Beacon Badge (Sunyshore Gym)
  (90010, 9, NULL, 901, 2, 2, NULL, 'beacon-badge', 'Beacon Badge', 'Turn the gear bridges of Sunyshore Gym to reach Volkner and beat his Electric types. The Beacon Badge lets you use Waterfall outside battle and makes every Pokémon obey you.', 17, true, 871),
  -- Pokémon League (Pokémon League)
  (90015, 9, NULL, 901, 8, 3, NULL, 'pokemon-league', 'Pokémon League', 'Beat the Elite Four and Champion Cynthia back to back at the Pokémon League. Your team enters the Hall of Fame.', 18, true, 284),
  -- Stark Mountain (Stark Mountain)
  (90020, 9, NULL, 903, 1, 2, NULL, 'stark-mountain', 'Stark Mountain', 'With the National Pokédex, take the ship from Snowpoint City to the Battle Zone. Beat Mars and Jupiter at the mouth of Stark Mountain, then cross it with Buck. Charon takes the Magma Stone and Looker arrests him. Once Buck has put the stone back, Heatran waits in that room.', 1, false, 326),
  -- Lake Guardians (Lake Valor)
  (90021, 9, NULL, 904, 6, 2, NULL, 'lake-guardians', 'Lake Guardians', 'After the Distortion World, the lake Pokémon go home. Uxie waits in Acuity Cavern and Azelf in Valor Cavern. Catch or defeat each one.', 1, false, 273),
  -- Roaming Mesprit (Lake Verity)
  (90032, 9, NULL, 904, 6, 2, NULL, 'roaming-mesprit', 'Roaming Mesprit', 'After the Distortion World, Mesprit goes home to Verity Cavern. It flies off when you meet it there and then roams Sinnoh. Track it down and catch or defeat it.', 2, false, 274),
  -- Roaming Cresselia (Fullmoon Island)
  (90022, 9, NULL, 904, 6, 2, NULL, 'roaming-cresselia', 'Roaming Cresselia', 'With the National Pokédex, visit Sailor Eldritch''s house in Canalave City, where his son can''t wake from a nightmare. Sail to Fullmoon Island for the Lunar Wing. Cresselia flies off when you meet it there and then roams Sinnoh.', 3, false, 873),
  -- Snowpoint Temple (Snowpoint Temple)
  (90023, 9, NULL, 904, 6, 2, NULL, 'snowpoint-temple', 'Snowpoint Temple', 'With the National Pokédex, Candice lets you into Snowpoint Temple. Bring Regirock, Regice and Registeel to the statue at the bottom and Regigigas wakes. Catch or defeat it.', 4, false, 322),
  -- Spear Pillar (Spear Pillar)
  (90024, 9, NULL, 904, 6, 2, NULL, 'spear-pillar', 'Spear Pillar', 'With the National Pokédex, find the Adamant Orb and the Lustrous Orb inside Mt. Coronet and carry them to the Spear Pillar. Dialga waits in the blue rift and Palkia in the pink one. Catch or defeat them.', 5, false, 870),
  -- Roaming Articuno (Eterna City)
  (90025, 9, NULL, 904, 6, 2, NULL, 'roaming-articuno', 'Roaming Articuno', 'With the National Pokédex, talk to Professor Oak at his house in Eterna City. Articuno then roams Sinnoh. Track it down and catch or defeat it.', 6, false, 260),
  -- Roaming Zapdos (Eterna City)
  (90026, 9, NULL, 904, 6, 2, NULL, 'roaming-zapdos', 'Roaming Zapdos', 'With the National Pokédex, talk to Professor Oak at his house in Eterna City. Zapdos then roams Sinnoh. Track it down and catch or defeat it.', 7, false, 260),
  -- Roaming Moltres (Eterna City)
  (90027, 9, NULL, 904, 6, 2, NULL, 'roaming-moltres', 'Roaming Moltres', 'With the National Pokédex, talk to Professor Oak at his house in Eterna City. Moltres then roams Sinnoh. Track it down and catch or defeat it.', 8, false, 260);
