-- ============================================================================
-- Source
-- ============================================================================
-- Primary: the pret pokeheartgold disassembly of the game: its trainer parties,
-- set moves and level-up learnsets.
-- A Pokémon the game gives no set moves, and every legendary encounter, gets
-- the game's own default: the last four moves it learns by level up to its
-- level, worked out from the same learnsets as the game does.
-- Rocket Executives (Proton, Petrel, Ariana, Archer): the pret pokeheartgold trainer
-- data, cross-checked with Bulbapedia's trainer and Goldenrod Radio Tower pages.
-- Where the two differ the game wins: the Grunt beside Ariana has Hypnosis on Drowzee,
-- Petrel's last Koffing in the Radio Tower has Smog, and move order follows the game.
-- Proton's and Petrel's first teams have no set moves; they get the game's default.
-- Scope: HeartGold / SoulSilver Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each HeartGold / SoulSilver opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Falkner: Pidgey Lv. 9: Tackle, Sand Attack
    (100003, 10001, NULL, NULL, NULL, NULL, 1, ARRAY[33, 28]),
    -- Falkner: Pidgeotto Lv. 13: Tackle, Roost, Gust
    (100003, 10001, NULL, NULL, NULL, NULL, 2, ARRAY[33, 355, 16]),
    -- Bugsy: Scyther Lv. 17: Quick Attack, Leer, U-turn, Focus Energy
    (100004, 10002, NULL, NULL, NULL, NULL, 1, ARRAY[98, 43, 369, 116]),
    -- Bugsy: Kakuna Lv. 15: Poison Sting
    (100004, 10002, NULL, NULL, NULL, NULL, 2, ARRAY[40]),
    -- Bugsy: Metapod Lv. 15: Tackle
    (100004, 10002, NULL, NULL, NULL, NULL, 3, ARRAY[33]),
    -- Whitney: Clefairy Lv. 17: Double Slap, Mimic, Encore, Metronome
    (100005, 10003, NULL, NULL, NULL, NULL, 1, ARRAY[3, 102, 227, 118]),
    -- Whitney: Miltank Lv. 19: Rollout, Attract, Stomp, Milk Drink
    (100005, 10003, NULL, NULL, NULL, NULL, 2, ARRAY[205, 213, 23, 208]),
    -- Morty: Gastly Lv. 21: Lick, Spite, Mean Look, Curse
    (100006, 10004, NULL, NULL, NULL, NULL, 1, ARRAY[122, 180, 212, 174]),
    -- Morty: Haunter Lv. 21: Hypnosis, Dream Eater, Curse, Nightmare
    (100006, 10004, NULL, NULL, NULL, NULL, 2, ARRAY[95, 138, 174, 171]),
    -- Morty: Gengar Lv. 25: Hypnosis, Shadow Ball, Mean Look, Sucker Punch
    (100006, 10004, NULL, NULL, NULL, NULL, 3, ARRAY[95, 247, 212, 389]),
    -- Morty: Haunter Lv. 23: Curse, Mean Look, Sucker Punch, Night Shade
    (100006, 10004, NULL, NULL, NULL, NULL, 4, ARRAY[174, 212, 389, 101]),
    -- Chuck: Primeape Lv. 29: Leer, Double Team, Focus Punch, Rock Slide
    (100007, 10005, NULL, NULL, NULL, NULL, 1, ARRAY[43, 104, 264, 157]),
    -- Chuck: Poliwrath Lv. 31: Hypnosis, Surf, Focus Punch, Body Slam
    (100007, 10005, NULL, NULL, NULL, NULL, 2, ARRAY[95, 57, 264, 34]),
    -- Jasmine: Magnemite Lv. 30: Thunderbolt, Supersonic, Sonic Boom, Thunder Wave
    (100008, 10006, NULL, NULL, NULL, NULL, 1, ARRAY[85, 48, 49, 86]),
    -- Jasmine: Magnemite Lv. 30: Thunderbolt, Supersonic, Sonic Boom, Thunder Wave
    (100008, 10006, NULL, NULL, NULL, NULL, 2, ARRAY[85, 48, 49, 86]),
    -- Jasmine: Steelix Lv. 35: Screech, Sandstorm, Rock Throw, Iron Tail
    (100008, 10006, NULL, NULL, NULL, NULL, 3, ARRAY[103, 201, 88, 231]),
    -- Pryce: Seel Lv. 30: Snore, Hail, Icy Wind, Rest
    (100009, 10007, NULL, NULL, NULL, NULL, 1, ARRAY[173, 258, 196, 156]),
    -- Pryce: Dewgong Lv. 32: Sleep Talk, Ice Shard, Aurora Beam, Rest
    (100009, 10007, NULL, NULL, NULL, NULL, 2, ARRAY[214, 420, 62, 156]),
    -- Pryce: Piloswine Lv. 34: Hail, Ice Fang, Mud Bomb, Blizzard
    (100009, 10007, NULL, NULL, NULL, NULL, 3, ARRAY[258, 423, 426, 59]),
    -- Clair: Gyarados Lv. 38: Twister, Dragon Rage, Bite, Dragon Pulse
    (100010, 10008, NULL, NULL, NULL, NULL, 1, ARRAY[239, 82, 44, 406]),
    -- Clair: Dragonair Lv. 38: Thunder Wave, Fire Blast, Slam, Dragon Pulse
    (100010, 10008, NULL, NULL, NULL, NULL, 2, ARRAY[86, 126, 21, 406]),
    -- Clair: Dragonair Lv. 38: Thunder Wave, Aqua Tail, Slam, Dragon Pulse
    (100010, 10008, NULL, NULL, NULL, NULL, 3, ARRAY[86, 401, 21, 406]),
    -- Clair: Kingdra Lv. 41: Smokescreen, Hydro Pump, Hyper Beam, Dragon Pulse
    (100010, 10008, NULL, NULL, NULL, NULL, 4, ARRAY[108, 56, 63, 406]),
    -- Will: Xatu Lv. 40: U-turn, Me First, Confuse Ray, Psychic
    (100011, 10009, NULL, NULL, NULL, NULL, 1, ARRAY[369, 382, 109, 94]),
    -- Will: Jynx Lv. 41: Double Slap, Lovely Kiss, Ice Punch, Psychic
    (100011, 10009, NULL, NULL, NULL, NULL, 2, ARRAY[3, 142, 8, 94]),
    -- Will: Exeggutor Lv. 41: Reflect, Hypnosis, Egg Bomb, Psychic
    (100011, 10009, NULL, NULL, NULL, NULL, 3, ARRAY[115, 95, 121, 94]),
    -- Will: Slowbro Lv. 41: Curse, Amnesia, Water Pulse, Psychic
    (100011, 10009, NULL, NULL, NULL, NULL, 4, ARRAY[174, 133, 352, 94]),
    -- Will: Xatu Lv. 42: Aerial Ace, Ominous Wind, Confuse Ray, Psychic
    (100011, 10009, NULL, NULL, NULL, NULL, 5, ARRAY[332, 466, 109, 94]),
    -- Koga: Ariados Lv. 40: Poison Jab, Spider Web, Baton Pass, Giga Drain
    (100012, 10010, NULL, NULL, NULL, NULL, 1, ARRAY[398, 169, 226, 202]),
    -- Koga: Venomoth Lv. 41: Supersonic, Gust, Psychic, Toxic
    (100012, 10010, NULL, NULL, NULL, NULL, 2, ARRAY[48, 16, 94, 92]),
    -- Koga: Forretress Lv. 43: Protect, Swift, Explosion, Toxic Spikes
    (100012, 10010, NULL, NULL, NULL, NULL, 3, ARRAY[182, 129, 153, 390]),
    -- Koga: Muk Lv. 42: Minimize, Screech, Gunk Shot, Toxic
    (100012, 10010, NULL, NULL, NULL, NULL, 4, ARRAY[107, 103, 441, 92]),
    -- Koga: Crobat Lv. 44: Double Team, Quick Attack, Wing Attack, Poison Fang
    (100012, 10010, NULL, NULL, NULL, NULL, 5, ARRAY[104, 98, 17, 305]),
    -- Bruno: Hitmontop Lv. 42: Counter, Quick Attack, Dig, Triple Kick
    (100013, 10011, NULL, NULL, NULL, NULL, 1, ARRAY[68, 98, 91, 167]),
    -- Bruno: Hitmonlee Lv. 42: Swagger, Focus Energy, High Jump Kick, Blaze Kick
    (100013, 10011, NULL, NULL, NULL, NULL, 2, ARRAY[207, 116, 136, 299]),
    -- Bruno: Hitmonchan Lv. 42: Thunder Punch, Ice Punch, Fire Punch, Bullet Punch
    (100013, 10011, NULL, NULL, NULL, NULL, 3, ARRAY[9, 8, 7, 418]),
    -- Bruno: Onix Lv. 43: Dragon Breath, Earthquake, Sandstorm, Rock Slide
    (100013, 10011, NULL, NULL, NULL, NULL, 4, ARRAY[225, 89, 201, 157]),
    -- Bruno: Machamp Lv. 46: Rock Slide, Foresight, Revenge, Cross Chop
    (100013, 10011, NULL, NULL, NULL, NULL, 5, ARRAY[157, 193, 279, 238]),
    -- Karen: Umbreon Lv. 42: Double Team, Confuse Ray, Feint Attack, Payback
    (100014, 10012, NULL, NULL, NULL, NULL, 1, ARRAY[104, 109, 185, 371]),
    -- Karen: Vileplume Lv. 42: Stun Spore, Acid, Moonlight, Petal Dance
    (100014, 10012, NULL, NULL, NULL, NULL, 2, ARRAY[78, 51, 236, 80]),
    -- Karen: Gengar Lv. 45: Lick, Spite, Focus Blast, Destiny Bond
    (100014, 10012, NULL, NULL, NULL, NULL, 3, ARRAY[122, 180, 411, 194]),
    -- Karen: Murkrow Lv. 44: Pluck, Whirlwind, Sucker Punch, Feint Attack
    (100014, 10012, NULL, NULL, NULL, NULL, 4, ARRAY[365, 18, 389, 185]),
    -- Karen: Houndoom Lv. 47: Nasty Plot, Dark Pulse, Flamethrower, Crunch
    (100014, 10012, NULL, NULL, NULL, NULL, 5, ARRAY[417, 399, 53, 242]),
    -- Lance: Gyarados Lv. 46: Flail, Dragon Pulse, Waterfall, Ice Fang
    (100015, 10013, NULL, NULL, NULL, NULL, 1, ARRAY[175, 406, 127, 423]),
    -- Lance: Dragonite Lv. 49: Thunder Wave, Dragon Rush, Thunder, Hyper Beam
    (100015, 10013, NULL, NULL, NULL, NULL, 2, ARRAY[86, 407, 87, 63]),
    -- Lance: Dragonite Lv. 49: Thunder Wave, Dragon Rush, Blizzard, Hyper Beam
    (100015, 10013, NULL, NULL, NULL, NULL, 3, ARRAY[86, 407, 59, 63]),
    -- Lance: Aerodactyl Lv. 48: Aerial Ace, Crunch, Rock Slide, Thunder Fang
    (100015, 10013, NULL, NULL, NULL, NULL, 4, ARRAY[332, 242, 157, 422]),
    -- Lance: Charizard Lv. 48: Shadow Claw, Air Slash, Dragon Claw, Fire Fang
    (100015, 10013, NULL, NULL, NULL, NULL, 5, ARRAY[421, 403, 337, 424]),
    -- Lance: Dragonite Lv. 50: Fire Blast, Safeguard, Outrage, Hyper Beam
    (100015, 10013, NULL, NULL, NULL, NULL, 6, ARRAY[126, 219, 200, 63]),
    -- Brock: Graveler Lv. 51: Defense Curl, Rock Slide, Rollout, Earthquake
    (100017, 10014, NULL, NULL, NULL, NULL, 1, ARRAY[111, 157, 205, 89]),
    -- Brock: Rhyhorn Lv. 51: Sandstorm, Scary Face, Earthquake, Horn Drill
    (100017, 10014, NULL, NULL, NULL, NULL, 2, ARRAY[201, 184, 89, 32]),
    -- Brock: Omastar Lv. 53: Ancient Power, Brine, Protect, Spike Cannon
    (100017, 10014, NULL, NULL, NULL, NULL, 3, ARRAY[246, 362, 182, 131]),
    -- Brock: Onix Lv. 54: Iron Tail, Rock Slide, Screech, Sandstorm
    (100017, 10014, NULL, NULL, NULL, NULL, 4, ARRAY[231, 157, 103, 201]),
    -- Brock: Kabutops Lv. 52: Rock Slide, Aqua Jet, Endure, Giga Drain
    (100017, 10014, NULL, NULL, NULL, NULL, 5, ARRAY[157, 453, 203, 202]),
    -- Misty: Golduck Lv. 49: Water Pulse, Disable, Psych Up, Psychic
    (100018, 10015, NULL, NULL, NULL, NULL, 1, ARRAY[352, 50, 244, 94]),
    -- Misty: Quagsire Lv. 49: Water Pulse, Amnesia, Earthquake, Rain Dance
    (100018, 10015, NULL, NULL, NULL, NULL, 2, ARRAY[352, 133, 89, 240]),
    -- Misty: Lapras Lv. 52: Water Pulse, Sing, Ice Beam, Body Slam
    (100018, 10015, NULL, NULL, NULL, NULL, 3, ARRAY[352, 47, 58, 34]),
    -- Misty: Starmie Lv. 54: Water Pulse, Confuse Ray, Recover, Ice Beam
    (100018, 10015, NULL, NULL, NULL, NULL, 4, ARRAY[352, 109, 105, 58]),
    -- Lt. Surge: Raichu Lv. 51: Thunder Wave, Quick Attack, Shock Wave, Double Team
    (100019, 10016, NULL, NULL, NULL, NULL, 1, ARRAY[86, 98, 351, 104]),
    -- Lt. Surge: Electrode Lv. 47: Thunder Wave, Double Team, Shock Wave, Light Screen
    (100019, 10016, NULL, NULL, NULL, NULL, 2, ARRAY[86, 104, 351, 113]),
    -- Lt. Surge: Magneton Lv. 47: Supersonic, Double Team, Shock Wave, Mirror Shot
    (100019, 10016, NULL, NULL, NULL, NULL, 3, ARRAY[48, 104, 351, 429]),
    -- Lt. Surge: Electrode Lv. 47: Screech, Double Team, Self-Destruct, Charge Beam
    (100019, 10016, NULL, NULL, NULL, NULL, 4, ARRAY[103, 104, 120, 451]),
    -- Lt. Surge: Electabuzz Lv. 53: Quick Attack, Shock Wave, Light Screen, Low Kick
    (100019, 10016, NULL, NULL, NULL, NULL, 5, ARRAY[98, 351, 113, 67]),
    -- Erika: Jumpluff Lv. 51: U-turn, Leech Seed, Sunny Day, Giga Drain
    (100020, 10017, NULL, NULL, NULL, NULL, 1, ARRAY[369, 73, 241, 202]),
    -- Erika: Tangela Lv. 52: Ancient Power, Wring Out, Giga Drain, Sleep Powder
    (100020, 10017, NULL, NULL, NULL, NULL, 2, ARRAY[246, 378, 202, 79]),
    -- Erika: Victreebel Lv. 56: Sunny Day, Synthesis, Grass Knot, Leaf Storm
    (100020, 10017, NULL, NULL, NULL, NULL, 3, ARRAY[241, 235, 447, 437]),
    -- Erika: Bellossom Lv. 56: Sunny Day, Synthesis, Giga Drain, Solar Beam
    (100020, 10017, NULL, NULL, NULL, NULL, 4, ARRAY[241, 235, 202, 76]),
    -- Janine: Crobat Lv. 47: Screech, Supersonic, Confuse Ray, Wing Attack
    (100021, 10018, NULL, NULL, NULL, NULL, 1, ARRAY[103, 48, 109, 17]),
    -- Janine: Weezing Lv. 44: Double Hit, Sludge Bomb, Toxic, Explosion
    (100021, 10018, NULL, NULL, NULL, NULL, 2, ARRAY[458, 188, 92, 153]),
    -- Janine: Ariados Lv. 47: Scary Face, Poison Jab, Pin Missile, Psychic
    (100021, 10018, NULL, NULL, NULL, NULL, 3, ARRAY[184, 398, 42, 94]),
    -- Janine: Ariados Lv. 47: Pin Missile, Poison Jab, Swagger, Night Shade
    (100021, 10018, NULL, NULL, NULL, NULL, 4, ARRAY[42, 398, 207, 101]),
    -- Janine: Venomoth Lv. 50: Sludge Bomb, Double Team, Signal Beam, Psychic
    (100021, 10018, NULL, NULL, NULL, NULL, 5, ARRAY[188, 104, 324, 94]),
    -- Sabrina: Espeon Lv. 53: Shadow Ball, Skill Swap, Calm Mind, Psychic
    (100022, 10019, NULL, NULL, NULL, NULL, 1, ARRAY[247, 285, 347, 94]),
    -- Sabrina: Mr. Mime Lv. 53: Mimic, Light Screen, Skill Swap, Psychic
    (100022, 10019, NULL, NULL, NULL, NULL, 2, ARRAY[102, 113, 285, 94]),
    -- Sabrina: Alakazam Lv. 55: Skill Swap, Psychic, Energy Ball, Reflect
    (100022, 10019, NULL, NULL, NULL, NULL, 3, ARRAY[285, 94, 412, 115]),
    -- Blaine: Magcargo Lv. 54: Sunny Day, Smog, Overheat, Rock Slide
    (100023, 10020, NULL, NULL, NULL, NULL, 1, ARRAY[241, 123, 315, 157]),
    -- Blaine: Magmar Lv. 54: Thunder Punch, Overheat, Sunny Day, Confuse Ray
    (100023, 10020, NULL, NULL, NULL, NULL, 2, ARRAY[9, 315, 241, 109]),
    -- Blaine: Rapidash Lv. 59: Quick Attack, Flare Blitz, Bounce, Overheat
    (100023, 10020, NULL, NULL, NULL, NULL, 3, ARRAY[98, 394, 340, 315]),
    -- Blue: Exeggutor Lv. 55: Leaf Storm, Psychic, Hypnosis, Trick Room
    (100024, 10021, NULL, NULL, NULL, NULL, 1, ARRAY[437, 94, 95, 433]),
    -- Blue: Arcanine Lv. 58: Roar, Dragon Pulse, Flare Blitz, Extreme Speed
    (100024, 10021, NULL, NULL, NULL, NULL, 2, ARRAY[46, 406, 394, 245]),
    -- Blue: Rhydon Lv. 58: Megahorn, Stone Edge, Thunder Fang, Earthquake
    (100024, 10021, NULL, NULL, NULL, NULL, 3, ARRAY[224, 444, 422, 89]),
    -- Blue: Gyarados Lv. 52: Ice Fang, Waterfall, Dragon Dance, Return
    (100024, 10021, NULL, NULL, NULL, NULL, 4, ARRAY[423, 127, 349, 216]),
    -- Blue: Machamp Lv. 56: Dynamic Punch, Earthquake, Stone Edge, Thunder Punch
    (100024, 10021, NULL, NULL, NULL, NULL, 5, ARRAY[223, 89, 444, 9]),
    -- Blue: Pidgeot Lv. 60: Return, Whirlwind, Air Slash, Mirror Move
    (100024, 10021, NULL, NULL, NULL, NULL, 6, ARRAY[216, 18, 403, 119]),
    -- Red: Pikachu Lv. 88: Volt Tackle, Iron Tail, Quick Attack, Thunderbolt
    (100025, 10022, NULL, NULL, NULL, NULL, 1, ARRAY[344, 231, 98, 85]),
    -- Red: Lapras Lv. 80: Blizzard, Brine, Psychic, Body Slam
    (100025, 10022, NULL, NULL, NULL, NULL, 2, ARRAY[59, 362, 94, 34]),
    -- Red: Snorlax Lv. 82: Shadow Ball, Crunch, Blizzard, Giga Impact
    (100025, 10022, NULL, NULL, NULL, NULL, 3, ARRAY[247, 242, 59, 416]),
    -- Red: Venusaur Lv. 84: Sludge Bomb, Giga Drain, Sleep Powder, Frenzy Plant
    (100025, 10022, NULL, NULL, NULL, NULL, 4, ARRAY[188, 202, 79, 338]),
    -- Red: Charizard Lv. 84: Flare Blitz, Air Slash, Blast Burn, Dragon Pulse
    (100025, 10022, NULL, NULL, NULL, NULL, 5, ARRAY[394, 403, 307, 406]),
    -- Red: Blastoise Lv. 84: Focus Blast, Hydro Cannon, Blizzard, Flash Cannon
    (100025, 10022, NULL, NULL, NULL, NULL, 6, ARRAY[411, 308, 59, 430]),
    -- Silver: Cyndaquil Lv. 5: Tackle, Leer
    (100002, 10023, NULL, 100001, 'chikorita', NULL, 1, ARRAY[33, 43]),
    -- Silver: Totodile Lv. 5: Scratch, Leer
    (100002, 10023, NULL, 100001, 'cyndaquil', NULL, 1, ARRAY[10, 43]),
    -- Silver: Chikorita Lv. 5: Tackle, Growl
    (100002, 10023, NULL, 100001, 'totodile', NULL, 1, ARRAY[33, 45]),
    -- Silver: Gastly Lv. 14: Lick, Spite, Mean Look, Curse
    (100004, 10023, NULL, 100001, 'chikorita', NULL, 1, ARRAY[122, 180, 212, 174]),
    -- Silver: Zubat Lv. 16: Leech Life, Supersonic, Astonish, Bite
    (100004, 10023, NULL, 100001, 'chikorita', NULL, 2, ARRAY[141, 48, 310, 44]),
    -- Silver: Quilava Lv. 18: Leer, Smokescreen, Ember, Quick Attack
    (100004, 10023, NULL, 100001, 'chikorita', NULL, 3, ARRAY[43, 108, 52, 98]),
    -- Silver: Gastly Lv. 14: Lick, Spite, Mean Look, Curse
    (100004, 10023, NULL, 100001, 'cyndaquil', NULL, 1, ARRAY[122, 180, 212, 174]),
    -- Silver: Zubat Lv. 16: Leech Life, Supersonic, Astonish, Bite
    (100004, 10023, NULL, 100001, 'cyndaquil', NULL, 2, ARRAY[141, 48, 310, 44]),
    -- Silver: Croconaw Lv. 18: Water Gun, Rage, Bite, Scary Face
    (100004, 10023, NULL, 100001, 'cyndaquil', NULL, 3, ARRAY[55, 99, 44, 184]),
    -- Silver: Gastly Lv. 14: Lick, Spite, Mean Look, Curse
    (100004, 10023, NULL, 100001, 'totodile', NULL, 1, ARRAY[122, 180, 212, 174]),
    -- Silver: Zubat Lv. 16: Leech Life, Supersonic, Astonish, Bite
    (100004, 10023, NULL, 100001, 'totodile', NULL, 2, ARRAY[141, 48, 310, 44]),
    -- Silver: Bayleef Lv. 18: Razor Leaf, Poison Powder, Synthesis, Reflect
    (100004, 10023, NULL, 100001, 'totodile', NULL, 3, ARRAY[75, 77, 235, 115]),
    -- Silver: Gastly Lv. 20: Lick, Confuse Ray, Mean Look, Curse
    (100028, 10023, NULL, 100001, 'chikorita', NULL, 1, ARRAY[122, 109, 212, 174]),
    -- Silver: Magnemite Lv. 18: Thunder Wave, Thunder Shock, Supersonic, Sonic Boom
    (100028, 10023, NULL, 100001, 'chikorita', NULL, 2, ARRAY[86, 84, 48, 49]),
    -- Silver: Zubat Lv. 20: Astonish, Supersonic, Bite, Wing Attack
    (100028, 10023, NULL, 100001, 'chikorita', NULL, 3, ARRAY[310, 48, 44, 17]),
    -- Silver: Quilava Lv. 22: Flame Wheel, Smokescreen, Ember, Quick Attack
    (100028, 10023, NULL, 100001, 'chikorita', NULL, 4, ARRAY[172, 108, 52, 98]),
    -- Silver: Gastly Lv. 20: Lick, Confuse Ray, Mean Look, Curse
    (100028, 10023, NULL, 100001, 'cyndaquil', NULL, 1, ARRAY[122, 109, 212, 174]),
    -- Silver: Magnemite Lv. 18: Thunder Wave, Thunder Shock, Supersonic, Sonic Boom
    (100028, 10023, NULL, 100001, 'cyndaquil', NULL, 2, ARRAY[86, 84, 48, 49]),
    -- Silver: Zubat Lv. 20: Astonish, Supersonic, Bite, Wing Attack
    (100028, 10023, NULL, 100001, 'cyndaquil', NULL, 3, ARRAY[310, 48, 44, 17]),
    -- Silver: Croconaw Lv. 22: Scary Face, Ice Fang, Water Gun, Bite
    (100028, 10023, NULL, 100001, 'cyndaquil', NULL, 4, ARRAY[184, 423, 55, 44]),
    -- Silver: Gastly Lv. 20: Lick, Confuse Ray, Mean Look, Curse
    (100028, 10023, NULL, 100001, 'totodile', NULL, 1, ARRAY[122, 109, 212, 174]),
    -- Silver: Magnemite Lv. 18: Thunder Wave, Thunder Shock, Supersonic, Sonic Boom
    (100028, 10023, NULL, 100001, 'totodile', NULL, 2, ARRAY[86, 84, 48, 49]),
    -- Silver: Zubat Lv. 20: Astonish, Supersonic, Bite, Wing Attack
    (100028, 10023, NULL, 100001, 'totodile', NULL, 3, ARRAY[310, 48, 44, 17]),
    -- Silver: Bayleef Lv. 22: Synthesis, Reflect, Magical Leaf, Poison Powder
    (100028, 10023, NULL, 100001, 'totodile', NULL, 4, ARRAY[235, 115, 345, 77]),
    -- Silver: Golbat Lv. 32: Astonish, Bite, Confuse Ray, Air Cutter
    (100029, 10023, NULL, 100001, 'chikorita', NULL, 1, ARRAY[310, 44, 109, 314]),
    -- Silver: Magnemite Lv. 30: Supersonic, Spark, Sonic Boom, Thunder Wave
    (100029, 10023, NULL, 100001, 'chikorita', NULL, 2, ARRAY[48, 209, 49, 86]),
    -- Silver: Haunter Lv. 32: Confuse Ray, Mean Look, Curse, Shadow Ball
    (100029, 10023, NULL, 100001, 'chikorita', NULL, 3, ARRAY[109, 212, 174, 247]),
    -- Silver: Sneasel Lv. 34: Icy Wind, Quick Attack, Fury Swipes, Feint Attack
    (100029, 10023, NULL, 100001, 'chikorita', NULL, 4, ARRAY[196, 98, 154, 185]),
    -- Silver: Quilava Lv. 34: Smokescreen, Swift, Quick Attack, Flame Wheel
    (100029, 10023, NULL, 100001, 'chikorita', NULL, 5, ARRAY[108, 129, 98, 172]),
    -- Silver: Golbat Lv. 30: Astonish, Bite, Confuse Ray, Air Cutter
    (100029, 10023, NULL, 100001, 'cyndaquil', NULL, 1, ARRAY[310, 44, 109, 314]),
    -- Silver: Magnemite Lv. 28: Supersonic, Spark, Sonic Boom, Thunder Wave
    (100029, 10023, NULL, 100001, 'cyndaquil', NULL, 2, ARRAY[48, 209, 49, 86]),
    -- Silver: Haunter Lv. 30: Confuse Ray, Mean Look, Curse, Shadow Ball
    (100029, 10023, NULL, 100001, 'cyndaquil', NULL, 3, ARRAY[109, 212, 174, 247]),
    -- Silver: Sneasel Lv. 32: Icy Wind, Quick Attack, Fury Swipes, Feint Attack
    (100029, 10023, NULL, 100001, 'cyndaquil', NULL, 4, ARRAY[196, 98, 154, 185]),
    -- Silver: Feraligatr Lv. 32: Ice Fang, Water Gun, Crunch, Thrash
    (100029, 10023, NULL, 100001, 'cyndaquil', NULL, 5, ARRAY[423, 55, 242, 37]),
    -- Silver: Golbat Lv. 32: Astonish, Bite, Confuse Ray, Air Cutter
    (100029, 10023, NULL, 100001, 'totodile', NULL, 1, ARRAY[310, 44, 109, 314]),
    -- Silver: Magnemite Lv. 30: Supersonic, Spark, Sonic Boom, Thunder Wave
    (100029, 10023, NULL, 100001, 'totodile', NULL, 2, ARRAY[48, 209, 49, 86]),
    -- Silver: Haunter Lv. 32: Confuse Ray, Mean Look, Curse, Shadow Ball
    (100029, 10023, NULL, 100001, 'totodile', NULL, 3, ARRAY[109, 212, 174, 247]),
    -- Silver: Sneasel Lv. 34: Icy Wind, Quick Attack, Fury Swipes, Feint Attack
    (100029, 10023, NULL, 100001, 'totodile', NULL, 4, ARRAY[196, 98, 154, 185]),
    -- Silver: Meganium Lv. 34: Reflect, Synthesis, Poison Powder, Petal Dance
    (100029, 10023, NULL, 100001, 'totodile', NULL, 5, ARRAY[115, 235, 77, 80]),
    -- Silver: Sneasel Lv. 36: Quick Attack, Icy Wind, Feint Attack, Fury Swipes
    (100011, 10023, NULL, 100001, 'chikorita', NULL, 1, ARRAY[98, 196, 185, 154]),
    -- Silver: Golbat Lv. 38: Astonish, Bite, Confuse Ray, Air Cutter
    (100011, 10023, NULL, 100001, 'chikorita', NULL, 2, ARRAY[310, 44, 109, 314]),
    -- Silver: Magneton Lv. 37: Spark, Supersonic, Thunder Wave, Magnet Bomb
    (100011, 10023, NULL, 100001, 'chikorita', NULL, 3, ARRAY[209, 48, 86, 443]),
    -- Silver: Haunter Lv. 37: Mean Look, Curse, Shadow Ball, Confuse Ray
    (100011, 10023, NULL, 100001, 'chikorita', NULL, 4, ARRAY[212, 174, 247, 109]),
    -- Silver: Kadabra Lv. 37: Disable, Psybeam, Recover, Reflect
    (100011, 10023, NULL, 100001, 'chikorita', NULL, 5, ARRAY[50, 60, 105, 115]),
    -- Silver: Typhlosion Lv. 40: Lava Plume, Swift, Quick Attack, Flame Wheel
    (100011, 10023, NULL, 100001, 'chikorita', NULL, 6, ARRAY[436, 129, 98, 172]),
    -- Silver: Sneasel Lv. 36: Quick Attack, Icy Wind, Feint Attack, Fury Swipes
    (100011, 10023, NULL, 100001, 'cyndaquil', NULL, 1, ARRAY[98, 196, 185, 154]),
    -- Silver: Golbat Lv. 38: Astonish, Bite, Confuse Ray, Air Cutter
    (100011, 10023, NULL, 100001, 'cyndaquil', NULL, 2, ARRAY[310, 44, 109, 314]),
    -- Silver: Magneton Lv. 37: Spark, Supersonic, Thunder Wave, Magnet Bomb
    (100011, 10023, NULL, 100001, 'cyndaquil', NULL, 3, ARRAY[209, 48, 86, 443]),
    -- Silver: Haunter Lv. 37: Mean Look, Curse, Shadow Ball, Confuse Ray
    (100011, 10023, NULL, 100001, 'cyndaquil', NULL, 4, ARRAY[212, 174, 247, 109]),
    -- Silver: Kadabra Lv. 37: Disable, Psybeam, Recover, Reflect
    (100011, 10023, NULL, 100001, 'cyndaquil', NULL, 5, ARRAY[50, 60, 105, 115]),
    -- Silver: Feraligatr Lv. 40: Waterfall, Ice Fang, Crunch, Slash
    (100011, 10023, NULL, 100001, 'cyndaquil', NULL, 6, ARRAY[127, 423, 242, 163]),
    -- Silver: Sneasel Lv. 36: Quick Attack, Icy Wind, Feint Attack, Fury Swipes
    (100011, 10023, NULL, 100001, 'totodile', NULL, 1, ARRAY[98, 196, 185, 154]),
    -- Silver: Golbat Lv. 38: Astonish, Bite, Confuse Ray, Air Cutter
    (100011, 10023, NULL, 100001, 'totodile', NULL, 2, ARRAY[310, 44, 109, 314]),
    -- Silver: Magneton Lv. 37: Spark, Supersonic, Thunder Wave, Magnet Bomb
    (100011, 10023, NULL, 100001, 'totodile', NULL, 3, ARRAY[209, 48, 86, 443]),
    -- Silver: Haunter Lv. 37: Mean Look, Curse, Shadow Ball, Confuse Ray
    (100011, 10023, NULL, 100001, 'totodile', NULL, 4, ARRAY[212, 174, 247, 109]),
    -- Silver: Kadabra Lv. 37: Disable, Psybeam, Recover, Reflect
    (100011, 10023, NULL, 100001, 'totodile', NULL, 5, ARRAY[50, 60, 105, 115]),
    -- Silver: Meganium Lv. 40: Reflect, Petal Dance, Poison Powder, Synthesis
    (100011, 10023, NULL, 100001, 'totodile', NULL, 6, ARRAY[115, 80, 77, 235]),
    -- Silver: Sneasel Lv. 46: Quick Attack, Icy Wind, Feint Attack, Shadow Claw
    (100017, 10023, NULL, 100001, 'chikorita', NULL, 1, ARRAY[98, 196, 185, 421]),
    -- Silver: Golbat Lv. 47: Poison Fang, Bite, Confuse Ray, Air Cutter
    (100017, 10023, NULL, 100001, 'chikorita', NULL, 2, ARRAY[305, 44, 109, 314]),
    -- Silver: Magneton Lv. 46: Discharge, Supersonic, Thunder Wave, Magnet Bomb
    (100017, 10023, NULL, 100001, 'chikorita', NULL, 3, ARRAY[435, 48, 86, 443]),
    -- Silver: Gengar Lv. 48: Mean Look, Curse, Shadow Ball, Confuse Ray
    (100017, 10023, NULL, 100001, 'chikorita', NULL, 4, ARRAY[212, 174, 247, 109]),
    -- Silver: Alakazam Lv. 48: Disable, Recover, Reflect, Psychic
    (100017, 10023, NULL, 100001, 'chikorita', NULL, 5, ARRAY[50, 105, 115, 94]),
    -- Silver: Typhlosion Lv. 50: Flamethrower, Quick Attack, Flame Wheel, Swift
    (100017, 10023, NULL, 100001, 'chikorita', NULL, 6, ARRAY[53, 98, 172, 129]),
    -- Silver: Sneasel Lv. 46: Quick Attack, Icy Wind, Feint Attack, Shadow Claw
    (100017, 10023, NULL, 100001, 'cyndaquil', NULL, 1, ARRAY[98, 196, 185, 421]),
    -- Silver: Golbat Lv. 47: Poison Fang, Bite, Confuse Ray, Air Cutter
    (100017, 10023, NULL, 100001, 'cyndaquil', NULL, 2, ARRAY[305, 44, 109, 314]),
    -- Silver: Magneton Lv. 46: Discharge, Supersonic, Thunder Wave, Magnet Bomb
    (100017, 10023, NULL, 100001, 'cyndaquil', NULL, 3, ARRAY[435, 48, 86, 443]),
    -- Silver: Gengar Lv. 48: Mean Look, Curse, Shadow Ball, Confuse Ray
    (100017, 10023, NULL, 100001, 'cyndaquil', NULL, 4, ARRAY[212, 174, 247, 109]),
    -- Silver: Alakazam Lv. 48: Disable, Recover, Reflect, Psychic
    (100017, 10023, NULL, 100001, 'cyndaquil', NULL, 5, ARRAY[50, 105, 115, 94]),
    -- Silver: Feraligatr Lv. 50: Waterfall, Ice Fang, Crunch, Slash
    (100017, 10023, NULL, 100001, 'cyndaquil', NULL, 6, ARRAY[127, 423, 242, 163]),
    -- Silver: Sneasel Lv. 46: Quick Attack, Icy Wind, Feint Attack, Shadow Claw
    (100017, 10023, NULL, 100001, 'totodile', NULL, 1, ARRAY[98, 196, 185, 421]),
    -- Silver: Golbat Lv. 47: Poison Fang, Bite, Confuse Ray, Air Cutter
    (100017, 10023, NULL, 100001, 'totodile', NULL, 2, ARRAY[305, 44, 109, 314]),
    -- Silver: Magneton Lv. 46: Discharge, Supersonic, Thunder Wave, Magnet Bomb
    (100017, 10023, NULL, 100001, 'totodile', NULL, 3, ARRAY[435, 48, 86, 443]),
    -- Silver: Gengar Lv. 48: Mean Look, Curse, Shadow Ball, Confuse Ray
    (100017, 10023, NULL, 100001, 'totodile', NULL, 4, ARRAY[212, 174, 247, 109]),
    -- Silver: Alakazam Lv. 48: Disable, Recover, Reflect, Psychic
    (100017, 10023, NULL, 100001, 'totodile', NULL, 5, ARRAY[50, 105, 115, 94]),
    -- Silver: Meganium Lv. 50: Petal Dance, Poison Powder, Synthesis, Light Screen
    (100017, 10023, NULL, 100001, 'totodile', NULL, 6, ARRAY[80, 77, 235, 113]),
    -- Ho-Oh: Ho-Oh Lv. 45: Extrasensory, Sunny Day, Fire Blast, Sacred Fire
    (100030, 10024, NULL, NULL, NULL, NULL, 1, ARRAY[326, 241, 126, 221]),
    -- Lugia: Lugia Lv. 45: Extrasensory, Rain Dance, Hydro Pump, Aeroblast
    (100030, 10025, NULL, NULL, NULL, NULL, 1, ARRAY[326, 240, 56, 177]),
    -- Raikou: Raikou Lv. 40: Roar, Quick Attack, Spark, Reflect
    (100031, 10026, NULL, NULL, NULL, NULL, 1, ARRAY[46, 98, 209, 115]),
    -- Entei: Entei Lv. 40: Roar, Fire Spin, Stomp, Flamethrower
    (100032, 10027, NULL, NULL, NULL, NULL, 1, ARRAY[46, 83, 23, 53]),
    -- Latias: Latias Lv. 35: Dragon Breath, Water Sport, Refresh, Mist Ball
    (100033, 10028, NULL, NULL, NULL, NULL, 1, ARRAY[225, 346, 287, 296]),
    -- Latios: Latios Lv. 35: Dragon Breath, Protect, Refresh, Luster Purge
    (100033, 10029, NULL, NULL, NULL, NULL, 1, ARRAY[225, 182, 287, 295]),
    -- Suicune: Suicune Lv. 40: Rain Dance, Gust, Aurora Beam, Mist
    (100034, 10030, NULL, NULL, NULL, NULL, 1, ARRAY[240, 16, 62, 54]),
    -- Zapdos: Zapdos Lv. 50: Ancient Power, Charge, Agility, Discharge
    (100035, 10031, NULL, NULL, NULL, NULL, 1, ARRAY[246, 268, 97, 435]),
    -- Articuno: Articuno Lv. 50: Ancient Power, Agility, Ice Beam, Reflect
    (100036, 10032, NULL, NULL, NULL, NULL, 1, ARRAY[246, 97, 58, 115]),
    -- Moltres: Moltres Lv. 50: Ancient Power, Flamethrower, Safeguard, Air Slash
    (100037, 10033, NULL, NULL, NULL, NULL, 1, ARRAY[246, 53, 219, 403]),
    -- Mewtwo: Mewtwo Lv. 70: Psycho Cut, Amnesia, Power Swap, Guard Swap
    (100038, 10034, NULL, NULL, NULL, NULL, 1, ARRAY[427, 133, 384, 385]),
    -- Lugia: Lugia Lv. 70: Aeroblast, Punishment, Ancient Power, Safeguard
    (100039, 10035, NULL, NULL, NULL, NULL, 1, ARRAY[177, 386, 246, 219]),
    -- Ho-Oh: Ho-Oh Lv. 70: Sacred Fire, Punishment, Ancient Power, Safeguard
    (100039, 10036, NULL, NULL, NULL, NULL, 1, ARRAY[221, 386, 246, 219]),
    -- Kyogre: Kyogre Lv. 50: Aqua Ring, Ice Beam, Ancient Power, Water Spout
    (100040, 10037, NULL, NULL, NULL, NULL, 1, ARRAY[392, 58, 246, 323]),
    -- Groudon: Groudon Lv. 50: Rest, Earthquake, Ancient Power, Eruption
    (100040, 10038, NULL, NULL, NULL, NULL, 1, ARRAY[156, 89, 246, 284]),
    -- Rayquaza: Rayquaza Lv. 50: Rest, Air Slash, Ancient Power, Outrage
    (100040, 10039, NULL, NULL, NULL, NULL, 1, ARRAY[156, 403, 246, 200]),
    -- Proton: Zubat Lv. 8: Leech Life, Supersonic
    (100004, 10040, NULL, NULL, NULL, NULL, 1, ARRAY[141, 48]),
    -- Proton: Koffing Lv. 12: Tackle, Poison Gas, Smog, Smokescreen
    (100004, 10040, NULL, NULL, NULL, NULL, 2, ARRAY[33, 139, 123, 108]),
    -- Petrel: Zubat Lv. 22: Astonish, Bite, Wing Attack, Confuse Ray
    (100009, 10041, NULL, NULL, NULL, NULL, 1, ARRAY[310, 44, 17, 109]),
    -- Petrel: Raticate Lv. 24: Hyper Fang, Sucker Punch, Scary Face, Crunch
    (100009, 10041, NULL, NULL, NULL, NULL, 2, ARRAY[158, 389, 184, 242]),
    -- Petrel: Koffing Lv. 22: Smog, Smokescreen, Assurance, Self-Destruct
    (100009, 10041, NULL, NULL, NULL, NULL, 3, ARRAY[123, 108, 372, 120]),
    -- Ariana & Grunt: Arbok Lv. 25: Wrap, Poison Sting, Crunch, Glare
    (100009, 10043, NULL, NULL, NULL, NULL, 1, ARRAY[35, 40, 242, 137]),
    -- Ariana & Grunt: Gloom Lv. 25: Mega Drain, Sweet Scent, Sleep Powder, Acid
    (100009, 10043, NULL, NULL, NULL, NULL, 2, ARRAY[72, 230, 79, 51]),
    -- Ariana & Grunt: Murkrow Lv. 27: Wing Attack, Pursuit, Astonish, Night Shade
    (100009, 10043, NULL, NULL, NULL, NULL, 3, ARRAY[17, 228, 310, 101]),
    -- Ariana & Grunt: Drowzee Lv. 18: Hypnosis, Disable, Confusion, Headbutt
    (100009, 10043, NULL, NULL, NULL, NULL, 4, ARRAY[95, 50, 93, 29]),
    -- Ariana & Grunt: Grimer Lv. 20: Sludge, Disable, Mud-Slap, Minimize
    (100009, 10043, NULL, NULL, NULL, NULL, 5, ARRAY[124, 50, 189, 107]),
    -- Petrel: Koffing Lv. 30: Tackle, Self-Destruct, Sludge, Smokescreen
    (100029, 10041, NULL, NULL, NULL, NULL, 1, ARRAY[33, 120, 124, 108]),
    -- Petrel: Koffing Lv. 30: Tackle, Self-Destruct, Sludge, Smokescreen
    (100029, 10041, NULL, NULL, NULL, NULL, 2, ARRAY[33, 120, 124, 108]),
    -- Petrel: Koffing Lv. 30: Tackle, Self-Destruct, Sludge, Smokescreen
    (100029, 10041, NULL, NULL, NULL, NULL, 3, ARRAY[33, 120, 124, 108]),
    -- Petrel: Weezing Lv. 32: Tackle, Explosion, Sludge, Smokescreen
    (100029, 10041, NULL, NULL, NULL, NULL, 4, ARRAY[33, 153, 124, 108]),
    -- Petrel: Koffing Lv. 30: Tackle, Self-Destruct, Sludge, Smokescreen
    (100029, 10041, NULL, NULL, NULL, NULL, 5, ARRAY[33, 120, 124, 108]),
    -- Petrel: Koffing Lv. 30: Tackle, Smog, Sludge, Smokescreen
    (100029, 10041, NULL, NULL, NULL, NULL, 6, ARRAY[33, 123, 124, 108]),
    -- Proton: Golbat Lv. 28: Leech Life, Bite, Confuse Ray, Wing Attack
    (100029, 10040, NULL, NULL, NULL, NULL, 1, ARRAY[141, 44, 109, 17]),
    -- Proton: Weezing Lv. 33: Double Hit, Sludge, Smokescreen, Smog
    (100029, 10040, NULL, NULL, NULL, NULL, 2, ARRAY[458, 124, 108, 123]),
    -- Ariana: Arbok Lv. 32: Wrap, Poison Sting, Crunch, Glare
    (100029, 10042, NULL, NULL, NULL, NULL, 1, ARRAY[35, 40, 242, 137]),
    -- Ariana: Vileplume Lv. 32: Mega Drain, Sweet Scent, Sleep Powder, Acid
    (100029, 10042, NULL, NULL, NULL, NULL, 2, ARRAY[72, 230, 79, 51]),
    -- Ariana: Murkrow Lv. 32: Wing Attack, Pursuit, Astonish, Night Shade
    (100029, 10042, NULL, NULL, NULL, NULL, 3, ARRAY[17, 228, 310, 101]),
    -- Archer: Houndour Lv. 35: Fire Fang, Roar, Bite, Feint Attack
    (100029, 10044, NULL, NULL, NULL, NULL, 1, ARRAY[424, 46, 44, 185]),
    -- Archer: Koffing Lv. 35: Tackle, Sludge, Smokescreen, Haze
    (100029, 10044, NULL, NULL, NULL, NULL, 2, ARRAY[33, 124, 108, 114]),
    -- Archer: Houndoom Lv. 38: Fire Fang, Smog, Bite, Feint Attack
    (100029, 10044, NULL, NULL, NULL, NULL, 3, ARRAY[424, 123, 44, 185])
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
