-- ============================================================================
-- Source
-- ============================================================================
-- Primary: data-mined Omega Ruby / Alpha Sapphire trainer data; where it gives a Pokémon no
-- set moves, PokéWiki's trainer team tables, else the default level-up
-- moves for its level from Voydex's own learnset.
-- Cross-check: PokéWiki trainer team tables.
-- Fixed encounters (legendaries and other one-off Pokémon): the game's
-- data-mined encounter table; where it sets no moves, the game's default from
-- its own level-up learnset. Cross-checked with Serebii and Bulbapedia.
-- Pokémon no source confirms are left without moves (Voydex reads their types).
-- Scope: Omega Ruby / Alpha Sapphire Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Omega Ruby / Alpha Sapphire opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Roxanne: Geodude Lv. 12: Tackle, Defense Curl, Rock Tomb
    (140003, 14001, NULL, NULL, NULL, NULL, 1, ARRAY[33, 111, 317]),
    -- Roxanne: Nosepass Lv. 14: Tackle, Harden, Rock Tomb
    (140003, 14001, NULL, NULL, NULL, NULL, 2, ARRAY[33, 106, 317]),
    -- Brawly: Machop Lv. 14: Leer, Karate Chop, Seismic Toss, Bulk Up
    (140004, 14002, NULL, NULL, NULL, NULL, 1, ARRAY[43, 2, 69, 339]),
    -- Brawly: Makuhita Lv. 16: Arm Thrust, Knock Off, Sand Attack, Bulk Up
    (140004, 14002, NULL, NULL, NULL, NULL, 2, ARRAY[292, 282, 28, 339]),
    -- Wattson: Magnemite Lv. 19: Thunder Wave, Tackle, Volt Switch
    (140005, 14003, NULL, NULL, NULL, NULL, 1, ARRAY[86, 33, 521]),
    -- Wattson: Voltorb Lv. 19: Rollout, Charge, Volt Switch
    (140005, 14003, NULL, NULL, NULL, NULL, 2, ARRAY[205, 268, 521]),
    -- Wattson: Magneton Lv. 21: Supersonic, Magnet Bomb, Volt Switch
    (140005, 14003, NULL, NULL, NULL, NULL, 3, ARRAY[48, 443, 521]),
    -- Flannery: Slugma Lv. 26: Overheat, Rock Throw, Light Screen, Sunny Day
    (140007, 14004, NULL, NULL, NULL, NULL, 1, ARRAY[315, 88, 113, 241]),
    -- Flannery: Numel Lv. 26: Earth Power, Lava Plume, Amnesia, Sunny Day
    (140007, 14004, NULL, NULL, NULL, NULL, 2, ARRAY[414, 436, 133, 241]),
    -- Flannery: Torkoal Lv. 28: Overheat, Body Slam, Curse, Sunny Day
    (140007, 14004, NULL, NULL, NULL, NULL, 3, ARRAY[315, 34, 174, 241]),
    -- Norman: Slaking Lv. 28: Encore, Retaliate, Yawn, Feint Attack
    (140008, 14005, NULL, NULL, NULL, NULL, 1, ARRAY[227, 514, 281, 185]),
    -- Norman: Vigoroth Lv. 28: Fury Swipes, Feint Attack, Retaliate, Encore
    (140008, 14005, NULL, NULL, NULL, NULL, 2, ARRAY[154, 185, 514, 227]),
    -- Norman: Slaking Lv. 30: Chip Away, Swagger, Retaliate, Feint Attack
    (140008, 14005, NULL, NULL, NULL, NULL, 3, ARRAY[498, 207, 514, 185]),
    -- Winona: Swellow Lv. 33: Quick Attack, Aerial Ace, Double Team, Endeavor
    (140009, 14006, NULL, NULL, NULL, NULL, 1, ARRAY[98, 332, 104, 283]),
    -- Winona: Pelipper Lv. 33: Water Pulse, Roost, Protect, Aerial Ace
    (140009, 14006, NULL, NULL, NULL, NULL, 2, ARRAY[352, 355, 182, 332]),
    -- Winona: Skarmory Lv. 33: Sand Attack, Air Cutter, Steel Wing, Aerial Ace
    (140009, 14006, NULL, NULL, NULL, NULL, 3, ARRAY[28, 314, 211, 332]),
    -- Winona: Altaria Lv. 35: Earthquake, Dragon Breath, Cotton Guard, Roost
    (140009, 14006, NULL, NULL, NULL, NULL, 4, ARRAY[89, 225, 538, 355]),
    -- Tate & Liza: Lunatone Lv. 45: Light Screen, Psychic, Hypnosis, Calm Mind
    (140010, 14007, NULL, NULL, NULL, NULL, 1, ARRAY[113, 94, 95, 347]),
    -- Tate & Liza: Solrock Lv. 45: Sunny Day, Rock Slide, Psychic, Solar Beam
    (140010, 14007, NULL, NULL, NULL, NULL, 2, ARRAY[241, 157, 94, 76]),
    -- Wallace: Luvdisc Lv. 44: Water Pulse, Attract, Sweet Kiss, Draining Kiss
    (140011, 14008, NULL, NULL, NULL, NULL, 1, ARRAY[352, 213, 186, 577]),
    -- Wallace: Whiscash Lv. 44: Mud Sport, Waterfall, Zen Headbutt, Earthquake
    (140011, 14008, NULL, NULL, NULL, NULL, 2, ARRAY[300, 127, 428, 89]),
    -- Wallace: Sealeo Lv. 44: Encore, Body Slam, Aurora Beam, Waterfall
    (140011, 14008, NULL, NULL, NULL, NULL, 3, ARRAY[227, 34, 62, 127]),
    -- Wallace: Seaking Lv. 44: Aqua Ring, Rain Dance, Waterfall, Horn Drill
    (140011, 14008, NULL, NULL, NULL, NULL, 4, ARRAY[392, 240, 127, 32]),
    -- Wallace: Milotic Lv. 46: Hydro Pump, Disarming Voice, Recover, Ice Beam
    (140011, 14008, NULL, NULL, NULL, NULL, 5, ARRAY[56, 574, 105, 58]),
    -- Sidney: Mightyena Lv. 50: Swagger, Take Down, Sucker Punch, Crunch
    (140012, 14009, NULL, NULL, NULL, NULL, 1, ARRAY[207, 36, 389, 242]),
    -- Sidney: Shiftry Lv. 50: Fake Out, Feint Attack, Extrasensory, Leaf Blade
    (140012, 14009, NULL, NULL, NULL, NULL, 2, ARRAY[252, 185, 326, 348]),
    -- Sidney: Cacturne Lv. 50: Leech Seed, Payback, Needle Arm, Spiky Shield
    (140012, 14009, NULL, NULL, NULL, NULL, 3, ARRAY[73, 371, 302, 596]),
    -- Sidney: Sharpedo Lv. 50: Crunch, Poison Fang, Aqua Jet, Slash
    (140012, 14009, NULL, NULL, NULL, NULL, 4, ARRAY[242, 305, 453, 163]),
    -- Sidney: Absol Lv. 52: Aerial Ace, Night Slash, Psycho Cut, Slash
    (140012, 14009, NULL, NULL, NULL, NULL, 5, ARRAY[332, 400, 427, 163]),
    -- Phoebe: Dusclops Lv. 51: Shadow Punch, Confuse Ray, Curse, Future Sight
    (140013, 14010, NULL, NULL, NULL, NULL, 1, ARRAY[325, 109, 174, 248]),
    -- Phoebe: Banette Lv. 51: Shadow Ball, Spite, Will-O-Wisp, Feint Attack
    (140013, 14010, NULL, NULL, NULL, NULL, 2, ARRAY[247, 180, 261, 185]),
    -- Phoebe: Sableye Lv. 51: Shadow Claw, Foul Play, Power Gem, Fake Out
    (140013, 14010, NULL, NULL, NULL, NULL, 3, ARRAY[421, 492, 408, 252]),
    -- Phoebe: Banette Lv. 51: Shadow Ball, Grudge, Toxic, Psychic
    (140013, 14010, NULL, NULL, NULL, NULL, 4, ARRAY[247, 288, 92, 94]),
    -- Phoebe: Dusknoir Lv. 53: Hex, Fire Punch, Ice Punch, Thunder Punch
    (140013, 14010, NULL, NULL, NULL, NULL, 5, ARRAY[506, 7, 8, 9]),
    -- Glacia: Glalie Lv. 52: Light Screen, Ice Shard, Hail, Crunch
    (140014, 14011, NULL, NULL, NULL, NULL, 1, ARRAY[113, 420, 258, 242]),
    -- Glacia: Froslass Lv. 52: Confuse Ray, Blizzard, Hail, Ominous Wind
    (140014, 14011, NULL, NULL, NULL, NULL, 2, ARRAY[109, 59, 258, 466]),
    -- Glacia: Glalie Lv. 52: Protect, Ice Shard, Hail, Freeze-Dry
    (140014, 14011, NULL, NULL, NULL, NULL, 3, ARRAY[182, 420, 258, 573]),
    -- Glacia: Froslass Lv. 52: Draining Kiss, Blizzard, Hail, Shadow Ball
    (140014, 14011, NULL, NULL, NULL, NULL, 4, ARRAY[577, 59, 258, 247]),
    -- Glacia: Walrein Lv. 54: Surf, Body Slam, Blizzard, Sheer Cold
    (140014, 14011, NULL, NULL, NULL, NULL, 5, ARRAY[57, 34, 59, 329]),
    -- Drake: Altaria Lv. 53: Aerial Ace, Cotton Guard, Dragon Pulse, Moonblast
    (140015, 14012, NULL, NULL, NULL, NULL, 1, ARRAY[332, 538, 406, 585]),
    -- Drake: Flygon Lv. 53: Earthquake, Dragon Claw, Rock Slide, Supersonic
    (140015, 14012, NULL, NULL, NULL, NULL, 2, ARRAY[89, 337, 157, 48]),
    -- Drake: Kingdra Lv. 53: Dragon Pulse, Surf, Yawn, Ice Beam
    (140015, 14012, NULL, NULL, NULL, NULL, 3, ARRAY[406, 57, 281, 58]),
    -- Drake: Flygon Lv. 53: Flamethrower, Boomburst, Dragon Pulse, Screech
    (140015, 14012, NULL, NULL, NULL, NULL, 4, ARRAY[53, 586, 406, 103]),
    -- Drake: Salamence Lv. 55: Dragon Rush, Zen Headbutt, Crunch, Thunder Fang
    (140015, 14012, NULL, NULL, NULL, NULL, 5, ARRAY[407, 428, 242, 422]),
    -- Steven: Skarmory Lv. 57: Toxic, Aerial Ace, Spikes, Steel Wing
    (140016, 14013, NULL, NULL, NULL, NULL, 1, ARRAY[92, 332, 191, 211]),
    -- Steven: Claydol Lv. 57: Reflect, Light Screen, Extrasensory, Earth Power
    (140016, 14013, NULL, NULL, NULL, NULL, 2, ARRAY[115, 113, 326, 414]),
    -- Steven: Aggron Lv. 57: Stone Edge, Earthquake, Iron Tail, Dragon Claw
    (140016, 14013, NULL, NULL, NULL, NULL, 3, ARRAY[444, 89, 231, 337]),
    -- Steven: Cradily Lv. 57: Giga Drain, Ancient Power, Sludge Bomb, Confuse Ray
    (140016, 14013, NULL, NULL, NULL, NULL, 4, ARRAY[202, 246, 188, 109]),
    -- Steven: Armaldo Lv. 57: X-Scissor, Rock Blast, Metal Claw, Crush Claw
    (140016, 14013, NULL, NULL, NULL, NULL, 5, ARRAY[404, 350, 232, 306]),
    -- Steven: Mega Metagross Lv. 59: Bullet Punch, Zen Headbutt, Meteor Mash, Giga Impact
    (140016, 14013, NULL, NULL, NULL, NULL, 6, ARRAY[418, 428, 309, 416]),
    -- Zinnia: Goodra Lv. 60: Dragon Pulse, Muddy Water, Thunderbolt, Ice Beam
    (140018, 14014, NULL, NULL, NULL, NULL, 1, ARRAY[406, 330, 85, 58]),
    -- Zinnia: Tyrantrum Lv. 60: Dragon Claw, Crunch, Earthquake, Stone Edge
    (140018, 14014, NULL, NULL, NULL, NULL, 2, ARRAY[337, 242, 89, 444]),
    -- Zinnia: Altaria Lv. 60: Dragon Pulse, Moonblast, Flamethrower, Hyper Voice
    (140018, 14014, NULL, NULL, NULL, NULL, 3, ARRAY[406, 585, 53, 304]),
    -- Zinnia: Noivern Lv. 60: Dragon Pulse, Air Slash, Shadow Ball, Super Fang
    (140018, 14014, NULL, NULL, NULL, NULL, 4, ARRAY[406, 403, 247, 162]),
    -- Zinnia: Mega Salamence Lv. 62: Dragon Claw, Crunch, Fire Fang, Thunder Fang
    (140018, 14014, NULL, NULL, NULL, NULL, 5, ARRAY[337, 242, 424, 422]),
    -- May / Brendan: Torchic Lv. 5: Scratch
    (140002, 14015, NULL, 140001, 'treecko', NULL, 1, ARRAY[10]),
    -- May / Brendan: Mudkip Lv. 5: Tackle
    (140002, 14015, NULL, 140001, 'torchic', NULL, 1, ARRAY[33]),
    -- May / Brendan: Treecko Lv. 5: Pound
    (140002, 14015, NULL, 140001, 'mudkip', NULL, 1, ARRAY[1]),
    -- May / Brendan: Wailmer Lv. 18: Water Gun, Rollout, Whirlpool, Astonish
    (140005, 14015, NULL, 140001, 'treecko', NULL, 1, ARRAY[55, 205, 250, 310]),
    -- May / Brendan: Shroomish Lv. 18: Stun Spore, Leech Seed, Mega Drain, Headbutt
    (140005, 14015, NULL, 140001, 'treecko', NULL, 2, ARRAY[78, 73, 72, 29]),
    -- May / Brendan: Combusken Lv. 20: Sand Attack, Peck, Double Kick, Flame Charge
    (140005, 14015, NULL, 140001, 'treecko', NULL, 3, ARRAY[28, 64, 24, 488]),
    -- May / Brendan: Shroomish Lv. 18: Headbutt, Mega Drain, Stun Spore, Leech Seed
    (140005, 14015, NULL, 140001, 'torchic', NULL, 1, ARRAY[29, 72, 78, 73]),
    -- May / Brendan: Slugma Lv. 18: Harden, Incinerate, Ember, Rock Throw
    (140005, 14015, NULL, 140001, 'torchic', NULL, 2, ARRAY[106, 510, 52, 88]),
    -- May / Brendan: Marshtomp Lv. 20: Foresight, Mud Shot, Bide, Mud-Slap
    (140005, 14015, NULL, 140001, 'torchic', NULL, 3, ARRAY[193, 341, 117, 189]),
    -- May / Brendan: Slugma Lv. 18: Harden, Incinerate, Ember, Rock Throw
    (140005, 14015, NULL, 140001, 'mudkip', NULL, 1, ARRAY[106, 510, 52, 88]),
    -- May / Brendan: Wailmer Lv. 18: Water Gun, Rollout, Whirlpool, Astonish
    (140005, 14015, NULL, 140001, 'mudkip', NULL, 2, ARRAY[55, 205, 250, 310]),
    -- May / Brendan: Grovyle Lv. 20: Quick Attack, Mega Drain, Fury Cutter, Pursuit
    (140005, 14015, NULL, 140001, 'mudkip', NULL, 3, ARRAY[98, 72, 210, 228]),
    -- Wally: Ralts Lv. 17: Lucky Chant, Teleport, Magical Leaf, Disarming Voice
    (140005, 14016, NULL, NULL, NULL, NULL, 1, ARRAY[381, 100, 345, 574]),
    -- Maxie: Mightyena Lv. 25: Roar, Snarl, Assurance, Swagger
    (140019, 14017, NULL, NULL, NULL, NULL, 1, ARRAY[46, 555, 372, 207]),
    -- Maxie: Golbat Lv. 25: Wing Attack, Confuse Ray, Air Cutter, Swift
    (140019, 14017, NULL, NULL, NULL, NULL, 2, ARRAY[17, 109, 314, 129]),
    -- Maxie: Camerupt Lv. 27: Flame Burst, Amnesia, Lava Plume, Earth Power
    (140019, 14017, NULL, NULL, NULL, NULL, 3, ARRAY[481, 133, 436, 414]),
    -- Archie: Mightyena Lv. 25: Roar, Snarl, Assurance, Swagger
    (140019, 14018, NULL, NULL, NULL, NULL, 1, ARRAY[46, 555, 372, 207]),
    -- Archie: Golbat Lv. 25: Wing Attack, Confuse Ray, Air Cutter, Swift
    (140019, 14018, NULL, NULL, NULL, NULL, 2, ARRAY[17, 109, 314, 129]),
    -- Archie: Sharpedo Lv. 27: Assurance, Screech, Swagger, Ice Fang
    (140019, 14018, NULL, NULL, NULL, NULL, 3, ARRAY[372, 103, 207, 423]),
    -- May / Brendan: Wailmer Lv. 31: Mist, Rest, Brine, Water Pulse
    (140009, 14015, NULL, 140001, 'treecko', NULL, 1, ARRAY[54, 156, 362, 352]),
    -- May / Brendan: Shroomish Lv. 31: Poison Powder, Worry Seed, Giga Drain, Growth
    (140009, 14015, NULL, 140001, 'treecko', NULL, 2, ARRAY[77, 388, 202, 74]),
    -- May / Brendan: Combusken Lv. 33: Double Kick, Flame Charge, Quick Attack, Bulk Up
    (140009, 14015, NULL, 140001, 'treecko', NULL, 3, ARRAY[24, 488, 98, 339]),
    -- May / Brendan: Shroomish Lv. 31: Poison Powder, Worry Seed, Giga Drain, Growth
    (140009, 14015, NULL, 140001, 'torchic', NULL, 1, ARRAY[77, 388, 202, 74]),
    -- May / Brendan: Slugma Lv. 31: Clear Smog, Ancient Power, Flame Burst, Rock Slide
    (140009, 14015, NULL, 140001, 'torchic', NULL, 2, ARRAY[499, 246, 481, 157]),
    -- May / Brendan: Marshtomp Lv. 33: Bide, Mud Bomb, Rock Slide, Protect
    (140009, 14015, NULL, 140001, 'torchic', NULL, 3, ARRAY[117, 426, 157, 182]),
    -- May / Brendan: Slugma Lv. 31: Clear Smog, Ancient Power, Flame Burst, Rock Slide
    (140009, 14015, NULL, 140001, 'mudkip', NULL, 1, ARRAY[499, 246, 481, 157]),
    -- May / Brendan: Wailmer Lv. 31: Mist, Rest, Brine, Water Pulse
    (140009, 14015, NULL, 140001, 'mudkip', NULL, 2, ARRAY[54, 156, 362, 352]),
    -- May / Brendan: Grovyle Lv. 33: Pursuit, Leaf Blade, Agility, Slam
    (140009, 14015, NULL, 140001, 'mudkip', NULL, 3, ARRAY[228, 348, 97, 21]),
    -- May / Brendan: Swellow Lv. 37: Double Team, Aerial Ace, Quick Guard, Agility
    (140010, 14015, NULL, 140001, 'treecko', NULL, 1, ARRAY[104, 332, 501, 97]),
    -- May / Brendan: Wailord Lv. 37: Rest, Brine, Water Spout, Amnesia
    (140010, 14015, NULL, 140001, 'treecko', NULL, 2, ARRAY[156, 362, 323, 133]),
    -- May / Brendan: Breloom Lv. 37: Counter, Mach Punch, Force Palm, Mind Reader
    (140010, 14015, NULL, 140001, 'treecko', NULL, 3, ARRAY[68, 183, 395, 170]),
    -- May / Brendan: Blaziken Lv. 39: Quick Attack, Bulk Up, Blaze Kick, Focus Energy
    (140010, 14015, NULL, 140001, 'treecko', NULL, 4, ARRAY[98, 339, 299, 116]),
    -- May / Brendan: Swellow Lv. 37: Double Team, Aerial Ace, Quick Guard, Agility
    (140010, 14015, NULL, 140001, 'torchic', NULL, 1, ARRAY[104, 332, 501, 97]),
    -- May / Brendan: Breloom Lv. 37: Counter, Mach Punch, Force Palm, Mind Reader
    (140010, 14015, NULL, 140001, 'torchic', NULL, 2, ARRAY[68, 183, 395, 170]),
    -- May / Brendan: Magcargo Lv. 37: Flame Burst, Rock Slide, Lava Plume, Amnesia
    (140010, 14015, NULL, 140001, 'torchic', NULL, 3, ARRAY[481, 157, 436, 133]),
    -- May / Brendan: Swampert Lv. 39: Mud Bomb, Rock Slide, Protect, Muddy Water
    (140010, 14015, NULL, 140001, 'torchic', NULL, 4, ARRAY[426, 157, 182, 330]),
    -- May / Brendan: Swellow Lv. 37: Double Team, Aerial Ace, Quick Guard, Agility
    (140010, 14015, NULL, 140001, 'mudkip', NULL, 1, ARRAY[104, 332, 501, 97]),
    -- May / Brendan: Magcargo Lv. 37: Flame Burst, Rock Slide, Lava Plume, Amnesia
    (140010, 14015, NULL, 140001, 'mudkip', NULL, 2, ARRAY[481, 157, 436, 133]),
    -- May / Brendan: Wailord Lv. 37: Rest, Brine, Water Spout, Amnesia
    (140010, 14015, NULL, 140001, 'mudkip', NULL, 3, ARRAY[156, 362, 323, 133]),
    -- May / Brendan: Sceptile Lv. 39: Agility, Slam, Dual Chop, Detect
    (140010, 14015, NULL, 140001, 'mudkip', NULL, 4, ARRAY[97, 21, 530, 197]),
    -- Maxie: Mightyena Lv. 41: Scary Face, Take Down, Taunt, Embargo
    (140020, 14017, NULL, NULL, NULL, NULL, 1, ARRAY[184, 36, 269, 373]),
    -- Maxie: Weezing Lv. 41: Haze, Double Hit, Sludge Bomb, Explosion
    (140020, 14017, NULL, NULL, NULL, NULL, 2, ARRAY[114, 458, 188, 153]),
    -- Maxie: Crobat Lv. 41: Haze, Poison Fang, Acrobatics, Mean Look
    (140020, 14017, NULL, NULL, NULL, NULL, 3, ARRAY[114, 305, 512, 212]),
    -- Maxie: Mega Camerupt Lv. 43: Curse, Take Down, Rock Slide, Yawn
    (140020, 14017, NULL, NULL, NULL, NULL, 4, ARRAY[174, 36, 157, 281]),
    -- Archie: Mightyena Lv. 41: Scary Face, Take Down, Taunt, Embargo
    (140020, 14018, NULL, NULL, NULL, NULL, 1, ARRAY[184, 36, 269, 373]),
    -- Archie: Muk Lv. 41: Sludge Wave, Screech, Venom Drench, Gunk Shot
    (140020, 14018, NULL, NULL, NULL, NULL, 2, ARRAY[482, 103, 599, 441]),
    -- Archie: Crobat Lv. 41: Haze, Poison Fang, Acrobatics, Mean Look
    (140020, 14018, NULL, NULL, NULL, NULL, 3, ARRAY[114, 305, 512, 212]),
    -- Archie: Mega Sharpedo Lv. 43: Scary Face, Slash, Poison Fang, Crunch
    (140020, 14018, NULL, NULL, NULL, NULL, 4, ARRAY[184, 163, 305, 242]),
    -- Wally: Altaria Lv. 46: Aerial Ace, Safeguard, Dragon Pulse, Cotton Guard
    (140012, 14016, NULL, NULL, NULL, NULL, 1, ARRAY[332, 219, 406, 538]),
    -- Wally: Delcatty Lv. 46: Sing, Disarming Voice, Charm, Feint Attack
    (140012, 14016, NULL, NULL, NULL, NULL, 2, ARRAY[47, 574, 204, 185]),
    -- Wally: Roselia Lv. 46: Synthesis, Leech Seed, Petal Blizzard, Toxic
    (140012, 14016, NULL, NULL, NULL, NULL, 3, ARRAY[235, 73, 572, 92]),
    -- Wally: Magneton Lv. 46: Screech, Discharge, Tri Attack, Flash Cannon
    (140012, 14016, NULL, NULL, NULL, NULL, 4, ARRAY[103, 435, 161, 430]),
    -- Wally: Mega Gallade Lv. 48: Psycho Cut, Close Combat, Slash, Swords Dance
    (140012, 14016, NULL, NULL, NULL, NULL, 5, ARRAY[427, 370, 163, 14]),
    -- May / Brendan: Swellow Lv. 48: Aerial Ace, Quick Attack, U-turn, Steel Wing
    (140017, 14015, NULL, 140001, 'treecko', NULL, 1, ARRAY[332, 98, 369, 211]),
    -- May / Brendan: Raichu Lv. 48: Thunder Wave, Thunderbolt, Quick Attack, Light Screen
    (140017, 14015, NULL, 140001, 'treecko', NULL, 2, ARRAY[86, 85, 98, 113]),
    -- May / Brendan: Wailord Lv. 48: Surf, Heavy Slam, Bulldoze, Ice Beam
    (140017, 14015, NULL, 140001, 'treecko', NULL, 3, ARRAY[57, 484, 523, 58]),
    -- May / Brendan: Breloom Lv. 48: Seed Bomb, Force Palm, Venoshock, Rock Tomb
    (140017, 14015, NULL, 140001, 'treecko', NULL, 4, ARRAY[402, 395, 474, 317]),
    -- May / Brendan: Blaziken Lv. 50: Blaze Kick, Brick Break, Quick Attack, Shadow Claw
    (140017, 14015, NULL, 140001, 'treecko', NULL, 5, ARRAY[299, 280, 98, 421]),
    -- May / Brendan: Swellow Lv. 48: Aerial Ace, Quick Attack, U-turn, Steel Wing
    (140017, 14015, NULL, 140001, 'torchic', NULL, 1, ARRAY[332, 98, 369, 211]),
    -- May / Brendan: Raichu Lv. 48: Thunder Wave, Thunderbolt, Quick Attack, Light Screen
    (140017, 14015, NULL, 140001, 'torchic', NULL, 2, ARRAY[86, 85, 98, 113]),
    -- May / Brendan: Breloom Lv. 48: Seed Bomb, Force Palm, Venoshock, Rock Tomb
    (140017, 14015, NULL, 140001, 'torchic', NULL, 3, ARRAY[402, 395, 474, 317]),
    -- May / Brendan: Magcargo Lv. 48: Earth Power, Lava Plume, Body Slam, Rock Slide
    (140017, 14015, NULL, 140001, 'torchic', NULL, 4, ARRAY[414, 436, 34, 157]),
    -- May / Brendan: Swampert Lv. 50: Earthquake, Muddy Water, Rock Slide, Brick Break
    (140017, 14015, NULL, 140001, 'torchic', NULL, 5, ARRAY[89, 330, 157, 280]),
    -- May / Brendan: Swellow Lv. 48: Aerial Ace, Quick Attack, U-turn, Steel Wing
    (140017, 14015, NULL, 140001, 'mudkip', NULL, 1, ARRAY[332, 98, 369, 211]),
    -- May / Brendan: Raichu Lv. 48: Thunder Wave, Thunderbolt, Quick Attack, Light Screen
    (140017, 14015, NULL, 140001, 'mudkip', NULL, 2, ARRAY[86, 85, 98, 113]),
    -- May / Brendan: Magcargo Lv. 48: Earth Power, Lava Plume, Body Slam, Rock Slide
    (140017, 14015, NULL, 140001, 'mudkip', NULL, 3, ARRAY[414, 436, 34, 157]),
    -- May / Brendan: Wailord Lv. 48: Surf, Heavy Slam, Bulldoze, Ice Beam
    (140017, 14015, NULL, 140001, 'mudkip', NULL, 4, ARRAY[57, 484, 523, 58]),
    -- May / Brendan: Sceptile Lv. 50: Leaf Blade, X-Scissor, Dual Chop, Night Slash
    (140017, 14015, NULL, 140001, 'mudkip', NULL, 5, ARRAY[348, 404, 530, 400]),
    -- Groudon: Primal Groudon Lv. 45: Lava Plume, Rest, Earthquake, Precipice Blades
    (140011, 14019, NULL, NULL, NULL, NULL, 1, ARRAY[436, 156, 89, 619]),
    -- Kyogre: Primal Kyogre Lv. 45: Body Slam, Aqua Ring, Ice Beam, Origin Pulse
    (140011, 14020, NULL, NULL, NULL, NULL, 1, ARRAY[34, 392, 58, 618]),
    -- Rayquaza: Rayquaza Lv. 70: Extreme Speed, Dragon Pulse, Dragon Dance, Fly
    (140018, 14021, NULL, NULL, NULL, NULL, 1, ARRAY[245, 406, 349, 19]),
    -- Deoxys: Deoxys Lv. 80: Cosmic Power, Recover, Psycho Boost, Hyper Beam
    (140018, 14022, NULL, NULL, NULL, NULL, 1, ARRAY[322, 105, 354, 63]),
    -- Regirock: Regirock Lv. 40: Bulldoze, Curse, Ancient Power, Iron Defense
    (140021, 14023, NULL, NULL, NULL, NULL, 1, ARRAY[523, 174, 246, 334]),
    -- Regice: Regice Lv. 40: Bulldoze, Curse, Ancient Power, Amnesia
    (140021, 14024, NULL, NULL, NULL, NULL, 1, ARRAY[523, 174, 246, 133]),
    -- Registeel: Registeel Lv. 40: Curse, Ancient Power, Iron Defense, Amnesia
    (140021, 14025, NULL, NULL, NULL, NULL, 1, ARRAY[174, 246, 334, 133]),
    -- Heatran: Heatran Lv. 50: Metal Sound, Crunch, Scary Face, Lava Plume
    (140022, 14026, NULL, NULL, NULL, NULL, 1, ARRAY[319, 242, 184, 436]),
    -- Ho-Oh: Ho-Oh Lv. 50: Sunny Day, Fire Blast, Sacred Fire, Punishment
    (140023, 14027, NULL, NULL, NULL, NULL, 1, ARRAY[241, 126, 221, 386]),
    -- Lugia: Lugia Lv. 50: Rain Dance, Hydro Pump, Aeroblast, Punishment
    (140023, 14028, NULL, NULL, NULL, NULL, 1, ARRAY[240, 56, 177, 386]),
    -- Cresselia: Cresselia Lv. 50: Mist, Aurora Beam, Future Sight, Slash
    (140024, 14029, NULL, NULL, NULL, NULL, 1, ARRAY[54, 62, 248, 163]),
    -- Tornadus: Tornadus Lv. 50: Extrasensory, Agility, Air Slash, Crunch
    (140025, 14030, NULL, NULL, NULL, NULL, 1, ARRAY[326, 97, 403, 242]),
    -- Thundurus: Thundurus Lv. 50: Heal Block, Agility, Discharge, Crunch
    (140025, 14031, NULL, NULL, NULL, NULL, 1, ARRAY[377, 97, 435, 242]),
    -- Landorus: Landorus Lv. 50: Extrasensory, Swords Dance, Earth Power, Rock Slide
    (140025, 14032, NULL, NULL, NULL, NULL, 1, ARRAY[326, 14, 414, 157]),
    -- Regigigas: Regigigas Lv. 50: Foresight, Revenge, Wide Guard, Zen Headbutt
    (140026, 14033, NULL, NULL, NULL, NULL, 1, ARRAY[193, 279, 469, 428]),
    -- Raikou: Raikou Lv. 50: Spark, Reflect, Crunch, Thunder Fang
    (140027, 14034, NULL, NULL, NULL, NULL, 1, ARRAY[209, 115, 242, 422]),
    -- Entei: Entei Lv. 50: Stomp, Flamethrower, Swagger, Fire Fang
    (140027, 14035, NULL, NULL, NULL, NULL, 1, ARRAY[23, 53, 207, 424]),
    -- Suicune: Suicune Lv. 50: Aurora Beam, Mist, Mirror Coat, Ice Fang
    (140027, 14036, NULL, NULL, NULL, NULL, 1, ARRAY[62, 54, 243, 423]),
    -- Uxie: Uxie Lv. 50: Yawn, Future Sight, Amnesia, Extrasensory
    (140028, 14037, NULL, NULL, NULL, NULL, 1, ARRAY[281, 248, 133, 326]),
    -- Mesprit: Mesprit Lv. 50: Lucky Chant, Future Sight, Charm, Extrasensory
    (140028, 14038, NULL, NULL, NULL, NULL, 1, ARRAY[381, 248, 204, 326]),
    -- Azelf: Azelf Lv. 50: Uproar, Future Sight, Nasty Plot, Extrasensory
    (140028, 14039, NULL, NULL, NULL, NULL, 1, ARRAY[253, 248, 417, 326]),
    -- Palkia: Palkia Lv. 50: Earth Power, Aura Sphere, Spacial Rend, Hydro Pump
    (140029, 14040, NULL, NULL, NULL, NULL, 1, ARRAY[414, 396, 460, 56]),
    -- Dialga: Dialga Lv. 50: Aura Sphere, Iron Tail, Roar of Time, Flash Cannon
    (140029, 14041, NULL, NULL, NULL, NULL, 1, ARRAY[396, 231, 459, 430]),
    -- Giratina: Giratina Lv. 50: Aura Sphere, Shadow Claw, Shadow Force, Hex
    (140029, 14042, NULL, NULL, NULL, NULL, 1, ARRAY[396, 421, 467, 506]),
    -- Cobalion: Cobalion Lv. 50: Retaliate, Iron Head, Sacred Sword, Swords Dance
    (140030, 14043, NULL, NULL, NULL, NULL, 1, ARRAY[514, 442, 533, 14]),
    -- Terrakion: Terrakion Lv. 50: Retaliate, Rock Slide, Sacred Sword, Swords Dance
    (140030, 14044, NULL, NULL, NULL, NULL, 1, ARRAY[514, 157, 533, 14]),
    -- Virizion: Virizion Lv. 50: Retaliate, Giga Drain, Sacred Sword, Swords Dance
    (140030, 14045, NULL, NULL, NULL, NULL, 1, ARRAY[514, 202, 533, 14]),
    -- Reshiram: Reshiram Lv. 50: Dragon Breath, Slash, Extrasensory, Fusion Flare
    (140031, 14046, NULL, NULL, NULL, NULL, 1, ARRAY[225, 163, 326, 558]),
    -- Zekrom: Zekrom Lv. 50: Dragon Breath, Slash, Zen Headbutt, Fusion Bolt
    (140031, 14047, NULL, NULL, NULL, NULL, 1, ARRAY[225, 163, 428, 559]),
    -- Kyurem: Kyurem Lv. 50: Dragon Breath, Slash, Scary Face, Glaciate
    (140032, 14048, NULL, NULL, NULL, NULL, 1, ARRAY[225, 163, 184, 549]),
    -- Zinnia (Granite Cave): Tyrantrum Lv. 55: Dragon Claw, Crunch, Earthquake, Stone Edge
    (140018, 14049, NULL, NULL, NULL, NULL, 1, ARRAY[337, 242, 89, 444]),
    -- Zinnia (Granite Cave): Altaria Lv. 55: Dragon Pulse, Moonblast, Flamethrower, Hyper Voice
    (140018, 14049, NULL, NULL, NULL, NULL, 2, ARRAY[406, 585, 53, 304]),
    -- Zinnia (Granite Cave): Salamence Lv. 57: Dragon Claw, Crunch, Fire Fang, Thunder Fang
    (140018, 14049, NULL, NULL, NULL, NULL, 3, ARRAY[337, 242, 424, 422]),
    -- Wallace (Delta Episode): Wailord Lv. 55: Water Spout, Heavy Slam, Earthquake, Blizzard
    (140018, 14050, NULL, NULL, NULL, NULL, 1, ARRAY[323, 484, 89, 59]),
    -- Wallace (Delta Episode): Tentacruel Lv. 55: Sludge Wave, Brine, Rain Dance, Dazzling Gleam
    (140018, 14050, NULL, NULL, NULL, NULL, 2, ARRAY[482, 362, 240, 605]),
    -- Wallace (Delta Episode): Ludicolo Lv. 55: Fake Out, Scald, Energy Ball, Ice Beam
    (140018, 14050, NULL, NULL, NULL, NULL, 3, ARRAY[252, 503, 412, 58]),
    -- Wallace (Delta Episode): Whiscash Lv. 55: Earthquake, Muddy Water, Rock Tomb, Rain Dance
    (140018, 14050, NULL, NULL, NULL, NULL, 4, ARRAY[89, 330, 317, 240]),
    -- Wallace (Delta Episode): Gyarados Lv. 55: Waterfall, Crunch, Ice Fang, Stone Edge
    (140018, 14050, NULL, NULL, NULL, NULL, 5, ARRAY[127, 242, 423, 444]),
    -- Wallace (Delta Episode): Milotic Lv. 57: Dragon Pulse, Blizzard, Recover, Hydro Pump
    (140018, 14050, NULL, NULL, NULL, NULL, 6, ARRAY[406, 59, 105, 56])
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
