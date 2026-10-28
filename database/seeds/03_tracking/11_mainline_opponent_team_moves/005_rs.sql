-- ============================================================================
-- Source
-- ============================================================================
-- Primary: the pret pokeruby disassembly of the game: its trainer parties,
-- set moves and level-up learnsets.
-- A Pokémon the game gives no set moves, and every legendary encounter, gets
-- the game's own default: the last four moves it learns by level up to its
-- level, worked out from the same learnsets as the game does.
-- Scope: Ruby / Sapphire Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Ruby / Sapphire opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Roxanne: Geodude Lv. 14: Tackle, Defense Curl, Rock Throw, Rock Tomb
    (50003, 5001, NULL, NULL, NULL, NULL, 1, ARRAY[33, 111, 88, 317]),
    -- Roxanne: Nosepass Lv. 15: Tackle, Harden, Rock Throw, Rock Tomb
    (50003, 5001, NULL, NULL, NULL, NULL, 2, ARRAY[33, 106, 88, 317]),
    -- Brawly: Machop Lv. 17: Leer, Karate Chop, Seismic Toss, Bulk Up
    (50004, 5002, NULL, NULL, NULL, NULL, 1, ARRAY[43, 2, 69, 339]),
    -- Brawly: Makuhita Lv. 18: Arm Thrust, Knock Off, Sand Attack, Bulk Up
    (50004, 5002, NULL, NULL, NULL, NULL, 2, ARRAY[292, 282, 28, 339]),
    -- Wattson: Magnemite Lv. 22: Supersonic, Sonic Boom, Thunder Shock, Thunder Wave
    (50005, 5003, NULL, NULL, NULL, NULL, 1, ARRAY[48, 49, 84, 86]),
    -- Wattson: Voltorb Lv. 20: Rollout, Self-Destruct, Spark, Sonic Boom
    (50005, 5003, NULL, NULL, NULL, NULL, 2, ARRAY[205, 120, 209, 49]),
    -- Wattson: Magneton Lv. 23: Supersonic, Sonic Boom, Shock Wave, Thunder Wave
    (50005, 5003, NULL, NULL, NULL, NULL, 3, ARRAY[48, 49, 351, 86]),
    -- Flannery: Slugma Lv. 26: Overheat, Smog, Light Screen, Sunny Day
    (50007, 5004, NULL, NULL, NULL, NULL, 1, ARRAY[315, 123, 113, 241]),
    -- Flannery: Slugma Lv. 26: Flamethrower, Rock Slide, Light Screen, Sunny Day
    (50007, 5004, NULL, NULL, NULL, NULL, 2, ARRAY[53, 157, 113, 241]),
    -- Flannery: Torkoal Lv. 28: Overheat, Body Slam, Flail, Attract
    (50007, 5004, NULL, NULL, NULL, NULL, 3, ARRAY[315, 34, 175, 213]),
    -- Norman: Slaking Lv. 28: Encore, Facade, Yawn, Feint Attack
    (50008, 5005, NULL, NULL, NULL, NULL, 1, ARRAY[227, 263, 281, 185]),
    -- Norman: Vigoroth Lv. 30: Slash, Feint Attack, Facade, Encore
    (50008, 5005, NULL, NULL, NULL, NULL, 2, ARRAY[163, 185, 263, 227]),
    -- Norman: Slaking Lv. 31: Focus Punch, Slack Off, Facade, Feint Attack
    (50008, 5005, NULL, NULL, NULL, NULL, 3, ARRAY[264, 303, 263, 185]),
    -- Winona: Swellow Lv. 31: Quick Attack, Aerial Ace, Double Team, Endeavor
    (50009, 5006, NULL, NULL, NULL, NULL, 1, ARRAY[98, 332, 104, 283]),
    -- Winona: Pelipper Lv. 30: Water Gun, Supersonic, Protect, Aerial Ace
    (50009, 5006, NULL, NULL, NULL, NULL, 2, ARRAY[55, 48, 182, 332]),
    -- Winona: Skarmory Lv. 32: Sand Attack, Fury Attack, Steel Wing, Aerial Ace
    (50009, 5006, NULL, NULL, NULL, NULL, 3, ARRAY[28, 31, 211, 332]),
    -- Winona: Altaria Lv. 33: Earthquake, Dragon Breath, Dragon Dance, Aerial Ace
    (50009, 5006, NULL, NULL, NULL, NULL, 4, ARRAY[89, 225, 349, 332]),
    -- Tate & Liza: Lunatone Lv. 42: Light Screen, Psychic, Hypnosis, Calm Mind
    (50010, 5007, NULL, NULL, NULL, NULL, 1, ARRAY[113, 94, 95, 347]),
    -- Tate & Liza: Solrock Lv. 42: Sunny Day, Solar Beam, Psychic, Flamethrower
    (50010, 5007, NULL, NULL, NULL, NULL, 2, ARRAY[241, 76, 94, 53]),
    -- Wallace: Luvdisc Lv. 40: Water Pulse, Attract, Sweet Kiss, Flail
    (50011, 5008, NULL, NULL, NULL, NULL, 1, ARRAY[352, 213, 186, 175]),
    -- Wallace: Whiscash Lv. 42: Rain Dance, Water Pulse, Amnesia, Earthquake
    (50011, 5008, NULL, NULL, NULL, NULL, 2, ARRAY[240, 352, 133, 89]),
    -- Wallace: Sealeo Lv. 40: Encore, Body Slam, Aurora Beam, Water Pulse
    (50011, 5008, NULL, NULL, NULL, NULL, 3, ARRAY[227, 34, 62, 352]),
    -- Wallace: Seaking Lv. 42: Water Pulse, Rain Dance, Fury Attack, Horn Drill
    (50011, 5008, NULL, NULL, NULL, NULL, 4, ARRAY[352, 240, 31, 32]),
    -- Wallace: Milotic Lv. 43: Water Pulse, Twister, Recover, Ice Beam
    (50011, 5008, NULL, NULL, NULL, NULL, 5, ARRAY[352, 239, 105, 58]),
    -- Sidney: Mightyena Lv. 46: Roar, Take Down, Sand Attack, Crunch
    (50012, 5009, NULL, NULL, NULL, NULL, 1, ARRAY[46, 36, 28, 242]),
    -- Sidney: Shiftry Lv. 48: Fake Out, Double Team, Swagger, Extrasensory
    (50012, 5009, NULL, NULL, NULL, NULL, 2, ARRAY[252, 104, 207, 326]),
    -- Sidney: Cacturne Lv. 46: Leech Seed, Feint Attack, Needle Arm, Cotton Spore
    (50012, 5009, NULL, NULL, NULL, NULL, 3, ARRAY[73, 185, 302, 178]),
    -- Sidney: Sharpedo Lv. 48: Crunch, Swagger, Surf, Slash
    (50012, 5009, NULL, NULL, NULL, NULL, 4, ARRAY[242, 207, 57, 163]),
    -- Sidney: Absol Lv. 49: Aerial Ace, Snatch, Swords Dance, Slash
    (50012, 5009, NULL, NULL, NULL, NULL, 5, ARRAY[332, 289, 14, 163]),
    -- Phoebe: Dusclops Lv. 48: Shadow Punch, Confuse Ray, Curse, Future Sight
    (50013, 5010, NULL, NULL, NULL, NULL, 1, ARRAY[325, 109, 174, 248]),
    -- Phoebe: Banette Lv. 49: Shadow Ball, Spite, Will-O-Wisp, Feint Attack
    (50013, 5010, NULL, NULL, NULL, NULL, 2, ARRAY[247, 180, 261, 185]),
    -- Phoebe: Sableye Lv. 50: Shadow Ball, Psychic, Attract, Feint Attack
    (50013, 5010, NULL, NULL, NULL, NULL, 3, ARRAY[247, 94, 213, 185]),
    -- Phoebe: Banette Lv. 49: Shadow Ball, Psychic, Toxic, Skill Swap
    (50013, 5010, NULL, NULL, NULL, NULL, 4, ARRAY[247, 94, 92, 285]),
    -- Phoebe: Dusclops Lv. 51: Shadow Ball, Ice Beam, Confuse Ray, Earthquake
    (50013, 5010, NULL, NULL, NULL, NULL, 5, ARRAY[247, 58, 109, 89]),
    -- Glacia: Glalie Lv. 50: Light Screen, Crunch, Hail, Ice Beam
    (50014, 5011, NULL, NULL, NULL, NULL, 1, ARRAY[113, 242, 258, 58]),
    -- Glacia: Sealeo Lv. 50: Surf, Body Slam, Hail, Ice Ball
    (50014, 5011, NULL, NULL, NULL, NULL, 2, ARRAY[57, 34, 258, 301]),
    -- Glacia: Sealeo Lv. 52: Attract, Dive, Hail, Blizzard
    (50014, 5011, NULL, NULL, NULL, NULL, 3, ARRAY[213, 291, 258, 59]),
    -- Glacia: Glalie Lv. 52: Shadow Ball, Crunch, Hail, Ice Beam
    (50014, 5011, NULL, NULL, NULL, NULL, 4, ARRAY[247, 242, 258, 58]),
    -- Glacia: Walrein Lv. 53: Surf, Body Slam, Blizzard, Sheer Cold
    (50014, 5011, NULL, NULL, NULL, NULL, 5, ARRAY[57, 34, 59, 329]),
    -- Drake: Shelgon Lv. 52: Rock Tomb, Dragon Claw, Protect, Crunch
    (50015, 5012, NULL, NULL, NULL, NULL, 1, ARRAY[317, 337, 182, 242]),
    -- Drake: Altaria Lv. 54: Take Down, Dragon Breath, Dragon Dance, Refresh
    (50015, 5012, NULL, NULL, NULL, NULL, 2, ARRAY[36, 225, 349, 287]),
    -- Drake: Flygon Lv. 53: Dig, Dragon Breath, Fly, Sandstorm
    (50015, 5012, NULL, NULL, NULL, NULL, 3, ARRAY[91, 225, 19, 201]),
    -- Drake: Flygon Lv. 53: Flamethrower, Crunch, Dragon Breath, Sand Attack
    (50015, 5012, NULL, NULL, NULL, NULL, 4, ARRAY[53, 242, 225, 28]),
    -- Drake: Salamence Lv. 55: Flamethrower, Dragon Claw, Fly, Crunch
    (50015, 5012, NULL, NULL, NULL, NULL, 5, ARRAY[53, 337, 19, 242]),
    -- Steven: Skarmory Lv. 57: Toxic, Aerial Ace, Spikes, Steel Wing
    (50016, 5013, NULL, NULL, NULL, NULL, 1, ARRAY[92, 332, 191, 211]),
    -- Steven: Claydol Lv. 55: Reflect, Light Screen, Ancient Power, Earthquake
    (50016, 5013, NULL, NULL, NULL, NULL, 2, ARRAY[115, 113, 246, 89]),
    -- Steven: Aggron Lv. 56: Thunder, Earthquake, Solar Beam, Dragon Claw
    (50016, 5013, NULL, NULL, NULL, NULL, 3, ARRAY[87, 89, 76, 337]),
    -- Steven: Cradily Lv. 56: Giga Drain, Ancient Power, Sludge Bomb, Confuse Ray
    (50016, 5013, NULL, NULL, NULL, NULL, 4, ARRAY[202, 246, 188, 109]),
    -- Steven: Armaldo Lv. 56: Water Pulse, Ancient Power, Aerial Ace, Slash
    (50016, 5013, NULL, NULL, NULL, NULL, 5, ARRAY[352, 246, 332, 163]),
    -- Steven: Metagross Lv. 58: Earthquake, Psychic, Meteor Mash, Hyper Beam
    (50016, 5013, NULL, NULL, NULL, NULL, 6, ARRAY[89, 94, 309, 63]),
    -- May / Brendan: Torchic Lv. 5: Scratch, Growl
    (50002, 5014, NULL, 50001, 'treecko', NULL, 1, ARRAY[10, 45]),
    -- May / Brendan: Mudkip Lv. 5: Tackle, Growl
    (50002, 5014, NULL, 50001, 'torchic', NULL, 1, ARRAY[33, 45]),
    -- May / Brendan: Treecko Lv. 5: Pound, Leer
    (50002, 5014, NULL, 50001, 'mudkip', NULL, 1, ARRAY[1, 43]),
    -- May / Brendan: Wailmer Lv. 18: Splash, Growl, Water Gun, Rollout
    (50005, 5014, NULL, NULL, NULL, 'may-treecko', 1, ARRAY[150, 45, 55, 205]),
    -- May / Brendan: Shroomish Lv. 18: Tackle, Stun Spore, Leech Seed, Mega Drain
    (50005, 5014, NULL, NULL, NULL, 'may-treecko', 2, ARRAY[33, 78, 73, 72]),
    -- May / Brendan: Combusken Lv. 20: Focus Energy, Ember, Double Kick, Peck
    (50005, 5014, NULL, NULL, NULL, 'may-treecko', 3, ARRAY[116, 52, 24, 64]),
    -- May / Brendan: Shroomish Lv. 18: Tackle, Stun Spore, Leech Seed, Mega Drain
    (50005, 5014, NULL, NULL, NULL, 'may-torchic', 1, ARRAY[33, 78, 73, 72]),
    -- May / Brendan: Numel Lv. 18: Growl, Tackle, Ember
    (50005, 5014, NULL, NULL, NULL, 'may-torchic', 2, ARRAY[45, 33, 52]),
    -- May / Brendan: Marshtomp Lv. 20: Water Gun, Bide, Mud Shot, Foresight
    (50005, 5014, NULL, NULL, NULL, 'may-torchic', 3, ARRAY[55, 117, 341, 193]),
    -- May / Brendan: Wailmer Lv. 18: Splash, Growl, Water Gun, Rollout
    (50005, 5014, NULL, NULL, NULL, 'may-mudkip', 1, ARRAY[150, 45, 55, 205]),
    -- May / Brendan: Numel Lv. 18: Growl, Tackle, Ember
    (50005, 5014, NULL, NULL, NULL, 'may-mudkip', 2, ARRAY[45, 33, 52]),
    -- May / Brendan: Grovyle Lv. 20: Absorb, Quick Attack, Fury Cutter, Pursuit
    (50005, 5014, NULL, NULL, NULL, 'may-mudkip', 3, ARRAY[71, 98, 210, 228]),
    -- May / Brendan: Wailmer Lv. 18: Splash, Growl, Water Gun, Rollout
    (50005, 5014, NULL, NULL, NULL, 'brendan-treecko', 1, ARRAY[150, 45, 55, 205]),
    -- May / Brendan: Shroomish Lv. 18: Tackle, Stun Spore, Leech Seed, Mega Drain
    (50005, 5014, NULL, NULL, NULL, 'brendan-treecko', 2, ARRAY[33, 78, 73, 72]),
    -- May / Brendan: Combusken Lv. 20: Focus Energy, Ember, Double Kick, Peck
    (50005, 5014, NULL, NULL, NULL, 'brendan-treecko', 3, ARRAY[116, 52, 24, 64]),
    -- May / Brendan: Shroomish Lv. 18: Tackle, Stun Spore, Leech Seed, Mega Drain
    (50005, 5014, NULL, NULL, NULL, 'brendan-torchic', 1, ARRAY[33, 78, 73, 72]),
    -- May / Brendan: Numel Lv. 18: Growl, Tackle, Ember
    (50005, 5014, NULL, NULL, NULL, 'brendan-torchic', 2, ARRAY[45, 33, 52]),
    -- May / Brendan: Marshtomp Lv. 20: Water Gun, Bide, Mud Shot, Foresight
    (50005, 5014, NULL, NULL, NULL, 'brendan-torchic', 3, ARRAY[55, 117, 341, 193]),
    -- May / Brendan: Numel Lv. 18: Growl, Tackle, Ember
    (50005, 5014, NULL, NULL, NULL, 'brendan-mudkip', 1, ARRAY[45, 33, 52]),
    -- May / Brendan: Wailmer Lv. 18: Splash, Growl, Water Gun, Rollout
    (50005, 5014, NULL, NULL, NULL, 'brendan-mudkip', 2, ARRAY[150, 45, 55, 205]),
    -- May / Brendan: Grovyle Lv. 20: Absorb, Quick Attack, Fury Cutter, Pursuit
    (50005, 5014, NULL, NULL, NULL, 'brendan-mudkip', 3, ARRAY[71, 98, 210, 228]),
    -- Wally: Ralts Lv. 16: Growl, Confusion, Double Team, Teleport
    (50005, 5015, NULL, NULL, NULL, NULL, 1, ARRAY[45, 93, 104, 100]),
    -- Maxie: Mightyena Lv. 24: Sand Attack, Bite, Odor Sleuth, Roar
    (50018, 5016, NULL, NULL, NULL, NULL, 1, ARRAY[28, 44, 316, 46]),
    -- Maxie: Golbat Lv. 24: Supersonic, Astonish, Bite, Wing Attack
    (50018, 5016, NULL, NULL, NULL, NULL, 2, ARRAY[48, 310, 44, 17]),
    -- Maxie: Camerupt Lv. 25: Tackle, Ember, Magnitude, Focus Energy
    (50018, 5016, NULL, NULL, NULL, NULL, 3, ARRAY[33, 52, 222, 116]),
    -- Archie: Mightyena Lv. 24: Sand Attack, Bite, Odor Sleuth, Roar
    (50018, 5017, NULL, NULL, NULL, NULL, 1, ARRAY[28, 44, 316, 46]),
    -- Archie: Golbat Lv. 24: Supersonic, Astonish, Bite, Wing Attack
    (50018, 5017, NULL, NULL, NULL, NULL, 2, ARRAY[48, 310, 44, 17]),
    -- Archie: Sharpedo Lv. 25: Rage, Focus Energy, Scary Face, Crunch
    (50018, 5017, NULL, NULL, NULL, NULL, 3, ARRAY[99, 116, 184, 242]),
    -- May / Brendan: Wailmer Lv. 29: Rollout, Whirlpool, Astonish, Water Pulse
    (50009, 5014, NULL, 50001, 'treecko', NULL, 1, ARRAY[205, 250, 310, 352]),
    -- May / Brendan: Shroomish Lv. 29: Leech Seed, Mega Drain, Headbutt, Poison Powder
    (50009, 5014, NULL, 50001, 'treecko', NULL, 2, ARRAY[73, 72, 29, 77]),
    -- May / Brendan: Combusken Lv. 31: Double Kick, Peck, Sand Attack, Bulk Up
    (50009, 5014, NULL, 50001, 'treecko', NULL, 3, ARRAY[24, 64, 28, 339]),
    -- May / Brendan: Shroomish Lv. 29: Leech Seed, Mega Drain, Headbutt, Poison Powder
    (50009, 5014, NULL, 50001, 'torchic', NULL, 1, ARRAY[73, 72, 29, 77]),
    -- May / Brendan: Numel Lv. 29: Ember, Magnitude, Focus Energy, Take Down
    (50009, 5014, NULL, 50001, 'torchic', NULL, 2, ARRAY[52, 222, 116, 36]),
    -- May / Brendan: Marshtomp Lv. 31: Mud Shot, Foresight, Mud Sport, Take Down
    (50009, 5014, NULL, 50001, 'torchic', NULL, 3, ARRAY[341, 193, 300, 36]),
    -- May / Brendan: Numel Lv. 29: Ember, Magnitude, Focus Energy, Take Down
    (50009, 5014, NULL, 50001, 'mudkip', NULL, 1, ARRAY[52, 222, 116, 36]),
    -- May / Brendan: Wailmer Lv. 29: Rollout, Whirlpool, Astonish, Water Pulse
    (50009, 5014, NULL, 50001, 'mudkip', NULL, 2, ARRAY[205, 250, 310, 352]),
    -- May / Brendan: Grovyle Lv. 31: Fury Cutter, Pursuit, Screech, Leaf Blade
    (50009, 5014, NULL, 50001, 'mudkip', NULL, 3, ARRAY[210, 228, 103, 348]),
    -- May / Brendan: Swellow Lv. 31: Quick Attack, Wing Attack, Double Team, Endeavor
    (50010, 5014, NULL, 50001, 'treecko', NULL, 1, ARRAY[98, 17, 104, 283]),
    -- May / Brendan: Wailmer Lv. 32: Whirlpool, Astonish, Water Pulse, Mist
    (50010, 5014, NULL, 50001, 'treecko', NULL, 2, ARRAY[250, 310, 352, 54]),
    -- May / Brendan: Shroomish Lv. 32: Leech Seed, Mega Drain, Headbutt, Poison Powder
    (50010, 5014, NULL, 50001, 'treecko', NULL, 3, ARRAY[73, 72, 29, 77]),
    -- May / Brendan: Combusken Lv. 34: Peck, Sand Attack, Bulk Up, Quick Attack
    (50010, 5014, NULL, 50001, 'treecko', NULL, 4, ARRAY[64, 28, 339, 98]),
    -- May / Brendan: Swellow Lv. 31: Quick Attack, Wing Attack, Double Team, Endeavor
    (50010, 5014, NULL, 50001, 'torchic', NULL, 1, ARRAY[98, 17, 104, 283]),
    -- May / Brendan: Shroomish Lv. 32: Leech Seed, Mega Drain, Headbutt, Poison Powder
    (50010, 5014, NULL, 50001, 'torchic', NULL, 2, ARRAY[73, 72, 29, 77]),
    -- May / Brendan: Numel Lv. 32: Magnitude, Focus Energy, Take Down, Amnesia
    (50010, 5014, NULL, 50001, 'torchic', NULL, 3, ARRAY[222, 116, 36, 133]),
    -- May / Brendan: Marshtomp Lv. 34: Mud Shot, Foresight, Mud Sport, Take Down
    (50010, 5014, NULL, 50001, 'torchic', NULL, 4, ARRAY[341, 193, 300, 36]),
    -- May / Brendan: Swellow Lv. 31: Quick Attack, Wing Attack, Double Team, Endeavor
    (50010, 5014, NULL, 50001, 'mudkip', NULL, 1, ARRAY[98, 17, 104, 283]),
    -- May / Brendan: Numel Lv. 32: Magnitude, Focus Energy, Take Down, Amnesia
    (50010, 5014, NULL, 50001, 'mudkip', NULL, 2, ARRAY[222, 116, 36, 133]),
    -- May / Brendan: Wailmer Lv. 32: Whirlpool, Astonish, Water Pulse, Mist
    (50010, 5014, NULL, 50001, 'mudkip', NULL, 3, ARRAY[250, 310, 352, 54]),
    -- May / Brendan: Grovyle Lv. 34: Fury Cutter, Pursuit, Screech, Leaf Blade
    (50010, 5014, NULL, 50001, 'mudkip', NULL, 4, ARRAY[210, 228, 103, 348]),
    -- Maxie: Mightyena Lv. 41: Roar, Swagger, Scary Face, Take Down
    (50019, 5016, NULL, NULL, NULL, NULL, 1, ARRAY[46, 207, 184, 36]),
    -- Maxie: Crobat Lv. 41: Bite, Wing Attack, Confuse Ray, Air Cutter
    (50019, 5016, NULL, NULL, NULL, NULL, 2, ARRAY[44, 17, 109, 314]),
    -- Maxie: Camerupt Lv. 43: Take Down, Amnesia, Rock Slide, Earthquake
    (50019, 5016, NULL, NULL, NULL, NULL, 3, ARRAY[36, 133, 157, 89]),
    -- Archie: Mightyena Lv. 41: Roar, Swagger, Scary Face, Take Down
    (50019, 5017, NULL, NULL, NULL, NULL, 1, ARRAY[46, 207, 184, 36]),
    -- Archie: Crobat Lv. 41: Bite, Wing Attack, Confuse Ray, Air Cutter
    (50019, 5017, NULL, NULL, NULL, NULL, 2, ARRAY[44, 17, 109, 314]),
    -- Archie: Sharpedo Lv. 43: Screech, Slash, Taunt, Swagger
    (50019, 5017, NULL, NULL, NULL, NULL, 3, ARRAY[103, 163, 269, 207]),
    -- Wally: Altaria Lv. 44: Aerial Ace, Safeguard, Dragon Breath, Dragon Dance
    (50012, 5015, NULL, NULL, NULL, NULL, 1, ARRAY[332, 219, 225, 349]),
    -- Wally: Delcatty Lv. 43: Sing, Assist, Charm, Feint Attack
    (50012, 5015, NULL, NULL, NULL, NULL, 2, ARRAY[47, 274, 204, 185]),
    -- Wally: Roselia Lv. 44: Magical Leaf, Leech Seed, Giga Drain, Toxic
    (50012, 5015, NULL, NULL, NULL, NULL, 3, ARRAY[345, 73, 202, 92]),
    -- Wally: Magneton Lv. 41: Supersonic, Thunderbolt, Tri Attack, Screech
    (50012, 5015, NULL, NULL, NULL, NULL, 4, ARRAY[48, 85, 161, 103]),
    -- Wally: Gardevoir Lv. 45: Double Team, Calm Mind, Psychic, Future Sight
    (50012, 5015, NULL, NULL, NULL, NULL, 5, ARRAY[104, 347, 94, 248]),
    -- Wally: Altaria Lv. 47: Aerial Ace, Safeguard, Dragon Breath, Dragon Dance
    (50017, 5015, NULL, NULL, NULL, NULL, 1, ARRAY[332, 219, 225, 349]),
    -- Wally: Delcatty Lv. 46: Sing, Assist, Charm, Feint Attack
    (50017, 5015, NULL, NULL, NULL, NULL, 2, ARRAY[47, 274, 204, 185]),
    -- Wally: Roselia Lv. 47: Magical Leaf, Leech Seed, Giga Drain, Toxic
    (50017, 5015, NULL, NULL, NULL, NULL, 3, ARRAY[345, 73, 202, 92]),
    -- Wally: Magneton Lv. 44: Supersonic, Thunderbolt, Tri Attack, Screech
    (50017, 5015, NULL, NULL, NULL, NULL, 4, ARRAY[48, 85, 161, 103]),
    -- Wally: Gardevoir Lv. 48: Double Team, Calm Mind, Psychic, Future Sight
    (50017, 5015, NULL, NULL, NULL, NULL, 5, ARRAY[104, 347, 94, 248]),
    -- Groudon: Groudon Lv. 45: Slash, Bulk Up, Earthquake, Fire Blast
    (50011, 5018, NULL, NULL, NULL, NULL, 1, ARRAY[163, 339, 89, 126]),
    -- Kyogre: Kyogre Lv. 45: Body Slam, Calm Mind, Ice Beam, Hydro Pump
    (50011, 5019, NULL, NULL, NULL, NULL, 1, ARRAY[34, 347, 58, 56]),
    -- Regirock: Regirock Lv. 40: Rock Throw, Curse, Superpower, Ancient Power
    (50020, 5020, NULL, NULL, NULL, NULL, 1, ARRAY[88, 174, 276, 246]),
    -- Regice: Regice Lv. 40: Icy Wind, Curse, Superpower, Ancient Power
    (50020, 5021, NULL, NULL, NULL, NULL, 1, ARRAY[196, 174, 276, 246]),
    -- Registeel: Registeel Lv. 40: Metal Claw, Curse, Superpower, Ancient Power
    (50020, 5022, NULL, NULL, NULL, NULL, 1, ARRAY[232, 174, 276, 246]),
    -- Rayquaza: Rayquaza Lv. 70: Fly, Rest, Extreme Speed, Outrage
    (50021, 5023, NULL, NULL, NULL, NULL, 1, ARRAY[19, 156, 245, 200]),
    -- Latios: Latios Lv. 40: Protect, Refresh, Luster Purge, Psychic
    (50022, 5024, NULL, NULL, NULL, NULL, 1, ARRAY[182, 287, 295, 94]),
    -- Latias: Latias Lv. 40: Water Sport, Refresh, Mist Ball, Psychic
    (50022, 5025, NULL, NULL, NULL, NULL, 1, ARRAY[346, 287, 296, 94])
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
