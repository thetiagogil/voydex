-- ============================================================================
-- Source
-- ============================================================================
-- Primary: the pret pokefirered disassembly of the game: its trainer parties,
-- set moves and level-up learnsets.
-- A Pokémon the game gives no set moves, and every legendary encounter, gets
-- the game's own default: the last four moves it learns by level up to its
-- level, worked out from the same learnsets as the game does.
-- Rocket Warehouse Admins: the pret pokefirered decompilation's trainer parties and
-- set moves, cross-checked with Bulbapedia's Rocket Warehouse page. The game calls
-- both Admin and names neither, so each is told apart by its lead Pokémon.
-- Move order follows the game.
-- Scope: FireRed / LeafGreen Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each FireRed / LeafGreen opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Brock: Geodude Lv. 12: Tackle, Defense Curl
    (60003, 6001, NULL, NULL, NULL, NULL, 1, ARRAY[33, 111]),
    -- Brock: Onix Lv. 14: Tackle, Bind, Rock Tomb
    (60003, 6001, NULL, NULL, NULL, NULL, 2, ARRAY[33, 20, 317]),
    -- Misty: Staryu Lv. 18: Tackle, Harden, Recover, Water Pulse
    (60005, 6002, NULL, NULL, NULL, NULL, 1, ARRAY[33, 106, 105, 352]),
    -- Misty: Starmie Lv. 21: Swift, Recover, Rapid Spin, Water Pulse
    (60005, 6002, NULL, NULL, NULL, NULL, 2, ARRAY[129, 105, 229, 352]),
    -- Lt. Surge: Voltorb Lv. 21: Sonic Boom, Tackle, Screech, Shock Wave
    (60006, 6003, NULL, NULL, NULL, NULL, 1, ARRAY[49, 33, 103, 351]),
    -- Lt. Surge: Pikachu Lv. 18: Quick Attack, Thunder Wave, Double Team, Shock Wave
    (60006, 6003, NULL, NULL, NULL, NULL, 2, ARRAY[98, 86, 104, 351]),
    -- Lt. Surge: Raichu Lv. 24: Quick Attack, Thunder Wave, Double Team, Shock Wave
    (60006, 6003, NULL, NULL, NULL, NULL, 3, ARRAY[98, 86, 104, 351]),
    -- Erika: Victreebel Lv. 29: Stun Spore, Acid, Poison Powder, Giga Drain
    (60007, 6004, NULL, NULL, NULL, NULL, 1, ARRAY[78, 51, 77, 202]),
    -- Erika: Tangela Lv. 24: Poison Powder, Constrict, Ingrain, Giga Drain
    (60007, 6004, NULL, NULL, NULL, NULL, 2, ARRAY[77, 132, 275, 202]),
    -- Erika: Vileplume Lv. 29: Sleep Powder, Acid, Stun Spore, Giga Drain
    (60007, 6004, NULL, NULL, NULL, NULL, 3, ARRAY[79, 51, 78, 202]),
    -- Koga: Koffing Lv. 37: Self-Destruct, Sludge, Smokescreen, Toxic
    (60008, 6005, NULL, NULL, NULL, NULL, 1, ARRAY[120, 124, 108, 92]),
    -- Koga: Muk Lv. 39: Minimize, Sludge, Acid Armor, Toxic
    (60008, 6005, NULL, NULL, NULL, NULL, 2, ARRAY[107, 124, 151, 92]),
    -- Koga: Koffing Lv. 37: Self-Destruct, Sludge, Smokescreen, Toxic
    (60008, 6005, NULL, NULL, NULL, NULL, 3, ARRAY[120, 124, 108, 92]),
    -- Koga: Weezing Lv. 43: Tackle, Sludge, Smokescreen, Toxic
    (60008, 6005, NULL, NULL, NULL, NULL, 4, ARRAY[33, 124, 108, 92]),
    -- Sabrina: Kadabra Lv. 38: Psybeam, Reflect, Future Sight, Calm Mind
    (60009, 6006, NULL, NULL, NULL, NULL, 1, ARRAY[60, 115, 248, 347]),
    -- Sabrina: Mr. Mime Lv. 37: Barrier, Psybeam, Baton Pass, Calm Mind
    (60009, 6006, NULL, NULL, NULL, NULL, 2, ARRAY[112, 60, 226, 347]),
    -- Sabrina: Venomoth Lv. 38: Psybeam, Gust, Leech Life, Supersonic
    (60009, 6006, NULL, NULL, NULL, NULL, 3, ARRAY[60, 16, 141, 48]),
    -- Sabrina: Alakazam Lv. 43: Psychic, Recover, Future Sight, Calm Mind
    (60009, 6006, NULL, NULL, NULL, NULL, 4, ARRAY[94, 105, 248, 347]),
    -- Blaine: Growlithe Lv. 42: Bite, Roar, Take Down, Fire Blast
    (60011, 6007, NULL, NULL, NULL, NULL, 1, ARRAY[44, 46, 36, 126]),
    -- Blaine: Ponyta Lv. 40: Stomp, Bounce, Fire Spin, Fire Blast
    (60011, 6007, NULL, NULL, NULL, NULL, 2, ARRAY[23, 340, 83, 126]),
    -- Blaine: Rapidash Lv. 42: Stomp, Bounce, Fire Spin, Fire Blast
    (60011, 6007, NULL, NULL, NULL, NULL, 3, ARRAY[23, 340, 83, 126]),
    -- Blaine: Arcanine Lv. 47: Bite, Roar, Take Down, Fire Blast
    (60011, 6007, NULL, NULL, NULL, NULL, 4, ARRAY[44, 46, 36, 126]),
    -- Giovanni: Rhyhorn Lv. 45: Take Down, Rock Blast, Scary Face, Earthquake
    (60012, 6008, NULL, NULL, NULL, NULL, 1, ARRAY[36, 350, 184, 89]),
    -- Giovanni: Dugtrio Lv. 42: Slash, Sand Tomb, Mud-Slap, Earthquake
    (60012, 6008, NULL, NULL, NULL, NULL, 2, ARRAY[163, 328, 189, 89]),
    -- Giovanni: Nidoqueen Lv. 44: Body Slam, Double Kick, Poison Sting, Earthquake
    (60012, 6008, NULL, NULL, NULL, NULL, 3, ARRAY[34, 24, 40, 89]),
    -- Giovanni: Nidoking Lv. 45: Thrash, Double Kick, Poison Sting, Earthquake
    (60012, 6008, NULL, NULL, NULL, NULL, 4, ARRAY[37, 24, 40, 89]),
    -- Giovanni: Rhyhorn Lv. 50: Take Down, Rock Blast, Scary Face, Earthquake
    (60012, 6008, NULL, NULL, NULL, NULL, 5, ARRAY[36, 350, 184, 89]),
    -- Lorelei: Dewgong Lv. 52: Ice Beam, Surf, Hail, Safeguard
    (60013, 6009, NULL, NULL, NULL, NULL, 1, ARRAY[58, 57, 258, 219]),
    -- Lorelei: Cloyster Lv. 51: Spikes, Protect, Hail, Dive
    (60013, 6009, NULL, NULL, NULL, NULL, 2, ARRAY[191, 182, 258, 291]),
    -- Lorelei: Slowbro Lv. 52: Ice Beam, Surf, Amnesia, Yawn
    (60013, 6009, NULL, NULL, NULL, NULL, 3, ARRAY[58, 57, 133, 281]),
    -- Lorelei: Jynx Lv. 54: Ice Punch, Double Slap, Lovely Kiss, Attract
    (60013, 6009, NULL, NULL, NULL, NULL, 4, ARRAY[8, 3, 142, 213]),
    -- Lorelei: Lapras Lv. 54: Confuse Ray, Ice Beam, Surf, Body Slam
    (60013, 6009, NULL, NULL, NULL, NULL, 5, ARRAY[109, 58, 57, 34]),
    -- Bruno: Onix Lv. 51: Earthquake, Rock Tomb, Iron Tail, Roar
    (60014, 6010, NULL, NULL, NULL, NULL, 1, ARRAY[89, 317, 231, 46]),
    -- Bruno: Hitmonchan Lv. 53: Sky Uppercut, Mach Punch, Rock Tomb, Counter
    (60014, 6010, NULL, NULL, NULL, NULL, 2, ARRAY[327, 183, 317, 68]),
    -- Bruno: Hitmonlee Lv. 53: Mega Kick, Foresight, Brick Break, Facade
    (60014, 6010, NULL, NULL, NULL, NULL, 3, ARRAY[25, 193, 280, 263]),
    -- Bruno: Onix Lv. 54: Double-Edge, Earthquake, Iron Tail, Sand Tomb
    (60014, 6010, NULL, NULL, NULL, NULL, 4, ARRAY[38, 89, 231, 328]),
    -- Bruno: Machamp Lv. 56: Cross Chop, Bulk Up, Scary Face, Rock Tomb
    (60014, 6010, NULL, NULL, NULL, NULL, 5, ARRAY[238, 339, 184, 317]),
    -- Agatha: Gengar Lv. 54: Shadow Punch, Confuse Ray, Toxic, Double Team
    (60015, 6011, NULL, NULL, NULL, NULL, 1, ARRAY[325, 109, 92, 104]),
    -- Agatha: Golbat Lv. 54: Confuse Ray, Poison Fang, Air Cutter, Bite
    (60015, 6011, NULL, NULL, NULL, NULL, 2, ARRAY[109, 305, 314, 44]),
    -- Agatha: Haunter Lv. 53: Hypnosis, Dream Eater, Curse, Mean Look
    (60015, 6011, NULL, NULL, NULL, NULL, 3, ARRAY[95, 138, 174, 212]),
    -- Agatha: Arbok Lv. 56: Sludge Bomb, Screech, Iron Tail, Bite
    (60015, 6011, NULL, NULL, NULL, NULL, 4, ARRAY[188, 103, 231, 44]),
    -- Agatha: Gengar Lv. 58: Shadow Ball, Sludge Bomb, Hypnosis, Nightmare
    (60015, 6011, NULL, NULL, NULL, NULL, 5, ARRAY[247, 188, 95, 171]),
    -- Lance: Gyarados Lv. 56: Hyper Beam, Dragon Rage, Twister, Bite
    (60016, 6012, NULL, NULL, NULL, NULL, 1, ARRAY[63, 82, 239, 44]),
    -- Lance: Dragonair Lv. 54: Hyper Beam, Safeguard, Dragon Rage, Outrage
    (60016, 6012, NULL, NULL, NULL, NULL, 2, ARRAY[63, 219, 82, 200]),
    -- Lance: Dragonair Lv. 54: Hyper Beam, Safeguard, Thunder Wave, Outrage
    (60016, 6012, NULL, NULL, NULL, NULL, 3, ARRAY[63, 219, 86, 200]),
    -- Lance: Aerodactyl Lv. 58: Hyper Beam, Ancient Power, Wing Attack, Scary Face
    (60016, 6012, NULL, NULL, NULL, NULL, 4, ARRAY[63, 246, 17, 184]),
    -- Lance: Dragonite Lv. 60: Hyper Beam, Safeguard, Outrage, Wing Attack
    (60016, 6012, NULL, NULL, NULL, NULL, 5, ARRAY[63, 219, 200, 17]),
    -- Blue: Pidgeot Lv. 59: Aerial Ace, Feather Dance, Sand Attack, Whirlwind
    (60017, 6013, NULL, 60001, 'bulbasaur', NULL, 1, ARRAY[332, 297, 28, 18]),
    -- Blue: Alakazam Lv. 57: Psychic, Future Sight, Recover, Reflect
    (60017, 6013, NULL, 60001, 'bulbasaur', NULL, 2, ARRAY[94, 248, 105, 115]),
    -- Blue: Rhydon Lv. 59: Take Down, Earthquake, Rock Tomb, Scary Face
    (60017, 6013, NULL, 60001, 'bulbasaur', NULL, 3, ARRAY[36, 89, 317, 184]),
    -- Blue: Exeggutor Lv. 59: Giga Drain, Egg Bomb, Sleep Powder, Light Screen
    (60017, 6013, NULL, 60001, 'bulbasaur', NULL, 4, ARRAY[202, 121, 79, 113]),
    -- Blue: Gyarados Lv. 61: Hydro Pump, Dragon Rage, Bite, Thrash
    (60017, 6013, NULL, 60001, 'bulbasaur', NULL, 5, ARRAY[56, 82, 44, 37]),
    -- Blue: Charizard Lv. 63: Fire Blast, Aerial Ace, Slash, Fire Spin
    (60017, 6013, NULL, 60001, 'bulbasaur', NULL, 6, ARRAY[126, 332, 163, 83]),
    -- Blue: Pidgeot Lv. 59: Aerial Ace, Feather Dance, Sand Attack, Whirlwind
    (60017, 6013, NULL, 60001, 'charmander', NULL, 1, ARRAY[332, 297, 28, 18]),
    -- Blue: Alakazam Lv. 57: Psychic, Future Sight, Recover, Reflect
    (60017, 6013, NULL, 60001, 'charmander', NULL, 2, ARRAY[94, 248, 105, 115]),
    -- Blue: Rhydon Lv. 59: Take Down, Earthquake, Rock Tomb, Scary Face
    (60017, 6013, NULL, 60001, 'charmander', NULL, 3, ARRAY[36, 89, 317, 184]),
    -- Blue: Arcanine Lv. 59: Extreme Speed, Flamethrower, Roar, Bite
    (60017, 6013, NULL, 60001, 'charmander', NULL, 4, ARRAY[245, 53, 46, 44]),
    -- Blue: Exeggutor Lv. 61: Giga Drain, Egg Bomb, Sleep Powder, Light Screen
    (60017, 6013, NULL, 60001, 'charmander', NULL, 5, ARRAY[202, 121, 79, 113]),
    -- Blue: Blastoise Lv. 63: Hydro Pump, Rain Dance, Skull Bash, Bite
    (60017, 6013, NULL, 60001, 'charmander', NULL, 6, ARRAY[56, 240, 130, 44]),
    -- Blue: Pidgeot Lv. 59: Aerial Ace, Feather Dance, Sand Attack, Whirlwind
    (60017, 6013, NULL, 60001, 'squirtle', NULL, 1, ARRAY[332, 297, 28, 18]),
    -- Blue: Alakazam Lv. 57: Psychic, Future Sight, Recover, Reflect
    (60017, 6013, NULL, 60001, 'squirtle', NULL, 2, ARRAY[94, 248, 105, 115]),
    -- Blue: Rhydon Lv. 59: Take Down, Earthquake, Rock Tomb, Scary Face
    (60017, 6013, NULL, 60001, 'squirtle', NULL, 3, ARRAY[36, 89, 317, 184]),
    -- Blue: Gyarados Lv. 59: Hydro Pump, Dragon Rage, Bite, Thrash
    (60017, 6013, NULL, 60001, 'squirtle', NULL, 4, ARRAY[56, 82, 44, 37]),
    -- Blue: Arcanine Lv. 61: Extreme Speed, Flamethrower, Roar, Bite
    (60017, 6013, NULL, 60001, 'squirtle', NULL, 5, ARRAY[245, 53, 46, 44]),
    -- Blue: Venusaur Lv. 63: Solar Beam, Synthesis, Sunny Day, Growth
    (60017, 6013, NULL, 60001, 'squirtle', NULL, 6, ARRAY[76, 235, 241, 74]),
    -- Blue: Charmander Lv. 5: Scratch, Growl
    (60001, 6014, NULL, 60001, 'bulbasaur', NULL, 1, ARRAY[10, 45]),
    -- Blue: Squirtle Lv. 5: Tackle, Tail Whip
    (60001, 6014, NULL, 60001, 'charmander', NULL, 1, ARRAY[33, 39]),
    -- Blue: Bulbasaur Lv. 5: Tackle, Growl
    (60001, 6014, NULL, 60001, 'squirtle', NULL, 1, ARRAY[33, 45]),
    -- Blue: Pidgey Lv. 9: Tackle, Sand Attack
    (60003, 6014, NULL, 60001, 'bulbasaur', NULL, 1, ARRAY[33, 28]),
    -- Blue: Charmander Lv. 9: Scratch, Growl
    (60003, 6014, NULL, 60001, 'bulbasaur', NULL, 2, ARRAY[10, 45]),
    -- Blue: Pidgey Lv. 9: Tackle, Sand Attack
    (60003, 6014, NULL, 60001, 'charmander', NULL, 1, ARRAY[33, 28]),
    -- Blue: Squirtle Lv. 9: Tackle, Tail Whip
    (60003, 6014, NULL, 60001, 'charmander', NULL, 2, ARRAY[33, 39]),
    -- Blue: Pidgey Lv. 9: Tackle, Sand Attack
    (60003, 6014, NULL, 60001, 'squirtle', NULL, 1, ARRAY[33, 28]),
    -- Blue: Bulbasaur Lv. 9: Tackle, Growl
    (60003, 6014, NULL, 60001, 'squirtle', NULL, 2, ARRAY[33, 45]),
    -- Blue: Pidgeotto Lv. 17: Tackle, Sand Attack, Gust, Quick Attack
    (60005, 6014, NULL, 60001, 'bulbasaur', NULL, 1, ARRAY[33, 28, 16, 98]),
    -- Blue: Abra Lv. 16: Teleport
    (60005, 6014, NULL, 60001, 'bulbasaur', NULL, 2, ARRAY[100]),
    -- Blue: Rattata Lv. 15: Tackle, Tail Whip, Quick Attack
    (60005, 6014, NULL, 60001, 'bulbasaur', NULL, 3, ARRAY[33, 39, 98]),
    -- Blue: Charmander Lv. 18: Metal Claw, Ember, Growl, Scratch
    (60005, 6014, NULL, 60001, 'bulbasaur', NULL, 4, ARRAY[232, 52, 45, 10]),
    -- Blue: Pidgeotto Lv. 17: Tackle, Sand Attack, Gust, Quick Attack
    (60005, 6014, NULL, 60001, 'charmander', NULL, 1, ARRAY[33, 28, 16, 98]),
    -- Blue: Abra Lv. 16: Teleport
    (60005, 6014, NULL, 60001, 'charmander', NULL, 2, ARRAY[100]),
    -- Blue: Rattata Lv. 15: Tackle, Tail Whip, Quick Attack
    (60005, 6014, NULL, 60001, 'charmander', NULL, 3, ARRAY[33, 39, 98]),
    -- Blue: Squirtle Lv. 18: Tackle, Tail Whip, Withdraw, Water Gun
    (60005, 6014, NULL, 60001, 'charmander', NULL, 4, ARRAY[33, 39, 110, 55]),
    -- Blue: Pidgeotto Lv. 17: Tackle, Sand Attack, Gust, Quick Attack
    (60005, 6014, NULL, 60001, 'squirtle', NULL, 1, ARRAY[33, 28, 16, 98]),
    -- Blue: Abra Lv. 16: Teleport
    (60005, 6014, NULL, 60001, 'squirtle', NULL, 2, ARRAY[100]),
    -- Blue: Rattata Lv. 15: Tackle, Tail Whip, Quick Attack
    (60005, 6014, NULL, 60001, 'squirtle', NULL, 3, ARRAY[33, 39, 98]),
    -- Blue: Bulbasaur Lv. 18: Sleep Powder, Poison Powder, Vine Whip, Leech Seed
    (60005, 6014, NULL, 60001, 'squirtle', NULL, 4, ARRAY[79, 77, 22, 73]),
    -- Blue: Pidgeotto Lv. 19: Tackle, Sand Attack, Gust, Quick Attack
    (60019, 6014, NULL, 60001, 'bulbasaur', NULL, 1, ARRAY[33, 28, 16, 98]),
    -- Blue: Raticate Lv. 16: Tackle, Tail Whip, Quick Attack, Hyper Fang
    (60019, 6014, NULL, 60001, 'bulbasaur', NULL, 2, ARRAY[33, 39, 98, 158]),
    -- Blue: Kadabra Lv. 18: Teleport, Kinesis, Confusion, Disable
    (60019, 6014, NULL, 60001, 'bulbasaur', NULL, 3, ARRAY[100, 134, 93, 50]),
    -- Blue: Charmeleon Lv. 20: Growl, Ember, Metal Claw, Smokescreen
    (60019, 6014, NULL, 60001, 'bulbasaur', NULL, 4, ARRAY[45, 52, 232, 108]),
    -- Blue: Pidgeotto Lv. 19: Tackle, Sand Attack, Gust, Quick Attack
    (60019, 6014, NULL, 60001, 'charmander', NULL, 1, ARRAY[33, 28, 16, 98]),
    -- Blue: Raticate Lv. 16: Tackle, Tail Whip, Quick Attack, Hyper Fang
    (60019, 6014, NULL, 60001, 'charmander', NULL, 2, ARRAY[33, 39, 98, 158]),
    -- Blue: Kadabra Lv. 18: Teleport, Kinesis, Confusion, Disable
    (60019, 6014, NULL, 60001, 'charmander', NULL, 3, ARRAY[100, 134, 93, 50]),
    -- Blue: Wartortle Lv. 20: Bubble, Withdraw, Water Gun, Bite
    (60019, 6014, NULL, 60001, 'charmander', NULL, 4, ARRAY[145, 110, 55, 44]),
    -- Blue: Pidgeotto Lv. 19: Tackle, Sand Attack, Gust, Quick Attack
    (60019, 6014, NULL, 60001, 'squirtle', NULL, 1, ARRAY[33, 28, 16, 98]),
    -- Blue: Raticate Lv. 16: Tackle, Tail Whip, Quick Attack, Hyper Fang
    (60019, 6014, NULL, 60001, 'squirtle', NULL, 2, ARRAY[33, 39, 98, 158]),
    -- Blue: Kadabra Lv. 18: Teleport, Kinesis, Confusion, Disable
    (60019, 6014, NULL, 60001, 'squirtle', NULL, 3, ARRAY[100, 134, 93, 50]),
    -- Blue: Ivysaur Lv. 20: Leech Seed, Vine Whip, Poison Powder, Sleep Powder
    (60019, 6014, NULL, 60001, 'squirtle', NULL, 4, ARRAY[73, 22, 77, 79]),
    -- Blue: Pidgeotto Lv. 25: Sand Attack, Gust, Quick Attack, Whirlwind
    (60021, 6014, NULL, 60001, 'bulbasaur', NULL, 1, ARRAY[28, 16, 98, 18]),
    -- Blue: Exeggcute Lv. 23: Hypnosis, Reflect, Leech Seed, Confusion
    (60021, 6014, NULL, 60001, 'bulbasaur', NULL, 2, ARRAY[95, 115, 73, 93]),
    -- Blue: Gyarados Lv. 22: Thrash, Bite
    (60021, 6014, NULL, 60001, 'bulbasaur', NULL, 3, ARRAY[37, 44]),
    -- Blue: Kadabra Lv. 20: Teleport, Kinesis, Confusion, Disable
    (60021, 6014, NULL, 60001, 'bulbasaur', NULL, 4, ARRAY[100, 134, 93, 50]),
    -- Blue: Charmeleon Lv. 25: Growl, Ember, Metal Claw, Smokescreen
    (60021, 6014, NULL, 60001, 'bulbasaur', NULL, 5, ARRAY[45, 52, 232, 108]),
    -- Blue: Pidgeotto Lv. 25: Sand Attack, Gust, Quick Attack, Whirlwind
    (60021, 6014, NULL, 60001, 'charmander', NULL, 1, ARRAY[28, 16, 98, 18]),
    -- Blue: Growlithe Lv. 23: Roar, Ember, Leer, Odor Sleuth
    (60021, 6014, NULL, 60001, 'charmander', NULL, 2, ARRAY[46, 52, 43, 316]),
    -- Blue: Exeggcute Lv. 22: Hypnosis, Reflect, Leech Seed, Confusion
    (60021, 6014, NULL, 60001, 'charmander', NULL, 3, ARRAY[95, 115, 73, 93]),
    -- Blue: Kadabra Lv. 20: Teleport, Kinesis, Confusion, Disable
    (60021, 6014, NULL, 60001, 'charmander', NULL, 4, ARRAY[100, 134, 93, 50]),
    -- Blue: Wartortle Lv. 25: Withdraw, Water Gun, Bite, Rapid Spin
    (60021, 6014, NULL, 60001, 'charmander', NULL, 5, ARRAY[110, 55, 44, 229]),
    -- Blue: Pidgeotto Lv. 25: Sand Attack, Gust, Quick Attack, Whirlwind
    (60021, 6014, NULL, 60001, 'squirtle', NULL, 1, ARRAY[28, 16, 98, 18]),
    -- Blue: Gyarados Lv. 23: Thrash, Bite
    (60021, 6014, NULL, 60001, 'squirtle', NULL, 2, ARRAY[37, 44]),
    -- Blue: Growlithe Lv. 22: Roar, Ember, Leer, Odor Sleuth
    (60021, 6014, NULL, 60001, 'squirtle', NULL, 3, ARRAY[46, 52, 43, 316]),
    -- Blue: Kadabra Lv. 20: Teleport, Kinesis, Confusion, Disable
    (60021, 6014, NULL, 60001, 'squirtle', NULL, 4, ARRAY[100, 134, 93, 50]),
    -- Blue: Ivysaur Lv. 25: Vine Whip, Poison Powder, Sleep Powder, Razor Leaf
    (60021, 6014, NULL, 60001, 'squirtle', NULL, 5, ARRAY[22, 77, 79, 75]),
    -- Giovanni: Onix Lv. 25: Bind, Rock Throw, Harden, Rage
    (60020, 6015, NULL, NULL, NULL, NULL, 1, ARRAY[20, 88, 106, 99]),
    -- Giovanni: Rhyhorn Lv. 24: Tail Whip, Stomp, Fury Attack, Scary Face
    (60020, 6015, NULL, NULL, NULL, NULL, 2, ARRAY[39, 23, 31, 184]),
    -- Giovanni: Kangaskhan Lv. 29: Bite, Tail Whip, Fake Out, Mega Punch
    (60020, 6015, NULL, NULL, NULL, NULL, 3, ARRAY[44, 39, 252, 5]),
    -- Blue: Pidgeot Lv. 37: Quick Attack, Whirlwind, Wing Attack, Feather Dance
    (60022, 6014, NULL, 60001, 'bulbasaur', NULL, 1, ARRAY[98, 18, 17, 297]),
    -- Blue: Exeggcute Lv. 38: Confusion, Stun Spore, Poison Powder, Sleep Powder
    (60022, 6014, NULL, 60001, 'bulbasaur', NULL, 2, ARRAY[93, 78, 77, 79]),
    -- Blue: Gyarados Lv. 35: Bite, Dragon Rage, Leer, Twister
    (60022, 6014, NULL, 60001, 'bulbasaur', NULL, 3, ARRAY[44, 82, 43, 239]),
    -- Blue: Alakazam Lv. 35: Reflect, Recover, Future Sight, Calm Mind
    (60022, 6014, NULL, 60001, 'bulbasaur', NULL, 4, ARRAY[115, 105, 248, 347]),
    -- Blue: Charizard Lv. 40: Smokescreen, Scary Face, Flamethrower, Wing Attack
    (60022, 6014, NULL, 60001, 'bulbasaur', NULL, 5, ARRAY[108, 184, 53, 17]),
    -- Blue: Pidgeot Lv. 37: Quick Attack, Whirlwind, Wing Attack, Feather Dance
    (60022, 6014, NULL, 60001, 'charmander', NULL, 1, ARRAY[98, 18, 17, 297]),
    -- Blue: Growlithe Lv. 38: Odor Sleuth, Take Down, Flame Wheel, Helping Hand
    (60022, 6014, NULL, 60001, 'charmander', NULL, 2, ARRAY[316, 36, 172, 270]),
    -- Blue: Exeggcute Lv. 35: Leech Seed, Confusion, Stun Spore, Poison Powder
    (60022, 6014, NULL, 60001, 'charmander', NULL, 3, ARRAY[73, 93, 78, 77]),
    -- Blue: Alakazam Lv. 35: Reflect, Recover, Future Sight, Calm Mind
    (60022, 6014, NULL, 60001, 'charmander', NULL, 4, ARRAY[115, 105, 248, 347]),
    -- Blue: Blastoise Lv. 40: Water Gun, Bite, Rapid Spin, Protect
    (60022, 6014, NULL, 60001, 'charmander', NULL, 5, ARRAY[55, 44, 229, 182]),
    -- Blue: Pidgeot Lv. 37: Quick Attack, Whirlwind, Wing Attack, Feather Dance
    (60022, 6014, NULL, 60001, 'squirtle', NULL, 1, ARRAY[98, 18, 17, 297]),
    -- Blue: Gyarados Lv. 38: Bite, Dragon Rage, Leer, Twister
    (60022, 6014, NULL, 60001, 'squirtle', NULL, 2, ARRAY[44, 82, 43, 239]),
    -- Blue: Growlithe Lv. 35: Leer, Odor Sleuth, Take Down, Flame Wheel
    (60022, 6014, NULL, 60001, 'squirtle', NULL, 3, ARRAY[43, 316, 36, 172]),
    -- Blue: Alakazam Lv. 35: Reflect, Recover, Future Sight, Calm Mind
    (60022, 6014, NULL, 60001, 'squirtle', NULL, 4, ARRAY[115, 105, 248, 347]),
    -- Blue: Venusaur Lv. 40: Poison Powder, Sleep Powder, Razor Leaf, Sweet Scent
    (60022, 6014, NULL, 60001, 'squirtle', NULL, 5, ARRAY[77, 79, 75, 230]),
    -- Giovanni: Nidorino Lv. 37: Poison Sting, Horn Attack, Helping Hand, Fury Attack
    (60022, 6015, NULL, NULL, NULL, NULL, 1, ARRAY[40, 30, 270, 31]),
    -- Giovanni: Kangaskhan Lv. 35: Tail Whip, Fake Out, Mega Punch, Rage
    (60022, 6015, NULL, NULL, NULL, NULL, 2, ARRAY[39, 252, 5, 99]),
    -- Giovanni: Rhyhorn Lv. 37: Stomp, Fury Attack, Scary Face, Rock Blast
    (60022, 6015, NULL, NULL, NULL, NULL, 3, ARRAY[23, 31, 184, 350]),
    -- Giovanni: Nidoqueen Lv. 41: Tail Whip, Double Kick, Poison Sting, Body Slam
    (60022, 6015, NULL, NULL, NULL, NULL, 4, ARRAY[39, 24, 40, 34]),
    -- Blue: Pidgeot Lv. 47: Feather Dance, Wing Attack, Gust, Quick Attack
    (60013, 6014, NULL, 60001, 'bulbasaur', NULL, 1, ARRAY[297, 17, 16, 98]),
    -- Blue: Rhyhorn Lv. 45: Take Down, Horn Drill, Rock Blast, Fury Attack
    (60013, 6014, NULL, 60001, 'bulbasaur', NULL, 2, ARRAY[36, 32, 350, 31]),
    -- Blue: Exeggcute Lv. 45: Solar Beam, Sleep Powder, Poison Powder, Stun Spore
    (60013, 6014, NULL, 60001, 'bulbasaur', NULL, 3, ARRAY[76, 79, 77, 78]),
    -- Blue: Gyarados Lv. 45: Hydro Pump, Twister, Leer, Rain Dance
    (60013, 6014, NULL, 60001, 'bulbasaur', NULL, 4, ARRAY[56, 239, 43, 240]),
    -- Blue: Alakazam Lv. 47: Psychic, Calm Mind, Future Sight, Disable
    (60013, 6014, NULL, 60001, 'bulbasaur', NULL, 5, ARRAY[94, 347, 248, 50]),
    -- Blue: Charizard Lv. 53: Flamethrower, Wing Attack, Slash, Scary Face
    (60013, 6014, NULL, 60001, 'bulbasaur', NULL, 6, ARRAY[53, 17, 163, 184]),
    -- Blue: Pidgeot Lv. 47: Feather Dance, Wing Attack, Gust, Quick Attack
    (60013, 6014, NULL, 60001, 'charmander', NULL, 1, ARRAY[297, 17, 16, 98]),
    -- Blue: Rhyhorn Lv. 45: Take Down, Horn Drill, Rock Blast, Fury Attack
    (60013, 6014, NULL, 60001, 'charmander', NULL, 2, ARRAY[36, 32, 350, 31]),
    -- Blue: Growlithe Lv. 45: Flame Wheel, Take Down, Leer, Agility
    (60013, 6014, NULL, 60001, 'charmander', NULL, 3, ARRAY[172, 36, 43, 97]),
    -- Blue: Exeggcute Lv. 45: Solar Beam, Sleep Powder, Poison Powder, Stun Spore
    (60013, 6014, NULL, 60001, 'charmander', NULL, 4, ARRAY[76, 79, 77, 78]),
    -- Blue: Alakazam Lv. 47: Psychic, Calm Mind, Future Sight, Disable
    (60013, 6014, NULL, 60001, 'charmander', NULL, 5, ARRAY[94, 347, 248, 50]),
    -- Blue: Blastoise Lv. 53: Water Gun, Rain Dance, Bite, Rapid Spin
    (60013, 6014, NULL, 60001, 'charmander', NULL, 6, ARRAY[55, 240, 44, 229]),
    -- Blue: Pidgeot Lv. 47: Feather Dance, Wing Attack, Gust, Quick Attack
    (60013, 6014, NULL, 60001, 'squirtle', NULL, 1, ARRAY[297, 17, 16, 98]),
    -- Blue: Rhyhorn Lv. 45: Take Down, Horn Drill, Rock Blast, Fury Attack
    (60013, 6014, NULL, 60001, 'squirtle', NULL, 2, ARRAY[36, 32, 350, 31]),
    -- Blue: Gyarados Lv. 45: Hydro Pump, Twister, Leer, Rain Dance
    (60013, 6014, NULL, 60001, 'squirtle', NULL, 3, ARRAY[56, 239, 43, 240]),
    -- Blue: Growlithe Lv. 45: Flame Wheel, Take Down, Leer, Agility
    (60013, 6014, NULL, 60001, 'squirtle', NULL, 4, ARRAY[172, 36, 43, 97]),
    -- Blue: Alakazam Lv. 47: Psychic, Calm Mind, Future Sight, Disable
    (60013, 6014, NULL, 60001, 'squirtle', NULL, 5, ARRAY[94, 347, 248, 50]),
    -- Blue: Venusaur Lv. 53: Razor Leaf, Sweet Scent, Growth, Synthesis
    (60013, 6014, NULL, 60001, 'squirtle', NULL, 6, ARRAY[75, 230, 74, 235]),
    -- Zapdos: Zapdos Lv. 50: Thunder Wave, Agility, Detect, Drill Peck
    (60023, 6016, NULL, NULL, NULL, NULL, 1, ARRAY[86, 97, 197, 65]),
    -- Articuno: Articuno Lv. 50: Mist, Agility, Mind Reader, Ice Beam
    (60024, 6017, NULL, NULL, NULL, NULL, 1, ARRAY[54, 97, 170, 58]),
    -- Moltres: Moltres Lv. 50: Fire Spin, Agility, Endure, Flamethrower
    (60025, 6018, NULL, NULL, NULL, NULL, 1, ARRAY[83, 97, 203, 53]),
    -- Ho-Oh: Ho-Oh Lv. 70: Recover, Fire Blast, Sunny Day, Swift
    (60026, 6019, NULL, NULL, NULL, NULL, 1, ARRAY[105, 126, 241, 129]),
    -- Lugia: Lugia Lv. 70: Recover, Hydro Pump, Rain Dance, Swift
    (60026, 6020, NULL, NULL, NULL, NULL, 1, ARRAY[105, 56, 240, 129]),
    -- Deoxys: Deoxys (Attack) Lv. 30: Knock Off, Spikes, Psychic, Snatch
    (60027, 6021, NULL, NULL, NULL, NULL, 1, ARRAY[282, 191, 94, 289]),
    -- Deoxys: Deoxys (Defense) Lv. 30: Knock Off, Spikes, Psychic, Snatch
    (60027, 6022, NULL, NULL, NULL, NULL, 1, ARRAY[282, 191, 94, 289]),
    -- Raikou: Raikou Lv. 50: Thunder Shock, Roar, Quick Attack, Spark
    (60028, 6023, NULL, 60001, 'squirtle', NULL, 1, ARRAY[84, 46, 98, 209]),
    -- Entei: Entei Lv. 50: Ember, Roar, Fire Spin, Stomp
    (60028, 6024, NULL, 60001, 'bulbasaur', NULL, 1, ARRAY[52, 46, 83, 23]),
    -- Suicune: Suicune Lv. 50: Bubble Beam, Rain Dance, Gust, Aurora Beam
    (60028, 6025, NULL, 60001, 'charmander', NULL, 1, ARRAY[61, 240, 16, 62]),
    -- Mewtwo: Mewtwo Lv. 70: Swift, Recover, Safeguard, Psychic
    (60029, 6026, NULL, NULL, NULL, NULL, 1, ARRAY[129, 105, 219, 94]),
    -- Rocket Admin (Muk): Muk Lv. 52: Sludge Bomb, Screech, Minimize, Rock Tomb
    (60029, 6027, NULL, NULL, NULL, NULL, 1, ARRAY[188, 103, 107, 317]),
    -- Rocket Admin (Muk): Arbok Lv. 53: Sludge Bomb, Bite, Earthquake, Iron Tail
    (60029, 6027, NULL, NULL, NULL, NULL, 2, ARRAY[188, 44, 89, 231]),
    -- Rocket Admin (Muk): Vileplume Lv. 54: Sludge Bomb, Giga Drain, Sleep Powder, Stun Spore
    (60029, 6027, NULL, NULL, NULL, NULL, 3, ARRAY[188, 202, 79, 78]),
    -- Rocket Admin (Golbat): Golbat Lv. 53: Confuse Ray, Sludge Bomb, Air Cutter, Shadow Ball
    (60029, 6028, NULL, NULL, NULL, NULL, 1, ARRAY[109, 188, 314, 247]),
    -- Rocket Admin (Golbat): Weezing Lv. 54: Sludge Bomb, Thunderbolt, Explosion, Shadow Ball
    (60029, 6028, NULL, NULL, NULL, NULL, 2, ARRAY[188, 85, 153, 247]),
    -- Rocket Admin (Golbat): Houndoom Lv. 55: Flamethrower, Crunch, Iron Tail, Shadow Ball
    (60029, 6028, NULL, NULL, NULL, NULL, 3, ARRAY[53, 242, 231, 247])
)
INSERT INTO tracking.mainline_opponent_team_member_moves (team_member_id, slot, move_id)
SELECT
  members.id,
  moves.slot,
  moves.move_id
FROM team_moves
LEFT JOIN tracking.mainline_opponent_team_members AS members
  ON members.milestone_id = team_moves.milestone_id
  AND members.opponent_id = team_moves.opponent_id
  AND members.ally_opponent_id IS NULL
  AND members.game_id IS NOT DISTINCT FROM team_moves.game_id::integer
  AND members.decision_milestone_id IS NOT DISTINCT FROM team_moves.decision_milestone_id::integer
  AND members.decision_option_slug IS NOT DISTINCT FROM team_moves.decision_option_slug::text
  AND members.variant_slug IS NOT DISTINCT FROM team_moves.variant_slug::text
  AND members.slot = team_moves.member_slot
CROSS JOIN LATERAL UNNEST(team_moves.move_ids) WITH ORDINALITY AS moves (move_id, slot);
