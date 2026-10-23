-- ============================================================================
-- Source
-- ============================================================================
-- Primary: the pret pokegold disassembly of the game: its trainer parties,
-- set moves and level-up learnsets.
-- A Pokémon the game gives no set moves, and every legendary encounter, gets
-- the game's own default: the last four moves it learns by level up to its
-- level, worked out from the same learnsets as the game does.
-- Scope: Gold / Silver Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Gold / Silver opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Falkner: Pidgey Lv. 7: Tackle, Mud-Slap
    (30003, 3001, NULL, NULL, NULL, NULL, 1, ARRAY[33, 189]),
    -- Falkner: Pidgeotto Lv. 9: Tackle, Mud-Slap, Gust
    (30003, 3001, NULL, NULL, NULL, NULL, 2, ARRAY[33, 189, 16]),
    -- Bugsy: Metapod Lv. 14: Tackle, String Shot, Harden
    (30004, 3002, NULL, NULL, NULL, NULL, 1, ARRAY[33, 81, 106]),
    -- Bugsy: Kakuna Lv. 14: Poison Sting, String Shot, Harden
    (30004, 3002, NULL, NULL, NULL, NULL, 2, ARRAY[40, 81, 106]),
    -- Bugsy: Scyther Lv. 16: Quick Attack, Leer, Fury Cutter
    (30004, 3002, NULL, NULL, NULL, NULL, 3, ARRAY[98, 43, 210]),
    -- Whitney: Clefairy Lv. 18: Double Slap, Mimic, Encore, Metronome
    (30005, 3003, NULL, NULL, NULL, NULL, 1, ARRAY[3, 102, 227, 118]),
    -- Whitney: Miltank Lv. 20: Rollout, Attract, Stomp, Milk Drink
    (30005, 3003, NULL, NULL, NULL, NULL, 2, ARRAY[205, 213, 23, 208]),
    -- Morty: Gastly Lv. 21: Lick, Spite, Mean Look, Curse
    (30006, 3004, NULL, NULL, NULL, NULL, 1, ARRAY[122, 180, 212, 174]),
    -- Morty: Haunter Lv. 21: Hypnosis, Mimic, Curse, Night Shade
    (30006, 3004, NULL, NULL, NULL, NULL, 2, ARRAY[95, 102, 174, 101]),
    -- Morty: Gengar Lv. 25: Hypnosis, Shadow Ball, Mean Look, Dream Eater
    (30006, 3004, NULL, NULL, NULL, NULL, 3, ARRAY[95, 247, 212, 138]),
    -- Morty: Haunter Lv. 23: Spite, Mean Look, Mimic, Night Shade
    (30006, 3004, NULL, NULL, NULL, NULL, 4, ARRAY[180, 212, 102, 101]),
    -- Chuck: Primeape Lv. 27: Leer, Rage, Karate Chop, Fury Swipes
    (30007, 3005, NULL, NULL, NULL, NULL, 1, ARRAY[43, 99, 2, 154]),
    -- Chuck: Poliwrath Lv. 30: Hypnosis, Mind Reader, Surf, Dynamic Punch
    (30007, 3005, NULL, NULL, NULL, NULL, 2, ARRAY[95, 170, 57, 223]),
    -- Jasmine: Magnemite Lv. 30: Thunderbolt, Supersonic, Sonic Boom, Thunder Wave
    (30008, 3006, NULL, NULL, NULL, NULL, 1, ARRAY[85, 48, 49, 86]),
    -- Jasmine: Magnemite Lv. 30: Thunderbolt, Supersonic, Sonic Boom, Thunder Wave
    (30008, 3006, NULL, NULL, NULL, NULL, 2, ARRAY[85, 48, 49, 86]),
    -- Jasmine: Steelix Lv. 35: Screech, Sunny Day, Rock Throw, Iron Tail
    (30008, 3006, NULL, NULL, NULL, NULL, 3, ARRAY[103, 241, 88, 231]),
    -- Pryce: Seel Lv. 27: Headbutt, Icy Wind, Aurora Beam, Rest
    (30009, 3007, NULL, NULL, NULL, NULL, 1, ARRAY[29, 196, 62, 156]),
    -- Pryce: Dewgong Lv. 29: Headbutt, Icy Wind, Aurora Beam, Rest
    (30009, 3007, NULL, NULL, NULL, NULL, 2, ARRAY[29, 196, 62, 156]),
    -- Pryce: Piloswine Lv. 31: Icy Wind, Fury Attack, Mist, Blizzard
    (30009, 3007, NULL, NULL, NULL, NULL, 3, ARRAY[196, 31, 54, 59]),
    -- Clair: Dragonair Lv. 37: Thunder Wave, Surf, Slam, Dragon Breath
    (30010, 3008, NULL, NULL, NULL, NULL, 1, ARRAY[86, 57, 21, 225]),
    -- Clair: Dragonair Lv. 37: Thunder Wave, Thunderbolt, Slam, Dragon Breath
    (30010, 3008, NULL, NULL, NULL, NULL, 2, ARRAY[86, 85, 21, 225]),
    -- Clair: Dragonair Lv. 37: Thunder Wave, Ice Beam, Slam, Dragon Breath
    (30010, 3008, NULL, NULL, NULL, NULL, 3, ARRAY[86, 58, 21, 225]),
    -- Clair: Kingdra Lv. 40: Smokescreen, Surf, Hyper Beam, Dragon Breath
    (30010, 3008, NULL, NULL, NULL, NULL, 4, ARRAY[108, 57, 63, 225]),
    -- Will: Xatu Lv. 40: Quick Attack, Future Sight, Confuse Ray, Psychic
    (30011, 3009, NULL, NULL, NULL, NULL, 1, ARRAY[98, 248, 109, 94]),
    -- Will: Jynx Lv. 41: Double Slap, Lovely Kiss, Ice Punch, Psychic
    (30011, 3009, NULL, NULL, NULL, NULL, 2, ARRAY[3, 142, 8, 94]),
    -- Will: Exeggutor Lv. 41: Reflect, Leech Seed, Egg Bomb, Psychic
    (30011, 3009, NULL, NULL, NULL, NULL, 3, ARRAY[115, 73, 121, 94]),
    -- Will: Slowbro Lv. 41: Curse, Amnesia, Body Slam, Psychic
    (30011, 3009, NULL, NULL, NULL, NULL, 4, ARRAY[174, 133, 34, 94]),
    -- Will: Xatu Lv. 42: Quick Attack, Future Sight, Confuse Ray, Psychic
    (30011, 3009, NULL, NULL, NULL, NULL, 5, ARRAY[98, 248, 109, 94]),
    -- Koga: Ariados Lv. 40: Double Team, Spider Web, Baton Pass, Giga Drain
    (30012, 3010, NULL, NULL, NULL, NULL, 1, ARRAY[104, 169, 226, 202]),
    -- Koga: Venomoth Lv. 41: Supersonic, Gust, Psychic, Toxic
    (30012, 3010, NULL, NULL, NULL, NULL, 2, ARRAY[48, 16, 94, 92]),
    -- Koga: Forretress Lv. 43: Protect, Swift, Explosion, Spikes
    (30012, 3010, NULL, NULL, NULL, NULL, 3, ARRAY[182, 129, 153, 191]),
    -- Koga: Muk Lv. 42: Minimize, Acid Armor, Sludge Bomb, Toxic
    (30012, 3010, NULL, NULL, NULL, NULL, 4, ARRAY[107, 151, 188, 92]),
    -- Koga: Crobat Lv. 44: Double Team, Quick Attack, Wing Attack, Toxic
    (30012, 3010, NULL, NULL, NULL, NULL, 5, ARRAY[104, 98, 17, 92]),
    -- Bruno: Hitmontop Lv. 42: Pursuit, Quick Attack, Dig, Detect
    (30013, 3011, NULL, NULL, NULL, NULL, 1, ARRAY[228, 98, 91, 197]),
    -- Bruno: Hitmonlee Lv. 42: Swagger, Double Kick, High Jump Kick, Foresight
    (30013, 3011, NULL, NULL, NULL, NULL, 2, ARRAY[207, 24, 136, 193]),
    -- Bruno: Hitmonchan Lv. 42: Thunder Punch, Ice Punch, Fire Punch, Mach Punch
    (30013, 3011, NULL, NULL, NULL, NULL, 3, ARRAY[9, 8, 7, 183]),
    -- Bruno: Onix Lv. 43: Bind, Earthquake, Sandstorm, Rock Slide
    (30013, 3011, NULL, NULL, NULL, NULL, 4, ARRAY[20, 89, 201, 157]),
    -- Bruno: Machamp Lv. 46: Rock Slide, Foresight, Vital Throw, Cross Chop
    (30013, 3011, NULL, NULL, NULL, NULL, 5, ARRAY[157, 193, 233, 238]),
    -- Karen: Umbreon Lv. 42: Sand Attack, Confuse Ray, Feint Attack, Mean Look
    (30014, 3012, NULL, NULL, NULL, NULL, 1, ARRAY[28, 109, 185, 212]),
    -- Karen: Vileplume Lv. 42: Stun Spore, Acid, Moonlight, Petal Dance
    (30014, 3012, NULL, NULL, NULL, NULL, 2, ARRAY[78, 51, 236, 80]),
    -- Karen: Gengar Lv. 45: Lick, Spite, Curse, Destiny Bond
    (30014, 3012, NULL, NULL, NULL, NULL, 3, ARRAY[122, 180, 174, 194]),
    -- Karen: Murkrow Lv. 44: Quick Attack, Whirlwind, Pursuit, Feint Attack
    (30014, 3012, NULL, NULL, NULL, NULL, 4, ARRAY[98, 18, 228, 185]),
    -- Karen: Houndoom Lv. 47: Roar, Pursuit, Flamethrower, Crunch
    (30014, 3012, NULL, NULL, NULL, NULL, 5, ARRAY[46, 228, 53, 242]),
    -- Lance: Gyarados Lv. 44: Flail, Rain Dance, Surf, Hyper Beam
    (30015, 3013, NULL, NULL, NULL, NULL, 1, ARRAY[175, 240, 57, 63]),
    -- Lance: Dragonite Lv. 47: Thunder Wave, Twister, Thunder, Hyper Beam
    (30015, 3013, NULL, NULL, NULL, NULL, 2, ARRAY[86, 239, 87, 63]),
    -- Lance: Dragonite Lv. 47: Thunder Wave, Twister, Blizzard, Hyper Beam
    (30015, 3013, NULL, NULL, NULL, NULL, 3, ARRAY[86, 239, 59, 63]),
    -- Lance: Aerodactyl Lv. 46: Wing Attack, Ancient Power, Rock Slide, Hyper Beam
    (30015, 3013, NULL, NULL, NULL, NULL, 4, ARRAY[17, 246, 157, 63]),
    -- Lance: Charizard Lv. 46: Flamethrower, Wing Attack, Slash, Hyper Beam
    (30015, 3013, NULL, NULL, NULL, NULL, 5, ARRAY[53, 17, 163, 63]),
    -- Lance: Dragonite Lv. 50: Fire Blast, Safeguard, Outrage, Hyper Beam
    (30015, 3013, NULL, NULL, NULL, NULL, 6, ARRAY[126, 219, 200, 63]),
    -- Brock: Graveler Lv. 41: Defense Curl, Rock Slide, Rollout, Earthquake
    (30017, 3014, NULL, NULL, NULL, NULL, 1, ARRAY[111, 157, 205, 89]),
    -- Brock: Rhyhorn Lv. 41: Fury Attack, Scary Face, Earthquake, Horn Drill
    (30017, 3014, NULL, NULL, NULL, NULL, 2, ARRAY[31, 184, 89, 32]),
    -- Brock: Omastar Lv. 42: Bite, Surf, Protect, Spike Cannon
    (30017, 3014, NULL, NULL, NULL, NULL, 3, ARRAY[44, 57, 182, 131]),
    -- Brock: Onix Lv. 44: Bind, Rock Slide, Bide, Sandstorm
    (30017, 3014, NULL, NULL, NULL, NULL, 4, ARRAY[20, 157, 117, 201]),
    -- Brock: Kabutops Lv. 42: Slash, Surf, Endure, Giga Drain
    (30017, 3014, NULL, NULL, NULL, NULL, 5, ARRAY[163, 57, 203, 202]),
    -- Misty: Golduck Lv. 42: Surf, Disable, Psych Up, Psychic
    (30018, 3015, NULL, NULL, NULL, NULL, 1, ARRAY[57, 50, 244, 94]),
    -- Misty: Quagsire Lv. 42: Surf, Amnesia, Earthquake, Rain Dance
    (30018, 3015, NULL, NULL, NULL, NULL, 2, ARRAY[57, 133, 89, 240]),
    -- Misty: Lapras Lv. 44: Surf, Perish Song, Blizzard, Rain Dance
    (30018, 3015, NULL, NULL, NULL, NULL, 3, ARRAY[57, 195, 59, 240]),
    -- Misty: Starmie Lv. 47: Surf, Confuse Ray, Recover, Ice Beam
    (30018, 3015, NULL, NULL, NULL, NULL, 4, ARRAY[57, 109, 105, 58]),
    -- Lt. Surge: Raichu Lv. 44: Thunder Wave, Quick Attack, Thunderbolt, Thunder
    (30019, 3016, NULL, NULL, NULL, NULL, 1, ARRAY[86, 98, 85, 87]),
    -- Lt. Surge: Electrode Lv. 40: Screech, Double Team, Swift, Explosion
    (30019, 3016, NULL, NULL, NULL, NULL, 2, ARRAY[103, 104, 129, 153]),
    -- Lt. Surge: Magneton Lv. 40: Lock-On, Double Team, Swift, Zap Cannon
    (30019, 3016, NULL, NULL, NULL, NULL, 3, ARRAY[199, 104, 129, 192]),
    -- Lt. Surge: Electrode Lv. 40: Screech, Double Team, Swift, Explosion
    (30019, 3016, NULL, NULL, NULL, NULL, 4, ARRAY[103, 104, 129, 153]),
    -- Lt. Surge: Electabuzz Lv. 46: Quick Attack, Thunder Punch, Light Screen, Thunder
    (30019, 3016, NULL, NULL, NULL, NULL, 5, ARRAY[98, 9, 113, 87]),
    -- Erika: Tangela Lv. 42: Vine Whip, Bind, Giga Drain, Sleep Powder
    (30020, 3017, NULL, NULL, NULL, NULL, 1, ARRAY[22, 20, 202, 79]),
    -- Erika: Jumpluff Lv. 41: Mega Drain, Leech Seed, Cotton Spore, Giga Drain
    (30020, 3017, NULL, NULL, NULL, NULL, 2, ARRAY[72, 73, 178, 202]),
    -- Erika: Victreebel Lv. 46: Sunny Day, Synthesis, Acid, Razor Leaf
    (30020, 3017, NULL, NULL, NULL, NULL, 3, ARRAY[241, 235, 51, 75]),
    -- Erika: Bellossom Lv. 46: Sunny Day, Synthesis, Petal Dance, Solar Beam
    (30020, 3017, NULL, NULL, NULL, NULL, 4, ARRAY[241, 235, 80, 76]),
    -- Janine: Crobat Lv. 36: Screech, Supersonic, Confuse Ray, Wing Attack
    (30021, 3018, NULL, NULL, NULL, NULL, 1, ARRAY[103, 48, 109, 17]),
    -- Janine: Weezing Lv. 36: Smog, Sludge Bomb, Toxic, Explosion
    (30021, 3018, NULL, NULL, NULL, NULL, 2, ARRAY[123, 188, 92, 153]),
    -- Janine: Weezing Lv. 36: Smog, Sludge Bomb, Toxic, Explosion
    (30021, 3018, NULL, NULL, NULL, NULL, 3, ARRAY[123, 188, 92, 153]),
    -- Janine: Ariados Lv. 33: Scary Face, Giga Drain, String Shot, Night Shade
    (30021, 3018, NULL, NULL, NULL, NULL, 4, ARRAY[184, 202, 81, 101]),
    -- Janine: Venomoth Lv. 39: Foresight, Double Team, Gust, Psychic
    (30021, 3018, NULL, NULL, NULL, NULL, 5, ARRAY[193, 104, 16, 94]),
    -- Sabrina: Espeon Lv. 46: Sand Attack, Quick Attack, Swift, Psychic
    (30022, 3019, NULL, NULL, NULL, NULL, 1, ARRAY[28, 98, 129, 94]),
    -- Sabrina: Mr. Mime Lv. 46: Barrier, Reflect, Baton Pass, Psychic
    (30022, 3019, NULL, NULL, NULL, NULL, 2, ARRAY[112, 115, 226, 94]),
    -- Sabrina: Alakazam Lv. 48: Recover, Future Sight, Psychic, Reflect
    (30022, 3019, NULL, NULL, NULL, NULL, 3, ARRAY[105, 248, 94, 115]),
    -- Blaine: Magcargo Lv. 45: Curse, Smog, Flamethrower, Rock Slide
    (30023, 3020, NULL, NULL, NULL, NULL, 1, ARRAY[174, 123, 53, 157]),
    -- Blaine: Magmar Lv. 45: Thunder Punch, Fire Punch, Sunny Day, Confuse Ray
    (30023, 3020, NULL, NULL, NULL, NULL, 2, ARRAY[9, 7, 241, 109]),
    -- Blaine: Rapidash Lv. 50: Quick Attack, Fire Spin, Fury Attack, Fire Blast
    (30023, 3020, NULL, NULL, NULL, NULL, 3, ARRAY[98, 83, 31, 126]),
    -- Blue: Pidgeot Lv. 56: Quick Attack, Whirlwind, Wing Attack, Mirror Move
    (30024, 3021, NULL, NULL, NULL, NULL, 1, ARRAY[98, 18, 17, 119]),
    -- Blue: Alakazam Lv. 54: Disable, Recover, Psychic, Reflect
    (30024, 3021, NULL, NULL, NULL, NULL, 2, ARRAY[50, 105, 94, 115]),
    -- Blue: Rhydon Lv. 56: Fury Attack, Sandstorm, Rock Slide, Earthquake
    (30024, 3021, NULL, NULL, NULL, NULL, 3, ARRAY[31, 201, 157, 89]),
    -- Blue: Gyarados Lv. 58: Twister, Hydro Pump, Rain Dance, Hyper Beam
    (30024, 3021, NULL, NULL, NULL, NULL, 4, ARRAY[239, 56, 240, 63]),
    -- Blue: Exeggutor Lv. 58: Sunny Day, Leech Seed, Egg Bomb, Solar Beam
    (30024, 3021, NULL, NULL, NULL, NULL, 5, ARRAY[241, 73, 121, 76]),
    -- Blue: Arcanine Lv. 58: Roar, Swift, Flamethrower, Extreme Speed
    (30024, 3021, NULL, NULL, NULL, NULL, 6, ARRAY[46, 129, 53, 245]),
    -- Red: Pikachu Lv. 81: Charm, Quick Attack, Thunderbolt, Thunder
    (30025, 3022, NULL, NULL, NULL, NULL, 1, ARRAY[204, 98, 85, 87]),
    -- Red: Espeon Lv. 73: Mud-Slap, Reflect, Swift, Psychic
    (30025, 3022, NULL, NULL, NULL, NULL, 2, ARRAY[189, 115, 129, 94]),
    -- Red: Snorlax Lv. 75: Amnesia, Snore, Rest, Body Slam
    (30025, 3022, NULL, NULL, NULL, NULL, 3, ARRAY[133, 173, 156, 34]),
    -- Red: Venusaur Lv. 77: Sunny Day, Giga Drain, Synthesis, Solar Beam
    (30025, 3022, NULL, NULL, NULL, NULL, 4, ARRAY[241, 202, 235, 76]),
    -- Red: Charizard Lv. 77: Flamethrower, Wing Attack, Slash, Fire Spin
    (30025, 3022, NULL, NULL, NULL, NULL, 5, ARRAY[53, 17, 163, 83]),
    -- Red: Blastoise Lv. 77: Rain Dance, Surf, Blizzard, Whirlpool
    (30025, 3022, NULL, NULL, NULL, NULL, 6, ARRAY[240, 57, 59, 250]),
    -- Silver: Cyndaquil Lv. 5: Tackle, Leer
    (30002, 3023, NULL, 30001, 'chikorita', NULL, 1, ARRAY[33, 43]),
    -- Silver: Totodile Lv. 5: Scratch, Leer
    (30002, 3023, NULL, 30001, 'cyndaquil', NULL, 1, ARRAY[10, 43]),
    -- Silver: Chikorita Lv. 5: Tackle, Growl
    (30002, 3023, NULL, 30001, 'totodile', NULL, 1, ARRAY[33, 45]),
    -- Silver: Gastly Lv. 12: Hypnosis, Lick, Spite
    (30004, 3023, NULL, 30001, 'chikorita', NULL, 1, ARRAY[95, 122, 180]),
    -- Silver: Zubat Lv. 14: Leech Life, Supersonic, Bite
    (30004, 3023, NULL, 30001, 'chikorita', NULL, 2, ARRAY[141, 48, 44]),
    -- Silver: Quilava Lv. 16: Tackle, Leer, Smokescreen, Ember
    (30004, 3023, NULL, 30001, 'chikorita', NULL, 3, ARRAY[33, 43, 108, 52]),
    -- Silver: Gastly Lv. 12: Hypnosis, Lick, Spite
    (30004, 3023, NULL, 30001, 'cyndaquil', NULL, 1, ARRAY[95, 122, 180]),
    -- Silver: Zubat Lv. 14: Leech Life, Supersonic, Bite
    (30004, 3023, NULL, 30001, 'cyndaquil', NULL, 2, ARRAY[141, 48, 44]),
    -- Silver: Croconaw Lv. 16: Scratch, Leer, Rage, Water Gun
    (30004, 3023, NULL, 30001, 'cyndaquil', NULL, 3, ARRAY[10, 43, 99, 55]),
    -- Silver: Gastly Lv. 12: Hypnosis, Lick, Spite
    (30004, 3023, NULL, 30001, 'totodile', NULL, 1, ARRAY[95, 122, 180]),
    -- Silver: Zubat Lv. 14: Leech Life, Supersonic, Bite
    (30004, 3023, NULL, 30001, 'totodile', NULL, 2, ARRAY[141, 48, 44]),
    -- Silver: Bayleef Lv. 16: Growl, Razor Leaf, Reflect, Poison Powder
    (30004, 3023, NULL, 30001, 'totodile', NULL, 3, ARRAY[45, 75, 115, 77]),
    -- Silver: Haunter Lv. 20: Lick, Spite, Mean Look, Curse
    (30026, 3023, NULL, 30001, 'chikorita', NULL, 1, ARRAY[122, 180, 212, 174]),
    -- Silver: Magnemite Lv. 18: Tackle, Thunder Shock, Supersonic, Sonic Boom
    (30026, 3023, NULL, 30001, 'chikorita', NULL, 2, ARRAY[33, 84, 48, 49]),
    -- Silver: Zubat Lv. 20: Leech Life, Supersonic, Bite, Confuse Ray
    (30026, 3023, NULL, 30001, 'chikorita', NULL, 3, ARRAY[141, 48, 44, 109]),
    -- Silver: Quilava Lv. 22: Leer, Smokescreen, Ember, Quick Attack
    (30026, 3023, NULL, 30001, 'chikorita', NULL, 4, ARRAY[43, 108, 52, 98]),
    -- Silver: Haunter Lv. 20: Lick, Spite, Mean Look, Curse
    (30026, 3023, NULL, 30001, 'cyndaquil', NULL, 1, ARRAY[122, 180, 212, 174]),
    -- Silver: Magnemite Lv. 18: Tackle, Thunder Shock, Supersonic, Sonic Boom
    (30026, 3023, NULL, 30001, 'cyndaquil', NULL, 2, ARRAY[33, 84, 48, 49]),
    -- Silver: Zubat Lv. 20: Leech Life, Supersonic, Bite, Confuse Ray
    (30026, 3023, NULL, 30001, 'cyndaquil', NULL, 3, ARRAY[141, 48, 44, 109]),
    -- Silver: Croconaw Lv. 22: Leer, Rage, Water Gun, Bite
    (30026, 3023, NULL, 30001, 'cyndaquil', NULL, 4, ARRAY[43, 99, 55, 44]),
    -- Silver: Haunter Lv. 20: Lick, Spite, Mean Look, Curse
    (30026, 3023, NULL, 30001, 'totodile', NULL, 1, ARRAY[122, 180, 212, 174]),
    -- Silver: Magnemite Lv. 18: Tackle, Thunder Shock, Supersonic, Sonic Boom
    (30026, 3023, NULL, 30001, 'totodile', NULL, 2, ARRAY[33, 84, 48, 49]),
    -- Silver: Zubat Lv. 20: Leech Life, Supersonic, Bite, Confuse Ray
    (30026, 3023, NULL, 30001, 'totodile', NULL, 3, ARRAY[141, 48, 44, 109]),
    -- Silver: Bayleef Lv. 22: Growl, Reflect, Razor Leaf, Poison Powder
    (30026, 3023, NULL, 30001, 'totodile', NULL, 4, ARRAY[45, 115, 75, 77]),
    -- Silver: Golbat Lv. 30: Leech Life, Bite, Confuse Ray, Wing Attack
    (30027, 3023, NULL, 30001, 'chikorita', NULL, 1, ARRAY[141, 44, 109, 17]),
    -- Silver: Magnemite Lv. 28: Tackle, Thunder Shock, Sonic Boom, Thunder Wave
    (30027, 3023, NULL, 30001, 'chikorita', NULL, 2, ARRAY[33, 84, 49, 86]),
    -- Silver: Haunter Lv. 30: Lick, Mean Look, Curse, Shadow Ball
    (30027, 3023, NULL, 30001, 'chikorita', NULL, 3, ARRAY[122, 212, 174, 247]),
    -- Silver: Sneasel Lv. 32: Leer, Quick Attack, Screech, Feint Attack
    (30027, 3023, NULL, 30001, 'chikorita', NULL, 4, ARRAY[43, 98, 103, 185]),
    -- Silver: Quilava Lv. 32: Smokescreen, Ember, Quick Attack, Flame Wheel
    (30027, 3023, NULL, 30001, 'chikorita', NULL, 5, ARRAY[108, 52, 98, 172]),
    -- Silver: Golbat Lv. 30: Leech Life, Bite, Confuse Ray, Wing Attack
    (30027, 3023, NULL, 30001, 'cyndaquil', NULL, 1, ARRAY[141, 44, 109, 17]),
    -- Silver: Magnemite Lv. 28: Tackle, Thunder Shock, Sonic Boom, Thunder Wave
    (30027, 3023, NULL, 30001, 'cyndaquil', NULL, 2, ARRAY[33, 84, 49, 86]),
    -- Silver: Haunter Lv. 30: Lick, Mean Look, Curse, Shadow Ball
    (30027, 3023, NULL, 30001, 'cyndaquil', NULL, 3, ARRAY[122, 212, 174, 247]),
    -- Silver: Sneasel Lv. 32: Leer, Quick Attack, Screech, Feint Attack
    (30027, 3023, NULL, 30001, 'cyndaquil', NULL, 4, ARRAY[43, 98, 103, 185]),
    -- Silver: Feraligatr Lv. 32: Rage, Water Gun, Bite, Scary Face
    (30027, 3023, NULL, 30001, 'cyndaquil', NULL, 5, ARRAY[99, 55, 44, 184]),
    -- Silver: Golbat Lv. 30: Leech Life, Bite, Confuse Ray, Wing Attack
    (30027, 3023, NULL, 30001, 'totodile', NULL, 1, ARRAY[141, 44, 109, 17]),
    -- Silver: Magnemite Lv. 28: Tackle, Thunder Shock, Sonic Boom, Thunder Wave
    (30027, 3023, NULL, 30001, 'totodile', NULL, 2, ARRAY[33, 84, 49, 86]),
    -- Silver: Haunter Lv. 30: Lick, Mean Look, Curse, Shadow Ball
    (30027, 3023, NULL, 30001, 'totodile', NULL, 3, ARRAY[122, 212, 174, 247]),
    -- Silver: Sneasel Lv. 32: Leer, Quick Attack, Screech, Feint Attack
    (30027, 3023, NULL, 30001, 'totodile', NULL, 4, ARRAY[43, 98, 103, 185]),
    -- Silver: Meganium Lv. 32: Reflect, Razor Leaf, Poison Powder, Body Slam
    (30027, 3023, NULL, 30001, 'totodile', NULL, 5, ARRAY[115, 75, 77, 34]),
    -- Silver: Sneasel Lv. 34: Quick Attack, Screech, Feint Attack, Fury Cutter
    (30011, 3023, NULL, 30001, 'chikorita', NULL, 1, ARRAY[98, 103, 185, 210]),
    -- Silver: Golbat Lv. 36: Leech Life, Bite, Confuse Ray, Wing Attack
    (30011, 3023, NULL, 30001, 'chikorita', NULL, 2, ARRAY[141, 44, 109, 17]),
    -- Silver: Magneton Lv. 35: Thunder Shock, Sonic Boom, Thunder Wave, Swift
    (30011, 3023, NULL, 30001, 'chikorita', NULL, 3, ARRAY[84, 49, 86, 129]),
    -- Silver: Haunter Lv. 35: Mean Look, Curse, Shadow Ball, Confuse Ray
    (30011, 3023, NULL, 30001, 'chikorita', NULL, 4, ARRAY[212, 174, 247, 109]),
    -- Silver: Kadabra Lv. 35: Disable, Psybeam, Recover, Future Sight
    (30011, 3023, NULL, 30001, 'chikorita', NULL, 5, ARRAY[50, 60, 105, 248]),
    -- Silver: Typhlosion Lv. 38: Smokescreen, Ember, Quick Attack, Flame Wheel
    (30011, 3023, NULL, 30001, 'chikorita', NULL, 6, ARRAY[108, 52, 98, 172]),
    -- Silver: Sneasel Lv. 34: Quick Attack, Screech, Feint Attack, Fury Cutter
    (30011, 3023, NULL, 30001, 'cyndaquil', NULL, 1, ARRAY[98, 103, 185, 210]),
    -- Silver: Golbat Lv. 36: Leech Life, Bite, Confuse Ray, Wing Attack
    (30011, 3023, NULL, 30001, 'cyndaquil', NULL, 2, ARRAY[141, 44, 109, 17]),
    -- Silver: Magneton Lv. 34: Thunder Shock, Sonic Boom, Thunder Wave, Swift
    (30011, 3023, NULL, 30001, 'cyndaquil', NULL, 3, ARRAY[84, 49, 86, 129]),
    -- Silver: Haunter Lv. 35: Mean Look, Curse, Shadow Ball, Confuse Ray
    (30011, 3023, NULL, 30001, 'cyndaquil', NULL, 4, ARRAY[212, 174, 247, 109]),
    -- Silver: Kadabra Lv. 35: Disable, Psybeam, Recover, Future Sight
    (30011, 3023, NULL, 30001, 'cyndaquil', NULL, 5, ARRAY[50, 60, 105, 248]),
    -- Silver: Feraligatr Lv. 38: Rage, Water Gun, Scary Face, Slash
    (30011, 3023, NULL, 30001, 'cyndaquil', NULL, 6, ARRAY[99, 55, 184, 163]),
    -- Silver: Sneasel Lv. 34: Quick Attack, Screech, Feint Attack, Fury Cutter
    (30011, 3023, NULL, 30001, 'totodile', NULL, 1, ARRAY[98, 103, 185, 210]),
    -- Silver: Golbat Lv. 36: Leech Life, Bite, Confuse Ray, Wing Attack
    (30011, 3023, NULL, 30001, 'totodile', NULL, 2, ARRAY[141, 44, 109, 17]),
    -- Silver: Magneton Lv. 35: Thunder Shock, Sonic Boom, Thunder Wave, Swift
    (30011, 3023, NULL, 30001, 'totodile', NULL, 3, ARRAY[84, 49, 86, 129]),
    -- Silver: Haunter Lv. 35: Mean Look, Curse, Shadow Ball, Confuse Ray
    (30011, 3023, NULL, 30001, 'totodile', NULL, 4, ARRAY[212, 174, 247, 109]),
    -- Silver: Kadabra Lv. 35: Disable, Psybeam, Recover, Future Sight
    (30011, 3023, NULL, 30001, 'totodile', NULL, 5, ARRAY[50, 60, 105, 248]),
    -- Silver: Meganium Lv. 38: Reflect, Razor Leaf, Poison Powder, Body Slam
    (30011, 3023, NULL, 30001, 'totodile', NULL, 6, ARRAY[115, 75, 77, 34]),
    -- Silver: Sneasel Lv. 41: Quick Attack, Screech, Feint Attack, Fury Cutter
    (30017, 3023, NULL, 30001, 'chikorita', NULL, 1, ARRAY[98, 103, 185, 210]),
    -- Silver: Golbat Lv. 42: Leech Life, Bite, Confuse Ray, Wing Attack
    (30017, 3023, NULL, 30001, 'chikorita', NULL, 2, ARRAY[141, 44, 109, 17]),
    -- Silver: Magneton Lv. 41: Thunder Shock, Sonic Boom, Thunder Wave, Swift
    (30017, 3023, NULL, 30001, 'chikorita', NULL, 3, ARRAY[84, 49, 86, 129]),
    -- Silver: Gengar Lv. 43: Mean Look, Curse, Shadow Ball, Confuse Ray
    (30017, 3023, NULL, 30001, 'chikorita', NULL, 4, ARRAY[212, 174, 247, 109]),
    -- Silver: Alakazam Lv. 43: Disable, Recover, Future Sight, Psychic
    (30017, 3023, NULL, 30001, 'chikorita', NULL, 5, ARRAY[50, 105, 248, 94]),
    -- Silver: Typhlosion Lv. 45: Smokescreen, Quick Attack, Flame Wheel, Swift
    (30017, 3023, NULL, 30001, 'chikorita', NULL, 6, ARRAY[108, 98, 172, 129]),
    -- Silver: Sneasel Lv. 41: Quick Attack, Screech, Feint Attack, Fury Cutter
    (30017, 3023, NULL, 30001, 'cyndaquil', NULL, 1, ARRAY[98, 103, 185, 210]),
    -- Silver: Golbat Lv. 42: Leech Life, Bite, Confuse Ray, Wing Attack
    (30017, 3023, NULL, 30001, 'cyndaquil', NULL, 2, ARRAY[141, 44, 109, 17]),
    -- Silver: Magneton Lv. 41: Thunder Shock, Sonic Boom, Thunder Wave, Swift
    (30017, 3023, NULL, 30001, 'cyndaquil', NULL, 3, ARRAY[84, 49, 86, 129]),
    -- Silver: Gengar Lv. 43: Mean Look, Curse, Shadow Ball, Confuse Ray
    (30017, 3023, NULL, 30001, 'cyndaquil', NULL, 4, ARRAY[212, 174, 247, 109]),
    -- Silver: Alakazam Lv. 43: Disable, Recover, Future Sight, Psychic
    (30017, 3023, NULL, 30001, 'cyndaquil', NULL, 5, ARRAY[50, 105, 248, 94]),
    -- Silver: Feraligatr Lv. 45: Rage, Water Gun, Scary Face, Slash
    (30017, 3023, NULL, 30001, 'cyndaquil', NULL, 6, ARRAY[99, 55, 184, 163]),
    -- Silver: Sneasel Lv. 41: Quick Attack, Screech, Feint Attack, Fury Cutter
    (30017, 3023, NULL, 30001, 'totodile', NULL, 1, ARRAY[98, 103, 185, 210]),
    -- Silver: Golbat Lv. 42: Leech Life, Bite, Confuse Ray, Wing Attack
    (30017, 3023, NULL, 30001, 'totodile', NULL, 2, ARRAY[141, 44, 109, 17]),
    -- Silver: Magneton Lv. 41: Thunder Shock, Sonic Boom, Thunder Wave, Swift
    (30017, 3023, NULL, 30001, 'totodile', NULL, 3, ARRAY[84, 49, 86, 129]),
    -- Silver: Gengar Lv. 43: Mean Look, Curse, Shadow Ball, Confuse Ray
    (30017, 3023, NULL, 30001, 'totodile', NULL, 4, ARRAY[212, 174, 247, 109]),
    -- Silver: Alakazam Lv. 43: Disable, Recover, Future Sight, Psychic
    (30017, 3023, NULL, 30001, 'totodile', NULL, 5, ARRAY[50, 105, 248, 94]),
    -- Silver: Meganium Lv. 45: Razor Leaf, Poison Powder, Body Slam, Light Screen
    (30017, 3023, NULL, 30001, 'totodile', NULL, 6, ARRAY[75, 77, 34, 113]),
    -- Raikou: Raikou Lv. 40: Leer, Thunder Shock, Roar, Quick Attack
    (30028, 3024, NULL, NULL, NULL, NULL, 1, ARRAY[43, 84, 46, 98]),
    -- Entei: Entei Lv. 40: Leer, Ember, Roar, Fire Spin
    (30029, 3025, NULL, NULL, NULL, NULL, 1, ARRAY[43, 52, 46, 83]),
    -- Suicune: Suicune Lv. 40: Leer, Water Gun, Roar, Gust
    (30030, 3026, NULL, NULL, NULL, NULL, 1, ARRAY[43, 55, 46, 16]),
    -- Ho-Oh: Ho-Oh Lv. 40: Sacred Fire, Safeguard, Gust, Recover
    (30031, 3027, NULL, NULL, NULL, NULL, 1, ARRAY[221, 219, 16, 105]),
    -- Ho-Oh: Ho-Oh Lv. 70: Recover, Fire Blast, Sunny Day, Swift
    (30031, 3028, NULL, NULL, NULL, NULL, 1, ARRAY[105, 126, 241, 129]),
    -- Lugia: Lugia Lv. 40: Aeroblast, Safeguard, Gust, Recover
    (30032, 3029, NULL, NULL, NULL, NULL, 1, ARRAY[177, 219, 16, 105]),
    -- Lugia: Lugia Lv. 70: Recover, Hydro Pump, Rain Dance, Swift
    (30032, 3030, NULL, NULL, NULL, NULL, 1, ARRAY[105, 56, 240, 129])
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
