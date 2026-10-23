-- ============================================================================
-- Source
-- ============================================================================
-- Primary: the pret pokeemerald disassembly of the game: its trainer parties,
-- set moves and level-up learnsets.
-- A Pokémon the game gives no set moves, and every legendary encounter, gets
-- the game's own default: the last four moves it learns by level up to its
-- level, worked out from the same learnsets as the game does.
-- Scope: Emerald Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Emerald opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Roxanne: Geodude Lv. 12: Tackle, Defense Curl, Rock Throw, Rock Tomb
    (70003, 7001, NULL, NULL, NULL, NULL, 1, ARRAY[33, 111, 88, 317]),
    -- Roxanne: Geodude Lv. 12: Tackle, Defense Curl, Rock Throw, Rock Tomb
    (70003, 7001, NULL, NULL, NULL, NULL, 2, ARRAY[33, 111, 88, 317]),
    -- Roxanne: Nosepass Lv. 15: Block, Harden, Tackle, Rock Tomb
    (70003, 7001, NULL, NULL, NULL, NULL, 3, ARRAY[335, 106, 33, 317]),
    -- Brawly: Machop Lv. 16: Karate Chop, Low Kick, Seismic Toss, Bulk Up
    (70004, 7002, NULL, NULL, NULL, NULL, 1, ARRAY[2, 67, 69, 339]),
    -- Brawly: Meditite Lv. 16: Focus Punch, Light Screen, Reflect, Bulk Up
    (70004, 7002, NULL, NULL, NULL, NULL, 2, ARRAY[264, 113, 115, 339]),
    -- Brawly: Makuhita Lv. 19: Arm Thrust, Vital Throw, Reversal, Bulk Up
    (70004, 7002, NULL, NULL, NULL, NULL, 3, ARRAY[292, 233, 179, 339]),
    -- Wattson: Voltorb Lv. 20: Rollout, Spark, Self-Destruct, Shock Wave
    (70005, 7003, NULL, NULL, NULL, NULL, 1, ARRAY[205, 209, 120, 351]),
    -- Wattson: Electrike Lv. 20: Shock Wave, Leer, Quick Attack, Howl
    (70005, 7003, NULL, NULL, NULL, NULL, 2, ARRAY[351, 43, 98, 336]),
    -- Wattson: Magneton Lv. 22: Supersonic, Shock Wave, Thunder Wave, Sonic Boom
    (70005, 7003, NULL, NULL, NULL, NULL, 3, ARRAY[48, 351, 86, 49]),
    -- Wattson: Manectric Lv. 24: Quick Attack, Thunder Wave, Shock Wave, Howl
    (70005, 7003, NULL, NULL, NULL, NULL, 4, ARRAY[98, 86, 351, 336]),
    -- Flannery: Numel Lv. 24: Overheat, Take Down, Magnitude, Sunny Day
    (70007, 7004, NULL, NULL, NULL, NULL, 1, ARRAY[315, 36, 222, 241]),
    -- Flannery: Slugma Lv. 24: Overheat, Smog, Light Screen, Sunny Day
    (70007, 7004, NULL, NULL, NULL, NULL, 2, ARRAY[315, 123, 113, 241]),
    -- Flannery: Camerupt Lv. 26: Overheat, Tackle, Sunny Day, Attract
    (70007, 7004, NULL, NULL, NULL, NULL, 3, ARRAY[315, 33, 241, 213]),
    -- Flannery: Torkoal Lv. 29: Overheat, Sunny Day, Body Slam, Attract
    (70007, 7004, NULL, NULL, NULL, NULL, 4, ARRAY[315, 241, 34, 213]),
    -- Norman: Spinda Lv. 27: Teeter Dance, Psybeam, Facade, Encore
    (70008, 7005, NULL, NULL, NULL, NULL, 1, ARRAY[298, 60, 263, 227]),
    -- Norman: Vigoroth Lv. 27: Slash, Facade, Encore, Feint Attack
    (70008, 7005, NULL, NULL, NULL, NULL, 2, ARRAY[163, 263, 227, 185]),
    -- Norman: Linoone Lv. 29: Slash, Belly Drum, Facade, Headbutt
    (70008, 7005, NULL, NULL, NULL, NULL, 3, ARRAY[163, 187, 263, 29]),
    -- Norman: Slaking Lv. 31: Counter, Yawn, Facade, Feint Attack
    (70008, 7005, NULL, NULL, NULL, NULL, 4, ARRAY[68, 281, 263, 185]),
    -- Winona: Swablu Lv. 29: Perish Song, Mirror Move, Safeguard, Aerial Ace
    (70009, 7006, NULL, NULL, NULL, NULL, 1, ARRAY[195, 119, 219, 332]),
    -- Winona: Tropius Lv. 29: Sunny Day, Aerial Ace, Solar Beam, Synthesis
    (70009, 7006, NULL, NULL, NULL, NULL, 2, ARRAY[241, 332, 76, 235]),
    -- Winona: Pelipper Lv. 30: Water Gun, Supersonic, Protect, Aerial Ace
    (70009, 7006, NULL, NULL, NULL, NULL, 3, ARRAY[55, 48, 182, 332]),
    -- Winona: Skarmory Lv. 31: Sand Attack, Fury Attack, Steel Wing, Aerial Ace
    (70009, 7006, NULL, NULL, NULL, NULL, 4, ARRAY[28, 31, 211, 332]),
    -- Winona: Altaria Lv. 33: Earthquake, Dragon Breath, Dragon Dance, Aerial Ace
    (70009, 7006, NULL, NULL, NULL, NULL, 5, ARRAY[89, 225, 349, 332]),
    -- Tate & Liza: Claydol Lv. 41: Earthquake, Ancient Power, Psychic, Light Screen
    (70010, 7007, NULL, NULL, NULL, NULL, 1, ARRAY[89, 246, 94, 113]),
    -- Tate & Liza: Xatu Lv. 41: Psychic, Sunny Day, Confuse Ray, Calm Mind
    (70010, 7007, NULL, NULL, NULL, NULL, 2, ARRAY[94, 241, 109, 347]),
    -- Tate & Liza: Lunatone Lv. 42: Light Screen, Psychic, Hypnosis, Calm Mind
    (70010, 7007, NULL, NULL, NULL, NULL, 3, ARRAY[113, 94, 95, 347]),
    -- Tate & Liza: Solrock Lv. 42: Sunny Day, Solar Beam, Psychic, Flamethrower
    (70010, 7007, NULL, NULL, NULL, NULL, 4, ARRAY[241, 76, 94, 53]),
    -- Juan: Luvdisc Lv. 41: Water Pulse, Attract, Sweet Kiss, Flail
    (70011, 7008, NULL, NULL, NULL, NULL, 1, ARRAY[352, 213, 186, 175]),
    -- Juan: Whiscash Lv. 41: Rain Dance, Water Pulse, Amnesia, Earthquake
    (70011, 7008, NULL, NULL, NULL, NULL, 2, ARRAY[240, 352, 133, 89]),
    -- Juan: Sealeo Lv. 43: Encore, Body Slam, Aurora Beam, Water Pulse
    (70011, 7008, NULL, NULL, NULL, NULL, 3, ARRAY[227, 34, 62, 352]),
    -- Juan: Crawdaunt Lv. 43: Water Pulse, Crabhammer, Taunt, Leer
    (70011, 7008, NULL, NULL, NULL, NULL, 4, ARRAY[352, 152, 269, 43]),
    -- Juan: Kingdra Lv. 46: Water Pulse, Double Team, Ice Beam, Rest
    (70011, 7008, NULL, NULL, NULL, NULL, 5, ARRAY[352, 104, 58, 156]),
    -- Sidney: Mightyena Lv. 46: Roar, Double-Edge, Sand Attack, Crunch
    (70012, 7009, NULL, NULL, NULL, NULL, 1, ARRAY[46, 38, 28, 242]),
    -- Sidney: Shiftry Lv. 48: Torment, Double Team, Swagger, Extrasensory
    (70012, 7009, NULL, NULL, NULL, NULL, 2, ARRAY[259, 104, 207, 326]),
    -- Sidney: Cacturne Lv. 46: Leech Seed, Feint Attack, Needle Arm, Cotton Spore
    (70012, 7009, NULL, NULL, NULL, NULL, 3, ARRAY[73, 185, 302, 178]),
    -- Sidney: Crawdaunt Lv. 48: Surf, Swords Dance, Strength, Facade
    (70012, 7009, NULL, NULL, NULL, NULL, 4, ARRAY[57, 14, 70, 263]),
    -- Sidney: Absol Lv. 49: Aerial Ace, Rock Slide, Swords Dance, Slash
    (70012, 7009, NULL, NULL, NULL, NULL, 5, ARRAY[332, 157, 14, 163]),
    -- Phoebe: Dusclops Lv. 48: Shadow Punch, Confuse Ray, Curse, Protect
    (70013, 7010, NULL, NULL, NULL, NULL, 1, ARRAY[325, 109, 174, 182]),
    -- Phoebe: Banette Lv. 49: Shadow Ball, Grudge, Will-O-Wisp, Feint Attack
    (70013, 7010, NULL, NULL, NULL, NULL, 2, ARRAY[247, 288, 261, 185]),
    -- Phoebe: Sableye Lv. 50: Shadow Ball, Double Team, Night Shade, Feint Attack
    (70013, 7010, NULL, NULL, NULL, NULL, 3, ARRAY[247, 104, 101, 185]),
    -- Phoebe: Banette Lv. 49: Shadow Ball, Psychic, Thunderbolt, Facade
    (70013, 7010, NULL, NULL, NULL, NULL, 4, ARRAY[247, 94, 85, 263]),
    -- Phoebe: Dusclops Lv. 51: Shadow Ball, Ice Beam, Rock Slide, Earthquake
    (70013, 7010, NULL, NULL, NULL, NULL, 5, ARRAY[247, 58, 157, 89]),
    -- Glacia: Sealeo Lv. 50: Encore, Body Slam, Hail, Ice Ball
    (70014, 7011, NULL, NULL, NULL, NULL, 1, ARRAY[227, 34, 258, 301]),
    -- Glacia: Glalie Lv. 50: Light Screen, Crunch, Icy Wind, Ice Beam
    (70014, 7011, NULL, NULL, NULL, NULL, 2, ARRAY[113, 242, 196, 58]),
    -- Glacia: Sealeo Lv. 52: Attract, Double-Edge, Hail, Blizzard
    (70014, 7011, NULL, NULL, NULL, NULL, 3, ARRAY[213, 38, 258, 59]),
    -- Glacia: Glalie Lv. 52: Shadow Ball, Explosion, Hail, Ice Beam
    (70014, 7011, NULL, NULL, NULL, NULL, 4, ARRAY[247, 153, 258, 58]),
    -- Glacia: Walrein Lv. 53: Surf, Body Slam, Ice Beam, Sheer Cold
    (70014, 7011, NULL, NULL, NULL, NULL, 5, ARRAY[57, 34, 58, 329]),
    -- Drake: Shelgon Lv. 52: Rock Tomb, Dragon Claw, Protect, Double-Edge
    (70015, 7012, NULL, NULL, NULL, NULL, 1, ARRAY[317, 337, 182, 38]),
    -- Drake: Altaria Lv. 54: Double-Edge, Dragon Breath, Dragon Dance, Aerial Ace
    (70015, 7012, NULL, NULL, NULL, NULL, 2, ARRAY[38, 225, 349, 332]),
    -- Drake: Kingdra Lv. 53: Smokescreen, Dragon Dance, Surf, Body Slam
    (70015, 7012, NULL, NULL, NULL, NULL, 3, ARRAY[108, 349, 57, 34]),
    -- Drake: Flygon Lv. 53: Flamethrower, Crunch, Dragon Breath, Earthquake
    (70015, 7012, NULL, NULL, NULL, NULL, 4, ARRAY[53, 242, 225, 89]),
    -- Drake: Salamence Lv. 55: Flamethrower, Dragon Claw, Rock Slide, Crunch
    (70015, 7012, NULL, NULL, NULL, NULL, 5, ARRAY[53, 337, 157, 242]),
    -- Wallace: Wailord Lv. 57: Rain Dance, Water Spout, Double-Edge, Blizzard
    (70016, 7013, NULL, NULL, NULL, NULL, 1, ARRAY[240, 323, 38, 59]),
    -- Wallace: Tentacruel Lv. 55: Toxic, Hydro Pump, Sludge Bomb, Ice Beam
    (70016, 7013, NULL, NULL, NULL, NULL, 2, ARRAY[92, 56, 188, 58]),
    -- Wallace: Ludicolo Lv. 56: Giga Drain, Surf, Leech Seed, Double Team
    (70016, 7013, NULL, NULL, NULL, NULL, 3, ARRAY[202, 57, 73, 104]),
    -- Wallace: Whiscash Lv. 56: Earthquake, Surf, Amnesia, Hyper Beam
    (70016, 7013, NULL, NULL, NULL, NULL, 4, ARRAY[89, 57, 133, 63]),
    -- Wallace: Gyarados Lv. 56: Dragon Dance, Earthquake, Hyper Beam, Surf
    (70016, 7013, NULL, NULL, NULL, NULL, 5, ARRAY[349, 89, 63, 57]),
    -- Wallace: Milotic Lv. 58: Recover, Surf, Ice Beam, Toxic
    (70016, 7013, NULL, NULL, NULL, NULL, 6, ARRAY[105, 57, 58, 92]),
    -- Steven: Skarmory Lv. 77: Toxic, Aerial Ace, Spikes, Steel Wing
    (70019, 7014, NULL, NULL, NULL, NULL, 1, ARRAY[92, 332, 191, 211]),
    -- Steven: Claydol Lv. 75: Reflect, Light Screen, Ancient Power, Earthquake
    (70019, 7014, NULL, NULL, NULL, NULL, 2, ARRAY[115, 113, 246, 89]),
    -- Steven: Aggron Lv. 76: Thunder, Earthquake, Solar Beam, Dragon Claw
    (70019, 7014, NULL, NULL, NULL, NULL, 3, ARRAY[87, 89, 76, 337]),
    -- Steven: Cradily Lv. 76: Giga Drain, Ancient Power, Ingrain, Confuse Ray
    (70019, 7014, NULL, NULL, NULL, NULL, 4, ARRAY[202, 246, 275, 109]),
    -- Steven: Armaldo Lv. 76: Water Pulse, Ancient Power, Aerial Ace, Slash
    (70019, 7014, NULL, NULL, NULL, NULL, 5, ARRAY[352, 246, 332, 163]),
    -- Steven: Metagross Lv. 78: Earthquake, Psychic, Meteor Mash, Shadow Ball
    (70019, 7014, NULL, NULL, NULL, NULL, 6, ARRAY[89, 94, 309, 247]),
    -- May / Brendan: Torchic Lv. 5: Scratch, Growl
    (70002, 7015, NULL, 70001, 'treecko', NULL, 1, ARRAY[10, 45]),
    -- May / Brendan: Mudkip Lv. 5: Tackle, Growl
    (70002, 7015, NULL, 70001, 'torchic', NULL, 1, ARRAY[33, 45]),
    -- May / Brendan: Treecko Lv. 5: Pound, Leer
    (70002, 7015, NULL, 70001, 'mudkip', NULL, 1, ARRAY[1, 43]),
    -- May / Brendan: Lotad Lv. 13: Astonish, Growl, Absorb, Nature Power
    (70004, 7015, NULL, NULL, NULL, 'may-treecko', 1, ARRAY[310, 45, 71, 267]),
    -- May / Brendan: Torchic Lv. 15: Scratch, Growl, Focus Energy, Ember
    (70004, 7015, NULL, NULL, NULL, 'may-treecko', 2, ARRAY[10, 45, 116, 52]),
    -- May / Brendan: Torkoal Lv. 13: Ember, Smog, Curse
    (70004, 7015, NULL, NULL, NULL, 'may-torchic', 1, ARRAY[52, 123, 174]),
    -- May / Brendan: Mudkip Lv. 15: Growl, Mud-Slap, Water Gun, Bide
    (70004, 7015, NULL, NULL, NULL, 'may-torchic', 2, ARRAY[45, 189, 55, 117]),
    -- May / Brendan: Wingull Lv. 13: Growl, Water Gun, Supersonic, Wing Attack
    (70004, 7015, NULL, NULL, NULL, 'may-mudkip', 1, ARRAY[45, 55, 48, 17]),
    -- May / Brendan: Treecko Lv. 15: Pound, Leer, Absorb, Quick Attack
    (70004, 7015, NULL, NULL, NULL, 'may-mudkip', 2, ARRAY[1, 43, 71, 98]),
    -- May / Brendan: Lotad Lv. 13: Astonish, Growl, Absorb, Nature Power
    (70004, 7015, NULL, NULL, NULL, 'brendan-treecko', 1, ARRAY[310, 45, 71, 267]),
    -- May / Brendan: Torchic Lv. 15: Scratch, Growl, Focus Energy, Ember
    (70004, 7015, NULL, NULL, NULL, 'brendan-treecko', 2, ARRAY[10, 45, 116, 52]),
    -- May / Brendan: Slugma Lv. 13: Yawn, Smog, Ember
    (70004, 7015, NULL, NULL, NULL, 'brendan-torchic', 1, ARRAY[281, 123, 52]),
    -- May / Brendan: Mudkip Lv. 15: Growl, Mud-Slap, Water Gun, Bide
    (70004, 7015, NULL, NULL, NULL, 'brendan-torchic', 2, ARRAY[45, 189, 55, 117]),
    -- May / Brendan: Wingull Lv. 13: Growl, Water Gun, Supersonic, Wing Attack
    (70004, 7015, NULL, NULL, NULL, 'brendan-mudkip', 1, ARRAY[45, 55, 48, 17]),
    -- May / Brendan: Treecko Lv. 15: Pound, Leer, Absorb, Quick Attack
    (70004, 7015, NULL, NULL, NULL, 'brendan-mudkip', 2, ARRAY[1, 43, 71, 98]),
    -- May / Brendan: Wingull Lv. 18: Growl, Water Gun, Supersonic, Wing Attack
    (70005, 7015, NULL, NULL, NULL, 'may-treecko', 1, ARRAY[45, 55, 48, 17]),
    -- May / Brendan: Lombre Lv. 18: Astonish, Growl, Absorb, Nature Power
    (70005, 7015, NULL, NULL, NULL, 'may-treecko', 2, ARRAY[310, 45, 71, 267]),
    -- May / Brendan: Combusken Lv. 20: Focus Energy, Ember, Double Kick, Peck
    (70005, 7015, NULL, NULL, NULL, 'may-treecko', 3, ARRAY[116, 52, 24, 64]),
    -- May / Brendan: Lombre Lv. 18: Astonish, Growl, Absorb, Nature Power
    (70005, 7015, NULL, NULL, NULL, 'may-torchic', 1, ARRAY[310, 45, 71, 267]),
    -- May / Brendan: Slugma Lv. 18: Yawn, Smog, Ember, Rock Throw
    (70005, 7015, NULL, NULL, NULL, 'may-torchic', 2, ARRAY[281, 123, 52, 88]),
    -- May / Brendan: Marshtomp Lv. 20: Water Gun, Bide, Mud Shot, Foresight
    (70005, 7015, NULL, NULL, NULL, 'may-torchic', 3, ARRAY[55, 117, 341, 193]),
    -- May / Brendan: Wingull Lv. 18: Growl, Water Gun, Supersonic, Wing Attack
    (70005, 7015, NULL, NULL, NULL, 'may-mudkip', 1, ARRAY[45, 55, 48, 17]),
    -- May / Brendan: Slugma Lv. 18: Yawn, Smog, Ember, Rock Throw
    (70005, 7015, NULL, NULL, NULL, 'may-mudkip', 2, ARRAY[281, 123, 52, 88]),
    -- May / Brendan: Grovyle Lv. 20: Absorb, Quick Attack, Fury Cutter, Pursuit
    (70005, 7015, NULL, NULL, NULL, 'may-mudkip', 3, ARRAY[71, 98, 210, 228]),
    -- May / Brendan: Wingull Lv. 18: Growl, Water Gun, Supersonic, Wing Attack
    (70005, 7015, NULL, NULL, NULL, 'brendan-treecko', 1, ARRAY[45, 55, 48, 17]),
    -- May / Brendan: Lombre Lv. 18: Astonish, Growl, Absorb, Nature Power
    (70005, 7015, NULL, NULL, NULL, 'brendan-treecko', 2, ARRAY[310, 45, 71, 267]),
    -- May / Brendan: Combusken Lv. 20: Focus Energy, Ember, Double Kick, Peck
    (70005, 7015, NULL, NULL, NULL, 'brendan-treecko', 3, ARRAY[116, 52, 24, 64]),
    -- May / Brendan: Lombre Lv. 18: Astonish, Growl, Absorb, Nature Power
    (70005, 7015, NULL, NULL, NULL, 'brendan-torchic', 1, ARRAY[310, 45, 71, 267]),
    -- May / Brendan: Slugma Lv. 18: Yawn, Smog, Ember, Rock Throw
    (70005, 7015, NULL, NULL, NULL, 'brendan-torchic', 2, ARRAY[281, 123, 52, 88]),
    -- May / Brendan: Marshtomp Lv. 20: Water Gun, Bide, Mud Shot, Foresight
    (70005, 7015, NULL, NULL, NULL, 'brendan-torchic', 3, ARRAY[55, 117, 341, 193]),
    -- May / Brendan: Slugma Lv. 18: Yawn, Smog, Ember, Rock Throw
    (70005, 7015, NULL, NULL, NULL, 'brendan-mudkip', 1, ARRAY[281, 123, 52, 88]),
    -- May / Brendan: Wingull Lv. 18: Growl, Water Gun, Supersonic, Wing Attack
    (70005, 7015, NULL, NULL, NULL, 'brendan-mudkip', 2, ARRAY[45, 55, 48, 17]),
    -- May / Brendan: Grovyle Lv. 20: Absorb, Quick Attack, Fury Cutter, Pursuit
    (70005, 7015, NULL, NULL, NULL, 'brendan-mudkip', 3, ARRAY[71, 98, 210, 228]),
    -- Wally: Ralts Lv. 16: Growl, Confusion, Double Team, Teleport
    (70005, 7016, NULL, NULL, NULL, NULL, 1, ARRAY[45, 93, 104, 100]),
    -- Maxie: Mightyena Lv. 24: Sand Attack, Bite, Odor Sleuth, Roar
    (70020, 7017, NULL, NULL, NULL, NULL, 1, ARRAY[28, 44, 316, 46]),
    -- Maxie: Zubat Lv. 24: Supersonic, Astonish, Bite, Wing Attack
    (70020, 7017, NULL, NULL, NULL, NULL, 2, ARRAY[48, 310, 44, 17]),
    -- Maxie: Camerupt Lv. 25: Tackle, Ember, Magnitude, Focus Energy
    (70020, 7017, NULL, NULL, NULL, NULL, 3, ARRAY[33, 52, 222, 116]),
    -- May / Brendan: Pelipper Lv. 29: Wing Attack, Supersonic, Mist, Protect
    (70009, 7015, NULL, NULL, NULL, 'may-treecko', 1, ARRAY[17, 48, 54, 182]),
    -- May / Brendan: Lombre Lv. 29: Absorb, Nature Power, Fake Out, Fury Swipes
    (70009, 7015, NULL, NULL, NULL, 'may-treecko', 2, ARRAY[71, 267, 252, 154]),
    -- May / Brendan: Combusken Lv. 31: Double Kick, Peck, Sand Attack, Bulk Up
    (70009, 7015, NULL, NULL, NULL, 'may-treecko', 3, ARRAY[24, 64, 28, 339]),
    -- May / Brendan: Lombre Lv. 29: Absorb, Nature Power, Fake Out, Fury Swipes
    (70009, 7015, NULL, NULL, NULL, 'may-torchic', 1, ARRAY[71, 267, 252, 154]),
    -- May / Brendan: Slugma Lv. 29: Ember, Rock Throw, Harden, Amnesia
    (70009, 7015, NULL, NULL, NULL, 'may-torchic', 2, ARRAY[52, 88, 106, 133]),
    -- May / Brendan: Marshtomp Lv. 31: Mud Shot, Foresight, Mud Sport, Take Down
    (70009, 7015, NULL, NULL, NULL, 'may-torchic', 3, ARRAY[341, 193, 300, 36]),
    -- May / Brendan: Slugma Lv. 29: Ember, Rock Throw, Harden, Amnesia
    (70009, 7015, NULL, NULL, NULL, 'may-mudkip', 1, ARRAY[52, 88, 106, 133]),
    -- May / Brendan: Lombre Lv. 29: Absorb, Nature Power, Fake Out, Fury Swipes
    (70009, 7015, NULL, NULL, NULL, 'may-mudkip', 2, ARRAY[71, 267, 252, 154]),
    -- May / Brendan: Grovyle Lv. 31: Fury Cutter, Pursuit, Screech, Leaf Blade
    (70009, 7015, NULL, NULL, NULL, 'may-mudkip', 3, ARRAY[210, 228, 103, 348]),
    -- May / Brendan: Pelipper Lv. 29: Wing Attack, Supersonic, Mist, Protect
    (70009, 7015, NULL, NULL, NULL, 'brendan-treecko', 1, ARRAY[17, 48, 54, 182]),
    -- May / Brendan: Lombre Lv. 29: Absorb, Nature Power, Fake Out, Fury Swipes
    (70009, 7015, NULL, NULL, NULL, 'brendan-treecko', 2, ARRAY[71, 267, 252, 154]),
    -- May / Brendan: Combusken Lv. 31: Double Kick, Peck, Sand Attack, Bulk Up
    (70009, 7015, NULL, NULL, NULL, 'brendan-treecko', 3, ARRAY[24, 64, 28, 339]),
    -- May / Brendan: Lombre Lv. 29: Absorb, Nature Power, Fake Out, Fury Swipes
    (70009, 7015, NULL, NULL, NULL, 'brendan-torchic', 1, ARRAY[71, 267, 252, 154]),
    -- May / Brendan: Slugma Lv. 29: Ember, Rock Throw, Harden, Amnesia
    (70009, 7015, NULL, NULL, NULL, 'brendan-torchic', 2, ARRAY[52, 88, 106, 133]),
    -- May / Brendan: Marshtomp Lv. 31: Mud Shot, Foresight, Mud Sport, Take Down
    (70009, 7015, NULL, NULL, NULL, 'brendan-torchic', 3, ARRAY[341, 193, 300, 36]),
    -- May / Brendan: Slugma Lv. 29: Ember, Rock Throw, Harden, Amnesia
    (70009, 7015, NULL, NULL, NULL, 'brendan-mudkip', 1, ARRAY[52, 88, 106, 133]),
    -- May / Brendan: Pelipper Lv. 29: Wing Attack, Supersonic, Mist, Protect
    (70009, 7015, NULL, NULL, NULL, 'brendan-mudkip', 2, ARRAY[17, 48, 54, 182]),
    -- May / Brendan: Grovyle Lv. 31: Fury Cutter, Pursuit, Screech, Leaf Blade
    (70009, 7015, NULL, NULL, NULL, 'brendan-mudkip', 3, ARRAY[210, 228, 103, 348]),
    -- May / Brendan: Tropius Lv. 31: Stomp, Sweet Scent, Whirlwind, Magical Leaf
    (70021, 7015, NULL, 70001, 'treecko', NULL, 1, ARRAY[23, 230, 18, 345]),
    -- May / Brendan: Pelipper Lv. 32: Wing Attack, Supersonic, Mist, Protect
    (70021, 7015, NULL, 70001, 'treecko', NULL, 2, ARRAY[17, 48, 54, 182]),
    -- May / Brendan: Ludicolo Lv. 32: Astonish, Growl, Absorb, Nature Power
    (70021, 7015, NULL, 70001, 'treecko', NULL, 3, ARRAY[310, 45, 71, 267]),
    -- May / Brendan: Combusken Lv. 34: Peck, Sand Attack, Bulk Up, Quick Attack
    (70021, 7015, NULL, 70001, 'treecko', NULL, 4, ARRAY[64, 28, 339, 98]),
    -- May / Brendan: Tropius Lv. 31: Stomp, Sweet Scent, Whirlwind, Magical Leaf
    (70021, 7015, NULL, 70001, 'torchic', NULL, 1, ARRAY[23, 230, 18, 345]),
    -- May / Brendan: Ludicolo Lv. 32: Astonish, Growl, Absorb, Nature Power
    (70021, 7015, NULL, 70001, 'torchic', NULL, 2, ARRAY[310, 45, 71, 267]),
    -- May / Brendan: Slugma Lv. 32: Ember, Rock Throw, Harden, Amnesia
    (70021, 7015, NULL, 70001, 'torchic', NULL, 3, ARRAY[52, 88, 106, 133]),
    -- May / Brendan: Marshtomp Lv. 34: Mud Shot, Foresight, Mud Sport, Take Down
    (70021, 7015, NULL, 70001, 'torchic', NULL, 4, ARRAY[341, 193, 300, 36]),
    -- May / Brendan: Tropius Lv. 31: Stomp, Sweet Scent, Whirlwind, Magical Leaf
    (70021, 7015, NULL, 70001, 'mudkip', NULL, 1, ARRAY[23, 230, 18, 345]),
    -- May / Brendan: Slugma Lv. 32: Ember, Rock Throw, Harden, Amnesia
    (70021, 7015, NULL, 70001, 'mudkip', NULL, 2, ARRAY[52, 88, 106, 133]),
    -- May / Brendan: Pelipper Lv. 32: Wing Attack, Supersonic, Mist, Protect
    (70021, 7015, NULL, 70001, 'mudkip', NULL, 3, ARRAY[17, 48, 54, 182]),
    -- May / Brendan: Grovyle Lv. 34: Fury Cutter, Pursuit, Screech, Leaf Blade
    (70021, 7015, NULL, 70001, 'mudkip', NULL, 4, ARRAY[210, 228, 103, 348]),
    -- Maxie: Mightyena Lv. 37: Roar, Swagger, Scary Face, Take Down
    (70021, 7017, NULL, NULL, NULL, NULL, 1, ARRAY[46, 207, 184, 36]),
    -- Maxie: Crobat Lv. 38: Bite, Wing Attack, Confuse Ray, Air Cutter
    (70021, 7017, NULL, NULL, NULL, NULL, 2, ARRAY[44, 17, 109, 314]),
    -- Maxie: Camerupt Lv. 39: Take Down, Amnesia, Rock Slide, Earthquake
    (70021, 7017, NULL, NULL, NULL, NULL, 3, ARRAY[36, 133, 157, 89]),
    -- Maxie & Tabitha: Mightyena Lv. 42: Swagger, Scary Face, Take Down, Taunt
    (70010, 7018, NULL, NULL, NULL, NULL, 1, ARRAY[207, 184, 36, 269]),
    -- Maxie & Tabitha: Crobat Lv. 43: Wing Attack, Confuse Ray, Air Cutter, Mean Look
    (70010, 7018, NULL, NULL, NULL, NULL, 2, ARRAY[17, 109, 314, 212]),
    -- Maxie & Tabitha: Camerupt Lv. 44: Take Down, Amnesia, Rock Slide, Earthquake
    (70010, 7018, NULL, NULL, NULL, NULL, 3, ARRAY[36, 133, 157, 89]),
    -- Maxie & Tabitha: Camerupt Lv. 36: Focus Energy, Take Down, Amnesia, Rock Slide
    (70010, 7018, NULL, NULL, NULL, NULL, 4, ARRAY[116, 36, 133, 157]),
    -- Maxie & Tabitha: Mightyena Lv. 38: Roar, Swagger, Scary Face, Take Down
    (70010, 7018, NULL, NULL, NULL, NULL, 5, ARRAY[46, 207, 184, 36]),
    -- Maxie & Tabitha: Golbat Lv. 40: Bite, Wing Attack, Confuse Ray, Air Cutter
    (70010, 7018, NULL, NULL, NULL, NULL, 6, ARRAY[44, 17, 109, 314]),
    -- Archie: Mightyena Lv. 41: Roar, Swagger, Scary Face, Take Down
    (70022, 7019, NULL, NULL, NULL, NULL, 1, ARRAY[46, 207, 184, 36]),
    -- Archie: Crobat Lv. 41: Bite, Wing Attack, Confuse Ray, Air Cutter
    (70022, 7019, NULL, NULL, NULL, NULL, 2, ARRAY[44, 17, 109, 314]),
    -- Archie: Sharpedo Lv. 43: Screech, Slash, Taunt, Swagger
    (70022, 7019, NULL, NULL, NULL, NULL, 3, ARRAY[103, 163, 269, 207]),
    -- Wally: Altaria Lv. 44: Aerial Ace, Safeguard, Dragon Breath, Dragon Dance
    (70012, 7016, NULL, NULL, NULL, NULL, 1, ARRAY[332, 219, 225, 349]),
    -- Wally: Delcatty Lv. 43: Sing, Assist, Charm, Feint Attack
    (70012, 7016, NULL, NULL, NULL, NULL, 2, ARRAY[47, 274, 204, 185]),
    -- Wally: Roselia Lv. 44: Magical Leaf, Leech Seed, Giga Drain, Toxic
    (70012, 7016, NULL, NULL, NULL, NULL, 3, ARRAY[345, 73, 202, 92]),
    -- Wally: Magneton Lv. 41: Supersonic, Thunderbolt, Tri Attack, Screech
    (70012, 7016, NULL, NULL, NULL, NULL, 4, ARRAY[48, 85, 161, 103]),
    -- Wally: Gardevoir Lv. 45: Double Team, Calm Mind, Psychic, Future Sight
    (70012, 7016, NULL, NULL, NULL, NULL, 5, ARRAY[104, 347, 94, 248]),
    -- Wally: Altaria Lv. 47: Aerial Ace, Safeguard, Dragon Breath, Dragon Dance
    (70017, 7016, NULL, NULL, NULL, NULL, 1, ARRAY[332, 219, 225, 349]),
    -- Wally: Delcatty Lv. 46: Sing, Assist, Charm, Feint Attack
    (70017, 7016, NULL, NULL, NULL, NULL, 2, ARRAY[47, 274, 204, 185]),
    -- Wally: Roselia Lv. 47: Magical Leaf, Leech Seed, Giga Drain, Toxic
    (70017, 7016, NULL, NULL, NULL, NULL, 3, ARRAY[345, 73, 202, 92]),
    -- Wally: Magneton Lv. 44: Supersonic, Thunderbolt, Tri Attack, Screech
    (70017, 7016, NULL, NULL, NULL, NULL, 4, ARRAY[48, 85, 161, 103]),
    -- Wally: Gardevoir Lv. 48: Double Team, Calm Mind, Psychic, Future Sight
    (70017, 7016, NULL, NULL, NULL, NULL, 5, ARRAY[104, 347, 94, 248]),
    -- Regirock: Regirock Lv. 40: Rock Throw, Curse, Superpower, Ancient Power
    (70023, 7020, NULL, NULL, NULL, NULL, 1, ARRAY[88, 174, 276, 246]),
    -- Regice: Regice Lv. 40: Icy Wind, Curse, Superpower, Ancient Power
    (70023, 7021, NULL, NULL, NULL, NULL, 1, ARRAY[196, 174, 276, 246]),
    -- Registeel: Registeel Lv. 40: Metal Claw, Curse, Superpower, Ancient Power
    (70023, 7022, NULL, NULL, NULL, NULL, 1, ARRAY[232, 174, 276, 246]),
    -- Rayquaza: Rayquaza Lv. 70: Fly, Rest, Extreme Speed, Outrage
    (70024, 7023, NULL, NULL, NULL, NULL, 1, ARRAY[19, 156, 245, 200]),
    -- Groudon: Groudon Lv. 70: Fire Blast, Rest, Fissure, Solar Beam
    (70025, 7024, NULL, NULL, NULL, NULL, 1, ARRAY[126, 156, 90, 76]),
    -- Kyogre: Kyogre Lv. 70: Hydro Pump, Rest, Sheer Cold, Double-Edge
    (70026, 7025, NULL, NULL, NULL, NULL, 1, ARRAY[56, 156, 329, 38]),
    -- Latias: Latias Lv. 40: Water Sport, Refresh, Mist Ball, Psychic
    (70018, 7026, NULL, 70018, 'latias', NULL, 1, ARRAY[346, 287, 296, 94]),
    -- Latios: Latios Lv. 40: Protect, Refresh, Luster Purge, Psychic
    (70018, 7027, NULL, 70018, 'latios', NULL, 1, ARRAY[182, 287, 295, 94])
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
