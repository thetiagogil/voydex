-- ============================================================================
-- Source
-- ============================================================================
-- Primary: the pret pokediamond disassembly of the game: its trainer parties,
-- set moves and level-up learnsets.
-- A Pokémon the game gives no set moves, and every legendary encounter, gets
-- the game's own default: the last four moves it learns by level up to its
-- level, worked out from the same learnsets as the game does.
-- Galactic Commanders (Mars, Jupiter, Saturn): the pret pokediamond trainer data
-- (parties, set moves, held items), cross-checked with Bulbapedia's trainer pages.
-- Scope: Diamond / Pearl Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Diamond / Pearl opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Roark: Geodude Lv. 12: Stealth Rock, Rock Throw
    (80003, 8001, NULL, NULL, NULL, NULL, 1, ARRAY[446, 88]),
    -- Roark: Onix Lv. 12: Stealth Rock, Rock Throw, Screech
    (80003, 8001, NULL, NULL, NULL, NULL, 2, ARRAY[446, 88, 103]),
    -- Roark: Cranidos Lv. 14: Headbutt, Pursuit, Leer
    (80003, 8001, NULL, NULL, NULL, NULL, 3, ARRAY[29, 228, 43]),
    -- Gardenia: Cherubi Lv. 19: Grass Knot, Leech Seed, Growth, Safeguard
    (80004, 8002, NULL, NULL, NULL, NULL, 1, ARRAY[447, 73, 74, 219]),
    -- Gardenia: Turtwig Lv. 19: Grass Knot, Razor Leaf, Withdraw, Reflect
    (80004, 8002, NULL, NULL, NULL, NULL, 2, ARRAY[447, 75, 110, 115]),
    -- Gardenia: Roserade Lv. 22: Grass Knot, Magical Leaf, Poison Sting, Stun Spore
    (80004, 8002, NULL, NULL, NULL, NULL, 3, ARRAY[447, 345, 40, 78]),
    -- Maylene: Meditite Lv. 27: Drain Punch, Confusion, Meditate, Detect
    (80005, 8003, NULL, NULL, NULL, NULL, 1, ARRAY[409, 93, 96, 197]),
    -- Maylene: Machoke Lv. 27: Brick Break, Rock Tomb, Leer, Foresight
    (80005, 8003, NULL, NULL, NULL, NULL, 2, ARRAY[280, 317, 43, 193]),
    -- Maylene: Lucario Lv. 30: Drain Punch, Force Palm, Metal Claw, Bone Rush
    (80005, 8003, NULL, NULL, NULL, NULL, 3, ARRAY[409, 395, 232, 198]),
    -- Crasher Wake: Gyarados Lv. 27: Brine, Dragon Rage, Bite, Swagger
    (80006, 8004, NULL, NULL, NULL, NULL, 1, ARRAY[362, 82, 44, 207]),
    -- Crasher Wake: Quagsire Lv. 27: Mud Bomb, Slam, Mud Sport, Tail Whip
    (80006, 8004, NULL, NULL, NULL, NULL, 2, ARRAY[426, 21, 300, 39]),
    -- Crasher Wake: Floatzel Lv. 30: Brine, Ice Fang, Pursuit, Swift
    (80006, 8004, NULL, NULL, NULL, NULL, 3, ARRAY[362, 423, 228, 129]),
    -- Fantina: Drifblim Lv. 32: Ominous Wind, Gust, Astonish, Minimize
    (80007, 8005, NULL, NULL, NULL, NULL, 1, ARRAY[466, 16, 310, 107]),
    -- Fantina: Gengar Lv. 34: Shadow Claw, Poison Jab, Spite, Confuse Ray
    (80007, 8005, NULL, NULL, NULL, NULL, 2, ARRAY[421, 398, 180, 109]),
    -- Fantina: Mismagius Lv. 36: Shadow Ball, Psybeam, Magical Leaf, Confuse Ray
    (80007, 8005, NULL, NULL, NULL, NULL, 3, ARRAY[247, 60, 345, 109]),
    -- Byron: Bronzor Lv. 36: Flash Cannon, Extrasensory, Confuse Ray, Hypnosis
    (80008, 8006, NULL, NULL, NULL, NULL, 1, ARRAY[430, 326, 109, 95]),
    -- Byron: Steelix Lv. 36: Gyro Ball, Ice Fang, Dragon Breath, Sandstorm
    (80008, 8006, NULL, NULL, NULL, NULL, 2, ARRAY[360, 423, 225, 201]),
    -- Byron: Bastiodon Lv. 39: Flash Cannon, Ancient Power, Iron Defense, Rest
    (80008, 8006, NULL, NULL, NULL, NULL, 3, ARRAY[430, 246, 334, 156]),
    -- Candice: Snover Lv. 38: Avalanche, Razor Leaf, Ingrain, Leer
    (80009, 8007, NULL, NULL, NULL, NULL, 1, ARRAY[419, 75, 275, 43]),
    -- Candice: Sneasel Lv. 38: Avalanche, Slash, Feint Attack, Taunt
    (80009, 8007, NULL, NULL, NULL, NULL, 2, ARRAY[419, 163, 185, 269]),
    -- Candice: Medicham Lv. 40: Ice Punch, Force Palm, Detect, Bulk Up
    (80009, 8007, NULL, NULL, NULL, NULL, 3, ARRAY[8, 395, 197, 339]),
    -- Candice: Abomasnow Lv. 42: Avalanche, Wood Hammer, Grass Whistle, Swagger
    (80009, 8007, NULL, NULL, NULL, NULL, 4, ARRAY[419, 452, 320, 207]),
    -- Volkner: Raichu Lv. 46: Charge Beam, Brick Break, Thunder Wave, Light Screen
    (80010, 8008, NULL, NULL, NULL, NULL, 1, ARRAY[451, 280, 86, 113]),
    -- Volkner: Ambipom Lv. 47: Shock Wave, Agility, Nasty Plot, Baton Pass
    (80010, 8008, NULL, NULL, NULL, NULL, 2, ARRAY[351, 97, 417, 226]),
    -- Volkner: Octillery Lv. 47: Charge Beam, Octazooka, Aurora Beam, Bullet Seed
    (80010, 8008, NULL, NULL, NULL, NULL, 3, ARRAY[451, 190, 62, 331]),
    -- Volkner: Luxray Lv. 49: Charge Beam, Thunder Fang, Crunch, Thunder Wave
    (80010, 8008, NULL, NULL, NULL, NULL, 4, ARRAY[451, 422, 242, 86]),
    -- Aaron: Dustox Lv. 53: Toxic, Bug Buzz, Double Team, Light Screen
    (80011, 8009, NULL, NULL, NULL, NULL, 1, ARRAY[92, 405, 104, 113]),
    -- Aaron: Beautifly Lv. 53: Energy Ball, Bug Buzz, Psychic, Shadow Ball
    (80011, 8009, NULL, NULL, NULL, NULL, 2, ARRAY[412, 405, 94, 247]),
    -- Aaron: Vespiquen Lv. 54: Attack Order, Defend Order, Heal Order, Power Gem
    (80011, 8009, NULL, NULL, NULL, NULL, 3, ARRAY[454, 455, 456, 408]),
    -- Aaron: Heracross Lv. 54: Megahorn, Close Combat, Night Slash, Stone Edge
    (80011, 8009, NULL, NULL, NULL, NULL, 4, ARRAY[224, 370, 400, 444]),
    -- Aaron: Drapion Lv. 57: X-Scissor, Cross Poison, Ice Fang, Aerial Ace
    (80011, 8009, NULL, NULL, NULL, NULL, 5, ARRAY[404, 440, 423, 332]),
    -- Bertha: Quagsire Lv. 55: Dig, Double Team, Protect, Sandstorm
    (80012, 8010, NULL, NULL, NULL, NULL, 1, ARRAY[91, 104, 182, 201]),
    -- Bertha: Sudowoodo Lv. 56: Earthquake, Sucker Punch, Hammer Arm, Sandstorm
    (80012, 8010, NULL, NULL, NULL, NULL, 2, ARRAY[89, 389, 359, 201]),
    -- Bertha: Golem Lv. 56: Earthquake, Gyro Ball, Brick Break, Sandstorm
    (80012, 8010, NULL, NULL, NULL, NULL, 3, ARRAY[89, 360, 280, 201]),
    -- Bertha: Whiscash Lv. 55: Fissure, Aqua Tail, Zen Headbutt, Rock Slide
    (80012, 8010, NULL, NULL, NULL, NULL, 4, ARRAY[90, 401, 428, 157]),
    -- Bertha: Hippowdon Lv. 59: Earthquake, Stone Edge, Crunch, Curse
    (80012, 8010, NULL, NULL, NULL, NULL, 5, ARRAY[89, 444, 242, 174]),
    -- Flint: Rapidash Lv. 58: Flare Blitz, Solar Beam, Bounce, Sunny Day
    (80013, 8011, NULL, NULL, NULL, NULL, 1, ARRAY[394, 76, 340, 241]),
    -- Flint: Steelix Lv. 57: Fire Fang, Rock Tomb, Screech, Sunny Day
    (80013, 8011, NULL, NULL, NULL, NULL, 2, ARRAY[424, 317, 103, 241]),
    -- Flint: Drifblim Lv. 58: Will-O-Wisp, Ominous Wind, Double Team, Baton Pass
    (80013, 8011, NULL, NULL, NULL, NULL, 3, ARRAY[261, 466, 104, 226]),
    -- Flint: Lopunny Lv. 57: Fire Punch, Charm, Mirror Coat, Sunny Day
    (80013, 8011, NULL, NULL, NULL, NULL, 4, ARRAY[7, 204, 243, 241]),
    -- Flint: Infernape Lv. 61: Flare Blitz, Thunder Punch, Mach Punch, Earthquake
    (80013, 8011, NULL, NULL, NULL, NULL, 5, ARRAY[394, 9, 183, 89]),
    -- Lucian: Mr. Mime Lv. 59: Psychic, Thunderbolt, Reflect, Light Screen
    (80014, 8012, NULL, NULL, NULL, NULL, 1, ARRAY[94, 85, 115, 113]),
    -- Lucian: Girafarig Lv. 59: Psychic, Shadow Ball, Double Hit, Crunch
    (80014, 8012, NULL, NULL, NULL, NULL, 2, ARRAY[94, 247, 458, 242]),
    -- Lucian: Medicham Lv. 60: Drain Punch, Fire Punch, Thunder Punch, Ice Punch
    (80014, 8012, NULL, NULL, NULL, NULL, 3, ARRAY[409, 7, 9, 8]),
    -- Lucian: Alakazam Lv. 60: Psychic, Energy Ball, Focus Blast, Recover
    (80014, 8012, NULL, NULL, NULL, NULL, 4, ARRAY[94, 412, 411, 105]),
    -- Lucian: Bronzong Lv. 63: Psychic, Gyro Ball, Earthquake, Calm Mind
    (80014, 8012, NULL, NULL, NULL, NULL, 5, ARRAY[94, 360, 89, 347]),
    -- Cynthia: Spiritomb Lv. 61: Dark Pulse, Psychic, Silver Wind, Embargo
    (80015, 8013, NULL, NULL, NULL, NULL, 1, ARRAY[399, 94, 318, 373]),
    -- Cynthia: Roserade Lv. 60: Energy Ball, Sludge Bomb, Shadow Ball, Extrasensory
    (80015, 8013, NULL, NULL, NULL, NULL, 2, ARRAY[412, 188, 247, 326]),
    -- Cynthia: Gastrodon Lv. 60: Muddy Water, Earthquake, Stone Edge, Sludge Bomb
    (80015, 8013, NULL, NULL, NULL, NULL, 3, ARRAY[330, 89, 444, 188]),
    -- Cynthia: Lucario Lv. 63: Aura Sphere, Dragon Pulse, Psychic, Earthquake
    (80015, 8013, NULL, NULL, NULL, NULL, 4, ARRAY[396, 406, 94, 89]),
    -- Cynthia: Milotic Lv. 63: Surf, Ice Beam, Mirror Coat, Aqua Ring
    (80015, 8013, NULL, NULL, NULL, NULL, 5, ARRAY[57, 58, 243, 392]),
    -- Cynthia: Garchomp Lv. 66: Dragon Rush, Earthquake, Brick Break, Giga Impact
    (80015, 8013, NULL, NULL, NULL, NULL, 6, ARRAY[407, 89, 280, 416]),
    -- Barry: Starly Lv. 7: Quick Attack, Growl
    (80003, 8014, NULL, 80001, 'turtwig', NULL, 1, ARRAY[98, 45]),
    -- Barry: Chimchar Lv. 9: Scratch, Leer
    (80003, 8014, NULL, 80001, 'turtwig', NULL, 2, ARRAY[10, 43]),
    -- Barry: Starly Lv. 7: Quick Attack, Growl
    (80003, 8014, NULL, 80001, 'chimchar', NULL, 1, ARRAY[98, 45]),
    -- Barry: Piplup Lv. 9: Pound, Growl
    (80003, 8014, NULL, 80001, 'chimchar', NULL, 2, ARRAY[1, 45]),
    -- Barry: Starly Lv. 7: Quick Attack, Growl
    (80003, 8014, NULL, 80001, 'piplup', NULL, 1, ARRAY[98, 45]),
    -- Barry: Turtwig Lv. 9: Tackle, Withdraw
    (80003, 8014, NULL, 80001, 'piplup', NULL, 2, ARRAY[33, 110]),
    -- Barry: Starly Lv. 19: Wing Attack, Quick Attack, Endeavor, Double Team
    (80005, 8014, NULL, 80001, 'turtwig', NULL, 1, ARRAY[17, 98, 283, 104]),
    -- Barry: Buizel Lv. 20: Water Gun, Quick Attack, Pursuit, Growl
    (80005, 8014, NULL, 80001, 'turtwig', NULL, 2, ARRAY[55, 98, 228, 45]),
    -- Barry: Roselia Lv. 20: Mega Drain, Poison Sting, Leech Seed, Stun Spore
    (80005, 8014, NULL, 80001, 'turtwig', NULL, 3, ARRAY[72, 40, 73, 78]),
    -- Barry: Monferno Lv. 21: Flame Wheel, Mach Punch, Fury Swipes, Leer
    (80005, 8014, NULL, 80001, 'turtwig', NULL, 4, ARRAY[172, 183, 154, 43]),
    -- Barry: Starly Lv. 19: Wing Attack, Quick Attack, Endeavor, Double Team
    (80005, 8014, NULL, 80001, 'chimchar', NULL, 1, ARRAY[17, 98, 283, 104]),
    -- Barry: Roselia Lv. 20: Mega Drain, Poison Sting, Leech Seed, Stun Spore
    (80005, 8014, NULL, 80001, 'chimchar', NULL, 2, ARRAY[72, 40, 73, 78]),
    -- Barry: Ponyta Lv. 20: Ember, Tackle, Tail Whip, Growl
    (80005, 8014, NULL, 80001, 'chimchar', NULL, 3, ARRAY[52, 33, 39, 45]),
    -- Barry: Prinplup Lv. 21: Bubble, Peck, Metal Claw, Growl
    (80005, 8014, NULL, 80001, 'chimchar', NULL, 4, ARRAY[145, 64, 232, 45]),
    -- Barry: Starly Lv. 19: Wing Attack, Quick Attack, Endeavor, Double Team
    (80005, 8014, NULL, 80001, 'piplup', NULL, 1, ARRAY[17, 98, 283, 104]),
    -- Barry: Buizel Lv. 20: Water Gun, Quick Attack, Pursuit, Growl
    (80005, 8014, NULL, 80001, 'piplup', NULL, 2, ARRAY[55, 98, 228, 45]),
    -- Barry: Ponyta Lv. 20: Ember, Tackle, Tail Whip, Growl
    (80005, 8014, NULL, 80001, 'piplup', NULL, 3, ARRAY[52, 33, 39, 45]),
    -- Barry: Grotle Lv. 21: Razor Leaf, Tackle, Absorb, Withdraw
    (80005, 8014, NULL, 80001, 'piplup', NULL, 4, ARRAY[75, 33, 71, 110]),
    -- Barry: Starly Lv. 26: Wing Attack, Quick Attack, Endeavor, Double Team
    (80006, 8014, NULL, 80001, 'turtwig', NULL, 1, ARRAY[17, 98, 283, 104]),
    -- Barry: Buizel Lv. 25: Aqua Jet, Quick Attack, Pursuit, Growl
    (80006, 8014, NULL, 80001, 'turtwig', NULL, 2, ARRAY[453, 98, 228, 45]),
    -- Barry: Roselia Lv. 25: Mega Drain, Poison Sting, Leech Seed, Magical Leaf
    (80006, 8014, NULL, 80001, 'turtwig', NULL, 3, ARRAY[72, 40, 73, 345]),
    -- Barry: Monferno Lv. 28: Flame Wheel, Mach Punch, Fury Swipes, Leer
    (80006, 8014, NULL, 80001, 'turtwig', NULL, 4, ARRAY[172, 183, 154, 43]),
    -- Barry: Starly Lv. 26: Wing Attack, Quick Attack, Endeavor, Double Team
    (80006, 8014, NULL, 80001, 'chimchar', NULL, 1, ARRAY[17, 98, 283, 104]),
    -- Barry: Roselia Lv. 25: Mega Drain, Poison Sting, Leech Seed, Magical Leaf
    (80006, 8014, NULL, 80001, 'chimchar', NULL, 2, ARRAY[72, 40, 73, 345]),
    -- Barry: Ponyta Lv. 25: Ember, Stomp, Tail Whip, Growl
    (80006, 8014, NULL, 80001, 'chimchar', NULL, 3, ARRAY[52, 23, 39, 45]),
    -- Barry: Prinplup Lv. 28: Bubble Beam, Peck, Metal Claw, Growl
    (80006, 8014, NULL, 80001, 'chimchar', NULL, 4, ARRAY[61, 64, 232, 45]),
    -- Barry: Starly Lv. 26: Wing Attack, Quick Attack, Endeavor, Double Team
    (80006, 8014, NULL, 80001, 'piplup', NULL, 1, ARRAY[17, 98, 283, 104]),
    -- Barry: Buizel Lv. 25: Aqua Jet, Quick Attack, Pursuit, Growl
    (80006, 8014, NULL, 80001, 'piplup', NULL, 2, ARRAY[453, 98, 228, 45]),
    -- Barry: Ponyta Lv. 25: Ember, Stomp, Tail Whip, Growl
    (80006, 8014, NULL, 80001, 'piplup', NULL, 3, ARRAY[52, 23, 39, 45]),
    -- Barry: Grotle Lv. 28: Razor Leaf, Bite, Mega Drain, Withdraw
    (80006, 8014, NULL, 80001, 'piplup', NULL, 4, ARRAY[75, 44, 72, 110]),
    -- Barry: Staravia Lv. 31: Aerial Ace, Take Down, Quick Attack, Double Team
    (80008, 8014, NULL, 80001, 'turtwig', NULL, 1, ARRAY[332, 36, 98, 104]),
    -- Barry: Buizel Lv. 32: Aqua Jet, Pursuit, Quick Attack, Swift
    (80008, 8014, NULL, 80001, 'turtwig', NULL, 2, ARRAY[453, 228, 98, 129]),
    -- Barry: Heracross Lv. 30: Brick Break, Aerial Ace, Night Slash, Horn Attack
    (80008, 8014, NULL, 80001, 'turtwig', NULL, 3, ARRAY[280, 332, 400, 30]),
    -- Barry: Roselia Lv. 32: Giga Drain, Toxic Spikes, Leech Seed, Grass Whistle
    (80008, 8014, NULL, 80001, 'turtwig', NULL, 4, ARRAY[202, 390, 73, 320]),
    -- Barry: Monferno Lv. 35: Brick Break, Flame Wheel, Mach Punch, Aerial Ace
    (80008, 8014, NULL, 80001, 'turtwig', NULL, 5, ARRAY[280, 172, 183, 332]),
    -- Barry: Staravia Lv. 31: Aerial Ace, Take Down, Quick Attack, Double Team
    (80008, 8014, NULL, 80001, 'chimchar', NULL, 1, ARRAY[332, 36, 98, 104]),
    -- Barry: Roselia Lv. 32: Giga Drain, Toxic Spikes, Leech Seed, Grass Whistle
    (80008, 8014, NULL, 80001, 'chimchar', NULL, 2, ARRAY[202, 390, 73, 320]),
    -- Barry: Heracross Lv. 30: Brick Break, Aerial Ace, Night Slash, Horn Attack
    (80008, 8014, NULL, 80001, 'chimchar', NULL, 3, ARRAY[280, 332, 400, 30]),
    -- Barry: Ponyta Lv. 32: Fire Spin, Take Down, Stomp, Tail Whip
    (80008, 8014, NULL, 80001, 'chimchar', NULL, 4, ARRAY[83, 36, 23, 39]),
    -- Barry: Prinplup Lv. 35: Bubble Beam, Aerial Ace, Metal Claw, Fury Attack
    (80008, 8014, NULL, 80001, 'chimchar', NULL, 5, ARRAY[61, 332, 232, 31]),
    -- Barry: Staravia Lv. 31: Aerial Ace, Take Down, Quick Attack, Double Team
    (80008, 8014, NULL, 80001, 'piplup', NULL, 1, ARRAY[332, 36, 98, 104]),
    -- Barry: Buizel Lv. 32: Aqua Jet, Pursuit, Quick Attack, Swift
    (80008, 8014, NULL, 80001, 'piplup', NULL, 2, ARRAY[453, 228, 98, 129]),
    -- Barry: Heracross Lv. 30: Brick Break, Aerial Ace, Night Slash, Horn Attack
    (80008, 8014, NULL, 80001, 'piplup', NULL, 3, ARRAY[280, 332, 400, 30]),
    -- Barry: Ponyta Lv. 32: Fire Spin, Take Down, Stomp, Tail Whip
    (80008, 8014, NULL, 80001, 'piplup', NULL, 4, ARRAY[83, 36, 23, 39]),
    -- Barry: Grotle Lv. 35: Razor Leaf, Bite, Mega Drain, Leech Seed
    (80008, 8014, NULL, 80001, 'piplup', NULL, 5, ARRAY[75, 44, 72, 73]),
    -- Cyrus: Murkrow Lv. 40: Drill Peck, Night Shade, Astonish, Embargo
    (80017, 8015, NULL, NULL, NULL, NULL, 1, ARRAY[65, 101, 310, 373]),
    -- Cyrus: Golbat Lv. 40: Poison Fang, Air Cutter, Bite, Supersonic
    (80017, 8015, NULL, NULL, NULL, NULL, 2, ARRAY[305, 314, 44, 48]),
    -- Cyrus: Sneasel Lv. 43: Slash, Ice Punch, Quick Attack, Screech
    (80017, 8015, NULL, NULL, NULL, NULL, 3, ARRAY[163, 8, 98, 103]),
    -- Cyrus: Honchkrow Lv. 45: Drill Peck, Dark Pulse, Steel Wing, Embargo
    (80018, 8015, NULL, NULL, NULL, NULL, 1, ARRAY[65, 399, 211, 373]),
    -- Cyrus: Crobat Lv. 46: Cross Poison, Air Slash, Bite, Confuse Ray
    (80018, 8015, NULL, NULL, NULL, NULL, 2, ARRAY[440, 403, 44, 109]),
    -- Cyrus: Gyarados Lv. 45: Giga Impact, Aqua Tail, Ice Fang, Earthquake
    (80018, 8015, NULL, NULL, NULL, NULL, 3, ARRAY[416, 401, 423, 89]),
    -- Cyrus: Weavile Lv. 48: Night Slash, Ice Punch, Brick Break, X-Scissor
    (80018, 8015, NULL, NULL, NULL, NULL, 4, ARRAY[400, 8, 280, 404]),
    -- Barry: Staraptor Lv. 48: Close Combat, Aerial Ace, Steel Wing, U-turn
    (80011, 8014, NULL, 80001, 'turtwig', NULL, 1, ARRAY[370, 332, 211, 369]),
    -- Barry: Floatzel Lv. 49: Aqua Jet, Crunch, Ice Fang, Brick Break
    (80011, 8014, NULL, 80001, 'turtwig', NULL, 2, ARRAY[453, 242, 423, 280]),
    -- Barry: Heracross Lv. 50: Close Combat, Rock Slide, Night Slash, Aerial Ace
    (80011, 8014, NULL, 80001, 'turtwig', NULL, 3, ARRAY[370, 157, 400, 332]),
    -- Barry: Roserade Lv. 49: Poison Jab, Giga Drain, Shadow Ball, Grass Whistle
    (80011, 8014, NULL, 80001, 'turtwig', NULL, 4, ARRAY[398, 202, 247, 320]),
    -- Barry: Snorlax Lv. 51: Body Slam, Crunch, Earthquake, Rest
    (80011, 8014, NULL, 80001, 'turtwig', NULL, 5, ARRAY[34, 242, 89, 156]),
    -- Barry: Infernape Lv. 53: Flamethrower, Focus Blast, Shadow Claw, Aerial Ace
    (80011, 8014, NULL, 80001, 'turtwig', NULL, 6, ARRAY[53, 411, 421, 332]),
    -- Barry: Staraptor Lv. 48: Close Combat, Aerial Ace, Steel Wing, U-turn
    (80011, 8014, NULL, 80001, 'chimchar', NULL, 1, ARRAY[370, 332, 211, 369]),
    -- Barry: Roserade Lv. 49: Poison Jab, Giga Drain, Shadow Ball, Grass Whistle
    (80011, 8014, NULL, 80001, 'chimchar', NULL, 2, ARRAY[398, 202, 247, 320]),
    -- Barry: Heracross Lv. 50: Close Combat, Rock Slide, Night Slash, Aerial Ace
    (80011, 8014, NULL, 80001, 'chimchar', NULL, 3, ARRAY[370, 157, 400, 332]),
    -- Barry: Rapidash Lv. 49: Fire Blast, Sunny Day, Bounce, Will-O-Wisp
    (80011, 8014, NULL, 80001, 'chimchar', NULL, 4, ARRAY[126, 241, 340, 261]),
    -- Barry: Snorlax Lv. 51: Body Slam, Crunch, Earthquake, Rest
    (80011, 8014, NULL, 80001, 'chimchar', NULL, 5, ARRAY[34, 242, 89, 156]),
    -- Barry: Empoleon Lv. 53: Brine, Aerial Ace, Metal Claw, Shadow Claw
    (80011, 8014, NULL, 80001, 'chimchar', NULL, 6, ARRAY[362, 332, 232, 421]),
    -- Barry: Staraptor Lv. 48: Close Combat, Aerial Ace, Steel Wing, U-turn
    (80011, 8014, NULL, 80001, 'piplup', NULL, 1, ARRAY[370, 332, 211, 369]),
    -- Barry: Floatzel Lv. 49: Aqua Jet, Crunch, Ice Fang, Brick Break
    (80011, 8014, NULL, 80001, 'piplup', NULL, 2, ARRAY[453, 242, 423, 280]),
    -- Barry: Heracross Lv. 50: Close Combat, Rock Slide, Night Slash, Aerial Ace
    (80011, 8014, NULL, 80001, 'piplup', NULL, 3, ARRAY[370, 157, 400, 332]),
    -- Barry: Rapidash Lv. 49: Fire Blast, Sunny Day, Bounce, Will-O-Wisp
    (80011, 8014, NULL, 80001, 'piplup', NULL, 4, ARRAY[126, 241, 340, 261]),
    -- Barry: Snorlax Lv. 51: Body Slam, Crunch, Earthquake, Rest
    (80011, 8014, NULL, 80001, 'piplup', NULL, 5, ARRAY[34, 242, 89, 156]),
    -- Barry: Torterra Lv. 53: Leaf Storm, Earthquake, Crunch, Synthesis
    (80011, 8014, NULL, 80001, 'piplup', NULL, 6, ARRAY[437, 89, 242, 235]),
    -- Barry: Staraptor Lv. 58: Close Combat, Aerial Ace, Steel Wing, U-turn
    (80019, 8014, NULL, 80001, 'turtwig', NULL, 1, ARRAY[370, 332, 211, 369]),
    -- Barry: Floatzel Lv. 59: Aqua Jet, Crunch, Ice Fang, Brick Break
    (80019, 8014, NULL, 80001, 'turtwig', NULL, 2, ARRAY[453, 242, 423, 280]),
    -- Barry: Heracross Lv. 60: Megahorn, Close Combat, Night Slash, Rock Slide
    (80019, 8014, NULL, 80001, 'turtwig', NULL, 3, ARRAY[224, 370, 400, 157]),
    -- Barry: Roserade Lv. 59: Poison Jab, Giga Drain, Shadow Ball, Grass Whistle
    (80019, 8014, NULL, 80001, 'turtwig', NULL, 4, ARRAY[398, 202, 247, 320]),
    -- Barry: Snorlax Lv. 60: Body Slam, Crunch, Earthquake, Rest
    (80019, 8014, NULL, 80001, 'turtwig', NULL, 5, ARRAY[34, 242, 89, 156]),
    -- Barry: Infernape Lv. 64: Flamethrower, Focus Blast, Shadow Claw, Aerial Ace
    (80019, 8014, NULL, 80001, 'turtwig', NULL, 6, ARRAY[53, 411, 421, 332]),
    -- Barry: Staraptor Lv. 58: Close Combat, Aerial Ace, Steel Wing, U-turn
    (80019, 8014, NULL, 80001, 'chimchar', NULL, 1, ARRAY[370, 332, 211, 369]),
    -- Barry: Roserade Lv. 59: Poison Jab, Giga Drain, Shadow Ball, Grass Whistle
    (80019, 8014, NULL, 80001, 'chimchar', NULL, 2, ARRAY[398, 202, 247, 320]),
    -- Barry: Heracross Lv. 60: Megahorn, Close Combat, Night Slash, Rock Slide
    (80019, 8014, NULL, 80001, 'chimchar', NULL, 3, ARRAY[224, 370, 400, 157]),
    -- Barry: Rapidash Lv. 59: Fire Blast, Sunny Day, Bounce, Will-O-Wisp
    (80019, 8014, NULL, 80001, 'chimchar', NULL, 4, ARRAY[126, 241, 340, 261]),
    -- Barry: Snorlax Lv. 60: Body Slam, Crunch, Earthquake, Rest
    (80019, 8014, NULL, 80001, 'chimchar', NULL, 5, ARRAY[34, 242, 89, 156]),
    -- Barry: Empoleon Lv. 64: Hydro Pump, Metal Claw, Drill Peck, Shadow Claw
    (80019, 8014, NULL, 80001, 'chimchar', NULL, 6, ARRAY[56, 232, 65, 421]),
    -- Barry: Staraptor Lv. 58: Close Combat, Aerial Ace, Steel Wing, U-turn
    (80019, 8014, NULL, 80001, 'piplup', NULL, 1, ARRAY[370, 332, 211, 369]),
    -- Barry: Floatzel Lv. 59: Aqua Jet, Crunch, Ice Fang, Brick Break
    (80019, 8014, NULL, 80001, 'piplup', NULL, 2, ARRAY[453, 242, 423, 280]),
    -- Barry: Heracross Lv. 60: Megahorn, Close Combat, Night Slash, Rock Slide
    (80019, 8014, NULL, 80001, 'piplup', NULL, 3, ARRAY[224, 370, 400, 157]),
    -- Barry: Rapidash Lv. 59: Fire Blast, Sunny Day, Bounce, Will-O-Wisp
    (80019, 8014, NULL, 80001, 'piplup', NULL, 4, ARRAY[126, 241, 340, 261]),
    -- Barry: Snorlax Lv. 60: Body Slam, Crunch, Earthquake, Rest
    (80019, 8014, NULL, 80001, 'piplup', NULL, 5, ARRAY[34, 242, 89, 156]),
    -- Barry: Torterra Lv. 64: Leaf Storm, Earthquake, Crunch, Leech Seed
    (80019, 8014, NULL, 80001, 'piplup', NULL, 6, ARRAY[437, 89, 242, 73]),
    -- Dialga: Dialga Lv. 47: Metal Claw, Ancient Power, Dragon Claw, Roar of Time
    (80018, 8016, NULL, NULL, NULL, NULL, 1, ARRAY[232, 246, 337, 459]),
    -- Palkia: Palkia Lv. 47: Water Pulse, Ancient Power, Dragon Claw, Spacial Rend
    (80018, 8017, NULL, NULL, NULL, NULL, 1, ARRAY[352, 246, 337, 460]),
    -- Uxie: Uxie Lv. 50: Confusion, Yawn, Future Sight, Amnesia
    (80020, 8018, NULL, NULL, NULL, NULL, 1, ARRAY[93, 281, 248, 133]),
    -- Azelf: Azelf Lv. 50: Confusion, Uproar, Future Sight, Nasty Plot
    (80020, 8019, NULL, NULL, NULL, NULL, 1, ARRAY[93, 253, 248, 417]),
    -- Mesprit: Mesprit Lv. 50: Confusion, Lucky Chant, Future Sight, Charm
    (80020, 8020, NULL, NULL, NULL, NULL, 1, ARRAY[93, 381, 248, 204]),
    -- Giratina: Giratina Lv. 70: Shadow Force, Heal Block, Earth Power, Slash
    (80021, 8021, NULL, NULL, NULL, NULL, 1, ARRAY[467, 377, 414, 163]),
    -- Cresselia: Cresselia Lv. 50: Mist, Aurora Beam, Future Sight, Slash
    (80022, 8022, NULL, NULL, NULL, NULL, 1, ARRAY[54, 62, 248, 163]),
    -- Regigigas: Regigigas Lv. 70: Confuse Ray, Stomp, Superpower, Zen Headbutt
    (80023, 8023, NULL, NULL, NULL, NULL, 1, ARRAY[109, 23, 276, 428]),
    -- Heatran: Heatran Lv. 70: Scary Face, Lava Plume, Fire Spin, Iron Head
    (80024, 8024, NULL, NULL, NULL, NULL, 1, ARRAY[184, 436, 83, 442]),
    -- Mars: Zubat Lv. 14: Bite, Leech Life, Toxic
    (80004, 8025, NULL, NULL, NULL, NULL, 1, ARRAY[44, 141, 92]),
    -- Mars: Purugly Lv. 16: Feint Attack, Scratch, Fake Out
    (80004, 8025, NULL, NULL, NULL, NULL, 2, ARRAY[185, 10, 252]),
    -- Jupiter: Zubat Lv. 18: Giga Drain, Wing Attack, Bite
    (80004, 8026, NULL, NULL, NULL, NULL, 1, ARRAY[202, 17, 44]),
    -- Jupiter: Skuntank Lv. 20: Night Slash, Poison Gas, Screech, Smokescreen
    (80004, 8026, NULL, NULL, NULL, NULL, 2, ARRAY[400, 139, 103, 108]),
    -- Saturn: Kadabra Lv. 35: Psychic, Shock Wave, Recover, Embargo
    (80009, 8027, NULL, NULL, NULL, NULL, 1, ARRAY[94, 351, 105, 373]),
    -- Saturn: Bronzor Lv. 35: Gyro Ball, Shadow Ball, Rock Tomb, Iron Defense
    (80009, 8027, NULL, NULL, NULL, NULL, 2, ARRAY[360, 247, 317, 334]),
    -- Saturn: Toxicroak Lv. 37: Poison Jab, Revenge, Mud Bomb, Feint Attack
    (80009, 8027, NULL, NULL, NULL, NULL, 3, ARRAY[398, 279, 426, 185]),
    -- Mars: Golbat Lv. 37: Air Cutter, Bite, Toxic, Supersonic
    (80009, 8025, NULL, NULL, NULL, NULL, 1, ARRAY[314, 44, 92, 48]),
    -- Mars: Bronzor Lv. 37: Gyro Ball, Extrasensory, Iron Defense, Confuse Ray
    (80009, 8025, NULL, NULL, NULL, NULL, 2, ARRAY[360, 326, 334, 109]),
    -- Mars: Purugly Lv. 39: Slash, Feint Attack, Hypnosis, Fake Out
    (80009, 8025, NULL, NULL, NULL, NULL, 3, ARRAY[163, 185, 95, 252]),
    -- Saturn: Kadabra Lv. 38: Psychic, Shock Wave, Recover, Embargo
    (80017, 8027, NULL, NULL, NULL, NULL, 1, ARRAY[94, 351, 105, 373]),
    -- Saturn: Bronzor Lv. 38: Gyro Ball, Extrasensory, Shadow Ball, Confuse Ray
    (80017, 8027, NULL, NULL, NULL, NULL, 2, ARRAY[360, 326, 247, 109]),
    -- Saturn: Toxicroak Lv. 40: Poison Jab, Brick Break, X-Scissor, Swagger
    (80017, 8027, NULL, NULL, NULL, NULL, 3, ARRAY[398, 280, 404, 207]),
    -- Mars & Jupiter: Bronzor Lv. 41: Gyro Ball, Extrasensory, Light Screen, Confuse Ray
    (80018, 8028, NULL, NULL, NULL, NULL, 1, ARRAY[360, 326, 113, 109]),
    -- Mars & Jupiter: Golbat Lv. 42: Air Cutter, Bite, Poison Fang, Confuse Ray
    (80018, 8028, NULL, NULL, NULL, NULL, 2, ARRAY[314, 44, 305, 109]),
    -- Mars & Jupiter: Purugly Lv. 45: Slash, Shadow Claw, Aerial Ace, Hypnosis
    (80018, 8028, NULL, NULL, NULL, NULL, 3, ARRAY[163, 421, 332, 95]),
    -- Mars & Jupiter: Bronzor Lv. 41: Gyro Ball, Extrasensory, Rock Slide, Reflect
    (80018, 8028, NULL, NULL, NULL, NULL, 4, ARRAY[360, 326, 157, 115]),
    -- Mars & Jupiter: Golbat Lv. 41: Sludge Bomb, Air Cutter, Giga Drain, Mean Look
    (80018, 8028, NULL, NULL, NULL, NULL, 5, ARRAY[188, 314, 202, 212]),
    -- Mars & Jupiter: Skuntank Lv. 46: Night Slash, Poison Jab, Flamethrower, Smokescreen
    (80018, 8028, NULL, NULL, NULL, NULL, 6, ARRAY[400, 398, 53, 108])
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
