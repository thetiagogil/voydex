-- ============================================================================
-- Source
-- ============================================================================
-- Primary: the pret pokeplatinum disassembly of the game: its trainer parties,
-- set moves and level-up learnsets.
-- A Pokémon the game gives no set moves, and every legendary encounter, gets
-- the game's own default: the last four moves it learns by level up to its
-- level, worked out from the same learnsets as the game does.
-- Galactic Commanders (Mars, Jupiter, Saturn): the pret pokeplatinum trainer data,
-- which names each battle's place, cross-checked with Bulbapedia's trainer pages.
-- Scope: Platinum Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Platinum opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Roark: Geodude Lv. 12: Stealth Rock, Rock Throw
    (90003, 9001, NULL, NULL, NULL, NULL, 1, ARRAY[446, 88]),
    -- Roark: Onix Lv. 12: Stealth Rock, Rock Throw, Screech
    (90003, 9001, NULL, NULL, NULL, NULL, 2, ARRAY[446, 88, 103]),
    -- Roark: Cranidos Lv. 14: Headbutt, Pursuit, Leer
    (90003, 9001, NULL, NULL, NULL, NULL, 3, ARRAY[29, 228, 43]),
    -- Gardenia: Turtwig Lv. 20: Grass Knot, Razor Leaf, Sunny Day, Reflect
    (90004, 9002, NULL, NULL, NULL, NULL, 1, ARRAY[447, 75, 241, 115]),
    -- Gardenia: Cherrim Lv. 20: Grass Knot, Leech Seed, Magical Leaf, Safeguard
    (90004, 9002, NULL, NULL, NULL, NULL, 2, ARRAY[447, 73, 345, 219]),
    -- Gardenia: Roserade Lv. 22: Grass Knot, Magical Leaf, Poison Sting, Stun Spore
    (90004, 9002, NULL, NULL, NULL, NULL, 3, ARRAY[447, 345, 40, 78]),
    -- Fantina: Duskull Lv. 24: Will-O-Wisp, Pursuit, Shadow Sneak, Future Sight
    (90005, 9003, NULL, NULL, NULL, NULL, 1, ARRAY[261, 228, 425, 248]),
    -- Fantina: Haunter Lv. 24: Shadow Claw, Sucker Punch, Hypnosis, Confuse Ray
    (90005, 9003, NULL, NULL, NULL, NULL, 2, ARRAY[421, 389, 95, 109]),
    -- Fantina: Mismagius Lv. 26: Shadow Ball, Psybeam, Magical Leaf, Confuse Ray
    (90005, 9003, NULL, NULL, NULL, NULL, 3, ARRAY[247, 60, 345, 109]),
    -- Maylene: Meditite Lv. 28: Drain Punch, Confusion, Rock Tomb, Fake Out
    (90006, 9004, NULL, NULL, NULL, NULL, 1, ARRAY[409, 93, 317, 252]),
    -- Maylene: Machoke Lv. 29: Karate Chop, Rock Tomb, Strength, Focus Energy
    (90006, 9004, NULL, NULL, NULL, NULL, 2, ARRAY[2, 317, 70, 116]),
    -- Maylene: Lucario Lv. 32: Drain Punch, Force Palm, Metal Claw, Bone Rush
    (90006, 9004, NULL, NULL, NULL, NULL, 3, ARRAY[409, 395, 232, 198]),
    -- Crasher Wake: Gyarados Lv. 33: Waterfall, Brine, Bite, Twister
    (90007, 9005, NULL, NULL, NULL, NULL, 1, ARRAY[127, 362, 44, 239]),
    -- Crasher Wake: Quagsire Lv. 34: Mud Shot, Rock Tomb, Water Pulse, Yawn
    (90007, 9005, NULL, NULL, NULL, NULL, 2, ARRAY[341, 317, 352, 281]),
    -- Crasher Wake: Floatzel Lv. 37: Brine, Ice Fang, Crunch, Aqua Jet
    (90007, 9005, NULL, NULL, NULL, NULL, 3, ARRAY[362, 423, 242, 453]),
    -- Byron: Magneton Lv. 37: Flash Cannon, Thunderbolt, Tri Attack, Metal Sound
    (90008, 9006, NULL, NULL, NULL, NULL, 1, ARRAY[430, 85, 161, 319]),
    -- Byron: Steelix Lv. 38: Flash Cannon, Ice Fang, Earthquake, Sandstorm
    (90008, 9006, NULL, NULL, NULL, NULL, 2, ARRAY[430, 423, 89, 201]),
    -- Byron: Bastiodon Lv. 41: Metal Burst, Stone Edge, Iron Defense, Taunt
    (90008, 9006, NULL, NULL, NULL, NULL, 3, ARRAY[368, 444, 334, 269]),
    -- Candice: Sneasel Lv. 40: Slash, Aerial Ace, Feint Attack, Ice Shard
    (90009, 9007, NULL, NULL, NULL, NULL, 1, ARRAY[163, 332, 185, 420]),
    -- Candice: Piloswine Lv. 40: Avalanche, Stone Edge, Earthquake, Hail
    (90009, 9007, NULL, NULL, NULL, NULL, 2, ARRAY[419, 444, 89, 258]),
    -- Candice: Abomasnow Lv. 42: Avalanche, Wood Hammer, Water Pulse, Focus Blast
    (90009, 9007, NULL, NULL, NULL, NULL, 3, ARRAY[419, 452, 352, 411]),
    -- Candice: Froslass Lv. 44: Blizzard, Double Team, Shadow Ball, Psychic
    (90009, 9007, NULL, NULL, NULL, NULL, 4, ARRAY[59, 104, 247, 94]),
    -- Volkner: Jolteon Lv. 46: Thunder Wave, Charge Beam, Iron Tail, Quick Attack
    (90010, 9008, NULL, NULL, NULL, NULL, 1, ARRAY[86, 451, 231, 98]),
    -- Volkner: Raichu Lv. 46: Charge Beam, Focus Blast, Signal Beam, Quick Attack
    (90010, 9008, NULL, NULL, NULL, NULL, 2, ARRAY[451, 411, 324, 98]),
    -- Volkner: Luxray Lv. 48: Ice Fang, Thunder Fang, Crunch, Fire Fang
    (90010, 9008, NULL, NULL, NULL, NULL, 3, ARRAY[423, 422, 242, 424]),
    -- Volkner: Electivire Lv. 50: Thunder Punch, Fire Punch, Quick Attack, Giga Impact
    (90010, 9008, NULL, NULL, NULL, NULL, 4, ARRAY[9, 7, 98, 416]),
    -- Aaron: Yanmega Lv. 49: Air Slash, Bug Buzz, U-turn, Double Team
    (90011, 9009, NULL, NULL, NULL, NULL, 1, ARRAY[403, 405, 369, 104]),
    -- Aaron: Scizor Lv. 49: Iron Head, X-Scissor, Night Slash, Quick Attack
    (90011, 9009, NULL, NULL, NULL, NULL, 2, ARRAY[442, 404, 400, 98]),
    -- Aaron: Vespiquen Lv. 50: Attack Order, Defend Order, Heal Order, Power Gem
    (90011, 9009, NULL, NULL, NULL, NULL, 3, ARRAY[454, 455, 456, 408]),
    -- Aaron: Heracross Lv. 51: Megahorn, Close Combat, Night Slash, Stone Edge
    (90011, 9009, NULL, NULL, NULL, NULL, 4, ARRAY[224, 370, 400, 444]),
    -- Aaron: Drapion Lv. 53: X-Scissor, Cross Poison, Ice Fang, Aerial Ace
    (90011, 9009, NULL, NULL, NULL, NULL, 5, ARRAY[404, 440, 423, 332]),
    -- Bertha: Whiscash Lv. 50: Earth Power, Aqua Tail, Zen Headbutt, Sandstorm
    (90012, 9010, NULL, NULL, NULL, NULL, 1, ARRAY[414, 401, 428, 201]),
    -- Bertha: Gliscor Lv. 53: Earthquake, Ice Fang, Fire Fang, Thunder Fang
    (90012, 9010, NULL, NULL, NULL, NULL, 2, ARRAY[89, 423, 424, 422]),
    -- Bertha: Hippowdon Lv. 52: Earthquake, Stone Edge, Crunch, Yawn
    (90012, 9010, NULL, NULL, NULL, NULL, 3, ARRAY[89, 444, 242, 281]),
    -- Bertha: Golem Lv. 52: Earthquake, Fire Punch, Thunder Punch, Sandstorm
    (90012, 9010, NULL, NULL, NULL, NULL, 4, ARRAY[89, 7, 9, 201]),
    -- Bertha: Rhyperior Lv. 55: Earthquake, Rock Wrecker, Megahorn, Avalanche
    (90012, 9010, NULL, NULL, NULL, NULL, 5, ARRAY[89, 439, 224, 419]),
    -- Flint: Houndoom Lv. 52: Flamethrower, Sludge Bomb, Dark Pulse, Sunny Day
    (90013, 9011, NULL, NULL, NULL, NULL, 1, ARRAY[53, 188, 399, 241]),
    -- Flint: Flareon Lv. 55: Overheat, Giga Impact, Quick Attack, Will-O-Wisp
    (90013, 9011, NULL, NULL, NULL, NULL, 2, ARRAY[315, 416, 98, 261]),
    -- Flint: Rapidash Lv. 53: Flare Blitz, Solar Beam, Bounce, Sunny Day
    (90013, 9011, NULL, NULL, NULL, NULL, 3, ARRAY[394, 76, 340, 241]),
    -- Flint: Infernape Lv. 55: Flare Blitz, Thunder Punch, Mach Punch, Earthquake
    (90013, 9011, NULL, NULL, NULL, NULL, 4, ARRAY[394, 9, 183, 89]),
    -- Flint: Magmortar Lv. 57: Flamethrower, Thunderbolt, Solar Beam, Hyper Beam
    (90013, 9011, NULL, NULL, NULL, NULL, 5, ARRAY[53, 85, 76, 63]),
    -- Lucian: Mr. Mime Lv. 53: Psychic, Thunderbolt, Reflect, Light Screen
    (90014, 9012, NULL, NULL, NULL, NULL, 1, ARRAY[94, 85, 115, 113]),
    -- Lucian: Espeon Lv. 55: Psychic, Shadow Ball, Quick Attack, Signal Beam
    (90014, 9012, NULL, NULL, NULL, NULL, 2, ARRAY[94, 247, 98, 324]),
    -- Lucian: Bronzong Lv. 54: Psychic, Gyro Ball, Earthquake, Calm Mind
    (90014, 9012, NULL, NULL, NULL, NULL, 3, ARRAY[94, 360, 89, 347]),
    -- Lucian: Alakazam Lv. 56: Psychic, Energy Ball, Focus Blast, Recover
    (90014, 9012, NULL, NULL, NULL, NULL, 4, ARRAY[94, 412, 411, 105]),
    -- Lucian: Gallade Lv. 59: Drain Punch, Psycho Cut, Leaf Blade, Stone Edge
    (90014, 9012, NULL, NULL, NULL, NULL, 5, ARRAY[409, 427, 348, 444]),
    -- Cynthia: Spiritomb Lv. 58: Dark Pulse, Psychic, Silver Wind, Shadow Ball
    (90015, 9013, NULL, NULL, NULL, NULL, 1, ARRAY[399, 94, 318, 247]),
    -- Cynthia: Roserade Lv. 58: Energy Ball, Sludge Bomb, Toxic, Extrasensory
    (90015, 9013, NULL, NULL, NULL, NULL, 2, ARRAY[412, 188, 92, 326]),
    -- Cynthia: Togekiss Lv. 60: Air Slash, Aura Sphere, Water Pulse, Shock Wave
    (90015, 9013, NULL, NULL, NULL, NULL, 3, ARRAY[403, 396, 352, 351]),
    -- Cynthia: Lucario Lv. 60: Aura Sphere, Extreme Speed, Shadow Ball, Stone Edge
    (90015, 9013, NULL, NULL, NULL, NULL, 4, ARRAY[396, 245, 247, 444]),
    -- Cynthia: Milotic Lv. 58: Surf, Ice Beam, Mirror Coat, Dragon Pulse
    (90015, 9013, NULL, NULL, NULL, NULL, 5, ARRAY[57, 58, 243, 406]),
    -- Cynthia: Garchomp Lv. 62: Dragon Rush, Earthquake, Flamethrower, Giga Impact
    (90015, 9013, NULL, NULL, NULL, NULL, 6, ARRAY[407, 89, 53, 416]),
    -- Barry: Chimchar Lv. 5: Scratch, Leer
    (90001, 9014, NULL, 90001, 'turtwig', NULL, 1, ARRAY[10, 43]),
    -- Barry: Piplup Lv. 5: Pound, Growl
    (90001, 9014, NULL, 90001, 'chimchar', NULL, 1, ARRAY[1, 45]),
    -- Barry: Turtwig Lv. 5: Tackle, Withdraw
    (90001, 9014, NULL, 90001, 'piplup', NULL, 1, ARRAY[33, 110]),
    -- Barry: Starly Lv. 7: Quick Attack, Growl
    (90003, 9014, NULL, 90001, 'turtwig', NULL, 1, ARRAY[98, 45]),
    -- Barry: Chimchar Lv. 9: Scratch, Leer
    (90003, 9014, NULL, 90001, 'turtwig', NULL, 2, ARRAY[10, 43]),
    -- Barry: Starly Lv. 7: Quick Attack, Growl
    (90003, 9014, NULL, 90001, 'chimchar', NULL, 1, ARRAY[98, 45]),
    -- Barry: Piplup Lv. 9: Pound, Growl
    (90003, 9014, NULL, 90001, 'chimchar', NULL, 2, ARRAY[1, 45]),
    -- Barry: Starly Lv. 7: Quick Attack, Growl
    (90003, 9014, NULL, 90001, 'piplup', NULL, 1, ARRAY[98, 45]),
    -- Barry: Turtwig Lv. 9: Tackle, Withdraw
    (90003, 9014, NULL, 90001, 'piplup', NULL, 2, ARRAY[33, 110]),
    -- Barry: Staravia Lv. 25: Wing Attack, Quick Attack, Endeavor, Double Team
    (90005, 9014, NULL, 90001, 'turtwig', NULL, 1, ARRAY[17, 98, 283, 104]),
    -- Barry: Buizel Lv. 23: Water Gun, Quick Attack, Pursuit, Growl
    (90005, 9014, NULL, 90001, 'turtwig', NULL, 2, ARRAY[55, 98, 228, 45]),
    -- Barry: Roselia Lv. 23: Mega Drain, Poison Sting, Leech Seed, Stun Spore
    (90005, 9014, NULL, 90001, 'turtwig', NULL, 3, ARRAY[72, 40, 73, 78]),
    -- Barry: Monferno Lv. 27: Flame Wheel, Mach Punch, Fury Swipes, Leer
    (90005, 9014, NULL, 90001, 'turtwig', NULL, 4, ARRAY[172, 183, 154, 43]),
    -- Barry: Staravia Lv. 25: Wing Attack, Quick Attack, Endeavor, Double Team
    (90005, 9014, NULL, 90001, 'chimchar', NULL, 1, ARRAY[17, 98, 283, 104]),
    -- Barry: Roselia Lv. 23: Mega Drain, Poison Sting, Leech Seed, Stun Spore
    (90005, 9014, NULL, 90001, 'chimchar', NULL, 2, ARRAY[72, 40, 73, 78]),
    -- Barry: Ponyta Lv. 23: Ember, Tackle, Tail Whip, Growl
    (90005, 9014, NULL, 90001, 'chimchar', NULL, 3, ARRAY[52, 33, 39, 45]),
    -- Barry: Prinplup Lv. 27: Bubble Beam, Peck, Metal Claw, Growl
    (90005, 9014, NULL, 90001, 'chimchar', NULL, 4, ARRAY[61, 64, 232, 45]),
    -- Barry: Staravia Lv. 25: Wing Attack, Quick Attack, Endeavor, Double Team
    (90005, 9014, NULL, 90001, 'piplup', NULL, 1, ARRAY[17, 98, 283, 104]),
    -- Barry: Buizel Lv. 23: Water Gun, Quick Attack, Pursuit, Growl
    (90005, 9014, NULL, 90001, 'piplup', NULL, 2, ARRAY[55, 98, 228, 45]),
    -- Barry: Ponyta Lv. 23: Ember, Tackle, Tail Whip, Growl
    (90005, 9014, NULL, 90001, 'piplup', NULL, 3, ARRAY[52, 33, 39, 45]),
    -- Barry: Grotle Lv. 27: Razor Leaf, Tackle, Absorb, Withdraw
    (90005, 9014, NULL, 90001, 'piplup', NULL, 4, ARRAY[75, 33, 71, 110]),
    -- Barry: Staravia Lv. 34: Wing Attack, Quick Attack, Endeavor, Double Team
    (90007, 9014, NULL, 90001, 'turtwig', NULL, 1, ARRAY[17, 98, 283, 104]),
    -- Barry: Buizel Lv. 32: Aqua Jet, Quick Attack, Pursuit, Growl
    (90007, 9014, NULL, 90001, 'turtwig', NULL, 2, ARRAY[453, 98, 228, 45]),
    -- Barry: Roselia Lv. 32: Mega Drain, Poison Sting, Leech Seed, Magical Leaf
    (90007, 9014, NULL, 90001, 'turtwig', NULL, 3, ARRAY[72, 40, 73, 345]),
    -- Barry: Monferno Lv. 36: Flame Wheel, Mach Punch, Fury Swipes, Leer
    (90007, 9014, NULL, 90001, 'turtwig', NULL, 4, ARRAY[172, 183, 154, 43]),
    -- Barry: Staravia Lv. 34: Wing Attack, Quick Attack, Endeavor, Double Team
    (90007, 9014, NULL, 90001, 'chimchar', NULL, 1, ARRAY[17, 98, 283, 104]),
    -- Barry: Roselia Lv. 32: Mega Drain, Poison Sting, Leech Seed, Magical Leaf
    (90007, 9014, NULL, 90001, 'chimchar', NULL, 2, ARRAY[72, 40, 73, 345]),
    -- Barry: Ponyta Lv. 32: Ember, Stomp, Tail Whip, Growl
    (90007, 9014, NULL, 90001, 'chimchar', NULL, 3, ARRAY[52, 23, 39, 45]),
    -- Barry: Prinplup Lv. 36: Bubble Beam, Peck, Metal Claw, Growl
    (90007, 9014, NULL, 90001, 'chimchar', NULL, 4, ARRAY[61, 64, 232, 45]),
    -- Barry: Staravia Lv. 34: Wing Attack, Quick Attack, Endeavor, Double Team
    (90007, 9014, NULL, 90001, 'piplup', NULL, 1, ARRAY[17, 98, 283, 104]),
    -- Barry: Buizel Lv. 32: Aqua Jet, Quick Attack, Pursuit, Growl
    (90007, 9014, NULL, 90001, 'piplup', NULL, 2, ARRAY[453, 98, 228, 45]),
    -- Barry: Ponyta Lv. 32: Ember, Stomp, Tail Whip, Growl
    (90007, 9014, NULL, 90001, 'piplup', NULL, 3, ARRAY[52, 23, 39, 45]),
    -- Barry: Grotle Lv. 36: Razor Leaf, Bite, Mega Drain, Withdraw
    (90007, 9014, NULL, 90001, 'piplup', NULL, 4, ARRAY[75, 44, 72, 110]),
    -- Cyrus: Sneasel Lv. 34: Slash, Ice Punch, Quick Attack, Screech
    (90017, 9015, NULL, NULL, NULL, NULL, 1, ARRAY[163, 8, 98, 103]),
    -- Cyrus: Golbat Lv. 34: Poison Fang, Air Cutter, Bite, Supersonic
    (90017, 9015, NULL, NULL, NULL, NULL, 2, ARRAY[305, 314, 44, 48]),
    -- Cyrus: Murkrow Lv. 36: Drill Peck, Night Shade, Astonish, Feint Attack
    (90017, 9015, NULL, NULL, NULL, NULL, 3, ARRAY[65, 101, 310, 185]),
    -- Barry: Staraptor Lv. 36: Aerial Ace, Take Down, Quick Attack, Double Team
    (90008, 9014, NULL, 90001, 'turtwig', NULL, 1, ARRAY[332, 36, 98, 104]),
    -- Barry: Floatzel Lv. 35: Aqua Jet, Pursuit, Quick Attack, Swift
    (90008, 9014, NULL, 90001, 'turtwig', NULL, 2, ARRAY[453, 228, 98, 129]),
    -- Barry: Heracross Lv. 37: Brick Break, Aerial Ace, Night Slash, Horn Attack
    (90008, 9014, NULL, 90001, 'turtwig', NULL, 3, ARRAY[280, 332, 400, 30]),
    -- Barry: Roserade Lv. 35: Giga Drain, Toxic Spikes, Leech Seed, Grass Whistle
    (90008, 9014, NULL, 90001, 'turtwig', NULL, 4, ARRAY[202, 390, 73, 320]),
    -- Barry: Infernape Lv. 38: Brick Break, Flame Wheel, Mach Punch, Aerial Ace
    (90008, 9014, NULL, 90001, 'turtwig', NULL, 5, ARRAY[280, 172, 183, 332]),
    -- Barry: Staraptor Lv. 36: Aerial Ace, Take Down, Quick Attack, Double Team
    (90008, 9014, NULL, 90001, 'chimchar', NULL, 1, ARRAY[332, 36, 98, 104]),
    -- Barry: Roserade Lv. 35: Giga Drain, Toxic Spikes, Leech Seed, Grass Whistle
    (90008, 9014, NULL, 90001, 'chimchar', NULL, 2, ARRAY[202, 390, 73, 320]),
    -- Barry: Heracross Lv. 37: Brick Break, Aerial Ace, Night Slash, Horn Attack
    (90008, 9014, NULL, 90001, 'chimchar', NULL, 3, ARRAY[280, 332, 400, 30]),
    -- Barry: Rapidash Lv. 35: Fire Spin, Take Down, Stomp, Tail Whip
    (90008, 9014, NULL, 90001, 'chimchar', NULL, 4, ARRAY[83, 36, 23, 39]),
    -- Barry: Empoleon Lv. 38: Bubble Beam, Aerial Ace, Metal Claw, Fury Attack
    (90008, 9014, NULL, 90001, 'chimchar', NULL, 5, ARRAY[61, 332, 232, 31]),
    -- Barry: Staraptor Lv. 36: Aerial Ace, Take Down, Quick Attack, Double Team
    (90008, 9014, NULL, 90001, 'piplup', NULL, 1, ARRAY[332, 36, 98, 104]),
    -- Barry: Floatzel Lv. 35: Aqua Jet, Pursuit, Quick Attack, Swift
    (90008, 9014, NULL, 90001, 'piplup', NULL, 2, ARRAY[453, 228, 98, 129]),
    -- Barry: Heracross Lv. 37: Brick Break, Aerial Ace, Night Slash, Horn Attack
    (90008, 9014, NULL, 90001, 'piplup', NULL, 3, ARRAY[280, 332, 400, 30]),
    -- Barry: Rapidash Lv. 35: Fire Spin, Take Down, Stomp, Tail Whip
    (90008, 9014, NULL, 90001, 'piplup', NULL, 4, ARRAY[83, 36, 23, 39]),
    -- Barry: Torterra Lv. 38: Razor Leaf, Bite, Mega Drain, Leech Seed
    (90008, 9014, NULL, 90001, 'piplup', NULL, 5, ARRAY[75, 44, 72, 73]),
    -- Cyrus: Sneasel Lv. 44: Slash, Ice Punch, Quick Attack, Screech
    (90018, 9015, NULL, NULL, NULL, NULL, 1, ARRAY[163, 8, 98, 103]),
    -- Cyrus: Crobat Lv. 44: Poison Fang, Air Cutter, Bite, Supersonic
    (90018, 9015, NULL, NULL, NULL, NULL, 2, ARRAY[305, 314, 44, 48]),
    -- Cyrus: Honchkrow Lv. 46: Drill Peck, Night Shade, Astonish, Feint Attack
    (90018, 9015, NULL, NULL, NULL, NULL, 3, ARRAY[65, 101, 310, 185]),
    -- Cyrus: Houndoom Lv. 45: Flamethrower, Dark Pulse, Will-O-Wisp, Thunder Fang
    (90019, 9015, NULL, NULL, NULL, NULL, 1, ARRAY[53, 399, 261, 422]),
    -- Cyrus: Honchkrow Lv. 47: Drill Peck, Night Slash, Heat Wave, Psychic
    (90019, 9015, NULL, NULL, NULL, NULL, 2, ARRAY[65, 400, 257, 94]),
    -- Cyrus: Crobat Lv. 46: Cross Poison, Air Slash, Toxic, Confuse Ray
    (90019, 9015, NULL, NULL, NULL, NULL, 3, ARRAY[440, 403, 92, 109]),
    -- Cyrus: Gyarados Lv. 46: Giga Impact, Waterfall, Ice Fang, Earthquake
    (90019, 9015, NULL, NULL, NULL, NULL, 4, ARRAY[416, 127, 423, 89]),
    -- Cyrus: Weavile Lv. 48: Night Slash, Ice Punch, Fake Out, X-Scissor
    (90019, 9015, NULL, NULL, NULL, NULL, 5, ARRAY[400, 8, 252, 404]),
    -- Barry: Staraptor Lv. 48: Close Combat, Aerial Ace, Steel Wing, U-turn
    (90011, 9014, NULL, 90001, 'turtwig', NULL, 1, ARRAY[370, 332, 211, 369]),
    -- Barry: Floatzel Lv. 47: Aqua Jet, Crunch, Ice Fang, Brick Break
    (90011, 9014, NULL, 90001, 'turtwig', NULL, 2, ARRAY[453, 242, 423, 280]),
    -- Barry: Heracross Lv. 48: Close Combat, Rock Slide, Night Slash, Aerial Ace
    (90011, 9014, NULL, 90001, 'turtwig', NULL, 3, ARRAY[370, 157, 400, 332]),
    -- Barry: Roserade Lv. 47: Poison Jab, Giga Drain, Shadow Ball, Grass Whistle
    (90011, 9014, NULL, 90001, 'turtwig', NULL, 4, ARRAY[398, 202, 247, 320]),
    -- Barry: Snorlax Lv. 49: Body Slam, Crunch, Earthquake, Rest
    (90011, 9014, NULL, 90001, 'turtwig', NULL, 5, ARRAY[34, 242, 89, 156]),
    -- Barry: Infernape Lv. 51: Flamethrower, Focus Blast, Shadow Claw, Aerial Ace
    (90011, 9014, NULL, 90001, 'turtwig', NULL, 6, ARRAY[53, 411, 421, 332]),
    -- Barry: Staraptor Lv. 48: Close Combat, Aerial Ace, Steel Wing, U-turn
    (90011, 9014, NULL, 90001, 'chimchar', NULL, 1, ARRAY[370, 332, 211, 369]),
    -- Barry: Roserade Lv. 47: Poison Jab, Giga Drain, Shadow Ball, Grass Whistle
    (90011, 9014, NULL, 90001, 'chimchar', NULL, 2, ARRAY[398, 202, 247, 320]),
    -- Barry: Heracross Lv. 48: Close Combat, Rock Slide, Night Slash, Aerial Ace
    (90011, 9014, NULL, 90001, 'chimchar', NULL, 3, ARRAY[370, 157, 400, 332]),
    -- Barry: Rapidash Lv. 47: Fire Blast, Sunny Day, Bounce, Will-O-Wisp
    (90011, 9014, NULL, 90001, 'chimchar', NULL, 4, ARRAY[126, 241, 340, 261]),
    -- Barry: Snorlax Lv. 49: Body Slam, Crunch, Earthquake, Rest
    (90011, 9014, NULL, 90001, 'chimchar', NULL, 5, ARRAY[34, 242, 89, 156]),
    -- Barry: Empoleon Lv. 51: Brine, Aerial Ace, Metal Claw, Shadow Claw
    (90011, 9014, NULL, 90001, 'chimchar', NULL, 6, ARRAY[362, 332, 232, 421]),
    -- Barry: Staraptor Lv. 48: Close Combat, Aerial Ace, Steel Wing, U-turn
    (90011, 9014, NULL, 90001, 'piplup', NULL, 1, ARRAY[370, 332, 211, 369]),
    -- Barry: Floatzel Lv. 47: Aqua Jet, Crunch, Ice Fang, Brick Break
    (90011, 9014, NULL, 90001, 'piplup', NULL, 2, ARRAY[453, 242, 423, 280]),
    -- Barry: Heracross Lv. 48: Close Combat, Rock Slide, Night Slash, Aerial Ace
    (90011, 9014, NULL, 90001, 'piplup', NULL, 3, ARRAY[370, 157, 400, 332]),
    -- Barry: Rapidash Lv. 47: Fire Blast, Sunny Day, Bounce, Will-O-Wisp
    (90011, 9014, NULL, 90001, 'piplup', NULL, 4, ARRAY[126, 241, 340, 261]),
    -- Barry: Snorlax Lv. 49: Body Slam, Crunch, Earthquake, Rest
    (90011, 9014, NULL, 90001, 'piplup', NULL, 5, ARRAY[34, 242, 89, 156]),
    -- Barry: Torterra Lv. 51: Leaf Storm, Earthquake, Crunch, Synthesis
    (90011, 9014, NULL, 90001, 'piplup', NULL, 6, ARRAY[437, 89, 242, 235]),
    -- Barry: Staraptor Lv. 61: Close Combat, Aerial Ace, Steel Wing, U-turn
    (90020, 9014, NULL, 90001, 'turtwig', NULL, 1, ARRAY[370, 332, 211, 369]),
    -- Barry: Floatzel Lv. 59: Aqua Jet, Crunch, Ice Fang, Brick Break
    (90020, 9014, NULL, 90001, 'turtwig', NULL, 2, ARRAY[453, 242, 423, 280]),
    -- Barry: Heracross Lv. 61: Megahorn, Close Combat, Night Slash, Rock Slide
    (90020, 9014, NULL, 90001, 'turtwig', NULL, 3, ARRAY[224, 370, 400, 157]),
    -- Barry: Roserade Lv. 59: Poison Jab, Giga Drain, Shadow Ball, Grass Whistle
    (90020, 9014, NULL, 90001, 'turtwig', NULL, 4, ARRAY[398, 202, 247, 320]),
    -- Barry: Snorlax Lv. 63: Body Slam, Crunch, Earthquake, Rest
    (90020, 9014, NULL, 90001, 'turtwig', NULL, 5, ARRAY[34, 242, 89, 156]),
    -- Barry: Infernape Lv. 65: Flamethrower, Focus Blast, Shadow Claw, Aerial Ace
    (90020, 9014, NULL, 90001, 'turtwig', NULL, 6, ARRAY[53, 411, 421, 332]),
    -- Barry: Staraptor Lv. 61: Close Combat, Aerial Ace, Steel Wing, U-turn
    (90020, 9014, NULL, 90001, 'chimchar', NULL, 1, ARRAY[370, 332, 211, 369]),
    -- Barry: Roserade Lv. 59: Poison Jab, Giga Drain, Shadow Ball, Grass Whistle
    (90020, 9014, NULL, 90001, 'chimchar', NULL, 2, ARRAY[398, 202, 247, 320]),
    -- Barry: Heracross Lv. 61: Megahorn, Close Combat, Night Slash, Rock Slide
    (90020, 9014, NULL, 90001, 'chimchar', NULL, 3, ARRAY[224, 370, 400, 157]),
    -- Barry: Rapidash Lv. 59: Fire Blast, Sunny Day, Bounce, Will-O-Wisp
    (90020, 9014, NULL, 90001, 'chimchar', NULL, 4, ARRAY[126, 241, 340, 261]),
    -- Barry: Snorlax Lv. 63: Body Slam, Crunch, Earthquake, Rest
    (90020, 9014, NULL, 90001, 'chimchar', NULL, 5, ARRAY[34, 242, 89, 156]),
    -- Barry: Empoleon Lv. 65: Hydro Pump, Metal Claw, Drill Peck, Shadow Claw
    (90020, 9014, NULL, 90001, 'chimchar', NULL, 6, ARRAY[56, 232, 65, 421]),
    -- Barry: Staraptor Lv. 61: Close Combat, Aerial Ace, Steel Wing, U-turn
    (90020, 9014, NULL, 90001, 'piplup', NULL, 1, ARRAY[370, 332, 211, 369]),
    -- Barry: Floatzel Lv. 59: Aqua Jet, Crunch, Ice Fang, Brick Break
    (90020, 9014, NULL, 90001, 'piplup', NULL, 2, ARRAY[453, 242, 423, 280]),
    -- Barry: Heracross Lv. 61: Megahorn, Close Combat, Night Slash, Rock Slide
    (90020, 9014, NULL, 90001, 'piplup', NULL, 3, ARRAY[224, 370, 400, 157]),
    -- Barry: Rapidash Lv. 59: Fire Blast, Sunny Day, Bounce, Will-O-Wisp
    (90020, 9014, NULL, 90001, 'piplup', NULL, 4, ARRAY[126, 241, 340, 261]),
    -- Barry: Snorlax Lv. 63: Body Slam, Crunch, Earthquake, Rest
    (90020, 9014, NULL, 90001, 'piplup', NULL, 5, ARRAY[34, 242, 89, 156]),
    -- Barry: Torterra Lv. 65: Leaf Storm, Earthquake, Crunch, Leech Seed
    (90020, 9014, NULL, 90001, 'piplup', NULL, 6, ARRAY[437, 89, 242, 73]),
    -- Giratina: Giratina (Origin) Lv. 47: Ominous Wind, Ancient Power, Dragon Claw, Shadow Force
    (90019, 9016, NULL, NULL, NULL, NULL, 1, ARRAY[466, 246, 337, 467]),
    -- Uxie: Uxie Lv. 50: Swift, Yawn, Future Sight, Amnesia
    (90021, 9017, NULL, NULL, NULL, NULL, 1, ARRAY[129, 281, 248, 133]),
    -- Azelf: Azelf Lv. 50: Swift, Uproar, Future Sight, Nasty Plot
    (90021, 9018, NULL, NULL, NULL, NULL, 1, ARRAY[129, 253, 248, 417]),
    -- Mesprit: Mesprit Lv. 50: Swift, Lucky Chant, Future Sight, Charm
    (90021, 9019, NULL, NULL, NULL, NULL, 1, ARRAY[129, 381, 248, 204]),
    -- Heatran: Heatran Lv. 50: Metal Sound, Crunch, Scary Face, Lava Plume
    (90020, 9020, NULL, NULL, NULL, NULL, 1, ARRAY[319, 242, 184, 436]),
    -- Cresselia: Cresselia Lv. 50: Mist, Aurora Beam, Future Sight, Slash
    (90022, 9021, NULL, NULL, NULL, NULL, 1, ARRAY[54, 62, 248, 163]),
    -- Regigigas: Regigigas Lv. 1: Dizzy Punch, Knock Off, Confuse Ray, Foresight
    (90023, 9022, NULL, NULL, NULL, NULL, 1, ARRAY[146, 282, 109, 193]),
    -- Dialga: Dialga Lv. 70: Roar of Time, Heal Block, Earth Power, Slash
    (90024, 9023, NULL, NULL, NULL, NULL, 1, ARRAY[459, 377, 414, 163]),
    -- Palkia: Palkia Lv. 70: Spacial Rend, Heal Block, Earth Power, Slash
    (90024, 9024, NULL, NULL, NULL, NULL, 1, ARRAY[460, 377, 414, 163]),
    -- Articuno: Articuno Lv. 60: Agility, Ice Beam, Reflect, Roost
    (90025, 9025, NULL, NULL, NULL, NULL, 1, ARRAY[97, 58, 115, 355]),
    -- Zapdos: Zapdos Lv. 60: Charge, Agility, Discharge, Roost
    (90026, 9026, NULL, NULL, NULL, NULL, 1, ARRAY[268, 97, 435, 355]),
    -- Moltres: Moltres Lv. 60: Flamethrower, Safeguard, Air Slash, Roost
    (90027, 9027, NULL, NULL, NULL, NULL, 1, ARRAY[53, 219, 403, 355]),
    -- Mars: Zubat Lv. 15: Bite, Leech Life, Toxic
    (90004, 9028, NULL, NULL, NULL, NULL, 1, ARRAY[44, 141, 92]),
    -- Mars: Purugly Lv. 17: Feint Attack, Scratch, Fake Out
    (90004, 9028, NULL, NULL, NULL, NULL, 2, ARRAY[185, 10, 252]),
    -- Jupiter: Zubat Lv. 21: Giga Drain, Wing Attack, Bite
    (90004, 9029, NULL, NULL, NULL, NULL, 1, ARRAY[202, 17, 44]),
    -- Jupiter: Skuntank Lv. 23: Night Slash, Poison Gas, Screech, Smokescreen
    (90004, 9029, NULL, NULL, NULL, NULL, 2, ARRAY[400, 139, 103, 108]),
    -- Saturn: Golbat Lv. 38: Air Cutter, Bite, Toxic, Supersonic
    (90009, 9030, NULL, NULL, NULL, NULL, 1, ARRAY[314, 44, 92, 48]),
    -- Saturn: Bronzor Lv. 38: Gyro Ball, Shadow Ball, Rock Tomb, Iron Defense
    (90009, 9030, NULL, NULL, NULL, NULL, 2, ARRAY[360, 247, 317, 334]),
    -- Saturn: Toxicroak Lv. 40: Poison Jab, Revenge, Mud Bomb, Feint Attack
    (90009, 9030, NULL, NULL, NULL, NULL, 3, ARRAY[398, 279, 426, 185]),
    -- Mars: Golbat Lv. 38: Air Cutter, Bite, Toxic, Supersonic
    (90009, 9028, NULL, NULL, NULL, NULL, 1, ARRAY[314, 44, 92, 48]),
    -- Mars: Bronzor Lv. 38: Gyro Ball, Extrasensory, Iron Defense, Confuse Ray
    (90009, 9028, NULL, NULL, NULL, NULL, 2, ARRAY[360, 326, 334, 109]),
    -- Mars: Purugly Lv. 40: Slash, Feint Attack, Hypnosis, Fake Out
    (90009, 9028, NULL, NULL, NULL, NULL, 3, ARRAY[163, 185, 95, 252]),
    -- Saturn: Golbat Lv. 42: Air Cutter, Bite, Poison Fang, Confuse Ray
    (90018, 9030, NULL, NULL, NULL, NULL, 1, ARRAY[314, 44, 305, 109]),
    -- Saturn: Bronzor Lv. 42: Gyro Ball, Extrasensory, Shadow Ball, Confuse Ray
    (90018, 9030, NULL, NULL, NULL, NULL, 2, ARRAY[360, 326, 247, 109]),
    -- Saturn: Toxicroak Lv. 44: Poison Jab, Brick Break, X-Scissor, Feint Attack
    (90018, 9030, NULL, NULL, NULL, NULL, 3, ARRAY[398, 280, 404, 185]),
    -- Mars & Jupiter: Bronzor Lv. 44: Gyro Ball, Extrasensory, Light Screen, Confuse Ray
    (90019, 9031, NULL, NULL, NULL, NULL, 1, ARRAY[360, 326, 113, 109]),
    -- Mars & Jupiter: Golbat Lv. 44: Air Cutter, Bite, Poison Fang, Confuse Ray
    (90019, 9031, NULL, NULL, NULL, NULL, 2, ARRAY[314, 44, 305, 109]),
    -- Mars & Jupiter: Purugly Lv. 46: Slash, Shadow Claw, Aerial Ace, Hypnosis
    (90019, 9031, NULL, NULL, NULL, NULL, 3, ARRAY[163, 421, 332, 95]),
    -- Mars & Jupiter: Bronzor Lv. 44: Gyro Ball, Extrasensory, Rock Slide, Reflect
    (90019, 9031, NULL, NULL, NULL, NULL, 4, ARRAY[360, 326, 157, 115]),
    -- Mars & Jupiter: Golbat Lv. 44: Sludge Bomb, Air Cutter, Giga Drain, Mean Look
    (90019, 9031, NULL, NULL, NULL, NULL, 5, ARRAY[188, 314, 202, 212]),
    -- Mars & Jupiter: Skuntank Lv. 46: Night Slash, Poison Jab, Flamethrower, Smokescreen
    (90019, 9031, NULL, NULL, NULL, NULL, 6, ARRAY[400, 398, 53, 108]),
    -- Mars: Bronzong Lv. 58: Gyro Ball, Extrasensory, Light Screen, Confuse Ray
    (90020, 9028, NULL, NULL, NULL, NULL, 1, ARRAY[360, 326, 113, 109]),
    -- Mars: Golbat Lv. 58: Air Cutter, Bite, Poison Fang, Confuse Ray
    (90020, 9028, NULL, NULL, NULL, NULL, 2, ARRAY[314, 44, 305, 109]),
    -- Mars: Purugly Lv. 60: Slash, Shadow Claw, Aerial Ace, Hypnosis
    (90020, 9028, NULL, NULL, NULL, NULL, 3, ARRAY[163, 421, 332, 95]),
    -- Jupiter: Bronzong Lv. 58: Gyro Ball, Extrasensory, Rock Slide, Reflect
    (90020, 9029, NULL, NULL, NULL, NULL, 1, ARRAY[360, 326, 157, 115]),
    -- Jupiter: Golbat Lv. 58: Sludge Bomb, Air Cutter, Giga Drain, Mean Look
    (90020, 9029, NULL, NULL, NULL, NULL, 2, ARRAY[188, 314, 202, 212]),
    -- Jupiter: Skuntank Lv. 60: Night Slash, Poison Jab, Flamethrower, Smokescreen
    (90020, 9029, NULL, NULL, NULL, NULL, 3, ARRAY[400, 398, 53, 108])
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
