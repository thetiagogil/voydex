-- ============================================================================
-- Source
-- ============================================================================
-- Primary: the pret pokered disassembly of the game: its trainer parties,
-- set moves and level-up learnsets.
-- A Pokémon the game gives no set moves, and every legendary encounter, gets
-- the game's own default: the last four moves it learns by level up to its
-- level, worked out from the same learnsets as the game does.
-- Scope: Red / Blue Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Red / Blue opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Brock: Geodude Lv. 12: Tackle, Defense Curl
    (10003, 1001, NULL, NULL, NULL, NULL, 1, ARRAY[33, 111]),
    -- Brock: Onix Lv. 14: Tackle, Screech, Bide
    (10003, 1001, NULL, NULL, NULL, NULL, 2, ARRAY[33, 103, 117]),
    -- Misty: Staryu Lv. 18: Tackle, Water Gun
    (10005, 1002, NULL, NULL, NULL, NULL, 1, ARRAY[33, 55]),
    -- Misty: Starmie Lv. 21: Tackle, Water Gun, Bubble Beam
    (10005, 1002, NULL, NULL, NULL, NULL, 2, ARRAY[33, 55, 61]),
    -- Lt. Surge: Voltorb Lv. 21: Tackle, Screech, Sonic Boom
    (10006, 1003, NULL, NULL, NULL, NULL, 1, ARRAY[33, 103, 49]),
    -- Lt. Surge: Pikachu Lv. 18: Thunder Shock, Growl, Thunder Wave, Quick Attack
    (10006, 1003, NULL, NULL, NULL, NULL, 2, ARRAY[84, 45, 86, 98]),
    -- Lt. Surge: Raichu Lv. 24: Thunder Shock, Growl, Thunderbolt
    (10006, 1003, NULL, NULL, NULL, NULL, 3, ARRAY[84, 45, 85]),
    -- Erika: Victreebel Lv. 29: Razor Leaf, Wrap, Poison Powder, Sleep Powder
    (10007, 1004, NULL, NULL, NULL, NULL, 1, ARRAY[75, 35, 77, 79]),
    -- Erika: Tangela Lv. 24: Constrict, Bind
    (10007, 1004, NULL, NULL, NULL, NULL, 2, ARRAY[132, 20]),
    -- Erika: Vileplume Lv. 29: Petal Dance, Poison Powder, Mega Drain, Sleep Powder
    (10007, 1004, NULL, NULL, NULL, NULL, 3, ARRAY[80, 77, 72, 79]),
    -- Koga: Koffing Lv. 37: Tackle, Smog, Sludge, Smokescreen
    (10008, 1005, NULL, NULL, NULL, NULL, 1, ARRAY[33, 123, 124, 108]),
    -- Koga: Muk Lv. 39: Disable, Poison Gas, Minimize, Sludge
    (10008, 1005, NULL, NULL, NULL, NULL, 2, ARRAY[50, 139, 107, 124]),
    -- Koga: Koffing Lv. 37: Tackle, Smog, Sludge, Smokescreen
    (10008, 1005, NULL, NULL, NULL, NULL, 3, ARRAY[33, 123, 124, 108]),
    -- Koga: Weezing Lv. 43: Smog, Sludge, Toxic, Self-Destruct
    (10008, 1005, NULL, NULL, NULL, NULL, 4, ARRAY[123, 124, 92, 120]),
    -- Sabrina: Kadabra Lv. 38: Disable, Psybeam, Recover, Psychic
    (10009, 1006, NULL, NULL, NULL, NULL, 1, ARRAY[50, 60, 105, 94]),
    -- Sabrina: Mr. Mime Lv. 37: Confusion, Barrier, Light Screen, Double Slap
    (10009, 1006, NULL, NULL, NULL, NULL, 2, ARRAY[93, 112, 113, 3]),
    -- Sabrina: Venomoth Lv. 38: Poison Powder, Leech Life, Stun Spore, Psybeam
    (10009, 1006, NULL, NULL, NULL, NULL, 3, ARRAY[77, 141, 78, 60]),
    -- Sabrina: Alakazam Lv. 43: Psybeam, Recover, Psywave, Reflect
    (10009, 1006, NULL, NULL, NULL, NULL, 4, ARRAY[60, 105, 149, 115]),
    -- Blaine: Growlithe Lv. 42: Ember, Leer, Take Down, Agility
    (10011, 1007, NULL, NULL, NULL, NULL, 1, ARRAY[52, 43, 36, 97]),
    -- Blaine: Ponyta Lv. 40: Tail Whip, Stomp, Growl, Fire Spin
    (10011, 1007, NULL, NULL, NULL, NULL, 2, ARRAY[39, 23, 45, 83]),
    -- Blaine: Rapidash Lv. 42: Tail Whip, Stomp, Growl, Fire Spin
    (10011, 1007, NULL, NULL, NULL, NULL, 3, ARRAY[39, 23, 45, 83]),
    -- Blaine: Arcanine Lv. 47: Roar, Ember, Fire Blast, Take Down
    (10011, 1007, NULL, NULL, NULL, NULL, 4, ARRAY[46, 52, 126, 36]),
    -- Giovanni: Rhyhorn Lv. 45: Stomp, Tail Whip, Fury Attack, Horn Drill
    (10012, 1008, NULL, NULL, NULL, NULL, 1, ARRAY[23, 39, 31, 32]),
    -- Giovanni: Dugtrio Lv. 42: Growl, Dig, Sand Attack, Slash
    (10012, 1008, NULL, NULL, NULL, NULL, 2, ARRAY[45, 91, 28, 163]),
    -- Giovanni: Nidoqueen Lv. 44: Scratch, Tail Whip, Body Slam, Poison Sting
    (10012, 1008, NULL, NULL, NULL, NULL, 3, ARRAY[10, 39, 34, 40]),
    -- Giovanni: Nidoking Lv. 45: Tackle, Horn Attack, Poison Sting, Thrash
    (10012, 1008, NULL, NULL, NULL, NULL, 4, ARRAY[33, 30, 40, 37]),
    -- Giovanni: Rhydon Lv. 50: Stomp, Tail Whip, Fissure, Horn Drill
    (10012, 1008, NULL, NULL, NULL, NULL, 5, ARRAY[23, 39, 90, 32]),
    -- Lorelei: Dewgong Lv. 54: Growl, Aurora Beam, Rest, Take Down
    (10013, 1009, NULL, NULL, NULL, NULL, 1, ARRAY[45, 62, 156, 36]),
    -- Lorelei: Cloyster Lv. 53: Supersonic, Clamp, Aurora Beam, Spike Cannon
    (10013, 1009, NULL, NULL, NULL, NULL, 2, ARRAY[48, 128, 62, 131]),
    -- Lorelei: Slowbro Lv. 54: Growl, Water Gun, Withdraw, Amnesia
    (10013, 1009, NULL, NULL, NULL, NULL, 3, ARRAY[45, 55, 110, 133]),
    -- Lorelei: Jynx Lv. 56: Double Slap, Ice Punch, Body Slam, Thrash
    (10013, 1009, NULL, NULL, NULL, NULL, 4, ARRAY[3, 8, 34, 37]),
    -- Lorelei: Lapras Lv. 56: Body Slam, Confuse Ray, Blizzard, Hydro Pump
    (10013, 1009, NULL, NULL, NULL, NULL, 5, ARRAY[34, 109, 59, 56]),
    -- Bruno: Onix Lv. 53: Rock Throw, Rage, Slam, Harden
    (10014, 1010, NULL, NULL, NULL, NULL, 1, ARRAY[88, 99, 21, 106]),
    -- Bruno: Hitmonchan Lv. 55: Ice Punch, Thunder Punch, Mega Punch, Counter
    (10014, 1010, NULL, NULL, NULL, NULL, 2, ARRAY[8, 9, 5, 68]),
    -- Bruno: Hitmonlee Lv. 55: Jump Kick, Focus Energy, High Jump Kick, Mega Kick
    (10014, 1010, NULL, NULL, NULL, NULL, 3, ARRAY[26, 116, 136, 25]),
    -- Bruno: Onix Lv. 56: Rock Throw, Rage, Slam, Harden
    (10014, 1010, NULL, NULL, NULL, NULL, 4, ARRAY[88, 99, 21, 106]),
    -- Bruno: Machamp Lv. 58: Leer, Focus Energy, Fissure, Submission
    (10014, 1010, NULL, NULL, NULL, NULL, 5, ARRAY[43, 116, 90, 66]),
    -- Agatha: Gengar Lv. 56: Confuse Ray, Night Shade, Hypnosis, Dream Eater
    (10015, 1011, NULL, NULL, NULL, NULL, 1, ARRAY[109, 101, 95, 138]),
    -- Agatha: Golbat Lv. 56: Supersonic, Confuse Ray, Wing Attack, Haze
    (10015, 1011, NULL, NULL, NULL, NULL, 2, ARRAY[48, 109, 17, 114]),
    -- Agatha: Haunter Lv. 55: Confuse Ray, Night Shade, Hypnosis, Dream Eater
    (10015, 1011, NULL, NULL, NULL, NULL, 3, ARRAY[109, 101, 95, 138]),
    -- Agatha: Arbok Lv. 58: Bite, Glare, Screech, Acid
    (10015, 1011, NULL, NULL, NULL, NULL, 4, ARRAY[44, 137, 103, 51]),
    -- Agatha: Gengar Lv. 60: Confuse Ray, Night Shade, Toxic, Dream Eater
    (10015, 1011, NULL, NULL, NULL, NULL, 5, ARRAY[109, 101, 92, 138]),
    -- Lance: Gyarados Lv. 58: Dragon Rage, Leer, Hydro Pump, Hyper Beam
    (10016, 1012, NULL, NULL, NULL, NULL, 1, ARRAY[82, 43, 56, 63]),
    -- Lance: Dragonair Lv. 56: Agility, Slam, Dragon Rage, Hyper Beam
    (10016, 1012, NULL, NULL, NULL, NULL, 2, ARRAY[97, 21, 82, 63]),
    -- Lance: Dragonair Lv. 56: Agility, Slam, Dragon Rage, Hyper Beam
    (10016, 1012, NULL, NULL, NULL, NULL, 3, ARRAY[97, 21, 82, 63]),
    -- Lance: Aerodactyl Lv. 60: Supersonic, Bite, Take Down, Hyper Beam
    (10016, 1012, NULL, NULL, NULL, NULL, 4, ARRAY[48, 44, 36, 63]),
    -- Lance: Dragonite Lv. 62: Agility, Slam, Barrier, Hyper Beam
    (10016, 1012, NULL, NULL, NULL, NULL, 5, ARRAY[97, 21, 112, 63]),
    -- Blue: Pidgeot Lv. 61: Whirlwind, Wing Attack, Sky Attack, Mirror Move
    (10017, 1013, NULL, 10001, 'bulbasaur', NULL, 1, ARRAY[18, 17, 143, 119]),
    -- Blue: Alakazam Lv. 59: Psybeam, Recover, Psychic, Reflect
    (10017, 1013, NULL, 10001, 'bulbasaur', NULL, 2, ARRAY[60, 105, 94, 115]),
    -- Blue: Rhydon Lv. 61: Tail Whip, Fury Attack, Horn Drill, Leer
    (10017, 1013, NULL, 10001, 'bulbasaur', NULL, 3, ARRAY[39, 31, 32, 43]),
    -- Blue: Exeggutor Lv. 61: Barrage, Hypnosis, Stomp
    (10017, 1013, NULL, 10001, 'bulbasaur', NULL, 4, ARRAY[140, 95, 23]),
    -- Blue: Gyarados Lv. 63: Dragon Rage, Leer, Hydro Pump, Hyper Beam
    (10017, 1013, NULL, 10001, 'bulbasaur', NULL, 5, ARRAY[82, 43, 56, 63]),
    -- Blue: Charizard Lv. 65: Rage, Slash, Fire Blast, Fire Spin
    (10017, 1013, NULL, 10001, 'bulbasaur', NULL, 6, ARRAY[99, 163, 126, 83]),
    -- Blue: Pidgeot Lv. 61: Whirlwind, Wing Attack, Sky Attack, Mirror Move
    (10017, 1013, NULL, 10001, 'charmander', NULL, 1, ARRAY[18, 17, 143, 119]),
    -- Blue: Alakazam Lv. 59: Psybeam, Recover, Psychic, Reflect
    (10017, 1013, NULL, 10001, 'charmander', NULL, 2, ARRAY[60, 105, 94, 115]),
    -- Blue: Rhydon Lv. 61: Tail Whip, Fury Attack, Horn Drill, Leer
    (10017, 1013, NULL, 10001, 'charmander', NULL, 3, ARRAY[39, 31, 32, 43]),
    -- Blue: Arcanine Lv. 61: Roar, Ember, Leer, Take Down
    (10017, 1013, NULL, 10001, 'charmander', NULL, 4, ARRAY[46, 52, 43, 36]),
    -- Blue: Exeggutor Lv. 63: Barrage, Hypnosis, Stomp
    (10017, 1013, NULL, 10001, 'charmander', NULL, 5, ARRAY[140, 95, 23]),
    -- Blue: Blastoise Lv. 65: Bite, Withdraw, Blizzard, Hydro Pump
    (10017, 1013, NULL, 10001, 'charmander', NULL, 6, ARRAY[44, 110, 59, 56]),
    -- Blue: Pidgeot Lv. 61: Whirlwind, Wing Attack, Sky Attack, Mirror Move
    (10017, 1013, NULL, 10001, 'squirtle', NULL, 1, ARRAY[18, 17, 143, 119]),
    -- Blue: Alakazam Lv. 59: Psybeam, Recover, Psychic, Reflect
    (10017, 1013, NULL, 10001, 'squirtle', NULL, 2, ARRAY[60, 105, 94, 115]),
    -- Blue: Rhydon Lv. 61: Tail Whip, Fury Attack, Horn Drill, Leer
    (10017, 1013, NULL, 10001, 'squirtle', NULL, 3, ARRAY[39, 31, 32, 43]),
    -- Blue: Gyarados Lv. 61: Dragon Rage, Leer, Hydro Pump, Hyper Beam
    (10017, 1013, NULL, 10001, 'squirtle', NULL, 4, ARRAY[82, 43, 56, 63]),
    -- Blue: Arcanine Lv. 63: Roar, Ember, Leer, Take Down
    (10017, 1013, NULL, 10001, 'squirtle', NULL, 5, ARRAY[46, 52, 43, 36]),
    -- Blue: Venusaur Lv. 65: Razor Leaf, Growth, Mega Drain, Solar Beam
    (10017, 1013, NULL, 10001, 'squirtle', NULL, 6, ARRAY[75, 74, 72, 76]),
    -- Blue: Charmander Lv. 5: Scratch, Growl
    (10001, 1014, NULL, 10001, 'bulbasaur', NULL, 1, ARRAY[10, 45]),
    -- Blue: Squirtle Lv. 5: Tackle, Tail Whip
    (10001, 1014, NULL, 10001, 'charmander', NULL, 1, ARRAY[33, 39]),
    -- Blue: Bulbasaur Lv. 5: Tackle, Growl
    (10001, 1014, NULL, 10001, 'squirtle', NULL, 1, ARRAY[33, 45]),
    -- Blue: Pidgey Lv. 9: Gust, Sand Attack
    (10003, 1014, NULL, 10001, 'bulbasaur', NULL, 1, ARRAY[16, 28]),
    -- Blue: Charmander Lv. 8: Scratch, Growl
    (10003, 1014, NULL, 10001, 'bulbasaur', NULL, 2, ARRAY[10, 45]),
    -- Blue: Pidgey Lv. 9: Gust, Sand Attack
    (10003, 1014, NULL, 10001, 'charmander', NULL, 1, ARRAY[16, 28]),
    -- Blue: Squirtle Lv. 8: Tackle, Tail Whip, Bubble
    (10003, 1014, NULL, 10001, 'charmander', NULL, 2, ARRAY[33, 39, 145]),
    -- Blue: Pidgey Lv. 9: Gust, Sand Attack
    (10003, 1014, NULL, 10001, 'squirtle', NULL, 1, ARRAY[16, 28]),
    -- Blue: Bulbasaur Lv. 8: Tackle, Growl, Leech Seed
    (10003, 1014, NULL, 10001, 'squirtle', NULL, 2, ARRAY[33, 45, 73]),
    -- Blue: Pidgeotto Lv. 18: Gust, Sand Attack, Quick Attack
    (10005, 1014, NULL, 10001, 'bulbasaur', NULL, 1, ARRAY[16, 28, 98]),
    -- Blue: Abra Lv. 15: Teleport
    (10005, 1014, NULL, 10001, 'bulbasaur', NULL, 2, ARRAY[100]),
    -- Blue: Rattata Lv. 15: Tackle, Tail Whip, Quick Attack, Hyper Fang
    (10005, 1014, NULL, 10001, 'bulbasaur', NULL, 3, ARRAY[33, 39, 98, 158]),
    -- Blue: Charmander Lv. 17: Scratch, Growl, Ember, Leer
    (10005, 1014, NULL, 10001, 'bulbasaur', NULL, 4, ARRAY[10, 45, 52, 43]),
    -- Blue: Pidgeotto Lv. 18: Gust, Sand Attack, Quick Attack
    (10005, 1014, NULL, 10001, 'charmander', NULL, 1, ARRAY[16, 28, 98]),
    -- Blue: Abra Lv. 15: Teleport
    (10005, 1014, NULL, 10001, 'charmander', NULL, 2, ARRAY[100]),
    -- Blue: Rattata Lv. 15: Tackle, Tail Whip, Quick Attack, Hyper Fang
    (10005, 1014, NULL, 10001, 'charmander', NULL, 3, ARRAY[33, 39, 98, 158]),
    -- Blue: Squirtle Lv. 17: Tackle, Tail Whip, Bubble, Water Gun
    (10005, 1014, NULL, 10001, 'charmander', NULL, 4, ARRAY[33, 39, 145, 55]),
    -- Blue: Pidgeotto Lv. 18: Gust, Sand Attack, Quick Attack
    (10005, 1014, NULL, 10001, 'squirtle', NULL, 1, ARRAY[16, 28, 98]),
    -- Blue: Abra Lv. 15: Teleport
    (10005, 1014, NULL, 10001, 'squirtle', NULL, 2, ARRAY[100]),
    -- Blue: Rattata Lv. 15: Tackle, Tail Whip, Quick Attack, Hyper Fang
    (10005, 1014, NULL, 10001, 'squirtle', NULL, 3, ARRAY[33, 39, 98, 158]),
    -- Blue: Bulbasaur Lv. 17: Tackle, Growl, Leech Seed, Vine Whip
    (10005, 1014, NULL, 10001, 'squirtle', NULL, 4, ARRAY[33, 45, 73, 22]),
    -- Blue: Pidgeotto Lv. 19: Gust, Sand Attack, Quick Attack
    (10019, 1014, NULL, 10001, 'bulbasaur', NULL, 1, ARRAY[16, 28, 98]),
    -- Blue: Raticate Lv. 16: Tackle, Tail Whip, Quick Attack, Hyper Fang
    (10019, 1014, NULL, 10001, 'bulbasaur', NULL, 2, ARRAY[33, 39, 98, 158]),
    -- Blue: Kadabra Lv. 18: Teleport, Confusion, Disable
    (10019, 1014, NULL, 10001, 'bulbasaur', NULL, 3, ARRAY[100, 93, 50]),
    -- Blue: Charmeleon Lv. 20: Scratch, Growl, Ember, Leer
    (10019, 1014, NULL, 10001, 'bulbasaur', NULL, 4, ARRAY[10, 45, 52, 43]),
    -- Blue: Pidgeotto Lv. 19: Gust, Sand Attack, Quick Attack
    (10019, 1014, NULL, 10001, 'charmander', NULL, 1, ARRAY[16, 28, 98]),
    -- Blue: Raticate Lv. 16: Tackle, Tail Whip, Quick Attack, Hyper Fang
    (10019, 1014, NULL, 10001, 'charmander', NULL, 2, ARRAY[33, 39, 98, 158]),
    -- Blue: Kadabra Lv. 18: Teleport, Confusion, Disable
    (10019, 1014, NULL, 10001, 'charmander', NULL, 3, ARRAY[100, 93, 50]),
    -- Blue: Wartortle Lv. 20: Tackle, Tail Whip, Bubble, Water Gun
    (10019, 1014, NULL, 10001, 'charmander', NULL, 4, ARRAY[33, 39, 145, 55]),
    -- Blue: Pidgeotto Lv. 19: Gust, Sand Attack, Quick Attack
    (10019, 1014, NULL, 10001, 'squirtle', NULL, 1, ARRAY[16, 28, 98]),
    -- Blue: Raticate Lv. 16: Tackle, Tail Whip, Quick Attack, Hyper Fang
    (10019, 1014, NULL, 10001, 'squirtle', NULL, 2, ARRAY[33, 39, 98, 158]),
    -- Blue: Kadabra Lv. 18: Teleport, Confusion, Disable
    (10019, 1014, NULL, 10001, 'squirtle', NULL, 3, ARRAY[100, 93, 50]),
    -- Blue: Ivysaur Lv. 20: Tackle, Growl, Leech Seed, Vine Whip
    (10019, 1014, NULL, 10001, 'squirtle', NULL, 4, ARRAY[33, 45, 73, 22]),
    -- Blue: Pidgeotto Lv. 25: Gust, Sand Attack, Quick Attack, Whirlwind
    (10021, 1014, NULL, 10001, 'bulbasaur', NULL, 1, ARRAY[16, 28, 98, 18]),
    -- Blue: Exeggcute Lv. 23: Barrage, Hypnosis
    (10021, 1014, NULL, 10001, 'bulbasaur', NULL, 2, ARRAY[140, 95]),
    -- Blue: Gyarados Lv. 22: Bite, Dragon Rage, Leer, Hydro Pump
    (10021, 1014, NULL, 10001, 'bulbasaur', NULL, 3, ARRAY[44, 82, 43, 56]),
    -- Blue: Kadabra Lv. 20: Teleport, Confusion, Disable
    (10021, 1014, NULL, 10001, 'bulbasaur', NULL, 4, ARRAY[100, 93, 50]),
    -- Blue: Charmeleon Lv. 25: Growl, Ember, Leer, Rage
    (10021, 1014, NULL, 10001, 'bulbasaur', NULL, 5, ARRAY[45, 52, 43, 99]),
    -- Blue: Pidgeotto Lv. 25: Gust, Sand Attack, Quick Attack, Whirlwind
    (10021, 1014, NULL, 10001, 'charmander', NULL, 1, ARRAY[16, 28, 98, 18]),
    -- Blue: Growlithe Lv. 23: Bite, Roar, Ember, Leer
    (10021, 1014, NULL, 10001, 'charmander', NULL, 2, ARRAY[44, 46, 52, 43]),
    -- Blue: Exeggcute Lv. 22: Barrage, Hypnosis
    (10021, 1014, NULL, 10001, 'charmander', NULL, 3, ARRAY[140, 95]),
    -- Blue: Kadabra Lv. 20: Teleport, Confusion, Disable
    (10021, 1014, NULL, 10001, 'charmander', NULL, 4, ARRAY[100, 93, 50]),
    -- Blue: Wartortle Lv. 25: Tail Whip, Bubble, Water Gun, Bite
    (10021, 1014, NULL, 10001, 'charmander', NULL, 5, ARRAY[39, 145, 55, 44]),
    -- Blue: Pidgeotto Lv. 25: Gust, Sand Attack, Quick Attack, Whirlwind
    (10021, 1014, NULL, 10001, 'squirtle', NULL, 1, ARRAY[16, 28, 98, 18]),
    -- Blue: Gyarados Lv. 23: Bite, Dragon Rage, Leer, Hydro Pump
    (10021, 1014, NULL, 10001, 'squirtle', NULL, 2, ARRAY[44, 82, 43, 56]),
    -- Blue: Growlithe Lv. 22: Bite, Roar, Ember
    (10021, 1014, NULL, 10001, 'squirtle', NULL, 3, ARRAY[44, 46, 52]),
    -- Blue: Kadabra Lv. 20: Teleport, Confusion, Disable
    (10021, 1014, NULL, 10001, 'squirtle', NULL, 4, ARRAY[100, 93, 50]),
    -- Blue: Ivysaur Lv. 25: Growl, Leech Seed, Vine Whip, Poison Powder
    (10021, 1014, NULL, 10001, 'squirtle', NULL, 5, ARRAY[45, 73, 22, 77]),
    -- Giovanni: Onix Lv. 25: Screech, Bind, Rock Throw, Rage
    (10020, 1015, NULL, NULL, NULL, NULL, 1, ARRAY[103, 20, 88, 99]),
    -- Giovanni: Rhyhorn Lv. 24: Horn Attack
    (10020, 1015, NULL, NULL, NULL, NULL, 2, ARRAY[30]),
    -- Giovanni: Kangaskhan Lv. 29: Comet Punch, Rage, Bite
    (10020, 1015, NULL, NULL, NULL, NULL, 3, ARRAY[4, 99, 44]),
    -- Blue: Pidgeot Lv. 37: Sand Attack, Quick Attack, Whirlwind, Wing Attack
    (10022, 1014, NULL, 10001, 'bulbasaur', NULL, 1, ARRAY[28, 98, 18, 17]),
    -- Blue: Exeggcute Lv. 38: Reflect, Leech Seed, Stun Spore, Poison Powder
    (10022, 1014, NULL, 10001, 'bulbasaur', NULL, 2, ARRAY[115, 73, 78, 77]),
    -- Blue: Gyarados Lv. 35: Bite, Dragon Rage, Leer, Hydro Pump
    (10022, 1014, NULL, 10001, 'bulbasaur', NULL, 3, ARRAY[44, 82, 43, 56]),
    -- Blue: Alakazam Lv. 35: Confusion, Disable, Psybeam, Recover
    (10022, 1014, NULL, 10001, 'bulbasaur', NULL, 4, ARRAY[93, 50, 60, 105]),
    -- Blue: Charizard Lv. 40: Ember, Leer, Rage, Slash
    (10022, 1014, NULL, 10001, 'bulbasaur', NULL, 5, ARRAY[52, 43, 99, 163]),
    -- Blue: Pidgeot Lv. 37: Sand Attack, Quick Attack, Whirlwind, Wing Attack
    (10022, 1014, NULL, 10001, 'charmander', NULL, 1, ARRAY[28, 98, 18, 17]),
    -- Blue: Growlithe Lv. 38: Roar, Ember, Leer, Take Down
    (10022, 1014, NULL, 10001, 'charmander', NULL, 2, ARRAY[46, 52, 43, 36]),
    -- Blue: Exeggcute Lv. 35: Hypnosis, Reflect, Leech Seed, Stun Spore
    (10022, 1014, NULL, 10001, 'charmander', NULL, 3, ARRAY[95, 115, 73, 78]),
    -- Blue: Alakazam Lv. 35: Confusion, Disable, Psybeam, Recover
    (10022, 1014, NULL, 10001, 'charmander', NULL, 4, ARRAY[93, 50, 60, 105]),
    -- Blue: Blastoise Lv. 40: Bubble, Water Gun, Bite, Withdraw
    (10022, 1014, NULL, 10001, 'charmander', NULL, 5, ARRAY[145, 55, 44, 110]),
    -- Blue: Pidgeot Lv. 37: Sand Attack, Quick Attack, Whirlwind, Wing Attack
    (10022, 1014, NULL, 10001, 'squirtle', NULL, 1, ARRAY[28, 98, 18, 17]),
    -- Blue: Gyarados Lv. 38: Bite, Dragon Rage, Leer, Hydro Pump
    (10022, 1014, NULL, 10001, 'squirtle', NULL, 2, ARRAY[44, 82, 43, 56]),
    -- Blue: Growlithe Lv. 35: Roar, Ember, Leer, Take Down
    (10022, 1014, NULL, 10001, 'squirtle', NULL, 3, ARRAY[46, 52, 43, 36]),
    -- Blue: Alakazam Lv. 35: Confusion, Disable, Psybeam, Recover
    (10022, 1014, NULL, 10001, 'squirtle', NULL, 4, ARRAY[93, 50, 60, 105]),
    -- Blue: Venusaur Lv. 40: Leech Seed, Vine Whip, Poison Powder, Razor Leaf
    (10022, 1014, NULL, 10001, 'squirtle', NULL, 5, ARRAY[73, 22, 77, 75]),
    -- Giovanni: Nidorino Lv. 37: Horn Attack, Poison Sting, Focus Energy, Fury Attack
    (10022, 1015, NULL, NULL, NULL, NULL, 1, ARRAY[30, 40, 116, 31]),
    -- Giovanni: Kangaskhan Lv. 35: Comet Punch, Rage, Bite, Tail Whip
    (10022, 1015, NULL, NULL, NULL, NULL, 2, ARRAY[4, 99, 44, 39]),
    -- Giovanni: Rhyhorn Lv. 37: Horn Attack, Stomp, Tail Whip
    (10022, 1015, NULL, NULL, NULL, NULL, 3, ARRAY[30, 23, 39]),
    -- Giovanni: Nidoqueen Lv. 41: Scratch, Tail Whip, Body Slam, Poison Sting
    (10022, 1015, NULL, NULL, NULL, NULL, 4, ARRAY[10, 39, 34, 40]),
    -- Blue: Pidgeot Lv. 47: Quick Attack, Whirlwind, Wing Attack, Agility
    (10013, 1014, NULL, 10001, 'bulbasaur', NULL, 1, ARRAY[98, 18, 17, 97]),
    -- Blue: Rhyhorn Lv. 45: Stomp, Tail Whip, Fury Attack, Horn Drill
    (10013, 1014, NULL, 10001, 'bulbasaur', NULL, 2, ARRAY[23, 39, 31, 32]),
    -- Blue: Exeggcute Lv. 45: Leech Seed, Stun Spore, Poison Powder, Solar Beam
    (10013, 1014, NULL, 10001, 'bulbasaur', NULL, 3, ARRAY[73, 78, 77, 76]),
    -- Blue: Gyarados Lv. 47: Bite, Dragon Rage, Leer, Hydro Pump
    (10013, 1014, NULL, 10001, 'bulbasaur', NULL, 4, ARRAY[44, 82, 43, 56]),
    -- Blue: Alakazam Lv. 50: Psybeam, Recover, Psychic, Reflect
    (10013, 1014, NULL, 10001, 'bulbasaur', NULL, 5, ARRAY[60, 105, 94, 115]),
    -- Blue: Charizard Lv. 53: Leer, Rage, Slash, Flamethrower
    (10013, 1014, NULL, 10001, 'bulbasaur', NULL, 6, ARRAY[43, 99, 163, 53]),
    -- Blue: Pidgeot Lv. 47: Quick Attack, Whirlwind, Wing Attack, Agility
    (10013, 1014, NULL, 10001, 'charmander', NULL, 1, ARRAY[98, 18, 17, 97]),
    -- Blue: Rhyhorn Lv. 45: Stomp, Tail Whip, Fury Attack, Horn Drill
    (10013, 1014, NULL, 10001, 'charmander', NULL, 2, ARRAY[23, 39, 31, 32]),
    -- Blue: Growlithe Lv. 45: Ember, Leer, Take Down, Agility
    (10013, 1014, NULL, 10001, 'charmander', NULL, 3, ARRAY[52, 43, 36, 97]),
    -- Blue: Exeggcute Lv. 47: Leech Seed, Stun Spore, Poison Powder, Solar Beam
    (10013, 1014, NULL, 10001, 'charmander', NULL, 4, ARRAY[73, 78, 77, 76]),
    -- Blue: Alakazam Lv. 50: Psybeam, Recover, Psychic, Reflect
    (10013, 1014, NULL, 10001, 'charmander', NULL, 5, ARRAY[60, 105, 94, 115]),
    -- Blue: Blastoise Lv. 53: Bite, Withdraw, Skull Bash, Hydro Pump
    (10013, 1014, NULL, 10001, 'charmander', NULL, 6, ARRAY[44, 110, 130, 56]),
    -- Blue: Pidgeot Lv. 47: Quick Attack, Whirlwind, Wing Attack, Agility
    (10013, 1014, NULL, 10001, 'squirtle', NULL, 1, ARRAY[98, 18, 17, 97]),
    -- Blue: Rhyhorn Lv. 45: Stomp, Tail Whip, Fury Attack, Horn Drill
    (10013, 1014, NULL, 10001, 'squirtle', NULL, 2, ARRAY[23, 39, 31, 32]),
    -- Blue: Gyarados Lv. 45: Bite, Dragon Rage, Leer, Hydro Pump
    (10013, 1014, NULL, 10001, 'squirtle', NULL, 3, ARRAY[44, 82, 43, 56]),
    -- Blue: Growlithe Lv. 47: Ember, Leer, Take Down, Agility
    (10013, 1014, NULL, 10001, 'squirtle', NULL, 4, ARRAY[52, 43, 36, 97]),
    -- Blue: Alakazam Lv. 50: Psybeam, Recover, Psychic, Reflect
    (10013, 1014, NULL, 10001, 'squirtle', NULL, 5, ARRAY[60, 105, 94, 115]),
    -- Blue: Venusaur Lv. 53: Vine Whip, Poison Powder, Razor Leaf, Growth
    (10013, 1014, NULL, 10001, 'squirtle', NULL, 6, ARRAY[22, 77, 75, 74]),
    -- Zapdos: Zapdos Lv. 50: Thunder Shock, Drill Peck
    (10023, 1016, NULL, NULL, NULL, NULL, 1, ARRAY[84, 65]),
    -- Articuno: Articuno Lv. 50: Peck, Ice Beam
    (10024, 1017, NULL, NULL, NULL, NULL, 1, ARRAY[64, 58]),
    -- Moltres: Moltres Lv. 50: Peck, Fire Spin
    (10025, 1018, NULL, NULL, NULL, NULL, 1, ARRAY[64, 83]),
    -- Mewtwo: Mewtwo Lv. 70: Swift, Psychic, Barrier, Recover
    (10026, 1019, NULL, NULL, NULL, NULL, 1, ARRAY[129, 94, 112, 105])
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
  AND members.game_id IS NOT DISTINCT FROM team_moves.game_id::integer
  AND members.decision_milestone_id IS NOT DISTINCT FROM team_moves.decision_milestone_id::integer
  AND members.decision_option_slug IS NOT DISTINCT FROM team_moves.decision_option_slug::text
  AND members.variant_slug IS NOT DISTINCT FROM team_moves.variant_slug::text
  AND members.slot = team_moves.member_slot
CROSS JOIN LATERAL UNNEST(team_moves.move_ids) WITH ORDINALITY AS moves (move_id, slot);
