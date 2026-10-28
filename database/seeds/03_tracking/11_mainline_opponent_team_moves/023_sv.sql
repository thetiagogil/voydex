-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokéWiki trainer team tables for this game, matched to each
-- team by its Pokémon and their levels.
-- Fixed encounters (legendaries and other one-off Pokémon): the game's
-- data-mined encounter table; where it sets no moves, the game's default from
-- its own level-up learnset. Cross-checked with Serebii and Bulbapedia.
-- Fixed encounters, totems, Titans, story bosses and trainers the sources
-- above leave out: Serebii, Bulbapedia and PokéWiki, kept where two agree;
-- where they disagree or only one covers it, Bulbapedia, then Serebii.
-- Pokémon no source confirms are left without moves (Voydex reads their types).
-- Scope: Scarlet / Violet Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Scarlet / Violet opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Katy: Nymble Lv. 14: Struggle Bug, Double Kick
    (230003, 23001, NULL, NULL, NULL, NULL, 1, ARRAY[522, 24]),
    -- Katy: Tarountula Lv. 14: Bug Bite, Assurance
    (230003, 23001, NULL, NULL, NULL, NULL, 2, ARRAY[450, 372]),
    -- Katy: Teddiursa Lv. 15: Fury Cutter, Fury Swipes
    (230003, 23001, NULL, NULL, NULL, NULL, 3, ARRAY[210, 154]),
    -- Brassius: Petilil Lv. 16: Sleep Powder, Mega Drain
    (230004, 23002, NULL, NULL, NULL, NULL, 1, ARRAY[79, 72]),
    -- Brassius: Smoliv Lv. 16: Tackle, Razor Leaf
    (230004, 23002, NULL, NULL, NULL, NULL, 2, ARRAY[33, 75]),
    -- Brassius: Sudowoodo Lv. 17: Trailblaze, Rock Throw
    (230004, 23002, NULL, NULL, NULL, NULL, 3, ARRAY[885, 88]),
    -- Iono: Wattrel Lv. 23: Pluck, Quick Attack, Spark
    (230005, 23003, NULL, NULL, NULL, NULL, 1, ARRAY[365, 98, 209]),
    -- Iono: Bellibolt Lv. 23: Water Gun, Spark
    (230005, 23003, NULL, NULL, NULL, NULL, 2, ARRAY[55, 209]),
    -- Iono: Luxio Lv. 23: Spark, Bite
    (230005, 23003, NULL, NULL, NULL, NULL, 3, ARRAY[209, 44]),
    -- Iono: Mismagius Lv. 24: Charge Beam, Hex, Confuse Ray
    (230005, 23003, NULL, NULL, NULL, NULL, 4, ARRAY[451, 506, 109]),
    -- Kofu: Veluza Lv. 29: Slash, Pluck, Aqua Cutter
    (230006, 23004, NULL, NULL, NULL, NULL, 1, ARRAY[163, 365, 895]),
    -- Kofu: Wugtrio Lv. 29: Mud-Slap, Water Pulse, Headbutt
    (230006, 23004, NULL, NULL, NULL, NULL, 2, ARRAY[189, 352, 29]),
    -- Kofu: Crabominable Lv. 30: Crabhammer, Rock Smash, Slam
    (230006, 23004, NULL, NULL, NULL, NULL, 3, ARRAY[152, 249, 21]),
    -- Larry: Komala Lv. 35: Yawn, Sucker Punch, Slam
    (230007, 23005, NULL, NULL, NULL, NULL, 1, ARRAY[281, 389, 21]),
    -- Larry: Dudunsparce Lv. 35: Hyper Drill, Drill Run, Glare
    (230007, 23005, NULL, NULL, NULL, NULL, 2, ARRAY[887, 529, 137]),
    -- Larry: Staraptor Lv. 36: Facade, Aerial Ace
    (230007, 23005, NULL, NULL, NULL, NULL, 3, ARRAY[263, 332]),
    -- Ryme: Banette Lv. 41: Icy Wind, Sucker Punch, Shadow Sneak
    (230008, 23006, NULL, NULL, NULL, NULL, 1, ARRAY[196, 389, 425]),
    -- Ryme: Mimikyu Lv. 41: Light Screen, Shadow Sneak, Slash
    (230008, 23006, NULL, NULL, NULL, NULL, 2, ARRAY[113, 425, 163]),
    -- Ryme: Houndstone Lv. 41: Play Rough, Crunch, Phantom Force
    (230008, 23006, NULL, NULL, NULL, NULL, 3, ARRAY[583, 242, 566]),
    -- Ryme: Toxtricity (Low Key) Lv. 42: Discharge, Hex, Hyper Voice
    (230008, 23006, NULL, NULL, NULL, NULL, 4, ARRAY[435, 506, 304]),
    -- Tulip: Farigiraf Lv. 44: Crunch, Zen Headbutt, Reflect
    (230009, 23007, NULL, NULL, NULL, NULL, 1, ARRAY[242, 428, 115]),
    -- Tulip: Gardevoir Lv. 44: Psychic, Dazzling Gleam, Energy Ball
    (230009, 23007, NULL, NULL, NULL, NULL, 2, ARRAY[94, 605, 412]),
    -- Tulip: Espathra Lv. 44: Psychic, Quick Attack, Shadow Ball
    (230009, 23007, NULL, NULL, NULL, NULL, 3, ARRAY[94, 98, 247]),
    -- Tulip: Florges Lv. 45: Psychic, Moonblast, Petal Blizzard
    (230009, 23007, NULL, NULL, NULL, NULL, 4, ARRAY[94, 585, 572]),
    -- Grusha: Frosmoth Lv. 47: Blizzard, Bug Buzz, Tailwind
    (230010, 23008, NULL, NULL, NULL, NULL, 1, ARRAY[59, 405, 366]),
    -- Grusha: Beartic Lv. 47: Aqua Jet, Icicle Crash, Earthquake
    (230010, 23008, NULL, NULL, NULL, NULL, 2, ARRAY[453, 556, 89]),
    -- Grusha: Cetitan Lv. 47: Ice Spinner, Liquidation, Ice Shard
    (230010, 23008, NULL, NULL, NULL, NULL, 3, ARRAY[861, 710, 420]),
    -- Grusha: Altaria Lv. 48: Ice Beam, Dragon Pulse, Moonblast, Hurricane
    (230010, 23008, NULL, NULL, NULL, NULL, 4, ARRAY[58, 406, 585, 542]),
    -- Rika: Whiscash Lv. 57: Muddy Water, Earth Power, Blizzard, Future Sight
    (230011, 23009, NULL, NULL, NULL, NULL, 1, ARRAY[330, 414, 59, 248]),
    -- Rika: Camerupt Lv. 57: Earth Power, Fire Blast, Flash Cannon, Yawn
    (230011, 23009, NULL, NULL, NULL, NULL, 2, ARRAY[414, 126, 430, 281]),
    -- Rika: Donphan Lv. 57: Earthquake, Stone Edge, Iron Head, Poison Jab
    (230011, 23009, NULL, NULL, NULL, NULL, 3, ARRAY[89, 444, 442, 398]),
    -- Rika: Dugtrio Lv. 57: Earthquake, Rock Slide, Sucker Punch, Sandstorm
    (230011, 23009, NULL, NULL, NULL, NULL, 4, ARRAY[89, 157, 389, 201]),
    -- Rika: Clodsire Lv. 58: Earthquake, Liquidation, Toxic, Protect
    (230011, 23009, NULL, NULL, NULL, NULL, 5, ARRAY[89, 710, 92, 182]),
    -- Poppy: Copperajah Lv. 58: High Horsepower, Play Rough, Heavy Slam, Stealth Rock
    (230012, 23010, NULL, NULL, NULL, NULL, 1, ARRAY[667, 583, 484, 446]),
    -- Poppy: Magnezone Lv. 58: Discharge, Flash Cannon, Light Screen, Tri Attack
    (230012, 23010, NULL, NULL, NULL, NULL, 2, ARRAY[435, 430, 113, 161]),
    -- Poppy: Bronzong Lv. 58: Iron Head, Zen Headbutt, Rock Blast, Earthquake
    (230012, 23010, NULL, NULL, NULL, NULL, 3, ARRAY[442, 428, 350, 89]),
    -- Poppy: Corviknight Lv. 58: Brave Bird, Iron Head, Body Press, Iron Defense
    (230012, 23010, NULL, NULL, NULL, NULL, 4, ARRAY[413, 442, 776, 334]),
    -- Poppy: Tinkaton Lv. 59: Play Rough, Gigaton Hammer, Brick Break, Stone Edge
    (230012, 23010, NULL, NULL, NULL, NULL, 5, ARRAY[583, 893, 280, 444]),
    -- Larry: Tropius Lv. 59: Air Slash, Solar Beam, Dragon Pulse, Sunny Day
    (230013, 23011, NULL, NULL, NULL, NULL, 1, ARRAY[403, 76, 406, 241]),
    -- Larry: Oricorio (Pom-Pom) Lv. 59: Revelation Dance, Air Slash, Teeter Dance, Icy Wind
    (230013, 23011, NULL, NULL, NULL, NULL, 2, ARRAY[686, 403, 298, 196]),
    -- Larry: Altaria Lv. 59: Moonblast, Flamethrower, Ice Beam, Dragon Pulse
    (230013, 23011, NULL, NULL, NULL, NULL, 3, ARRAY[585, 53, 58, 406]),
    -- Larry: Staraptor Lv. 59: Facade, Brave Bird, Close Combat, Thief
    (230013, 23011, NULL, NULL, NULL, NULL, 4, ARRAY[263, 413, 370, 168]),
    -- Larry: Flamigo Lv. 60: Brave Bird, Close Combat, Throat Chop, Liquidation
    (230013, 23011, NULL, NULL, NULL, NULL, 5, ARRAY[413, 370, 675, 710]),
    -- Hassel: Noivern Lv. 60: Air Slash, Dragon Pulse, Super Fang, Hyper Voice
    (230014, 23012, NULL, NULL, NULL, NULL, 1, ARRAY[403, 406, 162, 304]),
    -- Hassel: Haxorus Lv. 60: Dragon Claw, Crunch, Iron Head, Rock Tomb
    (230014, 23012, NULL, NULL, NULL, NULL, 2, ARRAY[337, 242, 442, 317]),
    -- Hassel: Dragalge Lv. 60: Sludge Bomb, Dragon Pulse, Hydro Pump, Thunderbolt
    (230014, 23012, NULL, NULL, NULL, NULL, 3, ARRAY[188, 406, 56, 85]),
    -- Hassel: Flapple Lv. 60: Dragon Rush, Seed Bomb, Aerial Ace, Leech Seed
    (230014, 23012, NULL, NULL, NULL, NULL, 4, ARRAY[407, 402, 332, 73]),
    -- Hassel: Baxcalibur Lv. 61: Icicle Crash, Brick Break, Glaive Rush
    (230014, 23012, NULL, NULL, NULL, NULL, 5, ARRAY[556, 280, 862]),
    -- Geeta: Espathra Lv. 61: Lumina Crash, Dazzling Gleam, Quick Attack, Reflect
    (230015, 23013, NULL, NULL, NULL, NULL, 1, ARRAY[855, 605, 98, 115]),
    -- Geeta: Gogoat Lv. 61: Horn Leech, Zen Headbutt, Play Rough, Bulk Up
    (230015, 23013, NULL, NULL, NULL, NULL, 2, ARRAY[532, 428, 583, 339]),
    -- Geeta: Veluza Lv. 61: Aqua Jet, Liquidation, Psycho Cut, Ice Fang
    (230015, 23013, NULL, NULL, NULL, NULL, 3, ARRAY[453, 710, 427, 423]),
    -- Geeta: Avalugg Lv. 61: Avalanche, Crunch, Earthquake, Body Press
    (230015, 23013, NULL, NULL, NULL, NULL, 4, ARRAY[419, 242, 89, 776]),
    -- Geeta: Kingambit Lv. 61: Iron Head, Kowtow Cleave, Zen Headbutt, Stone Edge
    (230015, 23013, NULL, NULL, NULL, NULL, 5, ARRAY[442, 869, 428, 444]),
    -- Geeta: Glimmora Lv. 62: Tera Blast, Sludge Wave, Earth Power, Dazzling Gleam
    (230015, 23013, NULL, NULL, NULL, NULL, 6, ARRAY[851, 482, 414, 605]),
    -- Nemona: Lycanroc Lv. 65: Accelerock, Drill Run, Stone Edge, Stealth Rock
    (230016, 23014, NULL, 230001, 'sprigatito', NULL, 1, ARRAY[709, 529, 444, 446]),
    -- Nemona: Goodra Lv. 65: Dragon Pulse, Muddy Water, Ice Beam, Sludge Bomb
    (230016, 23014, NULL, 230001, 'sprigatito', NULL, 2, ARRAY[406, 330, 58, 188]),
    -- Nemona: Dudunsparce (Three-Segment) Lv. 65: Hyper Drill, Drill Run, Dragon Rush, Coil
    (230016, 23014, NULL, 230001, 'sprigatito', NULL, 3, ARRAY[887, 529, 407, 489]),
    -- Nemona: Orthworm Lv. 65: Iron Tail, Body Press, Earthquake, Rock Blast
    (230016, 23014, NULL, 230001, 'sprigatito', NULL, 4, ARRAY[231, 776, 89, 350]),
    -- Nemona: Pawmot Lv. 65: Double Shock, Close Combat, Ice Punch, Quick Attack
    (230016, 23014, NULL, 230001, 'sprigatito', NULL, 5, ARRAY[892, 370, 8, 98]),
    -- Nemona: Quaquaval Lv. 66: Aqua Step, Brick Break, Aerial Ace, Ice Spinner
    (230016, 23014, NULL, 230001, 'sprigatito', NULL, 6, ARRAY[872, 280, 332, 861]),
    -- Nemona: Lycanroc Lv. 65: Accelerock, Drill Run, Stone Edge, Stealth Rock
    (230016, 23014, NULL, 230001, 'fuecoco', NULL, 1, ARRAY[709, 529, 444, 446]),
    -- Nemona: Goodra Lv. 65: Dragon Pulse, Muddy Water, Ice Beam, Sludge Bomb
    (230016, 23014, NULL, 230001, 'fuecoco', NULL, 2, ARRAY[406, 330, 58, 188]),
    -- Nemona: Dudunsparce (Three-Segment) Lv. 65: Hyper Drill, Drill Run, Dragon Rush, Coil
    (230016, 23014, NULL, 230001, 'fuecoco', NULL, 3, ARRAY[887, 529, 407, 489]),
    -- Nemona: Orthworm Lv. 65: Iron Tail, Body Press, Earthquake, Rock Blast
    (230016, 23014, NULL, 230001, 'fuecoco', NULL, 4, ARRAY[231, 776, 89, 350]),
    -- Nemona: Pawmot Lv. 65: Double Shock, Close Combat, Ice Punch, Quick Attack
    (230016, 23014, NULL, 230001, 'fuecoco', NULL, 5, ARRAY[892, 370, 8, 98]),
    -- Nemona: Meowscarada Lv. 66: Flower Trick, Thunder Punch, Shadow Claw, Play Rough
    (230016, 23014, NULL, 230001, 'fuecoco', NULL, 6, ARRAY[870, 9, 421, 583]),
    -- Nemona: Lycanroc Lv. 65: Accelerock, Drill Run, Stone Edge, Stealth Rock
    (230016, 23014, NULL, 230001, 'quaxly', NULL, 1, ARRAY[709, 529, 444, 446]),
    -- Nemona: Goodra Lv. 65: Dragon Pulse, Muddy Water, Ice Beam, Sludge Bomb
    (230016, 23014, NULL, 230001, 'quaxly', NULL, 2, ARRAY[406, 330, 58, 188]),
    -- Nemona: Dudunsparce (Three-Segment) Lv. 65: Hyper Drill, Drill Run, Dragon Rush, Coil
    (230016, 23014, NULL, 230001, 'quaxly', NULL, 3, ARRAY[887, 529, 407, 489]),
    -- Nemona: Orthworm Lv. 65: Iron Tail, Body Press, Earthquake, Rock Blast
    (230016, 23014, NULL, 230001, 'quaxly', NULL, 4, ARRAY[231, 776, 89, 350]),
    -- Nemona: Pawmot Lv. 65: Double Shock, Close Combat, Ice Punch, Quick Attack
    (230016, 23014, NULL, 230001, 'quaxly', NULL, 5, ARRAY[892, 370, 8, 98]),
    -- Nemona: Skeledirge Lv. 66: Torch Song, Earth Power, Shadow Ball, Snarl
    (230016, 23014, NULL, 230001, 'quaxly', NULL, 6, ARRAY[871, 414, 247, 555]),
    -- Giacomo: Pawniard Lv. 21: Metal Claw, Fury Cutter, Aerial Ace
    (230017, 23015, NULL, NULL, NULL, NULL, 1, ARRAY[232, 210, 332]),
    -- Mela: Torkoal Lv. 27: Flame Wheel, Clear Smog
    (230018, 23016, NULL, NULL, NULL, NULL, 1, ARRAY[172, 499]),
    -- Atticus: Skuntank Lv. 32: Sucker Punch, Toxic, Venoshock
    (230019, 23017, NULL, NULL, NULL, NULL, 1, ARRAY[389, 92, 474]),
    -- Atticus: Muk Lv. 32: Sludge Wave, Mud-Slap
    (230019, 23017, NULL, NULL, NULL, NULL, 2, ARRAY[482, 189]),
    -- Atticus: Revavroom Lv. 33: Iron Head, Sludge, Assurance, Bulldoze
    (230019, 23017, NULL, NULL, NULL, NULL, 3, ARRAY[442, 124, 372, 523]),
    -- Ortega: Azumarill Lv. 50: Aqua Tail, Play Rough, Bounce, Charm
    (230020, 23018, NULL, NULL, NULL, NULL, 1, ARRAY[401, 583, 340, 204]),
    -- Ortega: Wigglytuff Lv. 50: Body Slam, Play Rough, Gyro Ball, Charm
    (230020, 23018, NULL, NULL, NULL, NULL, 2, ARRAY[34, 583, 360, 204]),
    -- Ortega: Dachsbun Lv. 51: Crunch, Play Rough, Baby-Doll Eyes, Mud-Slap
    (230020, 23018, NULL, NULL, NULL, NULL, 3, ARRAY[242, 583, 608, 189]),
    -- Eri: Toxicroak Lv. 55: Poison Jab, Brick Break, Sucker Punch
    (230021, 23019, NULL, NULL, NULL, NULL, 1, ARRAY[398, 280, 389]),
    -- Eri: Passimian Lv. 55: Close Combat, Rock Tomb, Seed Bomb
    (230021, 23019, NULL, NULL, NULL, NULL, 2, ARRAY[370, 317, 402]),
    -- Eri: Lucario Lv. 55: Dragon Pulse, Aura Sphere, Dark Pulse
    (230021, 23019, NULL, NULL, NULL, NULL, 3, ARRAY[406, 396, 399]),
    -- Eri: Annihilape Lv. 56: Rage Fist, Close Combat, Ice Punch, Fire Punch
    (230021, 23019, NULL, NULL, NULL, NULL, 4, ARRAY[889, 370, 8, 7]),
    -- Clavell: Oranguru Lv. 60: Yawn, Dream Eater, Reflect, Foul Play
    (230022, 23020, NULL, 230001, 'sprigatito', NULL, 1, ARRAY[281, 138, 115, 492]),
    -- Clavell: Abomasnow Lv. 60: Aurora Veil, Blizzard, Wood Hammer, Ice Shard
    (230022, 23020, NULL, 230001, 'sprigatito', NULL, 2, ARRAY[694, 59, 452, 420]),
    -- Clavell: Polteageist Lv. 60: Shell Smash, Shadow Ball, Sucker Punch, Will-O-Wisp
    (230022, 23020, NULL, 230001, 'sprigatito', NULL, 3, ARRAY[504, 247, 389, 261]),
    -- Clavell: Amoonguss Lv. 60: Spore, Toxic, Giga Drain, Hex
    (230022, 23020, NULL, 230001, 'sprigatito', NULL, 4, ARRAY[147, 92, 202, 506]),
    -- Clavell: Gyarados Lv. 60: Aqua Tail, Crunch, Stone Edge, Earthquake
    (230022, 23020, NULL, 230001, 'sprigatito', NULL, 5, ARRAY[401, 242, 444, 89]),
    -- Clavell: Skeledirge Lv. 61: Shadow Ball, Torch Song, Earth Power, Snarl
    (230022, 23020, NULL, 230001, 'sprigatito', NULL, 6, ARRAY[247, 871, 414, 555]),
    -- Clavell: Oranguru Lv. 60: Yawn, Dream Eater, Reflect, Foul Play
    (230022, 23020, NULL, 230001, 'fuecoco', NULL, 1, ARRAY[281, 138, 115, 492]),
    -- Clavell: Abomasnow Lv. 60: Aurora Veil, Blizzard, Wood Hammer, Ice Shard
    (230022, 23020, NULL, 230001, 'fuecoco', NULL, 2, ARRAY[694, 59, 452, 420]),
    -- Clavell: Polteageist Lv. 60: Shell Smash, Shadow Ball, Sucker Punch, Will-O-Wisp
    (230022, 23020, NULL, 230001, 'fuecoco', NULL, 3, ARRAY[504, 247, 389, 261]),
    -- Clavell: Houndoom Lv. 60: Dark Pulse, Fire Blast, Sludge Bomb, Thunder Fang
    (230022, 23020, NULL, 230001, 'fuecoco', NULL, 4, ARRAY[399, 126, 188, 422]),
    -- Clavell: Amoonguss Lv. 60: Spore, Toxic, Giga Drain, Hex
    (230022, 23020, NULL, 230001, 'fuecoco', NULL, 5, ARRAY[147, 92, 202, 506]),
    -- Clavell: Quaquaval Lv. 61: Brick Break, Aqua Step, Aerial Ace, Ice Spinner
    (230022, 23020, NULL, 230001, 'fuecoco', NULL, 6, ARRAY[280, 872, 332, 861]),
    -- Clavell: Oranguru Lv. 60: Yawn, Dream Eater, Reflect, Foul Play
    (230022, 23020, NULL, 230001, 'quaxly', NULL, 1, ARRAY[281, 138, 115, 492]),
    -- Clavell: Abomasnow Lv. 60: Aurora Veil, Blizzard, Wood Hammer, Ice Shard
    (230022, 23020, NULL, 230001, 'quaxly', NULL, 2, ARRAY[694, 59, 452, 420]),
    -- Clavell: Polteageist Lv. 60: Shell Smash, Shadow Ball, Sucker Punch, Will-O-Wisp
    (230022, 23020, NULL, 230001, 'quaxly', NULL, 3, ARRAY[504, 247, 389, 261]),
    -- Clavell: Gyarados Lv. 60: Aqua Tail, Crunch, Stone Edge, Earthquake
    (230022, 23020, NULL, 230001, 'quaxly', NULL, 4, ARRAY[401, 242, 444, 89]),
    -- Clavell: Houndoom Lv. 60: Dark Pulse, Fire Blast, Sludge Bomb, Thunder Fang
    (230022, 23020, NULL, 230001, 'quaxly', NULL, 5, ARRAY[399, 126, 188, 422]),
    -- Clavell: Meowscarada Lv. 61: Shadow Claw, Flower Trick, Thunder Punch, Play Rough
    (230022, 23020, NULL, 230001, 'quaxly', NULL, 6, ARRAY[421, 870, 9, 583]),
    -- Penny: Umbreon Lv. 62: Dark Pulse, Quick Attack, Baby-Doll Eyes, Psychic
    (230023, 23021, NULL, NULL, NULL, NULL, 1, ARRAY[399, 98, 608, 94]),
    -- Penny: Vaporeon Lv. 62: Hydro Pump, Quick Attack, Baby-Doll Eyes, Aurora Beam
    (230023, 23021, NULL, NULL, NULL, NULL, 2, ARRAY[56, 98, 608, 62]),
    -- Penny: Jolteon Lv. 62: Thunder, Quick Attack, Baby-Doll Eyes, Pin Missile
    (230023, 23021, NULL, NULL, NULL, NULL, 3, ARRAY[87, 98, 608, 42]),
    -- Penny: Flareon Lv. 62: Flare Blitz, Quick Attack, Baby-Doll Eyes, Fire Spin
    (230023, 23021, NULL, NULL, NULL, NULL, 4, ARRAY[394, 98, 608, 83]),
    -- Penny: Leafeon Lv. 62: Leaf Blade, Quick Attack, Baby-Doll Eyes, X-Scissor
    (230023, 23021, NULL, NULL, NULL, NULL, 5, ARRAY[348, 98, 608, 404]),
    -- Penny: Sylveon Lv. 63: Moonblast, Quick Attack, Baby-Doll Eyes, Shadow Ball
    (230023, 23021, NULL, NULL, NULL, NULL, 6, ARRAY[585, 98, 608, 247]),
    -- Stony Cliff Titan: Klawf Lv. 16: Vise Grip, Rock Smash, Block, Rock Tomb
    (230024, 23022, NULL, NULL, NULL, NULL, 1, ARRAY[11, 249, 335, 317]),
    -- Open Sky Titan: Bombirdier Lv. 20: Rock Throw, Wing Attack, Pluck, Torment
    (230025, 23023, NULL, NULL, NULL, NULL, 1, ARRAY[88, 17, 365, 259]),
    -- Lurking Steel Titan: Orthworm Lv. 29: Iron Tail, Headbutt, Wrap, Sandstorm
    (230026, 23024, NULL, NULL, NULL, NULL, 1, ARRAY[231, 29, 35, 201]),
    -- Quaking Earth Titan: Great Tusk Lv. 45: Rapid Spin, Brick Break, Knock Off, Stomping Tantrum
    (230027, 23025, 36, NULL, NULL, NULL, 1, ARRAY[229, 280, 282, 707]),
    -- Quaking Earth Titan: Iron Treads Lv. 45: Rapid Spin, Iron Head, Knock Off, Stomping Tantrum
    (230027, 23025, 37, NULL, NULL, NULL, 1, ARRAY[229, 442, 282, 707]),
    -- False Dragon Titan: Dondozo Lv. 56: Aqua Tail, Body Slam, Water Pulse, Order Up
    (230028, 23026, NULL, NULL, NULL, NULL, 1, ARRAY[401, 34, 352, 856]),
    -- False Dragon Titan: Tatsugiri Lv. 57: Muddy Water, Icy Wind, Taunt, Dragon Pulse
    (230028, 23026, NULL, NULL, NULL, NULL, 2, ARRAY[330, 196, 269, 406]),
    -- Arven: Greedent Lv. 58: Bullet Seed, Body Slam, Psychic Fangs, Earthquake
    (230029, 23027, NULL, NULL, NULL, NULL, 1, ARRAY[331, 34, 706, 89]),
    -- Arven: Cloyster Lv. 59: Rock Blast, Icicle Spear, Liquidation, Light Screen
    (230029, 23027, NULL, NULL, NULL, NULL, 2, ARRAY[350, 333, 710, 113]),
    -- Arven: Scovillain Lv. 60: Fire Blast, Energy Ball, Zen Headbutt, Crunch
    (230029, 23027, NULL, NULL, NULL, NULL, 3, ARRAY[126, 412, 428, 242]),
    -- Arven: Toedscruel Lv. 61: Power Whip, Earth Power, Spore, Sludge Bomb
    (230029, 23027, NULL, NULL, NULL, NULL, 4, ARRAY[438, 414, 147, 188]),
    -- Arven: Garganacl Lv. 62: Stone Edge, Earthquake, Body Press, Stealth Rock
    (230029, 23027, NULL, NULL, NULL, NULL, 5, ARRAY[444, 89, 776, 446]),
    -- Arven: Mabosstiff Lv. 63: Crunch, Psychic Fangs, Fire Fang, Play Rough
    (230029, 23027, NULL, NULL, NULL, NULL, 6, ARRAY[242, 706, 424, 583]),
    -- AI Professor: Slither Wing Lv. 66: Lunge, Leech Life, Low Sweep, Zen Headbutt
    (230031, 23028, 36, NULL, NULL, NULL, 1, ARRAY[679, 141, 490, 428]),
    -- AI Professor: Scream Tail Lv. 66: Play Rough, Drain Punch, Ice Punch, Zen Headbutt
    (230031, 23028, 36, NULL, NULL, NULL, 2, ARRAY[583, 409, 8, 428]),
    -- AI Professor: Brute Bonnet Lv. 66: Earth Power, Giga Drain, Payback, Sucker Punch
    (230031, 23028, 36, NULL, NULL, NULL, 3, ARRAY[414, 202, 371, 389]),
    -- AI Professor: Flutter Mane Lv. 66: Power Gem, Mystical Fire, Shadow Ball, Thunderbolt
    (230031, 23028, 36, NULL, NULL, NULL, 4, ARRAY[408, 595, 247, 85]),
    -- AI Professor: Sandy Shocks Lv. 66: Discharge, Earth Power, Flash Cannon, Power Gem
    (230031, 23028, 36, NULL, NULL, NULL, 5, ARRAY[435, 414, 430, 408]),
    -- AI Professor: Roaring Moon Lv. 67: Dragon Claw, Night Slash, Stone Edge, Earthquake
    (230031, 23028, 36, NULL, NULL, NULL, 6, ARRAY[337, 400, 444, 89]),
    -- AI Professor: Iron Moth Lv. 66: Sludge Wave, Fiery Dance, Discharge, Air Slash
    (230031, 23028, 37, NULL, NULL, NULL, 1, ARRAY[482, 552, 435, 403]),
    -- AI Professor: Iron Bundle Lv. 66: Drill Peck, Water Pulse, Freeze-Dry, Snowscape
    (230031, 23028, 37, NULL, NULL, NULL, 2, ARRAY[65, 352, 573, 883]),
    -- AI Professor: Iron Hands Lv. 66: Thunder Punch, Drain Punch, Iron Head, Fake Out
    (230031, 23028, 37, NULL, NULL, NULL, 3, ARRAY[9, 409, 442, 252]),
    -- AI Professor: Iron Jugulis Lv. 66: Air Slash, Dark Pulse, Flamethrower, Flash Cannon
    (230031, 23028, 37, NULL, NULL, NULL, 4, ARRAY[403, 399, 53, 430]),
    -- AI Professor: Iron Thorns Lv. 66: Thunder Punch, Brick Break, Stone Edge, Earthquake
    (230031, 23028, 37, NULL, NULL, NULL, 5, ARRAY[9, 280, 444, 89]),
    -- AI Professor: Iron Valiant Lv. 67: Psycho Cut, Brick Break, Spirit Break, Poison Jab
    (230031, 23028, 37, NULL, NULL, NULL, 6, ARRAY[427, 280, 789, 398]),
    -- Nemona: Quaxly Lv. 5: Pound, Growl, Water Gun
    (230001, 23029, NULL, 230001, 'sprigatito', NULL, 1, ARRAY[1, 45, 55]),
    -- Nemona: Sprigatito Lv. 5: Scratch, Tail Whip, Leafage
    (230001, 23029, NULL, 230001, 'fuecoco', NULL, 1, ARRAY[10, 39, 670]),
    -- Nemona: Fuecoco Lv. 5: Tackle, Leer, Ember
    (230001, 23029, NULL, 230001, 'quaxly', NULL, 1, ARRAY[33, 43, 52]),
    -- Arven: Skwovet Lv. 5: Tackle, Tail Whip, Bite
    (230002, 23027, NULL, NULL, NULL, NULL, 1, ARRAY[33, 39, 44]),
    -- Nemona: Quaxly Lv. 8: Pound, Growl, Water Gun, Work Up
    (230002, 23029, NULL, 230001, 'sprigatito', NULL, 1, ARRAY[1, 45, 55, 526]),
    -- Nemona: Pawmi Lv. 9: Thunder Shock
    (230002, 23029, NULL, 230001, 'sprigatito', NULL, 2, ARRAY[84]),
    -- Nemona: Sprigatito Lv. 8: Scratch, Tail Whip, Leafage, Bite
    (230002, 23029, NULL, 230001, 'fuecoco', NULL, 1, ARRAY[10, 39, 670, 44]),
    -- Nemona: Pawmi Lv. 9: Thunder Shock
    (230002, 23029, NULL, 230001, 'fuecoco', NULL, 2, ARRAY[84]),
    -- Nemona: Fuecoco Lv. 8: Tackle, Leer, Ember, Round
    (230002, 23029, NULL, 230001, 'quaxly', NULL, 1, ARRAY[33, 43, 52, 496]),
    -- Nemona: Pawmi Lv. 9: Thunder Shock
    (230002, 23029, NULL, 230001, 'quaxly', NULL, 2, ARRAY[84]),
    -- Nemona: Rockruff Lv. 21: Double Team, Rock Throw, Howl, Bite
    (230005, 23029, NULL, 230001, 'sprigatito', NULL, 1, ARRAY[104, 88, 336, 44]),
    -- Nemona: Pawmi Lv. 21: Charge, Nuzzle, Dig, Bite
    (230005, 23029, NULL, 230001, 'sprigatito', NULL, 2, ARRAY[268, 609, 91, 44]),
    -- Nemona: Quaxwell Lv. 22: Double Hit, Water Pulse, Wing Attack, Work Up
    (230005, 23029, NULL, 230001, 'sprigatito', NULL, 3, ARRAY[458, 352, 17, 526]),
    -- Nemona: Rockruff Lv. 21: Double Team, Rock Throw, Howl, Bite
    (230005, 23029, NULL, 230001, 'fuecoco', NULL, 1, ARRAY[104, 88, 336, 44]),
    -- Nemona: Pawmi Lv. 21: Charge, Nuzzle, Dig, Bite
    (230005, 23029, NULL, 230001, 'fuecoco', NULL, 2, ARRAY[268, 609, 91, 44]),
    -- Nemona: Floragato Lv. 22: Quick Attack, Magical Leaf, Hone Claws, Bite
    (230005, 23029, NULL, 230001, 'fuecoco', NULL, 3, ARRAY[98, 345, 468, 44]),
    -- Nemona: Rockruff Lv. 21: Double Team, Rock Throw, Howl, Bite
    (230005, 23029, NULL, 230001, 'quaxly', NULL, 1, ARRAY[104, 88, 336, 44]),
    -- Nemona: Pawmi Lv. 21: Charge, Nuzzle, Dig, Bite
    (230005, 23029, NULL, 230001, 'quaxly', NULL, 2, ARRAY[268, 609, 91, 44]),
    -- Nemona: Crocalor Lv. 22: Incinerate, Yawn, Bite, Round
    (230005, 23029, NULL, 230001, 'quaxly', NULL, 3, ARRAY[510, 281, 44, 496]),
    -- Nemona: Lycanroc Lv. 36: Quick Attack, Accelerock, Bite
    (230007, 23029, NULL, 230001, 'sprigatito', NULL, 1, ARRAY[98, 709, 44]),
    -- Nemona: Goomy Lv. 36: Dragon Pulse, Water Pulse, Flail
    (230007, 23029, NULL, 230001, 'sprigatito', NULL, 2, ARRAY[406, 352, 175]),
    -- Nemona: Pawmo Lv. 36: Spark, Arm Thrust, Thunder Wave, Quick Attack
    (230007, 23029, NULL, 230001, 'sprigatito', NULL, 3, ARRAY[209, 292, 86, 98]),
    -- Nemona: Quaquaval Lv. 37: Air Slash, Aqua Step, Aqua Jet
    (230007, 23029, NULL, 230001, 'sprigatito', NULL, 4, ARRAY[403, 872, 453]),
    -- Nemona: Lycanroc Lv. 36: Quick Attack, Accelerock, Bite
    (230007, 23029, NULL, 230001, 'fuecoco', NULL, 1, ARRAY[98, 709, 44]),
    -- Nemona: Goomy Lv. 36: Dragon Pulse, Water Pulse, Flail
    (230007, 23029, NULL, 230001, 'fuecoco', NULL, 2, ARRAY[406, 352, 175]),
    -- Nemona: Pawmo Lv. 36: Spark, Arm Thrust, Thunder Wave, Quick Attack
    (230007, 23029, NULL, 230001, 'fuecoco', NULL, 3, ARRAY[209, 292, 86, 98]),
    -- Nemona: Meowscarada Lv. 37: Slash, Flower Trick, Quick Attack
    (230007, 23029, NULL, 230001, 'fuecoco', NULL, 4, ARRAY[163, 870, 98]),
    -- Nemona: Lycanroc Lv. 36: Quick Attack, Accelerock, Bite
    (230007, 23029, NULL, 230001, 'quaxly', NULL, 1, ARRAY[98, 709, 44]),
    -- Nemona: Goomy Lv. 36: Dragon Pulse, Water Pulse, Flail
    (230007, 23029, NULL, 230001, 'quaxly', NULL, 2, ARRAY[406, 352, 175]),
    -- Nemona: Pawmo Lv. 36: Spark, Arm Thrust, Thunder Wave, Quick Attack
    (230007, 23029, NULL, 230001, 'quaxly', NULL, 3, ARRAY[209, 292, 86, 98]),
    -- Nemona: Skeledirge Lv. 37: Snarl, Torch Song, Lick
    (230007, 23029, NULL, 230001, 'quaxly', NULL, 4, ARRAY[555, 871, 122]),
    -- Nemona: Lycanroc Lv. 42: Accelerock, Crunch, Rock Slide, Sand Attack
    (230009, 23029, NULL, 230001, 'sprigatito', NULL, 1, ARRAY[709, 242, 157, 28]),
    -- Nemona: Sliggoo Lv. 42: Dragon Pulse, Water Pulse, Flail
    (230009, 23029, NULL, 230001, 'sprigatito', NULL, 2, ARRAY[406, 352, 175]),
    -- Nemona: Pawmot Lv. 42: Spark, Arm Thrust, Thunder Wave, Quick Attack
    (230009, 23029, NULL, 230001, 'sprigatito', NULL, 3, ARRAY[209, 292, 86, 98]),
    -- Nemona: Quaquaval Lv. 43: Air Slash, Aqua Step, Aqua Jet
    (230009, 23029, NULL, 230001, 'sprigatito', NULL, 4, ARRAY[403, 872, 453]),
    -- Nemona: Lycanroc Lv. 42: Accelerock, Crunch, Rock Slide, Sand Attack
    (230009, 23029, NULL, 230001, 'fuecoco', NULL, 1, ARRAY[709, 242, 157, 28]),
    -- Nemona: Sliggoo Lv. 42: Dragon Pulse, Water Pulse, Flail
    (230009, 23029, NULL, 230001, 'fuecoco', NULL, 2, ARRAY[406, 352, 175]),
    -- Nemona: Pawmot Lv. 42: Spark, Arm Thrust, Thunder Wave, Quick Attack
    (230009, 23029, NULL, 230001, 'fuecoco', NULL, 3, ARRAY[209, 292, 86, 98]),
    -- Nemona: Meowscarada Lv. 43: Slash, Flower Trick, Quick Attack
    (230009, 23029, NULL, 230001, 'fuecoco', NULL, 4, ARRAY[163, 870, 98]),
    -- Nemona: Lycanroc Lv. 42: Accelerock, Crunch, Rock Slide, Sand Attack
    (230009, 23029, NULL, 230001, 'quaxly', NULL, 1, ARRAY[709, 242, 157, 28]),
    -- Nemona: Sliggoo Lv. 42: Dragon Pulse, Water Pulse, Flail
    (230009, 23029, NULL, 230001, 'quaxly', NULL, 2, ARRAY[406, 352, 175]),
    -- Nemona: Pawmot Lv. 42: Spark, Arm Thrust, Thunder Wave, Quick Attack
    (230009, 23029, NULL, 230001, 'quaxly', NULL, 3, ARRAY[209, 292, 86, 98]),
    -- Nemona: Skeledirge Lv. 43: Snarl, Torch Song, Lick
    (230009, 23029, NULL, 230001, 'quaxly', NULL, 4, ARRAY[555, 871, 122]),
    -- Arven: Greedent Lv. 67: Bullet Seed, Body Slam, Psychic Fangs, Earthquake
    (230032, 23027, NULL, NULL, NULL, NULL, 1, ARRAY[331, 34, 706, 89]),
    -- Arven: Cloyster Lv. 67: Rock Blast, Icicle Spear, Liquidation, Light Screen
    (230032, 23027, NULL, NULL, NULL, NULL, 2, ARRAY[350, 333, 710, 113]),
    -- Arven: Scovillain Lv. 67: Fire Blast, Energy Ball, Zen Headbutt, Crunch
    (230032, 23027, NULL, NULL, NULL, NULL, 3, ARRAY[126, 412, 428, 242]),
    -- Arven: Toedscruel Lv. 67: Power Whip, Earth Power, Spore, Sludge Bomb
    (230032, 23027, NULL, NULL, NULL, NULL, 4, ARRAY[438, 414, 147, 188]),
    -- Arven: Garganacl Lv. 67: Stone Edge, Earthquake, Body Press, Stealth Rock
    (230032, 23027, NULL, NULL, NULL, NULL, 5, ARRAY[444, 89, 776, 446]),
    -- Arven: Mabosstiff Lv. 68: Crunch, Psychic Fangs, Fire Fang, Play Rough
    (230032, 23027, NULL, NULL, NULL, NULL, 6, ARRAY[242, 706, 424, 583]),
    -- Koraidon: Koraidon Lv. 72: Giga Impact, Bulk Up, Taunt, Flamethrower
    (230031, 23030, NULL, NULL, NULL, NULL, 1, ARRAY[416, 339, 269, 53]),
    -- Miraidon: Miraidon Lv. 72: Hyper Beam, Charge, Taunt, Power Gem
    (230031, 23031, NULL, NULL, NULL, NULL, 1, ARRAY[63, 268, 269, 408]),
    -- Wo-Chien: Wo-Chien Lv. 60: Giga Drain, Ruination, Foul Play, Power Whip
    (230033, 23032, NULL, NULL, NULL, NULL, 1, ARRAY[202, 877, 492, 438]),
    -- Chien-Pao: Chien-Pao Lv. 60: Icicle Crash, Ruination, Sucker Punch, Sacred Sword
    (230034, 23033, NULL, NULL, NULL, NULL, 1, ARRAY[556, 877, 389, 533]),
    -- Ting-Lu: Ting-Lu Lv. 60: Stomping Tantrum, Ruination, Throat Chop, Rock Slide
    (230035, 23034, NULL, NULL, NULL, NULL, 1, ARRAY[707, 877, 675, 157]),
    -- Chi-Yu: Chi-Yu Lv. 60: Lava Plume, Ruination, Bounce, Swagger
    (230036, 23035, NULL, NULL, NULL, NULL, 1, ARRAY[436, 877, 340, 207]),
    -- Koraidon: Koraidon Lv. 72: Giga Impact, Bulk Up, Collision Course, Flamethrower
    (230037, 23030, NULL, NULL, NULL, NULL, 1, ARRAY[416, 339, 878, 53]),
    -- Miraidon: Miraidon Lv. 72: Hyper Beam, Charge, Electro Drift, Power Gem
    (230037, 23031, NULL, NULL, NULL, NULL, 1, ARRAY[63, 268, 879, 408])
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
