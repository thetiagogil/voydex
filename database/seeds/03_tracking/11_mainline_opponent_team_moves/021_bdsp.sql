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
-- Scope: Brilliant Diamond / Shining Pearl Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Brilliant Diamond / Shining Pearl opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Roark: Geodude Lv. 12: Stealth Rock, Defense Curl, Rollout
    (210003, 21001, NULL, NULL, NULL, NULL, 1, ARRAY[446, 111, 205]),
    -- Roark: Onix Lv. 12: Stealth Rock, Rock Throw, Bind
    (210003, 21001, NULL, NULL, NULL, NULL, 2, ARRAY[446, 88, 20]),
    -- Roark: Cranidos Lv. 14: Headbutt, Bulldoze, Leer
    (210003, 21001, NULL, NULL, NULL, NULL, 3, ARRAY[29, 523, 43]),
    -- Gardenia: Cherubi Lv. 19: Grass Knot, Growth, Dazzling Gleam, Safeguard
    (210004, 21002, NULL, NULL, NULL, NULL, 1, ARRAY[447, 74, 605, 219]),
    -- Gardenia: Turtwig Lv. 19: Grass Knot, Razor Leaf, Reflect, Work Up
    (210004, 21002, NULL, NULL, NULL, NULL, 2, ARRAY[447, 75, 115, 526]),
    -- Gardenia: Roserade Lv. 22: Grass Knot, Petal Blizzard, Poison Sting, Stun Spore
    (210004, 21002, NULL, NULL, NULL, NULL, 3, ARRAY[447, 572, 40, 78]),
    -- Maylene: Meditite Lv. 27: Drain Punch, Light Screen, Flash, Bulk Up
    (210005, 21003, NULL, NULL, NULL, NULL, 1, ARRAY[409, 113, 148, 339]),
    -- Maylene: Machoke Lv. 27: Low Sweep, Knock Off, Rock Tomb, Bulldoze
    (210005, 21003, NULL, NULL, NULL, NULL, 2, ARRAY[490, 282, 317, 523]),
    -- Maylene: Lucario Lv. 30: Drain Punch, Screech, Metal Claw, Bulk Up
    (210005, 21003, NULL, NULL, NULL, NULL, 3, ARRAY[409, 103, 232, 339]),
    -- Crasher Wake: Gyarados Lv. 27: Brine, Ice Fang, Crunch, Flail
    (210006, 21004, NULL, NULL, NULL, NULL, 1, ARRAY[362, 423, 242, 175]),
    -- Crasher Wake: Quagsire Lv. 27: Rain Dance, Haze, Mud Shot, Scald
    (210006, 21004, NULL, NULL, NULL, NULL, 2, ARRAY[240, 114, 341, 503]),
    -- Crasher Wake: Floatzel Lv. 30: Brine, Ice Fang, Bite, Aqua Jet
    (210006, 21004, NULL, NULL, NULL, NULL, 3, ARRAY[362, 423, 44, 453]),
    -- Fantina: Drifblim Lv. 32: Strength Sap, Hex, Fly, Will-O-Wisp
    (210007, 21005, NULL, NULL, NULL, NULL, 1, ARRAY[668, 506, 19, 261]),
    -- Fantina: Gengar Lv. 34: Shadow Claw, Confuse Ray, Sludge Bomb, Dazzling Gleam
    (210007, 21005, NULL, NULL, NULL, NULL, 2, ARRAY[421, 109, 188, 605]),
    -- Fantina: Mismagius Lv. 36: Confuse Ray, Phantom Force, Magical Leaf, Dazzling Gleam
    (210007, 21005, NULL, NULL, NULL, NULL, 3, ARRAY[109, 566, 345, 605]),
    -- Byron: Bronzor Lv. 36: Confuse Ray, Sandstorm, Trick Room, Flash Cannon
    (210008, 21006, NULL, NULL, NULL, NULL, 1, ARRAY[109, 201, 433, 430]),
    -- Byron: Steelix Lv. 36: Thunder Fang, Earthquake, Sandstorm, Gyro Ball
    (210008, 21006, NULL, NULL, NULL, NULL, 2, ARRAY[422, 89, 201, 360]),
    -- Byron: Bastiodon Lv. 39: Iron Defense, Thunderbolt, Stone Edge, Flash Cannon
    (210008, 21006, NULL, NULL, NULL, NULL, 3, ARRAY[334, 85, 444, 430]),
    -- Candice: Snover Lv. 38: Mist, Razor Leaf, Water Pulse, Avalanche
    (210009, 21007, NULL, NULL, NULL, NULL, 1, ARRAY[54, 75, 352, 419]),
    -- Candice: Sneasel Lv. 38: Metal Claw, Hone Claws, Dig, Avalanche
    (210009, 21007, NULL, NULL, NULL, NULL, 2, ARRAY[232, 468, 91, 419]),
    -- Candice: Medicham Lv. 40: Ice Punch, Bulk Up, Brick Break, Rock Slide
    (210009, 21007, NULL, NULL, NULL, NULL, 3, ARRAY[8, 339, 280, 157]),
    -- Candice: Abomasnow Lv. 42: Aurora Veil, Giga Drain, Earthquake, Blizzard
    (210009, 21007, NULL, NULL, NULL, NULL, 4, ARRAY[694, 202, 89, 59]),
    -- Volkner: Raichu Lv. 46: Nuzzle, Volt Switch, Surf, Charge Beam
    (210010, 21008, NULL, NULL, NULL, NULL, 1, ARRAY[609, 521, 57, 451]),
    -- Volkner: Ambipom Lv. 47: Fake Out, Thunderbolt, Double Hit, Last Resort
    (210010, 21008, NULL, NULL, NULL, NULL, 2, ARRAY[252, 85, 458, 387]),
    -- Volkner: Octillery Lv. 47: Octazooka, Focus Energy, Aurora Beam, Charge Beam
    (210010, 21008, NULL, NULL, NULL, NULL, 3, ARRAY[190, 116, 62, 451]),
    -- Volkner: Luxray Lv. 49: Thunder Fang, Ice Fang, Crunch, Iron Tail
    (210010, 21008, NULL, NULL, NULL, NULL, 4, ARRAY[422, 423, 242, 231]),
    -- Aaron: Dustox Lv. 53: Toxic, Bug Buzz, Moonlight, Light Screen
    (210011, 21009, NULL, NULL, NULL, NULL, 1, ARRAY[92, 405, 236, 113]),
    -- Aaron: Beautifly Lv. 53: Bug Buzz, Shadow Ball, Psychic, Quiver Dance
    (210011, 21009, NULL, NULL, NULL, NULL, 2, ARRAY[405, 247, 94, 483]),
    -- Aaron: Vespiquen Lv. 54: Acrobatics, Attack Order, Aerial Ace, Defend Order
    (210011, 21009, NULL, NULL, NULL, NULL, 3, ARRAY[512, 454, 332, 455]),
    -- Aaron: Heracross Lv. 54: Earthquake, Rock Slide, Facade, Brick Break
    (210011, 21009, NULL, NULL, NULL, NULL, 4, ARRAY[89, 157, 263, 280]),
    -- Aaron: Drapion Lv. 57: Cross Poison, Night Slash, Earthquake, X-Scissor
    (210011, 21009, NULL, NULL, NULL, NULL, 5, ARRAY[440, 400, 89, 404]),
    -- Bertha: Quagsire Lv. 55: Recover, Toxic, Earthquake, Surf
    (210012, 21010, NULL, NULL, NULL, NULL, 1, ARRAY[105, 92, 89, 57]),
    -- Bertha: Sudowoodo Lv. 56: Double-Edge, Head Smash, Sucker Punch, Low Kick
    (210012, 21010, NULL, NULL, NULL, NULL, 2, ARRAY[38, 457, 389, 67]),
    -- Bertha: Golem Lv. 56: Rock Polish, Heavy Slam, Earthquake, Stone Edge
    (210012, 21010, NULL, NULL, NULL, NULL, 3, ARRAY[397, 484, 89, 444]),
    -- Bertha: Whiscash Lv. 55: Bulldoze, Ice Beam, Belch, Hydro Pump
    (210012, 21010, NULL, NULL, NULL, NULL, 4, ARRAY[523, 58, 562, 56]),
    -- Bertha: Hippowdon Lv. 59: Ice Fang, Earthquake, Crunch, Rest
    (210012, 21010, NULL, NULL, NULL, NULL, 5, ARRAY[423, 89, 242, 156]),
    -- Flint: Rapidash Lv. 58: Flame Charge, Iron Tail, Poison Jab, Hypnosis
    (210013, 21011, NULL, NULL, NULL, NULL, 1, ARRAY[488, 231, 398, 95]),
    -- Flint: Steelix Lv. 57: Thunder Fang, Fire Fang, Iron Tail, Crunch
    (210013, 21011, NULL, NULL, NULL, NULL, 2, ARRAY[422, 424, 231, 242]),
    -- Flint: Drifblim Lv. 58: Strength Sap, Minimize, Baton Pass, Will-O-Wisp
    (210013, 21011, NULL, NULL, NULL, NULL, 3, ARRAY[668, 107, 226, 261]),
    -- Flint: Lopunny Lv. 57: Mirror Coat, High Jump Kick, Quick Attack, Fire Punch
    (210013, 21011, NULL, NULL, NULL, NULL, 4, ARRAY[243, 136, 98, 7]),
    -- Flint: Infernape Lv. 61: Fire Punch, Thunder Punch, Close Combat, Mach Punch
    (210013, 21011, NULL, NULL, NULL, NULL, 5, ARRAY[7, 9, 370, 183]),
    -- Lucian: Mr. Mime Lv. 59: Light Screen, Reflect, Psychic, Dazzling Gleam
    (210014, 21012, NULL, NULL, NULL, NULL, 1, ARRAY[113, 115, 94, 605]),
    -- Lucian: Girafarig Lv. 59: Light Screen, Psychic, Thunderbolt, Trick Room
    (210014, 21012, NULL, NULL, NULL, NULL, 2, ARRAY[113, 94, 85, 433]),
    -- Lucian: Medicham Lv. 60: Zen Headbutt, High Jump Kick, Thunder Punch, Ice Punch
    (210014, 21012, NULL, NULL, NULL, NULL, 3, ARRAY[428, 136, 9, 8]),
    -- Lucian: Alakazam Lv. 60: Nasty Plot, Psychic, Future Sight, Shock Wave
    (210014, 21012, NULL, NULL, NULL, NULL, 4, ARRAY[417, 94, 248, 351]),
    -- Lucian: Bronzong Lv. 63: Gyro Ball, Earthquake, Payback, Trick Room
    (210014, 21012, NULL, NULL, NULL, NULL, 5, ARRAY[360, 89, 371, 433]),
    -- Cynthia: Spiritomb Lv. 61: Shadow Ball, Dark Pulse, Psychic, Sucker Punch
    (210015, 21013, NULL, NULL, NULL, NULL, 1, ARRAY[247, 399, 94, 389]),
    -- Cynthia: Roserade Lv. 60: Dazzling Gleam, Shadow Ball, Sludge Bomb, Energy Ball
    (210015, 21013, NULL, NULL, NULL, NULL, 2, ARRAY[605, 247, 188, 412]),
    -- Cynthia: Gastrodon Lv. 60: Scald, Earthquake, Sludge Bomb, Rock Tomb
    (210015, 21013, NULL, NULL, NULL, NULL, 3, ARRAY[503, 89, 188, 317]),
    -- Cynthia: Lucario Lv. 63: Aura Sphere, Dragon Pulse, Flash Cannon, Nasty Plot
    (210015, 21013, NULL, NULL, NULL, NULL, 4, ARRAY[396, 406, 430, 417]),
    -- Cynthia: Milotic Lv. 63: Recover, Mirror Coat, Ice Beam, Scald
    (210015, 21013, NULL, NULL, NULL, NULL, 5, ARRAY[105, 243, 58, 503]),
    -- Cynthia: Garchomp Lv. 66: Dragon Claw, Earthquake, Swords Dance, Poison Jab
    (210015, 21013, NULL, NULL, NULL, NULL, 6, ARRAY[337, 89, 14, 398]),
    -- Barry: Starly Lv. 7: Tackle, Quick Attack, Growl
    (210003, 21014, NULL, 210001, 'turtwig', NULL, 1, ARRAY[33, 98, 45]),
    -- Barry: Chimchar Lv. 9: Scratch, Leer
    (210003, 21014, NULL, 210001, 'turtwig', NULL, 2, ARRAY[10, 43]),
    -- Barry: Starly Lv. 7: Tackle, Quick Attack, Growl
    (210003, 21014, NULL, 210001, 'chimchar', NULL, 1, ARRAY[33, 98, 45]),
    -- Barry: Piplup Lv. 9: Pound, Growl
    (210003, 21014, NULL, 210001, 'chimchar', NULL, 2, ARRAY[1, 45]),
    -- Barry: Starly Lv. 7: Tackle, Quick Attack, Growl
    (210003, 21014, NULL, 210001, 'piplup', NULL, 1, ARRAY[33, 98, 45]),
    -- Barry: Turtwig Lv. 9: Tackle, Withdraw
    (210003, 21014, NULL, 210001, 'piplup', NULL, 2, ARRAY[33, 110]),
    -- Barry: Starly Lv. 19: Quick Attack, Double Team, Endeavor, Pluck
    (210005, 21014, NULL, 210001, 'turtwig', NULL, 1, ARRAY[98, 104, 283, 365]),
    -- Barry: Buizel Lv. 20: Tail Whip, Quick Attack, Water Gun, Bite
    (210005, 21014, NULL, 210001, 'turtwig', NULL, 2, ARRAY[39, 98, 55, 44]),
    -- Barry: Roselia Lv. 20: Poison Sting, Mega Drain, Leech Seed, Grass Knot
    (210005, 21014, NULL, 210001, 'turtwig', NULL, 3, ARRAY[40, 72, 73, 447]),
    -- Barry: Monferno Lv. 21: Mach Punch, Leer, Flame Wheel, Stealth Rock
    (210005, 21014, NULL, 210001, 'turtwig', NULL, 4, ARRAY[183, 43, 172, 446]),
    -- Barry: Starly Lv. 19: Quick Attack, Double Team, Endeavor, Pluck
    (210005, 21014, NULL, 210001, 'chimchar', NULL, 1, ARRAY[98, 104, 283, 365]),
    -- Barry: Roselia Lv. 20: Growth, Stun Spore, Leech Seed, Magical Leaf
    (210005, 21014, NULL, 210001, 'chimchar', NULL, 2, ARRAY[74, 78, 73, 345]),
    -- Barry: Ponyta Lv. 20: Tackle, Growl, Flame Charge, Agility
    (210005, 21014, NULL, 210001, 'chimchar', NULL, 3, ARRAY[33, 45, 488, 97]),
    -- Barry: Prinplup Lv. 21: Metal Claw, Bubble Beam, Stealth Rock, Grass Knot
    (210005, 21014, NULL, 210001, 'chimchar', NULL, 4, ARRAY[232, 61, 446, 447]),
    -- Barry: Starly Lv. 19: Quick Attack, Double Team, Endeavor, Pluck
    (210005, 21014, NULL, 210001, 'piplup', NULL, 1, ARRAY[98, 104, 283, 365]),
    -- Barry: Buizel Lv. 20: Tail Whip, Quick Attack, Water Gun, Bite
    (210005, 21014, NULL, 210001, 'piplup', NULL, 2, ARRAY[39, 98, 55, 44]),
    -- Barry: Ponyta Lv. 20: Tackle, Tail Whip, Flame Charge, Agility
    (210005, 21014, NULL, 210001, 'piplup', NULL, 3, ARRAY[33, 39, 488, 97]),
    -- Barry: Grotle Lv. 21: Absorb, Razor Leaf, Curse, Stealth Rock
    (210005, 21014, NULL, 210001, 'piplup', NULL, 4, ARRAY[71, 75, 174, 446]),
    -- Barry: Starly Lv. 26: Quick Attack, Double Team, Endeavor, Pluck
    (210006, 21014, NULL, 210001, 'turtwig', NULL, 1, ARRAY[98, 104, 283, 365]),
    -- Barry: Buizel Lv. 26: Tail Whip, Bite, Swift, Aqua Jet
    (210006, 21014, NULL, 210001, 'turtwig', NULL, 2, ARRAY[39, 44, 129, 453]),
    -- Barry: Roselia Lv. 27: Poison Sting, Mega Drain, Sweet Scent, Grass Knot
    (210006, 21014, NULL, 210001, 'turtwig', NULL, 3, ARRAY[40, 72, 230, 447]),
    -- Barry: Monferno Lv. 31: Mach Punch, Leer, Power-Up Punch, Flame Wheel
    (210006, 21014, NULL, 210001, 'turtwig', NULL, 4, ARRAY[183, 43, 612, 172]),
    -- Barry: Starly Lv. 26: Quick Attack, Double Team, Endeavor, Pluck
    (210006, 21014, NULL, 210001, 'chimchar', NULL, 1, ARRAY[98, 104, 283, 365]),
    -- Barry: Roselia Lv. 26: Growth, Stun Spore, Leech Seed, Magical Leaf
    (210006, 21014, NULL, 210001, 'chimchar', NULL, 2, ARRAY[74, 78, 73, 345]),
    -- Barry: Ponyta Lv. 27: Tackle, Growl, Agility, Flame Wheel
    (210006, 21014, NULL, 210001, 'chimchar', NULL, 3, ARRAY[33, 45, 97, 172]),
    -- Barry: Prinplup Lv. 31: Metal Claw, Charm, Bubble Beam, Grass Knot
    (210006, 21014, NULL, 210001, 'chimchar', NULL, 4, ARRAY[232, 204, 61, 447]),
    -- Barry: Starly Lv. 26: Quick Attack, Double Team, Endeavor, Pluck
    (210006, 21014, NULL, 210001, 'piplup', NULL, 1, ARRAY[98, 104, 283, 365]),
    -- Barry: Buizel Lv. 26: Tail Whip, Bite, Swift, Aqua Jet
    (210006, 21014, NULL, 210001, 'piplup', NULL, 2, ARRAY[39, 44, 129, 453]),
    -- Barry: Ponyta Lv. 27: Tackle, Tail Whip, Agility, Flame Wheel
    (210006, 21014, NULL, 210001, 'piplup', NULL, 3, ARRAY[33, 39, 97, 172]),
    -- Barry: Grotle Lv. 31: Razor Leaf, Bite, Mega Drain, Stealth Rock
    (210006, 21014, NULL, 210001, 'piplup', NULL, 4, ARRAY[75, 44, 72, 446]),
    -- Barry: Staravia Lv. 32: Quick Attack, Double Team, Endeavor, Pluck
    (210008, 21014, NULL, 210001, 'turtwig', NULL, 1, ARRAY[98, 104, 283, 365]),
    -- Barry: Buizel Lv. 33: Tail Whip, Bite, Swift, Brine
    (210008, 21014, NULL, 210001, 'turtwig', NULL, 2, ARRAY[39, 44, 129, 362]),
    -- Barry: Heracross Lv. 32: Leer, Aerial Ace, Brick Break, Thief
    (210008, 21014, NULL, 210001, 'turtwig', NULL, 3, ARRAY[43, 332, 280, 168]),
    -- Barry: Roselia Lv. 34: Poison Sting, Sweet Scent, Giga Drain, Grass Knot
    (210008, 21014, NULL, 210001, 'turtwig', NULL, 4, ARRAY[40, 230, 202, 447]),
    -- Barry: Monferno Lv. 37: Mach Punch, Power-Up Punch, Flame Wheel, Shadow Claw
    (210008, 21014, NULL, 210001, 'turtwig', NULL, 5, ARRAY[183, 612, 172, 421]),
    -- Barry: Staravia Lv. 32: Quick Attack, Double Team, Endeavor, Pluck
    (210008, 21014, NULL, 210001, 'chimchar', NULL, 1, ARRAY[98, 104, 283, 365]),
    -- Barry: Roselia Lv. 33: Growth, Stun Spore, Leech Seed, Giga Drain
    (210008, 21014, NULL, 210001, 'chimchar', NULL, 2, ARRAY[74, 78, 73, 202]),
    -- Barry: Heracross Lv. 32: Leer, Aerial Ace, Brick Break, Thief
    (210008, 21014, NULL, 210001, 'chimchar', NULL, 3, ARRAY[43, 332, 280, 168]),
    -- Barry: Ponyta Lv. 34: Growl, Agility, Flame Wheel, Stomp
    (210008, 21014, NULL, 210001, 'chimchar', NULL, 4, ARRAY[45, 97, 172, 23]),
    -- Barry: Prinplup Lv. 37: Metal Claw, Charm, Grass Knot, Brine
    (210008, 21014, NULL, 210001, 'chimchar', NULL, 5, ARRAY[232, 204, 447, 362]),
    -- Barry: Staravia Lv. 32: Quick Attack, Double Team, Endeavor, Pluck
    (210008, 21014, NULL, 210001, 'piplup', NULL, 1, ARRAY[98, 104, 283, 365]),
    -- Barry: Buizel Lv. 33: Tail Whip, Bite, Swift, Brine
    (210008, 21014, NULL, 210001, 'piplup', NULL, 2, ARRAY[39, 44, 129, 362]),
    -- Barry: Heracross Lv. 32: Leer, Aerial Ace, Brick Break, Thief
    (210008, 21014, NULL, 210001, 'piplup', NULL, 3, ARRAY[43, 332, 280, 168]),
    -- Barry: Ponyta Lv. 34: Tail Whip, Agility, Flame Wheel, Stomp
    (210008, 21014, NULL, 210001, 'piplup', NULL, 4, ARRAY[39, 97, 172, 23]),
    -- Barry: Grotle Lv. 37: Razor Leaf, Bite, Leech Seed, Stealth Rock
    (210008, 21014, NULL, 210001, 'piplup', NULL, 5, ARRAY[75, 44, 73, 446]),
    -- Cyrus: Murkrow Lv. 40: Wing Attack, Night Shade, Assurance, Taunt
    (210018, 21015, NULL, NULL, NULL, NULL, 1, ARRAY[17, 101, 372, 269]),
    -- Cyrus: Golbat Lv. 40: Screech, Poison Fang, Air Cutter, Bite
    (210018, 21015, NULL, NULL, NULL, NULL, 2, ARRAY[103, 305, 314, 44]),
    -- Cyrus: Sneasel Lv. 43: Metal Claw, Icy Wind, Hone Claws, Beat Up
    (210018, 21015, NULL, NULL, NULL, NULL, 3, ARRAY[232, 196, 468, 251]),
    -- Cyrus: Honchkrow Lv. 45: Air Cutter, Night Slash, Steel Wing, Defog
    (210019, 21015, NULL, NULL, NULL, NULL, 1, ARRAY[314, 400, 211, 432]),
    -- Cyrus: Crobat Lv. 46: Cross Poison, Tailwind, Air Cutter, U-turn
    (210019, 21015, NULL, NULL, NULL, NULL, 2, ARRAY[440, 366, 314, 369]),
    -- Cyrus: Gyarados Lv. 45: Ice Fang, Waterfall, Crunch, Earthquake
    (210019, 21015, NULL, NULL, NULL, NULL, 3, ARRAY[423, 127, 242, 89]),
    -- Cyrus: Weavile Lv. 48: Metal Claw, Fling, Dig, Aerial Ace
    (210019, 21015, NULL, NULL, NULL, NULL, 4, ARRAY[232, 374, 91, 332]),
    -- Barry: Staraptor Lv. 49: Close Combat, Pluck, Steel Wing, U-turn
    (210011, 21014, NULL, 210001, 'turtwig', NULL, 1, ARRAY[370, 365, 211, 369]),
    -- Barry: Floatzel Lv. 49: Ice Fang, Crunch, Swift, Brine
    (210011, 21014, NULL, 210001, 'turtwig', NULL, 2, ARRAY[423, 242, 129, 362]),
    -- Barry: Heracross Lv. 51: Pin Missile, Swords Dance, Rock Slide, Thief
    (210011, 21014, NULL, 210001, 'turtwig', NULL, 3, ARRAY[42, 14, 157, 168]),
    -- Barry: Roserade Lv. 49: Grassy Terrain, Giga Drain, Toxic, Grass Knot
    (210011, 21014, NULL, 210001, 'turtwig', NULL, 4, ARRAY[580, 202, 92, 447]),
    -- Barry: Snorlax Lv. 52: Covet, Yawn, Crunch, Hammer Arm
    (210011, 21014, NULL, 210001, 'turtwig', NULL, 5, ARRAY[343, 281, 242, 359]),
    -- Barry: Infernape Lv. 55: Close Combat, Flame Wheel, U-turn, Shadow Claw
    (210011, 21014, NULL, 210001, 'turtwig', NULL, 6, ARRAY[370, 172, 369, 421]),
    -- Barry: Staraptor Lv. 49: Close Combat, Pluck, Rain Dance, U-turn
    (210011, 21014, NULL, 210001, 'chimchar', NULL, 1, ARRAY[370, 365, 240, 369]),
    -- Barry: Roserade Lv. 49: Grassy Terrain, Petal Blizzard, Stun Spore, Shadow Ball
    (210011, 21014, NULL, 210001, 'chimchar', NULL, 2, ARRAY[580, 572, 78, 247]),
    -- Barry: Heracross Lv. 51: Pin Missile, Swords Dance, Rock Slide, Thief
    (210011, 21014, NULL, 210001, 'chimchar', NULL, 3, ARRAY[42, 14, 157, 168]),
    -- Barry: Rapidash Lv. 49: Smart Strike, Megahorn, Poison Jab, Flame Wheel
    (210011, 21014, NULL, 210001, 'chimchar', NULL, 4, ARRAY[684, 224, 398, 172]),
    -- Barry: Snorlax Lv. 52: Covet, Yawn, Crunch, High Horsepower
    (210011, 21014, NULL, 210001, 'chimchar', NULL, 5, ARRAY[343, 281, 242, 667]),
    -- Barry: Empoleon Lv. 55: Charm, Grass Knot, Brine, Flash Cannon
    (210011, 21014, NULL, 210001, 'chimchar', NULL, 6, ARRAY[204, 447, 362, 430]),
    -- Barry: Staraptor Lv. 49: Close Combat, Pluck, Sunny Day, U-turn
    (210011, 21014, NULL, 210001, 'piplup', NULL, 1, ARRAY[370, 365, 241, 369]),
    -- Barry: Floatzel Lv. 49: Ice Fang, Crunch, Swift, Brine
    (210011, 21014, NULL, 210001, 'piplup', NULL, 2, ARRAY[423, 242, 129, 362]),
    -- Barry: Heracross Lv. 51: Pin Missile, Swords Dance, Rock Slide, Thief
    (210011, 21014, NULL, 210001, 'piplup', NULL, 3, ARRAY[42, 14, 157, 168]),
    -- Barry: Rapidash Lv. 49: Smart Strike, Megahorn, Poison Jab, Flame Wheel
    (210011, 21014, NULL, 210001, 'piplup', NULL, 4, ARRAY[684, 224, 398, 172]),
    -- Barry: Snorlax Lv. 52: Covet, Yawn, Crunch, High Horsepower
    (210011, 21014, NULL, 210001, 'piplup', NULL, 5, ARRAY[343, 281, 242, 667]),
    -- Barry: Torterra Lv. 55: Earthquake, Wood Hammer, Roar, Stealth Rock
    (210011, 21014, NULL, 210001, 'piplup', NULL, 6, ARRAY[89, 452, 46, 446]),
    -- Barry: Staraptor Lv. 58: Close Combat, Pluck, Steel Wing, U-turn
    (210020, 21014, NULL, 210001, 'turtwig', NULL, 1, ARRAY[370, 365, 211, 369]),
    -- Barry: Floatzel Lv. 59: Ice Fang, Crunch, Swift, Waterfall
    (210020, 21014, NULL, 210001, 'turtwig', NULL, 2, ARRAY[423, 242, 129, 127]),
    -- Barry: Heracross Lv. 60: Megahorn, Swords Dance, Rock Slide, Close Combat
    (210020, 21014, NULL, 210001, 'turtwig', NULL, 3, ARRAY[224, 14, 157, 370]),
    -- Barry: Roserade Lv. 59: Grassy Terrain, Giga Drain, Toxic, Sludge Bomb
    (210020, 21014, NULL, 210001, 'turtwig', NULL, 4, ARRAY[580, 202, 92, 188]),
    -- Barry: Snorlax Lv. 60: Covet, Yawn, Crunch, Hammer Arm
    (210020, 21014, NULL, 210001, 'turtwig', NULL, 5, ARRAY[343, 281, 242, 359]),
    -- Barry: Infernape Lv. 64: Close Combat, Flare Blitz, U-turn, Shadow Claw
    (210020, 21014, NULL, 210001, 'turtwig', NULL, 6, ARRAY[370, 394, 369, 421]),
    -- Barry: Staraptor Lv. 58: Close Combat, Pluck, Rain Dance, U-turn
    (210020, 21014, NULL, 210001, 'chimchar', NULL, 1, ARRAY[370, 365, 240, 369]),
    -- Barry: Roserade Lv. 59: Sludge Bomb, Giga Drain, Stun Spore, Shadow Ball
    (210020, 21014, NULL, 210001, 'chimchar', NULL, 2, ARRAY[188, 202, 78, 247]),
    -- Barry: Heracross Lv. 60: Megahorn, Swords Dance, Rock Slide, Close Combat
    (210020, 21014, NULL, 210001, 'chimchar', NULL, 3, ARRAY[224, 14, 157, 370]),
    -- Barry: Rapidash Lv. 59: Smart Strike, Megahorn, Poison Jab, Flame Wheel
    (210020, 21014, NULL, 210001, 'chimchar', NULL, 4, ARRAY[684, 224, 398, 172]),
    -- Barry: Snorlax Lv. 60: Covet, Yawn, Crunch, High Horsepower
    (210020, 21014, NULL, 210001, 'chimchar', NULL, 5, ARRAY[343, 281, 242, 667]),
    -- Barry: Empoleon Lv. 64: Charm, Grass Knot, Surf, Flash Cannon
    (210020, 21014, NULL, 210001, 'chimchar', NULL, 6, ARRAY[204, 447, 57, 430]),
    -- Barry: Staraptor Lv. 58: Close Combat, Pluck, Sunny Day, U-turn
    (210020, 21014, NULL, 210001, 'piplup', NULL, 1, ARRAY[370, 365, 241, 369]),
    -- Barry: Floatzel Lv. 59: Ice Fang, Crunch, Swift, Waterfall
    (210020, 21014, NULL, 210001, 'piplup', NULL, 2, ARRAY[423, 242, 129, 127]),
    -- Barry: Heracross Lv. 60: Megahorn, Swords Dance, Rock Slide, Close Combat
    (210020, 21014, NULL, 210001, 'piplup', NULL, 3, ARRAY[224, 14, 157, 370]),
    -- Barry: Rapidash Lv. 59: Smart Strike, Megahorn, Poison Jab, Flame Wheel
    (210020, 21014, NULL, 210001, 'piplup', NULL, 4, ARRAY[684, 224, 398, 172]),
    -- Barry: Snorlax Lv. 60: Covet, Yawn, Crunch, High Horsepower
    (210020, 21014, NULL, 210001, 'piplup', NULL, 5, ARRAY[343, 281, 242, 667]),
    -- Barry: Torterra Lv. 64: Earthquake, Wood Hammer, Roar, Stealth Rock
    (210020, 21014, NULL, 210001, 'piplup', NULL, 6, ARRAY[89, 452, 46, 446]),
    -- Dialga: Dialga Lv. 47: Ancient Power, Slash, Flash Cannon, Roar of Time
    (210019, 21016, NULL, NULL, NULL, NULL, 1, ARRAY[246, 163, 430, 459]),
    -- Palkia: Palkia Lv. 47: Ancient Power, Slash, Aqua Ring, Spacial Rend
    (210019, 21017, NULL, NULL, NULL, NULL, 1, ARRAY[246, 163, 392, 460]),
    -- Uxie: Uxie Lv. 50: Imprison, Extrasensory, Amnesia, Psychic
    (210021, 21018, NULL, NULL, NULL, NULL, 1, ARRAY[286, 326, 133, 94]),
    -- Azelf: Azelf Lv. 50: Imprison, Extrasensory, Nasty Plot, Psychic
    (210021, 21019, NULL, NULL, NULL, NULL, 1, ARRAY[286, 326, 417, 94]),
    -- Mesprit: Mesprit Lv. 50: Imprison, Extrasensory, Charm, Psychic
    (210021, 21020, NULL, NULL, NULL, NULL, 1, ARRAY[286, 326, 204, 94]),
    -- Giratina: Giratina Lv. 70: Shadow Force, Pain Split, Aura Sphere, Dragon Claw
    (210022, 21021, NULL, NULL, NULL, NULL, 1, ARRAY[467, 220, 396, 337]),
    -- Cresselia: Cresselia Lv. 50: Slash, Psycho Cut, Moonlight, Safeguard
    (210023, 21022, NULL, NULL, NULL, NULL, 1, ARRAY[163, 427, 236, 219]),
    -- Heatran: Heatran Lv. 70: Metal Sound, Earth Power, Heat Wave, Stone Edge
    (210024, 21023, NULL, NULL, NULL, NULL, 1, ARRAY[319, 414, 257, 444]),
    -- Regigigas: Regigigas Lv. 70: Wide Guard, Zen Headbutt, Heavy Slam, Hammer Arm
    (210025, 21024, NULL, NULL, NULL, NULL, 1, ARRAY[469, 428, 484, 359]),
    -- Regirock: Regirock Lv. 70: Stone Edge, Superpower, Lock-On, Zap Cannon
    (210017, 21025, NULL, NULL, NULL, NULL, 1, ARRAY[444, 276, 199, 192]),
    -- Regice: Regice Lv. 70: Blizzard, Superpower, Lock-On, Zap Cannon
    (210017, 21026, NULL, NULL, NULL, NULL, 1, ARRAY[59, 276, 199, 192]),
    -- Registeel: Registeel Lv. 70: Heavy Slam, Superpower, Lock-On, Zap Cannon
    (210017, 21027, NULL, NULL, NULL, NULL, 1, ARRAY[484, 276, 199, 192]),
    -- Raikou: Raikou Lv. 70: Extrasensory, Discharge, Reflect, Rain Dance
    (210017, 21028, NULL, NULL, NULL, NULL, 1, ARRAY[326, 435, 115, 240]),
    -- Entei: Entei Lv. 70: Extrasensory, Lava Plume, Swagger, Sunny Day
    (210017, 21029, NULL, NULL, NULL, NULL, 1, ARRAY[326, 436, 207, 241]),
    -- Suicune: Suicune Lv. 70: Extrasensory, Surf, Mirror Coat, Rain Dance
    (210017, 21030, NULL, NULL, NULL, NULL, 1, ARRAY[326, 57, 243, 240]),
    -- Articuno: Articuno Lv. 70: Hurricane, Mind Reader, Blizzard, Sheer Cold
    (210017, 21031, NULL, NULL, NULL, NULL, 1, ARRAY[542, 170, 59, 329]),
    -- Zapdos: Zapdos Lv. 70: Thunder, Detect, Magnetic Flux, Zap Cannon
    (210017, 21032, NULL, NULL, NULL, NULL, 1, ARRAY[87, 197, 602, 192]),
    -- Moltres: Moltres Lv. 70: Hurricane, Endure, Burn Up, Sky Attack
    (210017, 21033, NULL, NULL, NULL, NULL, 1, ARRAY[542, 203, 682, 143]),
    -- Latias: Latias Lv. 70: Reflect Type, Psychic, Guard Split, Healing Wish
    (210017, 21034, NULL, NULL, NULL, NULL, 1, ARRAY[513, 94, 470, 361]),
    -- Latios: Latios Lv. 70: Dragon Dance, Dragon Pulse, Zen Headbutt, Luster Purge
    (210017, 21035, NULL, NULL, NULL, NULL, 1, ARRAY[349, 406, 428, 295]),
    -- Ho-Oh: Ho-Oh Lv. 70: Extrasensory, Recover, Sacred Fire, Sunny Day
    (210017, 21036, NULL, NULL, NULL, NULL, 1, ARRAY[326, 105, 221, 241]),
    -- Lugia: Lugia Lv. 70: Extrasensory, Recover, Aeroblast, Rain Dance
    (210017, 21037, NULL, NULL, NULL, NULL, 1, ARRAY[326, 105, 177, 240]),
    -- Kyogre: Kyogre Lv. 70: Ice Beam, Sheer Cold, Aqua Ring, Origin Pulse
    (210017, 21038, NULL, NULL, NULL, NULL, 1, ARRAY[58, 329, 392, 618]),
    -- Groudon: Groudon Lv. 70: Hammer Arm, Fissure, Rest, Precipice Blades
    (210017, 21039, NULL, NULL, NULL, NULL, 1, ARRAY[359, 90, 156, 619]),
    -- Rayquaza: Rayquaza Lv. 70: Dragon Pulse, Hyper Voice, Rest, Fly
    (210017, 21040, NULL, NULL, NULL, NULL, 1, ARRAY[406, 304, 156, 19]),
    -- Mewtwo: Mewtwo Lv. 70: Psychic, Power Swap, Guard Swap, Mist
    (210017, 21041, NULL, NULL, NULL, NULL, 1, ARRAY[94, 384, 385, 54]),
    -- Giratina: Giratina (Origin) Lv. 100: Aura Sphere, Dragon Claw, Earth Power, Destiny Bond
    (210017, 21021, NULL, NULL, NULL, NULL, 1, ARRAY[396, 337, 414, 194])
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
