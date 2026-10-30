-- ============================================================================
-- Source
-- ============================================================================
-- Primary: data-mined Sword / Shield trainer data; where it gives a Pokémon no
-- set moves, PokéWiki's trainer team tables, else the default level-up
-- moves for its level from Voydex's own learnset.
-- Cross-check: PokéWiki trainer team tables.
-- Fixed encounters (legendaries and other one-off Pokémon): the game's
-- data-mined encounter table; where it sets no moves, the game's default from
-- its own level-up learnset. Cross-checked with Serebii and Bulbapedia.
-- Fixed encounters, totems, Titans, story bosses and trainers the sources
-- above leave out: Serebii, Bulbapedia and PokéWiki, kept where two agree;
-- where they disagree or only one covers it, Bulbapedia, then Serebii.
-- Pokémon no source confirms are left without moves (Voydex reads their types).
-- Oleana, the Champion Cup finals, Hop's first post-game battle, Sordward and Shielbert (#115 audit): Bulbapedia; Hop's Wooloo knows Defense Curl in the Sobble start, as Bulbapedia lists it.
-- Scope: Sword / Shield Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Sword / Shield opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Milo: Gossifleur Lv. 19: Magical Leaf, Round, Rapid Spin
    (180003, 18001, NULL, NULL, NULL, NULL, 1, ARRAY[345, 496, 229]),
    -- Milo: Eldegoss Lv. 20: Magical Leaf, Leafage, Round
    (180003, 18001, NULL, NULL, NULL, NULL, 2, ARRAY[345, 670, 496]),
    -- Nessa: Goldeen Lv. 22: Water Pulse, Whirlpool, Horn Attack, Agility
    (180004, 18002, NULL, NULL, NULL, NULL, 1, ARRAY[352, 250, 30, 97]),
    -- Nessa: Arrokuda Lv. 23: Aqua Jet, Bite, Whirlpool, Fury Attack
    (180004, 18002, NULL, NULL, NULL, NULL, 2, ARRAY[453, 44, 250, 31]),
    -- Nessa: Drednaw Lv. 24: Razor Shell, Water Gun, Bite, Headbutt
    (180004, 18002, NULL, NULL, NULL, NULL, 3, ARRAY[534, 55, 44, 29]),
    -- Kabu: Ninetales Lv. 25: Will-O-Wisp, Fire Spin, Quick Attack, Ember
    (180005, 18003, NULL, NULL, NULL, NULL, 1, ARRAY[261, 83, 98, 52]),
    -- Kabu: Arcanine Lv. 25: Will-O-Wisp, Flame Wheel, Bite, Agility
    (180005, 18003, NULL, NULL, NULL, NULL, 2, ARRAY[261, 172, 44, 97]),
    -- Kabu: Gigantamax Centiskorch Lv. 27: Flame Wheel, Coil, Bug Bite, Smokescreen
    (180005, 18003, NULL, NULL, NULL, NULL, 3, ARRAY[172, 489, 450, 108]),
    -- Bea: Hitmontop Lv. 34: Triple Kick, Quick Attack, Counter, Revenge
    (183106, 18004, NULL, NULL, NULL, NULL, 1, ARRAY[167, 98, 68, 279]),
    -- Bea: Pangoro Lv. 34: Bullet Punch, Circle Throw, Night Slash, Work Up
    (183106, 18004, NULL, NULL, NULL, NULL, 2, ARRAY[418, 509, 400, 526]),
    -- Bea: Sirfetch'd Lv. 35: Detect, Swords Dance, Brutal Swing, Revenge
    (183106, 18004, NULL, NULL, NULL, NULL, 3, ARRAY[197, 14, 693, 279]),
    -- Bea: Gigantamax Machamp Lv. 36: Scary Face, Revenge, Knock Off, Strength
    (183106, 18004, NULL, NULL, NULL, NULL, 4, ARRAY[184, 279, 282, 70]),
    -- Allister: Galarian Yamask Lv. 34: Brutal Swing, Hex, Disable
    (183206, 18005, NULL, NULL, NULL, NULL, 1, ARRAY[693, 506, 50]),
    -- Allister: Mimikyu Lv. 34: Shadow Sneak, Baby-Doll Eyes, Hone Claws, Slash
    (183206, 18005, NULL, NULL, NULL, NULL, 2, ARRAY[425, 608, 468, 163]),
    -- Allister: Cursola Lv. 35: Ancient Power, Curse, Hex
    (183206, 18005, NULL, NULL, NULL, NULL, 3, ARRAY[246, 174, 506]),
    -- Allister: Gigantamax Gengar Lv. 36: Venoshock, Hex, Hypnosis, Payback
    (183206, 18005, NULL, NULL, NULL, NULL, 4, ARRAY[474, 506, 95, 371]),
    -- Opal: Galarian Weezing Lv. 36: Sludge, Fairy Wind, Tackle
    (180007, 18006, NULL, NULL, NULL, NULL, 1, ARRAY[124, 584, 33]),
    -- Opal: Mawile Lv. 36: Draining Kiss, Crunch, Iron Defense, Astonish
    (180007, 18006, NULL, NULL, NULL, NULL, 2, ARRAY[577, 242, 334, 310]),
    -- Opal: Togekiss Lv. 37: Air Slash, Draining Kiss, Ancient Power
    (180007, 18006, NULL, NULL, NULL, NULL, 3, ARRAY[403, 577, 246]),
    -- Opal: Gigantamax Alcremie Lv. 38: Draining Kiss, Acid Armor, Sweet Kiss
    (180007, 18006, NULL, NULL, NULL, NULL, 4, ARRAY[577, 151, 186]),
    -- Gordie: Barbaracle Lv. 40: Shell Smash, Rock Tomb, Razor Shell
    (183108, 18007, NULL, NULL, NULL, NULL, 1, ARRAY[504, 317, 534]),
    -- Gordie: Shuckle Lv. 40: Power Split, Stone Edge, Struggle Bug, Rock Tomb
    (183108, 18007, NULL, NULL, NULL, NULL, 2, ARRAY[471, 444, 522, 317]),
    -- Gordie: Stonjourner Lv. 41: Stealth Rock, Rock Tomb, Body Slam, Wonder Room
    (183108, 18007, NULL, NULL, NULL, NULL, 3, ARRAY[446, 317, 34, 472]),
    -- Gordie: Gigantamax Coalossal Lv. 42: Tar Shot, Stealth Rock, Heat Crash, Rock Tomb
    (183108, 18007, NULL, NULL, NULL, NULL, 4, ARRAY[749, 446, 535, 317]),
    -- Melony: Frosmoth Lv. 40: Icy Wind, Feather Dance, Bug Buzz, Hail
    (183208, 18008, NULL, NULL, NULL, NULL, 1, ARRAY[196, 297, 405, 258]),
    -- Melony: Galarian Darmanitan Lv. 40: Icicle Crash, Headbutt, Taunt, Fire Fang
    (183208, 18008, NULL, NULL, NULL, NULL, 2, ARRAY[556, 29, 269, 424]),
    -- Melony: Eiscue Lv. 41: Amnesia, Freeze-Dry, Hail, Icy Wind
    (183208, 18008, NULL, NULL, NULL, NULL, 3, ARRAY[133, 573, 258, 196]),
    -- Melony: Gigantamax Lapras Lv. 42: Icy Wind, Ice Beam, Surf, Sing
    (183208, 18008, NULL, NULL, NULL, NULL, 4, ARRAY[196, 58, 57, 47]),
    -- Piers: Scrafty Lv. 44: Fake Out, Sand Attack, Brick Break, Payback
    (180009, 18009, NULL, NULL, NULL, NULL, 1, ARRAY[252, 28, 280, 371]),
    -- Piers: Malamar Lv. 45: Night Slash, Foul Play, Psycho Cut, Payback
    (180009, 18009, NULL, NULL, NULL, NULL, 2, ARRAY[400, 492, 427, 371]),
    -- Piers: Skuntank Lv. 45: Sucker Punch, Screech, Toxic, Snarl
    (180009, 18009, NULL, NULL, NULL, NULL, 3, ARRAY[389, 103, 92, 555]),
    -- Piers: Obstagoon Lv. 46: Obstruct, Throat Chop, Counter, Shadow Claw
    (180009, 18009, NULL, NULL, NULL, NULL, 4, ARRAY[792, 675, 68, 421]),
    -- Raihan: Gigalith Lv. 46: Stealth Rock, Sand Tomb, Rock Blast, Body Press
    (180010, 18010, NULL, NULL, NULL, NULL, 1, ARRAY[446, 328, 350, 776]),
    -- Raihan: Flygon Lv. 47: Thunder Punch, Breaking Swipe, Crunch, Steel Wing
    (180010, 18010, NULL, NULL, NULL, NULL, 2, ARRAY[9, 784, 242, 211]),
    -- Raihan: Sandaconda Lv. 46: Protect, Glare, Fire Fang, Earth Power
    (180010, 18010, NULL, NULL, NULL, NULL, 3, ARRAY[182, 137, 424, 414]),
    -- Raihan: Gigantamax Duraludon Lv. 48: Breaking Swipe, Body Press, Stone Edge, Iron Head
    (180010, 18010, NULL, NULL, NULL, NULL, 4, ARRAY[784, 776, 444, 442]),
    -- Eternatus: Eternatus Lv. 60: Cross Poison, Dragon Pulse, Flamethrower, Dynamax Cannon
    (180011, 18011, NULL, NULL, NULL, NULL, 1, ARRAY[440, 406, 53, 744]),
    -- Leon: Aegislash Lv. 62: King's Shield, Shadow Ball, Sacred Sword, Flash Cannon
    (180012, 18012, NULL, 180001, 'grookey', NULL, 1, ARRAY[588, 247, 533, 430]),
    -- Leon: Dragapult Lv. 62: Shadow Ball, Flamethrower, Thunderbolt, Dragon Breath
    (180012, 18012, NULL, 180001, 'grookey', NULL, 2, ARRAY[247, 53, 85, 225]),
    -- Leon: Haxorus Lv. 63: Poison Jab, Iron Tail, Outrage, Earthquake
    (180012, 18012, NULL, 180001, 'grookey', NULL, 3, ARRAY[398, 231, 200, 89]),
    -- Leon: Seismitoad Lv. 64: Toxic, Drain Punch, Liquidation, Earthquake
    (180012, 18012, NULL, 180001, 'grookey', NULL, 4, ARRAY[92, 409, 710, 89]),
    -- Leon: Cinderace Lv. 64: Pyro Ball, Feint, Acrobatics, Quick Attack
    (180012, 18012, NULL, 180001, 'grookey', NULL, 5, ARRAY[780, 364, 512, 98]),
    -- Leon: Gigantamax Charizard Lv. 65: Fire Blast, Air Slash, Solar Beam, Ancient Power
    (180012, 18012, NULL, 180001, 'grookey', NULL, 6, ARRAY[126, 403, 76, 246]),
    -- Leon: Aegislash Lv. 62: King's Shield, Shadow Ball, Sacred Sword, Flash Cannon
    (180012, 18012, NULL, 180001, 'scorbunny', NULL, 1, ARRAY[588, 247, 533, 430]),
    -- Leon: Dragapult Lv. 62: Shadow Ball, Flamethrower, Thunderbolt, Dragon Breath
    (180012, 18012, NULL, 180001, 'scorbunny', NULL, 2, ARRAY[247, 53, 85, 225]),
    -- Leon: Haxorus Lv. 63: Poison Jab, Iron Tail, Outrage, Earthquake
    (180012, 18012, NULL, 180001, 'scorbunny', NULL, 3, ARRAY[398, 231, 200, 89]),
    -- Leon: Mr. Rime Lv. 64: Teeter Dance, Psychic, Freeze-Dry, Thunderbolt
    (180012, 18012, NULL, 180001, 'scorbunny', NULL, 4, ARRAY[298, 94, 573, 85]),
    -- Leon: Inteleon Lv. 64: Snipe Shot, Dark Pulse, Mud Shot, Tearful Look
    (180012, 18012, NULL, 180001, 'scorbunny', NULL, 5, ARRAY[745, 399, 341, 715]),
    -- Leon: Gigantamax Charizard Lv. 65: Fire Blast, Air Slash, Solar Beam, Ancient Power
    (180012, 18012, NULL, 180001, 'scorbunny', NULL, 6, ARRAY[126, 403, 76, 246]),
    -- Leon: Aegislash Lv. 62: King's Shield, Shadow Ball, Sacred Sword, Flash Cannon
    (180012, 18012, NULL, 180001, 'sobble', NULL, 1, ARRAY[588, 247, 533, 430]),
    -- Leon: Dragapult Lv. 62: Shadow Ball, Flamethrower, Thunderbolt, Dragon Breath
    (180012, 18012, NULL, 180001, 'sobble', NULL, 2, ARRAY[247, 53, 85, 225]),
    -- Leon: Haxorus Lv. 63: Poison Jab, Iron Tail, Outrage, Earthquake
    (180012, 18012, NULL, 180001, 'sobble', NULL, 3, ARRAY[398, 231, 200, 89]),
    -- Leon: Rhyperior Lv. 64: Earthquake, Stone Edge, Megahorn, Heat Crash
    (180012, 18012, NULL, 180001, 'sobble', NULL, 4, ARRAY[89, 444, 224, 535]),
    -- Leon: Rillaboom Lv. 64: Drum Beating, Knock Off, High Horsepower, Endeavor
    (180012, 18012, NULL, 180001, 'sobble', NULL, 5, ARRAY[778, 282, 667, 283]),
    -- Leon: Gigantamax Charizard Lv. 65: Fire Blast, Air Slash, Solar Beam, Ancient Power
    (180012, 18012, NULL, 180001, 'sobble', NULL, 6, ARRAY[126, 403, 76, 246]),
    -- Hop: Wooloo Lv. 3: Tackle
    (180001, 18013, NULL, 180001, 'grookey', NULL, 1, ARRAY[33]),
    -- Hop: Sobble Lv. 5: Pound, Growl
    (180001, 18013, NULL, 180001, 'grookey', NULL, 2, ARRAY[1, 45]),
    -- Hop: Wooloo Lv. 3: Tackle
    (180001, 18013, NULL, 180001, 'scorbunny', NULL, 1, ARRAY[33]),
    -- Hop: Grookey Lv. 5: Scratch, Growl
    (180001, 18013, NULL, 180001, 'scorbunny', NULL, 2, ARRAY[10, 45]),
    -- Hop: Wooloo Lv. 3: Tackle
    (180001, 18013, NULL, 180001, 'sobble', NULL, 1, ARRAY[33]),
    -- Hop: Scorbunny Lv. 5: Tackle, Growl
    (180001, 18013, NULL, 180001, 'sobble', NULL, 2, ARRAY[33, 45]),
    -- Hop: Wooloo Lv. 6: Tackle, Growl
    (180002, 18013, NULL, 180001, 'grookey', NULL, 1, ARRAY[33, 45]),
    -- Hop: Rookidee Lv. 5: Leer, Peck
    (180002, 18013, NULL, 180001, 'grookey', NULL, 2, ARRAY[43, 64]),
    -- Hop: Sobble Lv. 8: Pound, Growl, Water Gun
    (180002, 18013, NULL, 180001, 'grookey', NULL, 3, ARRAY[1, 45, 55]),
    -- Hop: Wooloo Lv. 6: Tackle, Growl
    (180002, 18013, NULL, 180001, 'scorbunny', NULL, 1, ARRAY[33, 45]),
    -- Hop: Rookidee Lv. 5: Leer, Peck
    (180002, 18013, NULL, 180001, 'scorbunny', NULL, 2, ARRAY[43, 64]),
    -- Hop: Grookey Lv. 8: Scratch, Growl, Branch Poke
    (180002, 18013, NULL, 180001, 'scorbunny', NULL, 3, ARRAY[10, 45, 785]),
    -- Hop: Wooloo Lv. 6: Tackle, Growl
    (180002, 18013, NULL, 180001, 'sobble', NULL, 1, ARRAY[33, 45]),
    -- Hop: Rookidee Lv. 5: Leer, Peck
    (180002, 18013, NULL, 180001, 'sobble', NULL, 2, ARRAY[43, 64]),
    -- Hop: Scorbunny Lv. 8: Tackle, Growl, Ember
    (180002, 18013, NULL, 180001, 'sobble', NULL, 3, ARRAY[33, 45, 52]),
    -- Hop: Wooloo Lv. 11: Tackle, Growl
    (180003, 18013, NULL, 180001, 'grookey', NULL, 1, ARRAY[33, 45]),
    -- Hop: Rookidee Lv. 12: Peck, Leer
    (180003, 18013, NULL, 180001, 'grookey', NULL, 2, ARRAY[64, 43]),
    -- Hop: Sobble Lv. 14: Pound, Growl, Water Gun, Bind
    (180003, 18013, NULL, 180001, 'grookey', NULL, 3, ARRAY[1, 45, 55, 20]),
    -- Hop: Wooloo Lv. 11: Tackle, Growl
    (180003, 18013, NULL, 180001, 'scorbunny', NULL, 1, ARRAY[33, 45]),
    -- Hop: Rookidee Lv. 12: Peck, Leer
    (180003, 18013, NULL, 180001, 'scorbunny', NULL, 2, ARRAY[64, 43]),
    -- Hop: Grookey Lv. 14: Scratch, Growl, Branch Poke, Taunt
    (180003, 18013, NULL, 180001, 'scorbunny', NULL, 3, ARRAY[10, 45, 785, 269]),
    -- Hop: Wooloo Lv. 11: Tackle, Growl, Defense Curl
    (180003, 18013, NULL, 180001, 'sobble', NULL, 1, ARRAY[33, 45, 111]),
    -- Hop: Rookidee Lv. 12: Peck, Leer
    (180003, 18013, NULL, 180001, 'sobble', NULL, 2, ARRAY[64, 43]),
    -- Hop: Scorbunny Lv. 14: Tackle, Growl, Ember, Quick Attack
    (180003, 18013, NULL, 180001, 'sobble', NULL, 3, ARRAY[33, 45, 52, 98]),
    -- Bede: Solosis Lv. 13: Endeavor, Confusion
    (180003, 18014, NULL, NULL, NULL, NULL, 1, ARRAY[283, 93]),
    -- Bede: Gothita Lv. 15: Psybeam, Tickle, Pound
    (180003, 18014, NULL, NULL, NULL, NULL, 2, ARRAY[60, 321, 1]),
    -- Bede: Hatenna Lv. 16: Confusion, Round, Disarming Voice
    (180003, 18014, NULL, NULL, NULL, NULL, 3, ARRAY[93, 496, 574]),
    -- Hop: Wooloo Lv. 18: Tackle, Growl, Defense Curl, Double Kick
    (180004, 18013, NULL, 180001, 'grookey', NULL, 1, ARRAY[33, 45, 111, 24]),
    -- Hop: Corvisquire Lv. 19: Leer, Peck, Fury Attack, Pluck
    (180004, 18013, NULL, 180001, 'grookey', NULL, 2, ARRAY[43, 64, 31, 365]),
    -- Hop: Drizzile Lv. 21: Round, Growl, Water Pulse, Bind
    (180004, 18013, NULL, 180001, 'grookey', NULL, 3, ARRAY[496, 45, 352, 20]),
    -- Hop: Wooloo Lv. 18: Tackle, Growl, Defense Curl, Double Kick
    (180004, 18013, NULL, 180001, 'scorbunny', NULL, 1, ARRAY[33, 45, 111, 24]),
    -- Hop: Corvisquire Lv. 19: Leer, Peck, Fury Attack, Pluck
    (180004, 18013, NULL, 180001, 'scorbunny', NULL, 2, ARRAY[43, 64, 31, 365]),
    -- Hop: Thwackey Lv. 21: Round, Razor Leaf, Double Hit, Screech
    (180004, 18013, NULL, 180001, 'scorbunny', NULL, 3, ARRAY[496, 75, 458, 103]),
    -- Hop: Wooloo Lv. 18: Tackle, Growl, Defense Curl, Double Kick
    (180004, 18013, NULL, 180001, 'sobble', NULL, 1, ARRAY[33, 45, 111, 24]),
    -- Hop: Corvisquire Lv. 19: Leer, Peck, Fury Attack, Pluck
    (180004, 18013, NULL, 180001, 'sobble', NULL, 2, ARRAY[43, 64, 31, 365]),
    -- Hop: Raboot Lv. 21: Round, Growl, Double Kick, Flame Charge
    (180004, 18013, NULL, 180001, 'sobble', NULL, 3, ARRAY[496, 45, 24, 488]),
    -- Bede: Solosis Lv. 21: Psyshock, Psybeam, Endeavor
    (180005, 18014, NULL, NULL, NULL, NULL, 1, ARRAY[473, 60, 283]),
    -- Bede: Gothita Lv. 22: Psyshock, Rock Tomb, Psybeam
    (180005, 18014, NULL, NULL, NULL, NULL, 2, ARRAY[473, 317, 60]),
    -- Bede: Galarian Ponyta Lv. 22: Confusion, Fairy Wind
    (180005, 18014, NULL, NULL, NULL, NULL, 3, ARRAY[93, 584]),
    -- Bede: Hatenna Lv. 23: Psybeam, Disarming Voice
    (180005, 18014, NULL, NULL, NULL, NULL, 4, ARRAY[60, 574]),
    -- Marnie: Croagunk Lv. 24: Poison Sting, Venoshock, Revenge, Sucker Punch
    (180005, 18015, NULL, NULL, NULL, NULL, 1, ARRAY[40, 474, 279, 389]),
    -- Marnie: Scraggy Lv. 24: Beat Up, Headbutt, Low Kick
    (180005, 18015, NULL, NULL, NULL, NULL, 2, ARRAY[251, 29, 67]),
    -- Marnie: Morpeko Lv. 26: Bite, Quick Attack, Thunder Shock
    (180005, 18015, NULL, NULL, NULL, NULL, 3, ARRAY[44, 98, 84]),
    -- Hop: Cramorant Lv. 28: Dive, Fury Attack, Pluck
    (183106, 18013, 31, 180001, 'grookey', NULL, 1, ARRAY[291, 31, 365]),
    -- Hop: Toxel Lv. 29: Tearful Look, Nuzzle, Flail, Acid
    (183106, 18013, 31, 180001, 'grookey', NULL, 2, ARRAY[715, 609, 175, 51]),
    -- Hop: Silicobra Lv. 30: Glare, Dig, Brutal Swing
    (183106, 18013, 31, 180001, 'grookey', NULL, 3, ARRAY[137, 91, 693]),
    -- Hop: Drizzile Lv. 33: Water Pulse, Sucker Punch, Round, Tearful Look
    (183106, 18013, 31, 180001, 'grookey', NULL, 4, ARRAY[352, 389, 496, 715]),
    -- Hop: Cramorant Lv. 29: Dive, Fury Attack, Pluck
    (183106, 18013, 31, 180001, 'scorbunny', NULL, 1, ARRAY[291, 31, 365]),
    -- Hop: Toxel Lv. 29: Tearful Look, Nuzzle, Flail, Acid
    (183106, 18013, 31, 180001, 'scorbunny', NULL, 2, ARRAY[715, 609, 175, 51]),
    -- Hop: Silicobra Lv. 30: Glare, Dig, Brutal Swing
    (183106, 18013, 31, 180001, 'scorbunny', NULL, 3, ARRAY[137, 91, 693]),
    -- Hop: Thwackey Lv. 33: Knock Off, Razor Leaf, Screech, Round
    (183106, 18013, 31, 180001, 'scorbunny', NULL, 4, ARRAY[282, 75, 103, 496]),
    -- Hop: Cramorant Lv. 29: Dive, Fury Attack, Pluck
    (183106, 18013, 31, 180001, 'sobble', NULL, 1, ARRAY[291, 31, 365]),
    -- Hop: Toxel Lv. 29: Tearful Look, Nuzzle, Flail, Acid
    (183106, 18013, 31, 180001, 'sobble', NULL, 2, ARRAY[715, 609, 175, 51]),
    -- Hop: Silicobra Lv. 30: Glare, Dig, Brutal Swing
    (183106, 18013, 31, 180001, 'sobble', NULL, 3, ARRAY[137, 91, 693]),
    -- Hop: Raboot Lv. 33: Flame Charge, Agility, Round, Double Kick
    (183106, 18013, 31, 180001, 'sobble', NULL, 4, ARRAY[488, 97, 496, 24]),
    -- Hop: Cramorant Lv. 28: Dive, Fury Attack, Pluck
    (183206, 18013, 32, 180001, 'grookey', NULL, 1, ARRAY[291, 31, 365]),
    -- Hop: Toxel Lv. 29: Tearful Look, Nuzzle, Flail, Acid
    (183206, 18013, 32, 180001, 'grookey', NULL, 2, ARRAY[715, 609, 175, 51]),
    -- Hop: Silicobra Lv. 30: Glare, Dig, Brutal Swing
    (183206, 18013, 32, 180001, 'grookey', NULL, 3, ARRAY[137, 91, 693]),
    -- Hop: Drizzile Lv. 33: Water Pulse, Sucker Punch, Round, Tearful Look
    (183206, 18013, 32, 180001, 'grookey', NULL, 4, ARRAY[352, 389, 496, 715]),
    -- Hop: Cramorant Lv. 29: Dive, Fury Attack, Pluck
    (183206, 18013, 32, 180001, 'scorbunny', NULL, 1, ARRAY[291, 31, 365]),
    -- Hop: Toxel Lv. 29: Tearful Look, Nuzzle, Flail, Acid
    (183206, 18013, 32, 180001, 'scorbunny', NULL, 2, ARRAY[715, 609, 175, 51]),
    -- Hop: Silicobra Lv. 30: Glare, Dig, Brutal Swing
    (183206, 18013, 32, 180001, 'scorbunny', NULL, 3, ARRAY[137, 91, 693]),
    -- Hop: Thwackey Lv. 33: Knock Off, Razor Leaf, Screech, Round
    (183206, 18013, 32, 180001, 'scorbunny', NULL, 4, ARRAY[282, 75, 103, 496]),
    -- Hop: Cramorant Lv. 29: Dive, Fury Attack, Pluck
    (183206, 18013, 32, 180001, 'sobble', NULL, 1, ARRAY[291, 31, 365]),
    -- Hop: Toxel Lv. 29: Tearful Look, Nuzzle, Flail, Acid
    (183206, 18013, 32, 180001, 'sobble', NULL, 2, ARRAY[715, 609, 175, 51]),
    -- Hop: Silicobra Lv. 30: Glare, Dig, Brutal Swing
    (183206, 18013, 32, 180001, 'sobble', NULL, 3, ARRAY[137, 91, 693]),
    -- Hop: Raboot Lv. 33: Flame Charge, Agility, Round, Double Kick
    (183206, 18013, 32, 180001, 'sobble', NULL, 4, ARRAY[488, 97, 496, 24]),
    -- Bede: Duosion Lv. 32: Light Screen, Reflect, Psyshock, Psybeam
    (183106, 18014, 31, NULL, NULL, NULL, 1, ARRAY[113, 115, 473, 60]),
    -- Bede: Gothorita Lv. 32: Fake Tears, Psybeam, Rock Tomb
    (183106, 18014, 31, NULL, NULL, NULL, 2, ARRAY[313, 60, 317]),
    -- Bede: Galarian Ponyta Lv. 33: Fairy Wind, Psybeam, Agility
    (183106, 18014, 31, NULL, NULL, NULL, 3, ARRAY[584, 60, 97]),
    -- Bede: Hattrem Lv. 35: Dazzling Gleam, Psybeam
    (183106, 18014, 31, NULL, NULL, NULL, 4, ARRAY[605, 60]),
    -- Bede: Duosion Lv. 32: Light Screen, Reflect, Psyshock, Psybeam
    (183206, 18014, 32, NULL, NULL, NULL, 1, ARRAY[113, 115, 473, 60]),
    -- Bede: Gothorita Lv. 32: Fake Tears, Psybeam, Rock Tomb
    (183206, 18014, 32, NULL, NULL, NULL, 2, ARRAY[313, 60, 317]),
    -- Bede: Galarian Ponyta Lv. 33: Fairy Wind, Psybeam, Agility
    (183206, 18014, 32, NULL, NULL, NULL, 3, ARRAY[584, 60, 97]),
    -- Bede: Hattrem Lv. 35: Dazzling Gleam, Psybeam
    (183206, 18014, 32, NULL, NULL, NULL, 4, ARRAY[605, 60]),
    -- Hop: Trevenant Lv. 34: Horn Leech, Shadow Claw, Confuse Ray
    (183108, 18013, 31, 180001, 'grookey', NULL, 1, ARRAY[532, 421, 109]),
    -- Hop: Heatmor Lv. 34: Fire Lash, Bug Bite, Slash, Lick
    (183108, 18013, 31, 180001, 'grookey', NULL, 2, ARRAY[680, 450, 163, 122]),
    -- Hop: Snorlax Lv. 35: Body Slam, Stockpile, Heavy Slam
    (183108, 18013, 31, 180001, 'grookey', NULL, 3, ARRAY[34, 254, 484]),
    -- Hop: Boltund Lv. 35: Spark, Crunch, Roar, Nuzzle
    (183108, 18013, 31, 180001, 'grookey', NULL, 4, ARRAY[209, 242, 46, 609]),
    -- Hop: Inteleon Lv. 37: Snipe Shot, Sucker Punch, Tearful Look, Whirlpool
    (183108, 18013, 31, 180001, 'grookey', NULL, 5, ARRAY[745, 389, 715, 250]),
    -- Hop: Trevenant Lv. 34: Horn Leech, Shadow Claw, Confuse Ray
    (183108, 18013, 31, 180001, 'scorbunny', NULL, 1, ARRAY[532, 421, 109]),
    -- Hop: Heatmor Lv. 34: Fire Lash, Bug Bite, Slash, Lick
    (183108, 18013, 31, 180001, 'scorbunny', NULL, 2, ARRAY[680, 450, 163, 122]),
    -- Hop: Snorlax Lv. 35: Body Slam, Stockpile, Heavy Slam
    (183108, 18013, 31, 180001, 'scorbunny', NULL, 3, ARRAY[34, 254, 484]),
    -- Hop: Boltund Lv. 35: Spark, Crunch, Roar, Nuzzle
    (183108, 18013, 31, 180001, 'scorbunny', NULL, 4, ARRAY[209, 242, 46, 609]),
    -- Hop: Rillaboom Lv. 37: Drum Beating, Knock Off, Slam, Brutal Swing
    (183108, 18013, 31, 180001, 'scorbunny', NULL, 5, ARRAY[778, 282, 21, 693]),
    -- Hop: Trevenant Lv. 34: Horn Leech, Shadow Claw, Confuse Ray
    (183108, 18013, 31, 180001, 'sobble', NULL, 1, ARRAY[532, 421, 109]),
    -- Hop: Heatmor Lv. 34: Fire Lash, Bug Bite, Slash, Lick
    (183108, 18013, 31, 180001, 'sobble', NULL, 2, ARRAY[680, 450, 163, 122]),
    -- Hop: Snorlax Lv. 35: Body Slam, Stockpile, Heavy Slam
    (183108, 18013, 31, 180001, 'sobble', NULL, 3, ARRAY[34, 254, 484]),
    -- Hop: Boltund Lv. 35: Spark, Crunch, Roar, Nuzzle
    (183108, 18013, 31, 180001, 'sobble', NULL, 4, ARRAY[209, 242, 46, 609]),
    -- Hop: Cinderace Lv. 37: Pyro Ball, Headbutt, Acrobatics, Agility
    (183108, 18013, 31, 180001, 'sobble', NULL, 5, ARRAY[780, 29, 512, 97]),
    -- Hop: Trevenant Lv. 34: Horn Leech, Shadow Claw, Confuse Ray
    (183208, 18013, 32, 180001, 'grookey', NULL, 1, ARRAY[532, 421, 109]),
    -- Hop: Heatmor Lv. 34: Fire Lash, Bug Bite, Slash, Lick
    (183208, 18013, 32, 180001, 'grookey', NULL, 2, ARRAY[680, 450, 163, 122]),
    -- Hop: Snorlax Lv. 35: Body Slam, Stockpile, Heavy Slam
    (183208, 18013, 32, 180001, 'grookey', NULL, 3, ARRAY[34, 254, 484]),
    -- Hop: Boltund Lv. 35: Spark, Crunch, Roar, Nuzzle
    (183208, 18013, 32, 180001, 'grookey', NULL, 4, ARRAY[209, 242, 46, 609]),
    -- Hop: Inteleon Lv. 37: Snipe Shot, Sucker Punch, Tearful Look, Whirlpool
    (183208, 18013, 32, 180001, 'grookey', NULL, 5, ARRAY[745, 389, 715, 250]),
    -- Hop: Trevenant Lv. 34: Horn Leech, Shadow Claw, Confuse Ray
    (183208, 18013, 32, 180001, 'scorbunny', NULL, 1, ARRAY[532, 421, 109]),
    -- Hop: Heatmor Lv. 34: Fire Lash, Bug Bite, Slash, Lick
    (183208, 18013, 32, 180001, 'scorbunny', NULL, 2, ARRAY[680, 450, 163, 122]),
    -- Hop: Snorlax Lv. 35: Body Slam, Stockpile, Heavy Slam
    (183208, 18013, 32, 180001, 'scorbunny', NULL, 3, ARRAY[34, 254, 484]),
    -- Hop: Boltund Lv. 35: Spark, Crunch, Roar, Nuzzle
    (183208, 18013, 32, 180001, 'scorbunny', NULL, 4, ARRAY[209, 242, 46, 609]),
    -- Hop: Rillaboom Lv. 37: Drum Beating, Knock Off, Slam, Brutal Swing
    (183208, 18013, 32, 180001, 'scorbunny', NULL, 5, ARRAY[778, 282, 21, 693]),
    -- Hop: Trevenant Lv. 34: Horn Leech, Shadow Claw, Confuse Ray
    (183208, 18013, 32, 180001, 'sobble', NULL, 1, ARRAY[532, 421, 109]),
    -- Hop: Heatmor Lv. 34: Fire Lash, Bug Bite, Slash, Lick
    (183208, 18013, 32, 180001, 'sobble', NULL, 2, ARRAY[680, 450, 163, 122]),
    -- Hop: Snorlax Lv. 35: Body Slam, Stockpile, Heavy Slam
    (183208, 18013, 32, 180001, 'sobble', NULL, 3, ARRAY[34, 254, 484]),
    -- Hop: Boltund Lv. 35: Spark, Crunch, Roar, Nuzzle
    (183208, 18013, 32, 180001, 'sobble', NULL, 4, ARRAY[209, 242, 46, 609]),
    -- Hop: Cinderace Lv. 37: Pyro Ball, Headbutt, Acrobatics, Agility
    (183208, 18013, 32, 180001, 'sobble', NULL, 5, ARRAY[780, 29, 512, 97]),
    -- Hop: Dubwool Lv. 40: Double Kick, Take Down, Growl, Defense Curl
    (180009, 18013, NULL, 180001, 'grookey', NULL, 1, ARRAY[24, 36, 45, 111]),
    -- Hop: Corviknight Lv. 40: Drill Peck, Scary Face, Pluck, Fury Attack
    (180009, 18013, NULL, 180001, 'grookey', NULL, 2, ARRAY[65, 184, 365, 31]),
    -- Hop: Pincurchin Lv. 39: Spark, Bubble Beam, Curse
    (180009, 18013, NULL, 180001, 'grookey', NULL, 3, ARRAY[209, 61, 174]),
    -- Hop: Snorlax Lv. 39: Heavy Slam, Body Slam, Crunch
    (180009, 18013, NULL, 180001, 'grookey', NULL, 4, ARRAY[484, 34, 242]),
    -- Hop: Inteleon Lv. 41: Snipe Shot, Tearful Look, Sucker Punch, Liquidation
    (180009, 18013, NULL, 180001, 'grookey', NULL, 5, ARRAY[745, 715, 389, 710]),
    -- Hop: Dubwool Lv. 40: Double Kick, Take Down, Growl, Defense Curl
    (180009, 18013, NULL, 180001, 'scorbunny', NULL, 1, ARRAY[24, 36, 45, 111]),
    -- Hop: Corviknight Lv. 40: Drill Peck, Scary Face, Pluck, Fury Attack
    (180009, 18013, NULL, 180001, 'scorbunny', NULL, 2, ARRAY[65, 184, 365, 31]),
    -- Hop: Pincurchin Lv. 39: Spark, Bubble Beam, Curse
    (180009, 18013, NULL, 180001, 'scorbunny', NULL, 3, ARRAY[209, 61, 174]),
    -- Hop: Snorlax Lv. 39: Heavy Slam, Body Slam, Crunch
    (180009, 18013, NULL, 180001, 'scorbunny', NULL, 4, ARRAY[484, 34, 242]),
    -- Hop: Rillaboom Lv. 41: Drum Beating, Double Hit, Brick Break, Knock Off
    (180009, 18013, NULL, 180001, 'scorbunny', NULL, 5, ARRAY[778, 458, 280, 282]),
    -- Hop: Dubwool Lv. 40: Double Kick, Take Down, Growl, Defense Curl
    (180009, 18013, NULL, 180001, 'sobble', NULL, 1, ARRAY[24, 36, 45, 111]),
    -- Hop: Corviknight Lv. 40: Drill Peck, Scary Face, Pluck, Fury Attack
    (180009, 18013, NULL, 180001, 'sobble', NULL, 2, ARRAY[65, 184, 365, 31]),
    -- Hop: Pincurchin Lv. 39: Spark, Bubble Beam, Curse
    (180009, 18013, NULL, 180001, 'sobble', NULL, 3, ARRAY[209, 61, 174]),
    -- Hop: Snorlax Lv. 39: Heavy Slam, Body Slam, Crunch
    (180009, 18013, NULL, 180001, 'sobble', NULL, 4, ARRAY[484, 34, 242]),
    -- Hop: Cinderace Lv. 41: Pyro Ball, Counter, Mega Kick, Double Kick
    (180009, 18013, NULL, 180001, 'sobble', NULL, 5, ARRAY[780, 68, 25, 24]),
    -- Marnie: Liepard Lv. 42: Fake Out, Torment, Nasty Plot, Sucker Punch
    (180009, 18015, NULL, NULL, NULL, NULL, 1, ARRAY[252, 259, 417, 389]),
    -- Marnie: Toxicroak Lv. 43: Venoshock, Sucker Punch, Swagger, Poison Jab
    (180009, 18015, NULL, NULL, NULL, NULL, 2, ARRAY[474, 389, 207, 398]),
    -- Marnie: Scrafty Lv. 43: Brick Break, Scary Face, Crunch, Swagger
    (180009, 18015, NULL, NULL, NULL, NULL, 3, ARRAY[280, 184, 242, 207]),
    -- Marnie: Morpeko Lv. 44: Quick Attack, Torment, Spark, Bite
    (180009, 18015, NULL, NULL, NULL, NULL, 4, ARRAY[98, 259, 209, 44]),
    -- Marnie: Liepard Lv. 47: Fake Out, Torment, Nasty Plot, Snarl
    (180015, 18015, NULL, NULL, NULL, NULL, 1, ARRAY[252, 259, 417, 555]),
    -- Marnie: Toxicroak Lv. 47: Venoshock, Sucker Punch, Swagger, Toxic
    (180015, 18015, NULL, NULL, NULL, NULL, 2, ARRAY[474, 389, 207, 92]),
    -- Marnie: Scrafty Lv. 47: Swagger, Scary Face, Brick Break, Crunch
    (180015, 18015, NULL, NULL, NULL, NULL, 3, ARRAY[207, 184, 280, 242]),
    -- Marnie: Morpeko Lv. 48: Bullet Seed, Torment, Spark, Bite
    (180015, 18015, NULL, NULL, NULL, NULL, 4, ARRAY[331, 259, 209, 44]),
    -- Marnie: Gigantamax Grimmsnarl Lv. 49: Spirit Break, Darkest Lariat, Bulk Up, Torment
    (180015, 18015, NULL, NULL, NULL, NULL, 5, ARRAY[789, 663, 339, 259]),
    -- Hop: Dubwool Lv. 48: Cotton Guard, Reversal, Body Slam, Zen Headbutt
    (180015, 18013, NULL, 180001, 'grookey', NULL, 1, ARRAY[538, 179, 34, 428]),
    -- Hop: Corviknight Lv. 48: Steel Wing, Drill Peck, Scary Face, Swagger
    (180015, 18013, NULL, 180001, 'grookey', NULL, 2, ARRAY[211, 65, 184, 207]),
    -- Hop: Pincurchin Lv. 47: Thunderbolt, Poison Jab, Curse
    (180015, 18013, NULL, 180001, 'grookey', NULL, 3, ARRAY[85, 398, 174]),
    -- Hop: Snorlax Lv. 47: Heavy Slam, High Horsepower, Hammer Arm
    (180015, 18013, NULL, 180001, 'grookey', NULL, 4, ARRAY[484, 667, 359]),
    -- Hop: Inteleon Lv. 49: Snipe Shot, Mud Shot, Icy Wind, Dark Pulse
    (180015, 18013, NULL, 180001, 'grookey', NULL, 5, ARRAY[745, 341, 196, 399]),
    -- Hop: Dubwool Lv. 48: Cotton Guard, Reversal, Body Slam, Zen Headbutt
    (180015, 18013, NULL, 180001, 'scorbunny', NULL, 1, ARRAY[538, 179, 34, 428]),
    -- Hop: Corviknight Lv. 48: Steel Wing, Drill Peck, Scary Face, Swagger
    (180015, 18013, NULL, 180001, 'scorbunny', NULL, 2, ARRAY[211, 65, 184, 207]),
    -- Hop: Pincurchin Lv. 47: Thunderbolt, Poison Jab, Curse
    (180015, 18013, NULL, 180001, 'scorbunny', NULL, 3, ARRAY[85, 398, 174]),
    -- Hop: Snorlax Lv. 47: Heavy Slam, High Horsepower, Hammer Arm
    (180015, 18013, NULL, 180001, 'scorbunny', NULL, 4, ARRAY[484, 667, 359]),
    -- Hop: Rillaboom Lv. 49: Drum Beating, High Horsepower, Snarl, Uproar
    (180015, 18013, NULL, 180001, 'scorbunny', NULL, 5, ARRAY[778, 667, 555, 253]),
    -- Hop: Dubwool Lv. 48: Cotton Guard, Reversal, Body Slam, Zen Headbutt
    (180015, 18013, NULL, 180001, 'sobble', NULL, 1, ARRAY[538, 179, 34, 428]),
    -- Hop: Corviknight Lv. 48: Steel Wing, Drill Peck, Scary Face, Swagger
    (180015, 18013, NULL, 180001, 'sobble', NULL, 2, ARRAY[211, 65, 184, 207]),
    -- Hop: Pincurchin Lv. 47: Thunderbolt, Poison Jab, Curse
    (180015, 18013, NULL, 180001, 'sobble', NULL, 3, ARRAY[85, 398, 174]),
    -- Hop: Snorlax Lv. 47: Heavy Slam, High Horsepower, Hammer Arm
    (180015, 18013, NULL, 180001, 'sobble', NULL, 4, ARRAY[484, 667, 359]),
    -- Hop: Cinderace Lv. 49: Pyro Ball, Counter, Gunk Shot, Bounce
    (180015, 18013, NULL, 180001, 'sobble', NULL, 5, ARRAY[780, 68, 441, 340]),
    -- Bede: Mawile Lv. 51: Play Rough, Iron Head, Crunch
    (180015, 18014, NULL, NULL, NULL, NULL, 1, ARRAY[583, 442, 242]),
    -- Bede: Gardevoir Lv. 51: Dazzling Gleam, Psychic, Calm Mind, Wish
    (180015, 18014, NULL, NULL, NULL, NULL, 2, ARRAY[605, 94, 347, 273]),
    -- Bede: Galarian Rapidash Lv. 52: Psycho Cut, Take Down, Dazzling Gleam, Quick Attack
    (180015, 18014, NULL, NULL, NULL, NULL, 3, ARRAY[427, 36, 605, 98]),
    -- Bede: Gigantamax Hatterene Lv. 53: Psychic, Dazzling Gleam, Calm Mind, Mystical Fire
    (180015, 18014, NULL, NULL, NULL, NULL, 4, ARRAY[94, 605, 347, 595]),
    -- Oleana, Rose Tower: Froslass Lv. 50: Hex, Icy Wind, Will-O-Wisp, Double Team
    (180015, 18021, NULL, NULL, NULL, NULL, 1, ARRAY[506, 196, 261, 104]),
    -- Oleana, Rose Tower: Tsareena Lv. 50: Trop Kick, Stomp, Attract, Acrobatics
    (180015, 18021, NULL, NULL, NULL, NULL, 2, ARRAY[688, 23, 213, 512]),
    -- Oleana, Rose Tower: Salazzle Lv. 50: Venoshock, Incinerate, Poison Gas, Dragon Pulse
    (180015, 18021, NULL, NULL, NULL, NULL, 3, ARRAY[474, 510, 139, 406]),
    -- Oleana, Rose Tower: Milotic Lv. 51: Surf, Safeguard, Aqua Ring, Recover
    (180015, 18021, NULL, NULL, NULL, NULL, 4, ARRAY[57, 219, 392, 105]),
    -- Oleana, Rose Tower: Garbodor Lv. 52: Gunk Shot, Stomping Tantrum, Rock Blast, Toxic Spikes
    (180015, 18021, NULL, NULL, NULL, NULL, 5, ARRAY[441, 707, 350, 390]),
    -- Nessa, Champion Cup finals: Golisopod Lv. 51: First Impression, Liquidation, Swords Dance, Shadow Claw
    (180015, 18002, NULL, NULL, NULL, NULL, 1, ARRAY[660, 710, 14, 421]),
    -- Nessa, Champion Cup finals: Pelipper Lv. 51: Roost, Air Slash, Water Pulse, Tailwind
    (180015, 18002, NULL, NULL, NULL, NULL, 2, ARRAY[355, 403, 352, 366]),
    -- Nessa, Champion Cup finals: Barraskewda Lv. 52: Liquidation, Throat Chop, Ice Fang, Drill Run
    (180015, 18002, NULL, NULL, NULL, NULL, 3, ARRAY[710, 675, 423, 529]),
    -- Nessa, Champion Cup finals: Seaking Lv. 52: Smart Strike, Megahorn, Aqua Ring, Waterfall
    (180015, 18002, NULL, NULL, NULL, NULL, 4, ARRAY[684, 224, 392, 127]),
    -- Nessa, Champion Cup finals: Drednaw Lv. 53: Liquidation, Jaw Lock, Rock Tomb, Crunch
    (180015, 18002, NULL, NULL, NULL, NULL, 5, ARRAY[710, 746, 317, 242]),
    -- Bea, Champion Cup finals: Hawlucha Lv. 52: Flying Press, High Jump Kick, Bounce
    (180015, 18004, NULL, NULL, NULL, NULL, 1, ARRAY[560, 136, 340]),
    -- Bea, Champion Cup finals: Grapploct Lv. 52: Octolock, Submission, Bind, Mega Punch
    (180015, 18004, NULL, NULL, NULL, NULL, 2, ARRAY[753, 66, 20, 5]),
    -- Bea, Champion Cup finals: Sirfetch'd Lv. 53: Leaf Blade, Slam, Brick Break, Brutal Swing
    (180015, 18004, NULL, NULL, NULL, NULL, 3, ARRAY[348, 21, 280, 693]),
    -- Bea, Champion Cup finals: Falinks Lv. 53: No Retreat, Bulk Up, Close Combat, Rock Tomb
    (180015, 18004, NULL, NULL, NULL, NULL, 4, ARRAY[748, 339, 370, 317]),
    -- Bea, Champion Cup finals: Machamp Lv. 54: Cross Chop, Revenge, Fire Punch, Strength
    (180015, 18004, NULL, NULL, NULL, NULL, 5, ARRAY[238, 279, 7, 70]),
    -- Allister, Champion Cup finals: Dusknoir Lv. 52: Shadow Punch, Thunder Punch, Rock Tomb, Disable
    (180015, 18005, NULL, NULL, NULL, NULL, 1, ARRAY[325, 9, 317, 50]),
    -- Allister, Champion Cup finals: Chandelure Lv. 52: Shadow Ball, Mystical Fire, Will-O-Wisp
    (180015, 18005, NULL, NULL, NULL, NULL, 2, ARRAY[247, 595, 261]),
    -- Allister, Champion Cup finals: Cursola Lv. 53: Hex, Strength Sap, Ancient Power, Amnesia
    (180015, 18005, NULL, NULL, NULL, NULL, 3, ARRAY[506, 668, 246, 133]),
    -- Allister, Champion Cup finals: Polteageist Lv. 53: Shadow Ball, Protect, Nasty Plot, Giga Drain
    (180015, 18005, NULL, NULL, NULL, NULL, 4, ARRAY[247, 182, 417, 202]),
    -- Allister, Champion Cup finals: Gengar Lv. 54: Shadow Ball, Sludge Bomb, Dark Pulse, Hypnosis
    (180015, 18005, NULL, NULL, NULL, NULL, 5, ARRAY[247, 188, 399, 95]),
    -- Raihan, Champion Cup finals: Torkoal Lv. 53: Lava Plume, Body Press, Solar Beam, Yawn
    (180015, 18010, NULL, NULL, NULL, NULL, 1, ARRAY[436, 776, 76, 281]),
    -- Raihan, Champion Cup finals: Goodra Lv. 54: Rain Dance, Surf, Thunder, Muddy Water
    (180015, 18010, NULL, NULL, NULL, NULL, 2, ARRAY[240, 57, 87, 330]),
    -- Raihan, Champion Cup finals: Turtonator Lv. 54: Sunny Day, Dragon Pulse, Shell Trap, Fire Blast
    (180015, 18010, NULL, NULL, NULL, NULL, 3, ARRAY[241, 406, 704, 126]),
    -- Raihan, Champion Cup finals: Flygon Lv. 54: Sandstorm, Dragon Claw, Earthquake, Crunch
    (180015, 18010, NULL, NULL, NULL, NULL, 4, ARRAY[201, 337, 89, 242]),
    -- Raihan, Champion Cup finals: Duraludon Lv. 55: Dragon Claw, Body Press, Stone Edge, Iron Head
    (180015, 18010, NULL, NULL, NULL, NULL, 5, ARRAY[337, 776, 444, 442]),
    -- Rose: Escavalier Lv. 55: Drill Run, Iron Head, Megahorn, Swords Dance
    (180011, 18016, NULL, NULL, NULL, NULL, 1, ARRAY[529, 442, 224, 14]),
    -- Rose: Ferrothorn Lv. 55: Gyro Ball, Power Whip, Body Press, Curse
    (180011, 18016, NULL, NULL, NULL, NULL, 2, ARRAY[360, 438, 776, 174]),
    -- Rose: Perrserker Lv. 55: Iron Head, Screech, Shadow Claw, Throat Chop
    (180011, 18016, NULL, NULL, NULL, NULL, 3, ARRAY[442, 103, 421, 675]),
    -- Rose: Klinklang Lv. 56: Gear Grind, Shift Gear, Wild Charge, Assurance
    (180011, 18016, NULL, NULL, NULL, NULL, 4, ARRAY[544, 508, 528, 372]),
    -- Rose: Gigantamax Copperajah Lv. 57: Heavy Slam, Iron Head, High Horsepower, Zen Headbutt
    (180011, 18016, NULL, NULL, NULL, NULL, 5, ARRAY[484, 442, 667, 428]),
    -- Bede: Mawile Lv. 61: Play Rough, Fake Tears, Iron Head, Crunch
    (180014, 18014, NULL, NULL, NULL, NULL, 1, ARRAY[583, 313, 442, 242]),
    -- Bede: Gardevoir Lv. 61: Dazzling Gleam, Psychic, Future Sight, Magical Leaf
    (180014, 18014, NULL, NULL, NULL, NULL, 2, ARRAY[605, 94, 248, 345]),
    -- Bede: Galarian Rapidash Lv. 62: Smart Strike, Psycho Cut, Dazzling Gleam, Stomp
    (180014, 18014, NULL, NULL, NULL, NULL, 3, ARRAY[684, 427, 605, 23]),
    -- Bede: Hatterene Lv. 63: Psychic, Calm Mind, Dazzling Gleam, Mystical Fire
    (180014, 18014, NULL, NULL, NULL, NULL, 4, ARRAY[94, 347, 605, 595]),
    -- Hop, Slumbering Weald (first post-game visit) [grookey]: Dubwool Lv. 59: Cotton Guard, Double Kick, Double-Edge, Headbutt
    (180014, 18025, NULL, 180001, 'grookey', NULL, 1, ARRAY[538, 24, 38, 29]),
    -- Hop, Slumbering Weald (first post-game visit) [grookey]: Corviknight Lv. 59: Steel Wing, Drill Peck, Scary Face, Brave Bird
    (180014, 18025, NULL, 180001, 'grookey', NULL, 2, ARRAY[211, 65, 184, 413]),
    -- Hop, Slumbering Weald (first post-game visit) [grookey]: Pincurchin Lv. 58: Zing Zap, Poison Jab, Bubble Beam, Fury Attack
    (180014, 18025, NULL, 180001, 'grookey', NULL, 3, ARRAY[716, 398, 61, 31]),
    -- Hop, Slumbering Weald (first post-game visit) [grookey]: Snorlax Lv. 58: Hammer Arm, High Horsepower, Heavy Slam, Crunch
    (180014, 18025, NULL, 180001, 'grookey', NULL, 4, ARRAY[359, 667, 484, 242]),
    -- Hop, Slumbering Weald (first post-game visit) [grookey]: Cramorant Lv. 58: Dive, Drill Peck, Throat Chop, Steel Wing
    (180014, 18025, NULL, 180001, 'grookey', NULL, 5, ARRAY[291, 65, 675, 211]),
    -- Hop, Slumbering Weald (first post-game visit) [grookey]: Inteleon Lv. 60: Snipe Shot, Sucker Punch, Liquidation, U-turn
    (180014, 18025, NULL, 180001, 'grookey', NULL, 6, ARRAY[745, 389, 710, 369]),
    -- Hop, Slumbering Weald (first post-game visit) [scorbunny]: Dubwool Lv. 59: Cotton Guard, Double Kick, Double-Edge, Headbutt
    (180014, 18025, NULL, 180001, 'scorbunny', NULL, 1, ARRAY[538, 24, 38, 29]),
    -- Hop, Slumbering Weald (first post-game visit) [scorbunny]: Corviknight Lv. 59: Steel Wing, Drill Peck, Scary Face, Brave Bird
    (180014, 18025, NULL, 180001, 'scorbunny', NULL, 2, ARRAY[211, 65, 184, 413]),
    -- Hop, Slumbering Weald (first post-game visit) [scorbunny]: Pincurchin Lv. 58: Zing Zap, Poison Jab, Bubble Beam, Fury Attack
    (180014, 18025, NULL, 180001, 'scorbunny', NULL, 3, ARRAY[716, 398, 61, 31]),
    -- Hop, Slumbering Weald (first post-game visit) [scorbunny]: Snorlax Lv. 58: Hammer Arm, High Horsepower, Heavy Slam, Crunch
    (180014, 18025, NULL, 180001, 'scorbunny', NULL, 4, ARRAY[359, 667, 484, 242]),
    -- Hop, Slumbering Weald (first post-game visit) [scorbunny]: Cramorant Lv. 58: Dive, Drill Peck, Throat Chop, Steel Wing
    (180014, 18025, NULL, 180001, 'scorbunny', NULL, 5, ARRAY[291, 65, 675, 211]),
    -- Hop, Slumbering Weald (first post-game visit) [scorbunny]: Rillaboom Lv. 60: Drum Beating, Slam, Knock Off, Uproar
    (180014, 18025, NULL, 180001, 'scorbunny', NULL, 6, ARRAY[778, 21, 282, 253]),
    -- Hop, Slumbering Weald (first post-game visit) [sobble]: Dubwool Lv. 59: Cotton Guard, Double Kick, Double-Edge, Headbutt
    (180014, 18025, NULL, 180001, 'sobble', NULL, 1, ARRAY[538, 24, 38, 29]),
    -- Hop, Slumbering Weald (first post-game visit) [sobble]: Corviknight Lv. 59: Steel Wing, Drill Peck, Scary Face, Brave Bird
    (180014, 18025, NULL, 180001, 'sobble', NULL, 2, ARRAY[211, 65, 184, 413]),
    -- Hop, Slumbering Weald (first post-game visit) [sobble]: Pincurchin Lv. 58: Zing Zap, Poison Jab, Bubble Beam, Fury Attack
    (180014, 18025, NULL, 180001, 'sobble', NULL, 3, ARRAY[716, 398, 61, 31]),
    -- Hop, Slumbering Weald (first post-game visit) [sobble]: Snorlax Lv. 58: Hammer Arm, High Horsepower, Heavy Slam, Crunch
    (180014, 18025, NULL, 180001, 'sobble', NULL, 4, ARRAY[359, 667, 484, 242]),
    -- Hop, Slumbering Weald (first post-game visit) [sobble]: Cramorant Lv. 58: Dive, Drill Peck, Throat Chop, Steel Wing
    (180014, 18025, NULL, 180001, 'sobble', NULL, 5, ARRAY[291, 65, 675, 211]),
    -- Hop, Slumbering Weald (first post-game visit) [sobble]: Cinderace Lv. 60: Double-Edge, Headbutt, Pyro Ball, Agility
    (180014, 18025, NULL, 180001, 'sobble', NULL, 6, ARRAY[38, 29, 780, 97]),
    -- Sordward, Slumbering Weald: Sirfetch'd Lv. 60: Leaf Blade, Slam, Meteor Assault, Swords Dance
    (180014, 18022, NULL, NULL, NULL, NULL, 1, ARRAY[348, 21, 794, 14]),
    -- Sordward, Slumbering Weald: Golisopod Lv. 60: First Impression, Liquidation, X-Scissor, Sucker Punch
    (180014, 18022, NULL, NULL, NULL, NULL, 2, ARRAY[660, 710, 404, 389]),
    -- Sordward, Slumbering Weald: Doublade Lv. 60: Sacred Sword, Iron Head, Night Slash, Swords Dance
    (180014, 18022, NULL, NULL, NULL, NULL, 3, ARRAY[533, 442, 400, 14]),
    -- Sordward, Slumbering Weald: Bisharp Lv. 60: Iron Head, Night Slash, Swords Dance, Stone Edge
    (180014, 18022, NULL, NULL, NULL, NULL, 4, ARRAY[442, 400, 14, 444]),
    -- Shielbert, Slumbering Weald: Sirfetch'd Lv. 60: Leaf Blade, Slam, Meteor Assault, Iron Defense
    (180014, 18023, NULL, NULL, NULL, NULL, 1, ARRAY[348, 21, 794, 334]),
    -- Shielbert, Slumbering Weald: Bronzong Lv. 60: Light Screen, Extrasensory, Gyro Ball, Hypnosis
    (180014, 18023, NULL, NULL, NULL, NULL, 2, ARRAY[113, 326, 360, 95]),
    -- Shielbert, Slumbering Weald: Falinks Lv. 60: No Retreat, First Impression, Close Combat, Megahorn
    (180014, 18023, NULL, NULL, NULL, NULL, 3, ARRAY[748, 660, 370, 224]),
    -- Shielbert, Slumbering Weald: Klinklang Lv. 60: Gear Grind, Shift Gear, Protect, Wild Charge
    (180014, 18023, NULL, NULL, NULL, NULL, 4, ARRAY[544, 508, 182, 528]),
    -- Sordward & Shielbert, Hammerlocke Stadium: Golisopod Lv. 62: First Impression, Liquidation, X-Scissor, Sucker Punch
    (180014, 18024, NULL, NULL, NULL, NULL, 1, ARRAY[660, 710, 404, 389]),
    -- Sordward & Shielbert, Hammerlocke Stadium: Doublade Lv. 62: Sacred Sword, Iron Head, Night Slash, Shadow Claw
    (180014, 18024, NULL, NULL, NULL, NULL, 2, ARRAY[533, 442, 400, 421]),
    -- Sordward & Shielbert, Hammerlocke Stadium: Bisharp Lv. 62: Iron Head, Night Slash, Stone Edge, Swords Dance
    (180014, 18024, NULL, NULL, NULL, NULL, 3, ARRAY[442, 400, 444, 14]),
    -- Sordward & Shielbert, Hammerlocke Stadium: Bronzong Lv. 62: Light Screen, Extrasensory, Gyro Ball, Hypnosis
    (180014, 18024, NULL, NULL, NULL, NULL, 4, ARRAY[113, 326, 360, 95]),
    -- Sordward & Shielbert, Hammerlocke Stadium: Falinks Lv. 60: No Retreat, First Impression, Close Combat, Megahorn
    (180014, 18024, NULL, NULL, NULL, NULL, 5, ARRAY[748, 660, 370, 224]),
    -- Sordward & Shielbert, Hammerlocke Stadium: Klinklang Lv. 60: Gear Grind, Shift Gear, Protect, Wild Charge
    (180014, 18024, NULL, NULL, NULL, NULL, 6, ARRAY[544, 508, 182, 528]),
    -- Sordward, Energy Plant: Sirfetch'd Lv. 64: Leaf Blade, Slam, Meteor Assault, Swords Dance
    (180014, 18026, NULL, NULL, NULL, NULL, 1, ARRAY[348, 21, 794, 14]),
    -- Sordward, Energy Plant: Golisopod Lv. 64: First Impression, Liquidation, X-Scissor, Sucker Punch
    (180014, 18026, NULL, NULL, NULL, NULL, 2, ARRAY[660, 710, 404, 389]),
    -- Sordward, Energy Plant: Doublade Lv. 64: Sacred Sword, Iron Head, Night Slash, Swords Dance
    (180014, 18026, NULL, NULL, NULL, NULL, 3, ARRAY[533, 442, 400, 14]),
    -- Sordward, Energy Plant: Bisharp Lv. 64: Iron Head, Night Slash, Swords Dance, Stone Edge
    (180014, 18026, NULL, NULL, NULL, NULL, 4, ARRAY[442, 400, 14, 444]),
    -- Shielbert, Energy Plant: Sirfetch'd Lv. 64: Leaf Blade, Slam, Meteor Assault, Iron Defense
    (180014, 18027, NULL, NULL, NULL, NULL, 1, ARRAY[348, 21, 794, 334]),
    -- Shielbert, Energy Plant: Bronzong Lv. 64: Light Screen, Extrasensory, Gyro Ball, Hypnosis
    (180014, 18027, NULL, NULL, NULL, NULL, 2, ARRAY[113, 326, 360, 95]),
    -- Shielbert, Energy Plant: Falinks Lv. 64: No Retreat, First Impression, Close Combat, Megahorn
    (180014, 18027, NULL, NULL, NULL, NULL, 3, ARRAY[748, 660, 370, 224]),
    -- Shielbert, Energy Plant: Klinklang Lv. 64: Gear Grind, Shift Gear, Protect, Wild Charge
    (180014, 18027, NULL, NULL, NULL, NULL, 4, ARRAY[544, 508, 182, 528]),
    -- Hop: Dubwool Lv. 69: Cotton Guard, Double Kick, Double-Edge, Headbutt
    (180014, 18013, 31, 180001, 'grookey', NULL, 1, ARRAY[538, 24, 38, 29]),
    -- Hop: Snorlax Lv. 68: Hammer Arm, Earthquake, Heavy Slam, Crunch
    (180014, 18013, 31, 180001, 'grookey', NULL, 2, ARRAY[359, 89, 484, 242]),
    -- Hop: Pincurchin Lv. 68: Zing Zap, Poison Jab, Liquidation, Recover
    (180014, 18013, 31, 180001, 'grookey', NULL, 3, ARRAY[716, 398, 710, 105]),
    -- Hop: Corviknight Lv. 69: Steel Wing, Drill Peck, Swagger, Light Screen
    (180014, 18013, 31, 180001, 'grookey', NULL, 4, ARRAY[211, 65, 207, 113]),
    -- Hop: Inteleon Lv. 70: Snipe Shot, Sucker Punch, Ice Beam, Dark Pulse
    (180014, 18013, 31, 180001, 'grookey', NULL, 5, ARRAY[745, 389, 58, 399]),
    -- Hop: Zamazenta (Crowned Shield) Lv. 70: Crunch, Behemoth Bash, Psychic Fangs, Play Rough
    (180014, 18013, 31, 180001, 'grookey', NULL, 6, ARRAY[242, 782, 706, 583]),
    -- Hop: Dubwool Lv. 69: Cotton Guard, Double Kick, Double-Edge, Headbutt
    (180014, 18013, 31, 180001, 'scorbunny', NULL, 1, ARRAY[538, 24, 38, 29]),
    -- Hop: Snorlax Lv. 68: Hammer Arm, Earthquake, Heavy Slam, Crunch
    (180014, 18013, 31, 180001, 'scorbunny', NULL, 2, ARRAY[359, 89, 484, 242]),
    -- Hop: Pincurchin Lv. 68: Zing Zap, Poison Jab, Liquidation, Recover
    (180014, 18013, 31, 180001, 'scorbunny', NULL, 3, ARRAY[716, 398, 710, 105]),
    -- Hop: Corviknight Lv. 69: Steel Wing, Drill Peck, Swagger, Light Screen
    (180014, 18013, 31, 180001, 'scorbunny', NULL, 4, ARRAY[211, 65, 207, 113]),
    -- Hop: Rillaboom Lv. 70: Drum Beating, Slam, Knock Off, High Horsepower
    (180014, 18013, 31, 180001, 'scorbunny', NULL, 5, ARRAY[778, 21, 282, 667]),
    -- Hop: Zamazenta (Crowned Shield) Lv. 70: Crunch, Behemoth Bash, Psychic Fangs, Play Rough
    (180014, 18013, 31, 180001, 'scorbunny', NULL, 6, ARRAY[242, 782, 706, 583]),
    -- Hop: Dubwool Lv. 69: Cotton Guard, Double Kick, Double-Edge, Headbutt
    (180014, 18013, 31, 180001, 'sobble', NULL, 1, ARRAY[538, 24, 38, 29]),
    -- Hop: Snorlax Lv. 68: Hammer Arm, Earthquake, Heavy Slam, Crunch
    (180014, 18013, 31, 180001, 'sobble', NULL, 2, ARRAY[359, 89, 484, 242]),
    -- Hop: Pincurchin Lv. 68: Zing Zap, Poison Jab, Liquidation, Recover
    (180014, 18013, 31, 180001, 'sobble', NULL, 3, ARRAY[716, 398, 710, 105]),
    -- Hop: Corviknight Lv. 69: Steel Wing, Drill Peck, Swagger, Light Screen
    (180014, 18013, 31, 180001, 'sobble', NULL, 4, ARRAY[211, 65, 207, 113]),
    -- Hop: Cinderace Lv. 70: Gunk Shot, Iron Head, Pyro Ball, Zen Headbutt
    (180014, 18013, 31, 180001, 'sobble', NULL, 5, ARRAY[441, 442, 780, 428]),
    -- Hop: Zamazenta (Crowned Shield) Lv. 70: Crunch, Behemoth Bash, Psychic Fangs, Play Rough
    (180014, 18013, 31, 180001, 'sobble', NULL, 6, ARRAY[242, 782, 706, 583]),
    -- Hop: Dubwool Lv. 69: Cotton Guard, Double Kick, Double-Edge, Headbutt
    (180014, 18013, 32, 180001, 'grookey', NULL, 1, ARRAY[538, 24, 38, 29]),
    -- Hop: Snorlax Lv. 68: Hammer Arm, Earthquake, Heavy Slam, Crunch
    (180014, 18013, 32, 180001, 'grookey', NULL, 2, ARRAY[359, 89, 484, 242]),
    -- Hop: Pincurchin Lv. 68: Zing Zap, Poison Jab, Liquidation, Recover
    (180014, 18013, 32, 180001, 'grookey', NULL, 3, ARRAY[716, 398, 710, 105]),
    -- Hop: Corviknight Lv. 69: Steel Wing, Drill Peck, Swagger, Light Screen
    (180014, 18013, 32, 180001, 'grookey', NULL, 4, ARRAY[211, 65, 207, 113]),
    -- Hop: Inteleon Lv. 70: Snipe Shot, Sucker Punch, Ice Beam, Dark Pulse
    (180014, 18013, 32, 180001, 'grookey', NULL, 5, ARRAY[745, 389, 58, 399]),
    -- Hop: Zacian (Crowned Sword) Lv. 70: Crunch, Behemoth Blade, Wild Charge, Close Combat
    (180014, 18013, 32, 180001, 'grookey', NULL, 6, ARRAY[242, 781, 528, 370]),
    -- Hop: Dubwool Lv. 69: Cotton Guard, Double Kick, Double-Edge, Headbutt
    (180014, 18013, 32, 180001, 'scorbunny', NULL, 1, ARRAY[538, 24, 38, 29]),
    -- Hop: Snorlax Lv. 68: Hammer Arm, Earthquake, Heavy Slam, Crunch
    (180014, 18013, 32, 180001, 'scorbunny', NULL, 2, ARRAY[359, 89, 484, 242]),
    -- Hop: Pincurchin Lv. 68: Zing Zap, Poison Jab, Liquidation, Recover
    (180014, 18013, 32, 180001, 'scorbunny', NULL, 3, ARRAY[716, 398, 710, 105]),
    -- Hop: Corviknight Lv. 69: Steel Wing, Drill Peck, Swagger, Light Screen
    (180014, 18013, 32, 180001, 'scorbunny', NULL, 4, ARRAY[211, 65, 207, 113]),
    -- Hop: Rillaboom Lv. 70: Drum Beating, Slam, Knock Off, High Horsepower
    (180014, 18013, 32, 180001, 'scorbunny', NULL, 5, ARRAY[778, 21, 282, 667]),
    -- Hop: Zacian (Crowned Sword) Lv. 70: Crunch, Behemoth Blade, Wild Charge, Close Combat
    (180014, 18013, 32, 180001, 'scorbunny', NULL, 6, ARRAY[242, 781, 528, 370]),
    -- Hop: Dubwool Lv. 69: Cotton Guard, Double Kick, Double-Edge, Headbutt
    (180014, 18013, 32, 180001, 'sobble', NULL, 1, ARRAY[538, 24, 38, 29]),
    -- Hop: Snorlax Lv. 68: Hammer Arm, Earthquake, Heavy Slam, Crunch
    (180014, 18013, 32, 180001, 'sobble', NULL, 2, ARRAY[359, 89, 484, 242]),
    -- Hop: Pincurchin Lv. 68: Zing Zap, Poison Jab, Liquidation, Recover
    (180014, 18013, 32, 180001, 'sobble', NULL, 3, ARRAY[716, 398, 710, 105]),
    -- Hop: Corviknight Lv. 69: Steel Wing, Drill Peck, Swagger, Light Screen
    (180014, 18013, 32, 180001, 'sobble', NULL, 4, ARRAY[211, 65, 207, 113]),
    -- Hop: Cinderace Lv. 70: Gunk Shot, Iron Head, Pyro Ball, Zen Headbutt
    (180014, 18013, 32, 180001, 'sobble', NULL, 5, ARRAY[441, 442, 780, 428]),
    -- Hop: Zacian (Crowned Sword) Lv. 70: Crunch, Behemoth Blade, Wild Charge, Close Combat
    (180014, 18013, 32, 180001, 'sobble', NULL, 6, ARRAY[242, 781, 528, 370]),
    -- Zamazenta: Zamazenta (Crowned Shield) Lv. 70: Play Rough, Iron Defense, Crunch, Behemoth Bash
    (180014, 18017, NULL, NULL, NULL, NULL, 1, ARRAY[583, 334, 242, 782]),
    -- Zacian: Zacian (Crowned Sword) Lv. 70: Sacred Sword, Swords Dance, Behemoth Blade, Crunch
    (180014, 18018, NULL, NULL, NULL, NULL, 1, ARRAY[533, 14, 781, 242]),
    -- Zacian: Zacian (Crowned Sword) Lv. 70: Sacred Sword, Swords Dance, Behemoth Blade, Crunch
    (180014, 18019, NULL, NULL, NULL, NULL, 1, ARRAY[533, 14, 781, 242]),
    -- Zamazenta: Zamazenta (Crowned Shield) Lv. 70: Slash, Crunch, Behemoth Bash, Iron Defense
    (180014, 18020, NULL, NULL, NULL, NULL, 1, ARRAY[163, 242, 782, 334])
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
