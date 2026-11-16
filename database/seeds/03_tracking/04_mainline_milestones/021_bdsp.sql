-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Brilliant Diamond / Shining Pearl pages and its Diamond
-- / Pearl walkthrough, whose story the remakes follow beat for beat.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii.
-- Scope: Pokémon Brilliant Diamond / Shining Pearl shared story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Brilliant Diamond / Shining Pearl story, decision, badge and League
-- milestones, each at the place it happens (location_id), in Red / Blue's
-- pattern. They are Diamond / Pearl's beats and descriptions, with the old
-- HMs named as the TMs the remakes hand out and Ramanas Park added to Post
-- Game. The four Elite Four milestones (210011 to 210014) and the Hall of
-- Fame milestone (210016) merged into the Pokémon League (210015);
-- database/game-data/id-changes.json moves saved Plays over.
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
  -- Choose Starter (Lake Verity)
  (210001, 21, NULL, 2101, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Barry drags you to Lake Verity, where wild Starly attack you both. Pick Turtwig, Chimchar or Piplup from the briefcase Professor Rowan left in the grass.', 1, true, 274),
  -- Receive Pokédex (Professor Rowan's Laboratory)
  (210002, 21, NULL, 2101, 1, 1, NULL, 'receive-pokedex', 'Receive Pokédex', 'Go to Professor Rowan''s lab in Sandgem Town to explain yourself. He lets you keep the Pokémon and gives you a Pokédex.', 2, true, 858),
  -- Coal Badge (Oreburgh Gym)
  (210003, 21, NULL, 2101, 2, 2, NULL, 'coal-badge', 'Coal Badge', 'Fetch Roark from Oreburgh Mine, then beat him and his Rock types at Oreburgh Gym. The Coal Badge lets you use Rock Smash outside battle.', 3, true, 860),
  -- Valley Windworks (Valley Windworks)
  (210026, 21, NULL, 2101, 1, 2, NULL, 'valley-windworks', 'Valley Windworks', 'Team Galactic has locked itself in the Valley Windworks with a little girl''s father. Win the Works Key from the Grunts in Floaroma Meadow, get in and beat Commander Mars.', 4, true, 335),
  -- Forest Badge (Eterna Gym)
  (210004, 21, NULL, 2101, 2, 2, NULL, 'forest-badge', 'Forest Badge', 'Beat Gardenia and her Grass types at Eterna Gym. The Forest Badge lets you use Cut outside battle and makes Pokémon up to level 30 obey you.', 5, true, 861),
  -- Team Galactic Eterna Building (Team Galactic Eterna Building)
  (210027, 21, NULL, 2101, 1, 2, NULL, 'galactic-eterna-building', 'Team Galactic Eterna Building', 'Cut the trees in front of Team Galactic''s building in Eterna City and climb to the top floor. Beat Commander Jupiter to free the bike shop''s owner, who gives you a Bicycle at his shop.', 6, true, 862),
  -- Cobble Badge (Veilstone Gym)
  (210005, 21, NULL, 2101, 2, 2, NULL, 'cobble-badge', 'Cobble Badge', 'Beat Maylene and her Fighting types at Veilstone Gym. The Cobble Badge lets you use Fly outside battle.', 7, true, 864),
  -- Fen Badge (Pastoria Gym)
  (210006, 21, NULL, 2101, 2, 2, NULL, 'fen-badge', 'Fen Badge', 'Raise and lower the water of Pastoria Gym with its buttons to reach Crasher Wake, then beat his Water types. The Fen Badge lets you use Defog outside battle and makes Pokémon up to level 50 obey you.', 8, true, 865),
  -- Celestic Town (Celestic Town)
  (210028, 21, NULL, 2101, 1, 2, NULL, 'celestic-town', 'Celestic Town', 'Bring the Old Charm to Cynthia''s grandmother in Celestic Town. Beat the Team Galactic Grunt who threatens to blow up the town, and she gives you TM95 Surf. Inside the ruins you meet Cyrus.', 9, true, 258),
  -- Relic Badge (Hearthome Gym)
  (210007, 21, NULL, 2101, 2, 2, NULL, 'relic-badge', 'Relic Badge', 'Pick the doors with the right answers to the quiz of Hearthome Gym, then beat Fantina and her Ghost types. The Relic Badge lets you use Surf outside battle.', 10, true, 866),
  -- Mine Badge (Canalave Gym)
  (210008, 21, NULL, 2101, 2, 2, NULL, 'mine-badge', 'Mine Badge', 'Ride the lifts of Canalave Gym up to Byron and beat his Steel types. The Mine Badge lets you use Strength outside battle and makes Pokémon up to level 70 obey you.', 11, true, 867),
  -- Lake Valor (Lake Valor)
  (210029, 21, NULL, 2101, 1, 2, NULL, 'lake-valor', 'Lake Valor', 'An explosion has drained Lake Valor. Fight through the Team Galactic Grunts on the dry lakebed and beat Commander Saturn in Valor Cavern. Azelf is already gone.', 12, true, 273),
  -- Lake Verity (Lake Verity)
  (210030, 21, NULL, 2101, 1, 2, NULL, 'lake-verity', 'Lake Verity', 'Hurry to Lake Verity, where Professor Rowan and his assistant are holding off Team Galactic. Beat Commander Mars, who leaves with Mesprit all the same.', 13, true, 274),
  -- Icicle Badge (Snowpoint Gym)
  (210009, 21, NULL, 2101, 2, 2, NULL, 'icicle-badge', 'Icicle Badge', 'Slide across the ice of Snowpoint Gym to smash the snowballs in your way, then beat Candice and her Ice types. The Icicle Badge lets you use Rock Climb outside battle.', 14, true, 868),
  -- Team Galactic HQ (Team Galactic HQ)
  (210018, 21, NULL, 2101, 1, 2, NULL, 'galactic-hq', 'Team Galactic HQ', 'Get into Team Galactic''s headquarters in Veilstone City through the warehouse next door. Beat Cyrus, who hands you a Master Ball, then beat Commander Saturn and free Uxie, Mesprit and Azelf.', 15, true, 869),
  -- Spear Pillar (Spear Pillar)
  (210019, 21, NULL, 2101, 6, 3, NULL, 'spear-pillar', 'Spear Pillar', 'Climb Mt. Coronet to the Spear Pillar. Beat Mars and Jupiter with Barry at your side, then Cyrus. Dialga in Brilliant Diamond or Palkia in Shining Pearl is left on the pillar. Catch it or defeat it.', 16, true, 870),
  -- Beacon Badge (Sunyshore Gym)
  (210010, 21, NULL, 2101, 2, 2, NULL, 'beacon-badge', 'Beacon Badge', 'Turn the gear bridges of Sunyshore Gym to reach Volkner and beat his Electric types. The Beacon Badge lets you use Waterfall outside battle and makes every Pokémon obey you.', 17, true, 871),
  -- Pokémon League (Pokémon League)
  (210015, 21, NULL, 2101, 8, 3, NULL, 'pokemon-league', 'Pokémon League', 'Beat the Elite Four and Champion Cynthia back to back at the Pokémon League. Your team enters the Hall of Fame.', 18, true, 284),
  -- Fight Area (Fight Area)
  (210020, 21, NULL, 2103, 1, 2, NULL, 'fight-area', 'Fight Area', 'Once you have seen every Pokémon in the Sinnoh Pokédex, Professor Rowan upgrades it to the National Pokédex. Take the ship from Snowpoint City to the Fight Area, where Barry is waiting and Buck talks of a treasure in the volcano.', 1, false, 872),
  -- Stark Mountain (Stark Mountain)
  (210024, 21, NULL, 2103, 6, 2, NULL, 'stark-mountain', 'Stark Mountain', 'Team up with Buck to cross Stark Mountain. He takes the Magma Stone from its deepest room. Talk to him and his grandfather in the Survival Area and he puts it back. Heatran then waits in that room. Catch or defeat it.', 2, false, 326),
  -- Ramanas Park (Ramanas Park)
  (210017, 21, NULL, 2103, 1, 1, NULL, 'ramanas-park', 'Ramanas Park', 'After the Hall of Fame, Ramanas Park opens past Route 221. Trade the Mysterious Shards you dig up in the Grand Underground for slates, and set each slate in its room to call a legendary Pokémon. Catch or defeat it.', 3, false, 943),
  -- Lake Guardians (Lake Valor)
  (210021, 21, NULL, 2104, 6, 2, NULL, 'lake-guardians', 'Lake Guardians', 'After the Spear Pillar, the lake Pokémon go home. Uxie waits in Acuity Cavern and Azelf in Valor Cavern. Catch or defeat each one.', 1, false, 273),
  -- Roaming Mesprit (Lake Verity)
  (210031, 21, NULL, 2104, 6, 2, NULL, 'roaming-mesprit', 'Roaming Mesprit', 'After the Spear Pillar, Mesprit goes home to Verity Cavern. It flies off when you meet it there and then roams Sinnoh. Track it down and catch or defeat it.', 2, false, 274),
  -- Turnback Cave (Turnback Cave)
  (210022, 21, NULL, 2104, 6, 2, NULL, 'turnback-cave', 'Turnback Cave', 'After the Hall of Fame, the Spring Path on Route 214 opens the way to Sendoff Spring. Find three pillars inside Turnback Cave before you have passed thirty rooms, and Giratina waits in the last one. Catch or defeat it.', 3, false, 332),
  -- Roaming Cresselia (Fullmoon Island)
  (210023, 21, NULL, 2104, 6, 2, NULL, 'roaming-cresselia', 'Roaming Cresselia', 'With the National Pokédex, visit Sailor Eldritch''s house in Canalave City, where his son can''t wake from a nightmare. Sail to Fullmoon Island for the Lunar Wing. Cresselia flies off when you meet it there and then roams Sinnoh.', 4, false, 873),
  -- Snowpoint Temple (Snowpoint Temple)
  (210025, 21, NULL, 2104, 6, 2, NULL, 'snowpoint-temple', 'Snowpoint Temple', 'With the National Pokédex, Candice lets you into Snowpoint Temple. Bring Regirock, Regice and Registeel from Ramanas Park to the statue at the bottom and Regigigas wakes. Catch or defeat it.', 5, false, 322);
