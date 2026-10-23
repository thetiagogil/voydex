-- ============================================================================
-- Source
-- ============================================================================
-- Primary: data-mined X / Y trainer data; where it gives a Pokémon no
-- set moves, PokéWiki's trainer team tables, else the default level-up
-- moves for its level from Voydex's own learnset.
-- Cross-check: PokéWiki trainer team tables.
-- Pokémon no source confirms are left without moves (Voydex reads their types).
-- Scope: X / Y Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each X / Y opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Viola: Surskit Lv. 10: Quick Attack, Bubble, Water Sport
    (130003, 13001, NULL, NULL, NULL, NULL, 1, ARRAY[98, 145, 346]),
    -- Viola: Vivillon Lv. 12: Harden, Infestation, Tackle
    (130003, 13001, NULL, NULL, NULL, NULL, 2, ARRAY[106, 611, 33]),
    -- Grant: Amaura Lv. 25: Aurora Beam, Rock Tomb, Thunder Wave, Take Down
    (130006, 13002, NULL, NULL, NULL, NULL, 1, ARRAY[62, 317, 86, 36]),
    -- Grant: Tyrunt Lv. 25: Rock Tomb, Bite, Stomp
    (130006, 13002, NULL, NULL, NULL, NULL, 2, ARRAY[317, 44, 23]),
    -- Korrina: Mienfoo Lv. 29: Power-Up Punch, Fake Out, Double Slap
    (130007, 13003, NULL, NULL, NULL, NULL, 1, ARRAY[612, 252, 3]),
    -- Korrina: Machoke Lv. 28: Power-Up Punch, Rock Tomb, Leer
    (130007, 13003, NULL, NULL, NULL, NULL, 2, ARRAY[612, 317, 43]),
    -- Korrina: Hawlucha Lv. 32: Flying Press, Hone Claws, Power-Up Punch
    (130007, 13003, NULL, NULL, NULL, NULL, 3, ARRAY[560, 468, 612]),
    -- Ramos: Jumpluff Lv. 30: Grass Knot, Acrobatics, Leech Seed
    (130008, 13004, NULL, NULL, NULL, NULL, 1, ARRAY[447, 512, 73]),
    -- Ramos: Weepinbell Lv. 31: Grass Knot, Acid, Poison Powder, Gastro Acid
    (130008, 13004, NULL, NULL, NULL, NULL, 2, ARRAY[447, 51, 77, 380]),
    -- Ramos: Gogoat Lv. 34: Grass Knot, Bulldoze, Take Down
    (130008, 13004, NULL, NULL, NULL, NULL, 3, ARRAY[447, 523, 36]),
    -- Clemont: Emolga Lv. 35: Volt Switch, Quick Attack, Aerial Ace
    (130009, 13005, NULL, NULL, NULL, NULL, 1, ARRAY[521, 98, 332]),
    -- Clemont: Magneton Lv. 35: Thunderbolt, Electric Terrain, Mirror Shot
    (130009, 13005, NULL, NULL, NULL, NULL, 2, ARRAY[85, 604, 429]),
    -- Clemont: Heliolisk Lv. 37: Thunderbolt, Quick Attack, Grass Knot
    (130009, 13005, NULL, NULL, NULL, NULL, 3, ARRAY[85, 98, 447]),
    -- Valerie: Mawile Lv. 38: Feint Attack, Crunch, Iron Defense
    (130010, 13006, NULL, NULL, NULL, NULL, 1, ARRAY[185, 242, 334]),
    -- Valerie: Mr. Mime Lv. 39: Light Screen, Reflect, Psychic, Dazzling Gleam
    (130010, 13006, NULL, NULL, NULL, NULL, 2, ARRAY[113, 115, 94, 605]),
    -- Valerie: Sylveon Lv. 42: Dazzling Gleam, Quick Attack, Swift, Charm
    (130010, 13006, NULL, NULL, NULL, NULL, 3, ARRAY[605, 98, 129, 204]),
    -- Olympia: Sigilyph Lv. 44: Psychic, Air Slash, Light Screen, Reflect
    (130011, 13007, NULL, NULL, NULL, NULL, 1, ARRAY[94, 403, 113, 115]),
    -- Olympia: Slowking Lv. 45: Psychic, Calm Mind, Power Gem, Yawn
    (130011, 13007, NULL, NULL, NULL, NULL, 2, ARRAY[94, 347, 408, 281]),
    -- Olympia: Meowstic (Female) Lv. 48: Psychic, Calm Mind, Fake Out, Shadow Ball
    (130011, 13007, NULL, NULL, NULL, NULL, 3, ARRAY[94, 347, 252, 247]),
    -- Wulfric: Abomasnow Lv. 56: Ice Beam, Ice Shard, Energy Ball
    (130012, 13008, NULL, NULL, NULL, NULL, 1, ARRAY[58, 420, 412]),
    -- Wulfric: Cryogonal Lv. 55: Ice Beam, Confuse Ray, Flash Cannon, Hail
    (130012, 13008, NULL, NULL, NULL, NULL, 2, ARRAY[58, 109, 430, 258]),
    -- Wulfric: Avalugg Lv. 59: Avalanche, Crunch, Curse, Gyro Ball
    (130012, 13008, NULL, NULL, NULL, NULL, 3, ARRAY[419, 242, 174, 360]),
    -- Malva: Pyroar Lv. 63: Hyper Voice, Flamethrower, Wild Charge, Noble Roar
    (130013, 13009, NULL, NULL, NULL, NULL, 1, ARRAY[304, 53, 528, 568]),
    -- Malva: Torkoal Lv. 63: Curse, Earthquake, Stone Edge, Flame Wheel
    (130013, 13009, NULL, NULL, NULL, NULL, 2, ARRAY[174, 89, 444, 172]),
    -- Malva: Chandelure Lv. 63: Flamethrower, Shadow Ball, Confuse Ray, Confide
    (130013, 13009, NULL, NULL, NULL, NULL, 3, ARRAY[53, 247, 109, 590]),
    -- Malva: Talonflame Lv. 65: Brave Bird, Quick Attack, Flare Blitz, Flail
    (130013, 13009, NULL, NULL, NULL, NULL, 4, ARRAY[413, 98, 394, 175]),
    -- Siebold: Clawitzer Lv. 63: Water Pulse, Dark Pulse, Dragon Pulse, Aura Sphere
    (130014, 13010, NULL, NULL, NULL, NULL, 1, ARRAY[352, 399, 406, 396]),
    -- Siebold: Starmie Lv. 63: Dazzling Gleam, Psychic, Surf, Light Screen
    (130014, 13010, NULL, NULL, NULL, NULL, 2, ARRAY[605, 94, 57, 113]),
    -- Siebold: Gyarados Lv. 63: Waterfall, Ice Fang, Earthquake, Dragon Dance
    (130014, 13010, NULL, NULL, NULL, NULL, 3, ARRAY[127, 423, 89, 349]),
    -- Siebold: Barbaracle Lv. 65: Cross Chop, Stone Edge, Razor Shell, X-Scissor
    (130014, 13010, NULL, NULL, NULL, NULL, 4, ARRAY[238, 444, 534, 404]),
    -- Wikstrom: Klefki Lv. 63: Dazzling Gleam, Flash Cannon, Torment, Spikes
    (130015, 13011, NULL, NULL, NULL, NULL, 1, ARRAY[605, 430, 259, 191]),
    -- Wikstrom: Probopass Lv. 63: Earth Power, Power Gem, Discharge, Flash Cannon
    (130015, 13011, NULL, NULL, NULL, NULL, 2, ARRAY[414, 408, 435, 430]),
    -- Wikstrom: Scizor Lv. 63: Bullet Punch, X-Scissor, Iron Head, Night Slash
    (130015, 13011, NULL, NULL, NULL, NULL, 3, ARRAY[418, 404, 442, 400]),
    -- Wikstrom: Aegislash Lv. 65: King's Shield, Sacred Sword, Shadow Claw, Iron Head
    (130015, 13011, NULL, NULL, NULL, NULL, 4, ARRAY[588, 533, 421, 442]),
    -- Drasna: Dragalge Lv. 63: Dragon Pulse, Surf, Sludge Bomb, Thunderbolt
    (130016, 13012, NULL, NULL, NULL, NULL, 1, ARRAY[406, 57, 188, 85]),
    -- Drasna: Altaria Lv. 63: Moonblast, Dragon Pulse, Cotton Guard, Sing
    (130016, 13012, NULL, NULL, NULL, NULL, 2, ARRAY[585, 406, 538, 47]),
    -- Drasna: Druddigon Lv. 63: Dragon Tail, Revenge, Retaliate, Chip Away
    (130016, 13012, NULL, NULL, NULL, NULL, 3, ARRAY[525, 279, 514, 498]),
    -- Drasna: Noivern Lv. 65: Air Slash, Dragon Pulse, Flamethrower, Super Fang
    (130016, 13012, NULL, NULL, NULL, NULL, 4, ARRAY[403, 406, 53, 162]),
    -- Diantha: Hawlucha Lv. 64: Swords Dance, Flying Press, X-Scissor, Poison Jab
    (130017, 13013, NULL, NULL, NULL, NULL, 1, ARRAY[14, 560, 404, 398]),
    -- Diantha: Tyrantrum Lv. 65: Head Smash, Earthquake, Dragon Claw, Crunch
    (130017, 13013, NULL, NULL, NULL, NULL, 2, ARRAY[457, 89, 337, 242]),
    -- Diantha: Aurorus Lv. 65: Thunder, Blizzard, Light Screen, Reflect
    (130017, 13013, NULL, NULL, NULL, NULL, 3, ARRAY[87, 59, 113, 115]),
    -- Diantha: Gourgeist Lv. 65: Trick-or-Treat, Phantom Force, Seed Bomb, Shadow Sneak
    (130017, 13013, NULL, NULL, NULL, NULL, 4, ARRAY[567, 566, 402, 425]),
    -- Diantha: Goodra Lv. 66: Dragon Pulse, Muddy Water, Fire Blast, Focus Blast
    (130017, 13013, NULL, NULL, NULL, NULL, 5, ARRAY[406, 330, 126, 411]),
    -- Diantha: Mega Gardevoir Lv. 68: Moonblast, Psychic, Shadow Ball, Thunderbolt
    (130017, 13013, NULL, NULL, NULL, NULL, 6, ARRAY[585, 94, 247, 85]),
    -- AZ: Torkoal Lv. 60: Lava Plume, Stone Edge, Body Slam, Return
    (130019, 13014, NULL, NULL, NULL, NULL, 1, ARRAY[436, 444, 34, 216]),
    -- AZ: Golurk Lv. 60: Heavy Slam, Phantom Force, Mega Punch, Return
    (130019, 13014, NULL, NULL, NULL, NULL, 2, ARRAY[484, 566, 5, 216]),
    -- AZ: Sigilyph Lv. 60: Air Slash, Psychic, Cosmic Power, Return
    (130019, 13014, NULL, NULL, NULL, NULL, 3, ARRAY[403, 94, 322, 216]),
    -- Shauna: Froakie Lv. 5: Pound, Growl, Bubble
    (130001, 13015, NULL, 130001, 'chespin', NULL, 1, ARRAY[1, 45, 145]),
    -- Shauna: Chespin Lv. 5: Tackle, Growl, Vine Whip
    (130001, 13015, NULL, 130001, 'fennekin', NULL, 1, ARRAY[33, 45, 22]),
    -- Shauna: Fennekin Lv. 5: Scratch, Tail Whip, Ember
    (130001, 13015, NULL, 130001, 'froakie', NULL, 1, ARRAY[10, 39, 52]),
    -- Tierno: Corphish Lv. 12: Swords Dance, Vise Grip
    (130004, 13016, NULL, NULL, NULL, NULL, 1, ARRAY[14, 11]),
    -- Tierno & Trevor: Pikachu Lv. 14: Thunder Shock, Quick Attack
    (130005, 13017, NULL, NULL, NULL, NULL, 1, ARRAY[84, 98]),
    -- Tierno & Trevor: Flabebe (Orange Flower) Lv. 14: Vine Whip, Fairy Wind
    (130005, 13017, NULL, NULL, NULL, NULL, 2, ARRAY[22, 584]),
    -- Tierno & Trevor: Corphish Lv. 16: Swords Dance, Vise Grip
    (130005, 13017, NULL, NULL, NULL, NULL, 3, ARRAY[14, 11]),
    -- Serena / Calem: Meowstic (Female) Lv. 28: Psybeam, Fake Out, Light Screen, Disarming Voice
    (130007, 13018, NULL, NULL, NULL, 'serena-chespin', 1, ARRAY[60, 252, 113, 574]),
    -- Serena / Calem: Absol Lv. 28: Slash, Bite, Quick Attack
    (130007, 13018, NULL, NULL, NULL, 'serena-chespin', 2, ARRAY[163, 44, 98]),
    -- Serena / Calem: Braixen Lv. 30: Psybeam, Fire Spin
    (130007, 13018, NULL, NULL, NULL, 'serena-chespin', 3, ARRAY[60, 83]),
    -- Serena / Calem: Meowstic (Female) Lv. 28: Psybeam, Fake Out, Light Screen, Disarming Voice
    (130007, 13018, NULL, NULL, NULL, 'serena-fennekin', 1, ARRAY[60, 252, 113, 574]),
    -- Serena / Calem: Absol Lv. 28: Slash, Bite, Quick Attack
    (130007, 13018, NULL, NULL, NULL, 'serena-fennekin', 2, ARRAY[163, 44, 98]),
    -- Serena / Calem: Frogadier Lv. 30: Water Pulse, Quick Attack
    (130007, 13018, NULL, NULL, NULL, 'serena-fennekin', 3, ARRAY[352, 98]),
    -- Serena / Calem: Meowstic (Female) Lv. 28: Psybeam, Fake Out, Light Screen, Disarming Voice
    (130007, 13018, NULL, NULL, NULL, 'serena-froakie', 1, ARRAY[60, 252, 113, 574]),
    -- Serena / Calem: Absol Lv. 28: Slash, Bite, Quick Attack
    (130007, 13018, NULL, NULL, NULL, 'serena-froakie', 2, ARRAY[163, 44, 98]),
    -- Serena / Calem: Quilladin Lv. 30: Needle Arm, Bite
    (130007, 13018, NULL, NULL, NULL, 'serena-froakie', 3, ARRAY[302, 44]),
    -- Serena / Calem: Meowstic Lv. 28: Psybeam, Fake Out, Light Screen, Disarming Voice
    (130007, 13018, NULL, NULL, NULL, 'calem-chespin', 1, ARRAY[60, 252, 113, 574]),
    -- Serena / Calem: Absol Lv. 28: Slash, Bite, Quick Attack
    (130007, 13018, NULL, NULL, NULL, 'calem-chespin', 2, ARRAY[163, 44, 98]),
    -- Serena / Calem: Braixen Lv. 30: Psybeam, Fire Spin
    (130007, 13018, NULL, NULL, NULL, 'calem-chespin', 3, ARRAY[60, 83]),
    -- Serena / Calem: Meowstic Lv. 28: Psybeam, Fake Out, Light Screen, Disarming Voice
    (130007, 13018, NULL, NULL, NULL, 'calem-fennekin', 1, ARRAY[60, 252, 113, 574]),
    -- Serena / Calem: Absol Lv. 28: Slash, Bite, Quick Attack
    (130007, 13018, NULL, NULL, NULL, 'calem-fennekin', 2, ARRAY[163, 44, 98]),
    -- Serena / Calem: Frogadier Lv. 30: Water Pulse, Quick Attack
    (130007, 13018, NULL, NULL, NULL, 'calem-fennekin', 3, ARRAY[352, 98]),
    -- Serena / Calem: Meowstic Lv. 28: Psybeam, Fake Out, Light Screen, Disarming Voice
    (130007, 13018, NULL, NULL, NULL, 'calem-froakie', 1, ARRAY[60, 252, 113, 574]),
    -- Serena / Calem: Absol Lv. 28: Slash, Bite, Quick Attack
    (130007, 13018, NULL, NULL, NULL, 'calem-froakie', 2, ARRAY[163, 44, 98]),
    -- Serena / Calem: Quilladin Lv. 30: Needle Arm, Bite
    (130007, 13018, NULL, NULL, NULL, 'calem-froakie', 3, ARRAY[302, 44]),
    -- Serena / Calem: Meowstic (Female) Lv. 31: Psybeam, Fake Out, Disarming Voice, Light Screen
    (130008, 13018, NULL, NULL, NULL, 'serena-chespin', 1, ARRAY[60, 252, 574, 113]),
    -- Serena / Calem: Absol Lv. 31: Slash, Bite, Quick Attack
    (130008, 13018, NULL, NULL, NULL, 'serena-chespin', 2, ARRAY[163, 44, 98]),
    -- Serena / Calem: Braixen Lv. 33: Psybeam, Fire Spin
    (130008, 13018, NULL, NULL, NULL, 'serena-chespin', 3, ARRAY[60, 83]),
    -- Serena / Calem: Meowstic (Female) Lv. 31: Psybeam, Fake Out, Disarming Voice, Light Screen
    (130008, 13018, NULL, NULL, NULL, 'serena-fennekin', 1, ARRAY[60, 252, 574, 113]),
    -- Serena / Calem: Absol Lv. 31: Slash, Bite, Quick Attack
    (130008, 13018, NULL, NULL, NULL, 'serena-fennekin', 2, ARRAY[163, 44, 98]),
    -- Serena / Calem: Frogadier Lv. 33: Water Pulse, Quick Attack
    (130008, 13018, NULL, NULL, NULL, 'serena-fennekin', 3, ARRAY[352, 98]),
    -- Serena / Calem: Meowstic (Female) Lv. 31: Psybeam, Fake Out, Disarming Voice, Light Screen
    (130008, 13018, NULL, NULL, NULL, 'serena-froakie', 1, ARRAY[60, 252, 574, 113]),
    -- Serena / Calem: Absol Lv. 31: Slash, Bite, Quick Attack
    (130008, 13018, NULL, NULL, NULL, 'serena-froakie', 2, ARRAY[163, 44, 98]),
    -- Serena / Calem: Quilladin Lv. 33: Needle Arm, Bite
    (130008, 13018, NULL, NULL, NULL, 'serena-froakie', 3, ARRAY[302, 44]),
    -- Serena / Calem: Meowstic Lv. 31: Psybeam, Fake Out, Disarming Voice, Light Screen
    (130008, 13018, NULL, NULL, NULL, 'calem-chespin', 1, ARRAY[60, 252, 574, 113]),
    -- Serena / Calem: Absol Lv. 31: Slash, Bite, Quick Attack
    (130008, 13018, NULL, NULL, NULL, 'calem-chespin', 2, ARRAY[163, 44, 98]),
    -- Serena / Calem: Braixen Lv. 33: Psybeam, Fire Spin
    (130008, 13018, NULL, NULL, NULL, 'calem-chespin', 3, ARRAY[60, 83]),
    -- Serena / Calem: Meowstic Lv. 31: Psybeam, Fake Out, Disarming Voice, Light Screen
    (130008, 13018, NULL, NULL, NULL, 'calem-fennekin', 1, ARRAY[60, 252, 574, 113]),
    -- Serena / Calem: Absol Lv. 31: Slash, Bite, Quick Attack
    (130008, 13018, NULL, NULL, NULL, 'calem-fennekin', 2, ARRAY[163, 44, 98]),
    -- Serena / Calem: Frogadier Lv. 33: Water Pulse, Quick Attack
    (130008, 13018, NULL, NULL, NULL, 'calem-fennekin', 3, ARRAY[352, 98]),
    -- Serena / Calem: Meowstic Lv. 31: Psybeam, Fake Out, Disarming Voice, Light Screen
    (130008, 13018, NULL, NULL, NULL, 'calem-froakie', 1, ARRAY[60, 252, 574, 113]),
    -- Serena / Calem: Absol Lv. 31: Slash, Bite, Quick Attack
    (130008, 13018, NULL, NULL, NULL, 'calem-froakie', 2, ARRAY[163, 44, 98]),
    -- Serena / Calem: Quilladin Lv. 33: Needle Arm, Bite
    (130008, 13018, NULL, NULL, NULL, 'calem-froakie', 3, ARRAY[302, 44]),
    -- Serena / Calem: Meowstic (Female) Lv. 35: Psychic, Fake Out, Disarming Voice, Light Screen
    (130010, 13018, NULL, NULL, NULL, 'serena-chespin', 1, ARRAY[94, 252, 574, 113]),
    -- Serena / Calem: Absol Lv. 35: Slash, Swords Dance, Quick Attack, Bite
    (130010, 13018, NULL, NULL, NULL, 'serena-chespin', 2, ARRAY[163, 14, 98, 44]),
    -- Serena / Calem: Delphox Lv. 37: Mystical Fire, Psybeam
    (130010, 13018, NULL, NULL, NULL, 'serena-chespin', 3, ARRAY[595, 60]),
    -- Serena / Calem: Meowstic (Female) Lv. 35: Psychic, Fake Out, Disarming Voice, Light Screen
    (130010, 13018, NULL, NULL, NULL, 'serena-fennekin', 1, ARRAY[94, 252, 574, 113]),
    -- Serena / Calem: Absol Lv. 35: Slash, Swords Dance, Quick Attack, Bite
    (130010, 13018, NULL, NULL, NULL, 'serena-fennekin', 2, ARRAY[163, 14, 98, 44]),
    -- Serena / Calem: Greninja Lv. 37: Water Shuriken, Quick Attack
    (130010, 13018, NULL, NULL, NULL, 'serena-fennekin', 3, ARRAY[594, 98]),
    -- Serena / Calem: Meowstic (Female) Lv. 35: Psychic, Fake Out, Disarming Voice, Light Screen
    (130010, 13018, NULL, NULL, NULL, 'serena-froakie', 1, ARRAY[94, 252, 574, 113]),
    -- Serena / Calem: Absol Lv. 35: Slash, Swords Dance, Quick Attack, Bite
    (130010, 13018, NULL, NULL, NULL, 'serena-froakie', 2, ARRAY[163, 14, 98, 44]),
    -- Serena / Calem: Chesnaught Lv. 37: Seed Bomb, Bite
    (130010, 13018, NULL, NULL, NULL, 'serena-froakie', 3, ARRAY[402, 44]),
    -- Serena / Calem: Meowstic Lv. 35: Psychic, Fake Out, Disarming Voice, Light Screen
    (130010, 13018, NULL, NULL, NULL, 'calem-chespin', 1, ARRAY[94, 252, 574, 113]),
    -- Serena / Calem: Absol Lv. 35: Slash, Swords Dance, Quick Attack, Bite
    (130010, 13018, NULL, NULL, NULL, 'calem-chespin', 2, ARRAY[163, 14, 98, 44]),
    -- Serena / Calem: Delphox Lv. 37: Mystical Fire, Psybeam
    (130010, 13018, NULL, NULL, NULL, 'calem-chespin', 3, ARRAY[595, 60]),
    -- Serena / Calem: Meowstic Lv. 35: Psychic, Fake Out, Disarming Voice, Light Screen
    (130010, 13018, NULL, NULL, NULL, 'calem-fennekin', 1, ARRAY[94, 252, 574, 113]),
    -- Serena / Calem: Absol Lv. 35: Slash, Swords Dance, Quick Attack, Bite
    (130010, 13018, NULL, NULL, NULL, 'calem-fennekin', 2, ARRAY[163, 14, 98, 44]),
    -- Serena / Calem: Greninja Lv. 37: Water Shuriken, Quick Attack
    (130010, 13018, NULL, NULL, NULL, 'calem-fennekin', 3, ARRAY[594, 98]),
    -- Serena / Calem: Meowstic Lv. 35: Psychic, Fake Out, Disarming Voice, Light Screen
    (130010, 13018, NULL, NULL, NULL, 'calem-froakie', 1, ARRAY[94, 252, 574, 113]),
    -- Serena / Calem: Absol Lv. 35: Slash, Swords Dance, Quick Attack, Bite
    (130010, 13018, NULL, NULL, NULL, 'calem-froakie', 2, ARRAY[163, 14, 98, 44]),
    -- Serena / Calem: Chesnaught Lv. 37: Seed Bomb, Bite
    (130010, 13018, NULL, NULL, NULL, 'calem-froakie', 3, ARRAY[402, 44]),
    -- Serena / Calem: Meowstic (Female) Lv. 44: Psychic, Fake Out, Disarming Voice, Shadow Ball
    (130011, 13018, NULL, NULL, NULL, 'serena-chespin', 1, ARRAY[94, 252, 574, 247]),
    -- Serena / Calem: Absol Lv. 44: Slash, Swords Dance, Quick Attack, Night Slash
    (130011, 13018, NULL, NULL, NULL, 'serena-chespin', 2, ARRAY[163, 14, 98, 400]),
    -- Serena / Calem: Jolteon Lv. 44: Discharge, Double Kick, Quick Attack
    (130011, 13018, NULL, NULL, NULL, 'serena-chespin', 3, ARRAY[435, 24, 98]),
    -- Serena / Calem: Delphox Lv. 46: Flamethrower, Psychic
    (130011, 13018, NULL, NULL, NULL, 'serena-chespin', 4, ARRAY[53, 94]),
    -- Serena / Calem: Meowstic (Female) Lv. 44: Psychic, Fake Out, Disarming Voice, Shadow Ball
    (130011, 13018, NULL, NULL, NULL, 'serena-fennekin', 1, ARRAY[94, 252, 574, 247]),
    -- Serena / Calem: Absol Lv. 44: Slash, Swords Dance, Quick Attack, Night Slash
    (130011, 13018, NULL, NULL, NULL, 'serena-fennekin', 2, ARRAY[163, 14, 98, 400]),
    -- Serena / Calem: Flareon Lv. 44: Lava Plume, Bite, Quick Attack
    (130011, 13018, NULL, NULL, NULL, 'serena-fennekin', 3, ARRAY[436, 44, 98]),
    -- Serena / Calem: Greninja Lv. 46: Water Shuriken, Dark Pulse
    (130011, 13018, NULL, NULL, NULL, 'serena-fennekin', 4, ARRAY[594, 399]),
    -- Serena / Calem: Meowstic (Female) Lv. 44: Psychic, Fake Out, Disarming Voice, Shadow Ball
    (130011, 13018, NULL, NULL, NULL, 'serena-froakie', 1, ARRAY[94, 252, 574, 247]),
    -- Serena / Calem: Absol Lv. 44: Slash, Swords Dance, Quick Attack, Night Slash
    (130011, 13018, NULL, NULL, NULL, 'serena-froakie', 2, ARRAY[163, 14, 98, 400]),
    -- Serena / Calem: Vaporeon Lv. 44: Muddy Water, Aurora Beam, Quick Attack
    (130011, 13018, NULL, NULL, NULL, 'serena-froakie', 3, ARRAY[330, 62, 98]),
    -- Serena / Calem: Chesnaught Lv. 46: Seed Bomb, Brick Break
    (130011, 13018, NULL, NULL, NULL, 'serena-froakie', 4, ARRAY[402, 280]),
    -- Serena / Calem: Meowstic Lv. 44: Psychic, Fake Out, Disarming Voice, Shadow Ball
    (130011, 13018, NULL, NULL, NULL, 'calem-chespin', 1, ARRAY[94, 252, 574, 247]),
    -- Serena / Calem: Absol Lv. 44: Slash, Swords Dance, Quick Attack, Night Slash
    (130011, 13018, NULL, NULL, NULL, 'calem-chespin', 2, ARRAY[163, 14, 98, 400]),
    -- Serena / Calem: Jolteon Lv. 44: Discharge, Double Kick, Quick Attack
    (130011, 13018, NULL, NULL, NULL, 'calem-chespin', 3, ARRAY[435, 24, 98]),
    -- Serena / Calem: Delphox Lv. 46: Flamethrower, Psychic
    (130011, 13018, NULL, NULL, NULL, 'calem-chespin', 4, ARRAY[53, 94]),
    -- Serena / Calem: Meowstic Lv. 44: Psychic, Fake Out, Disarming Voice, Shadow Ball
    (130011, 13018, NULL, NULL, NULL, 'calem-fennekin', 1, ARRAY[94, 252, 574, 247]),
    -- Serena / Calem: Absol Lv. 44: Slash, Swords Dance, Quick Attack, Night Slash
    (130011, 13018, NULL, NULL, NULL, 'calem-fennekin', 2, ARRAY[163, 14, 98, 400]),
    -- Serena / Calem: Flareon Lv. 44: Lava Plume, Bite, Quick Attack
    (130011, 13018, NULL, NULL, NULL, 'calem-fennekin', 3, ARRAY[436, 44, 98]),
    -- Serena / Calem: Greninja Lv. 46: Water Shuriken, Dark Pulse
    (130011, 13018, NULL, NULL, NULL, 'calem-fennekin', 4, ARRAY[594, 399]),
    -- Serena / Calem: Meowstic Lv. 44: Psychic, Fake Out, Disarming Voice, Shadow Ball
    (130011, 13018, NULL, NULL, NULL, 'calem-froakie', 1, ARRAY[94, 252, 574, 247]),
    -- Serena / Calem: Absol Lv. 44: Slash, Swords Dance, Quick Attack, Night Slash
    (130011, 13018, NULL, NULL, NULL, 'calem-froakie', 2, ARRAY[163, 14, 98, 400]),
    -- Serena / Calem: Vaporeon Lv. 44: Muddy Water, Aurora Beam, Quick Attack
    (130011, 13018, NULL, NULL, NULL, 'calem-froakie', 3, ARRAY[330, 62, 98]),
    -- Serena / Calem: Chesnaught Lv. 46: Seed Bomb, Brick Break
    (130011, 13018, NULL, NULL, NULL, 'calem-froakie', 4, ARRAY[402, 280]),
    -- Lysandre: Mienfoo Lv. 45: Swords Dance, High Jump Kick, Acrobatics
    (130021, 13019, NULL, NULL, NULL, NULL, 1, ARRAY[14, 136, 512]),
    -- Lysandre: Murkrow Lv. 45: Foul Play, Aerial Ace, Retaliate, Steel Wing
    (130021, 13019, NULL, NULL, NULL, NULL, 2, ARRAY[492, 332, 514, 211]),
    -- Lysandre: Pyroar Lv. 47: Hyper Voice, Fire Blast, Dark Pulse
    (130021, 13019, NULL, NULL, NULL, NULL, 3, ARRAY[304, 126, 399]),
    -- Lysandre: Gyarados Lv. 49: Aqua Tail, Earthquake, Iron Head, Outrage
    (130021, 13019, NULL, NULL, NULL, NULL, 4, ARRAY[401, 89, 442, 200]),
    -- Lysandre: Mienshao Lv. 47: Swords Dance, High Jump Kick, Acrobatics
    (130022, 13028, NULL, NULL, NULL, NULL, 1, ARRAY[14, 136, 512]),
    -- Lysandre: Honchkrow Lv. 47: Night Slash, Aerial Ace, Retaliate, Steel Wing
    (130022, 13028, NULL, NULL, NULL, NULL, 2, ARRAY[400, 332, 514, 211]),
    -- Lysandre: Pyroar Lv. 49: Hyper Voice, Fire Blast, Dark Pulse
    (130022, 13028, NULL, NULL, NULL, NULL, 3, ARRAY[304, 126, 399]),
    -- Lysandre: Gyarados Lv. 51: Aqua Tail, Earthquake, Iron Head, Outrage
    (130022, 13028, NULL, NULL, NULL, NULL, 4, ARRAY[401, 89, 442, 200]),
    -- Lysandre: Mienshao Lv. 49: Swords Dance, High Jump Kick, Acrobatics
    (130022, 13019, NULL, NULL, NULL, NULL, 1, ARRAY[14, 136, 512]),
    -- Lysandre: Honchkrow Lv. 49: Night Slash, Aerial Ace, Retaliate, Steel Wing
    (130022, 13019, NULL, NULL, NULL, NULL, 2, ARRAY[400, 332, 514, 211]),
    -- Lysandre: Pyroar Lv. 51: Hyper Voice, Fire Blast, Dark Pulse
    (130022, 13019, NULL, NULL, NULL, NULL, 3, ARRAY[304, 126, 399]),
    -- Lysandre: Mega Gyarados Lv. 53: Aqua Tail, Earthquake, Iron Head, Outrage
    (130022, 13019, NULL, NULL, NULL, NULL, 4, ARRAY[401, 89, 442, 200]),
    -- Shauna: Delcatty Lv. 49: Charm, Play Rough, Feint Attack, Return
    (130012, 13015, NULL, 130001, 'chespin', NULL, 1, ARRAY[204, 583, 185, 216]),
    -- Shauna: Goodra Lv. 49: Dragon Pulse, Sludge Wave, Body Slam, Earthquake
    (130012, 13015, NULL, 130001, 'chespin', NULL, 2, ARRAY[406, 482, 34, 89]),
    -- Shauna: Greninja Lv. 51: Water Shuriken, Extrasensory, Double Team
    (130012, 13015, NULL, 130001, 'chespin', NULL, 3, ARRAY[594, 326, 104]),
    -- Shauna: Delcatty Lv. 49: Charm, Play Rough, Feint Attack, Return
    (130012, 13015, NULL, 130001, 'fennekin', NULL, 1, ARRAY[204, 583, 185, 216]),
    -- Shauna: Goodra Lv. 49: Dragon Pulse, Sludge Wave, Body Slam, Earthquake
    (130012, 13015, NULL, 130001, 'fennekin', NULL, 2, ARRAY[406, 482, 34, 89]),
    -- Shauna: Chesnaught Lv. 51: Brick Break, Seed Bomb, Spiky Shield
    (130012, 13015, NULL, 130001, 'fennekin', NULL, 3, ARRAY[280, 402, 596]),
    -- Shauna: Delcatty Lv. 49: Charm, Play Rough, Feint Attack, Return
    (130012, 13015, NULL, 130001, 'froakie', NULL, 1, ARRAY[204, 583, 185, 216]),
    -- Shauna: Goodra Lv. 49: Dragon Pulse, Sludge Wave, Body Slam, Earthquake
    (130012, 13015, NULL, 130001, 'froakie', NULL, 2, ARRAY[406, 482, 34, 89]),
    -- Shauna: Delphox Lv. 51: Psychic, Mystical Fire, Calm Mind
    (130012, 13015, NULL, 130001, 'froakie', NULL, 3, ARRAY[94, 595, 347]),
    -- Tierno: Talonflame Lv. 48: Swords Dance, Acrobatics, Quick Attack
    (130012, 13016, NULL, NULL, NULL, NULL, 1, ARRAY[14, 512, 98]),
    -- Tierno: Roserade Lv. 49: Petal Dance
    (130012, 13016, NULL, NULL, NULL, NULL, 2, ARRAY[80]),
    -- Tierno: Crawdaunt Lv. 52: Swords Dance, Crabhammer, Night Slash
    (130012, 13016, NULL, NULL, NULL, NULL, 3, ARRAY[14, 152, 400]),
    -- Trevor: Raichu Lv. 49: Thunderbolt, Quick Attack, Nuzzle, Slam
    (130012, 13020, NULL, NULL, NULL, NULL, 1, ARRAY[85, 98, 609, 21]),
    -- Trevor: Aerodactyl Lv. 49: Crunch, Ancient Power, Sky Drop, Supersonic
    (130012, 13020, NULL, NULL, NULL, NULL, 2, ARRAY[242, 246, 507, 48]),
    -- Trevor: Florges (Orange Flower) Lv. 51: Moonblast, Energy Ball, Confide, Misty Terrain
    (130012, 13020, NULL, NULL, NULL, NULL, 3, ARRAY[585, 412, 590, 581]),
    -- Serena / Calem: Meowstic (Female) Lv. 57: Psychic, Fake Out, Disarming Voice, Shadow Ball
    (130013, 13018, NULL, NULL, NULL, 'serena-chespin', 1, ARRAY[94, 252, 574, 247]),
    -- Serena / Calem: Jolteon Lv. 57: Discharge, Double Kick, Quick Attack
    (130013, 13018, NULL, NULL, NULL, 'serena-chespin', 2, ARRAY[435, 24, 98]),
    -- Serena / Calem: Altaria Lv. 58: Dragon Pulse, Dazzling Gleam, Confide
    (130013, 13018, NULL, NULL, NULL, 'serena-chespin', 3, ARRAY[406, 605, 590]),
    -- Serena / Calem: Absol Lv. 59: Slash, Swords Dance, Quick Attack, Night Slash
    (130013, 13018, NULL, NULL, NULL, 'serena-chespin', 4, ARRAY[163, 14, 98, 400]),
    -- Serena / Calem: Delphox Lv. 61: Psychic, Flamethrower, Shadow Ball
    (130013, 13018, NULL, NULL, NULL, 'serena-chespin', 5, ARRAY[94, 53, 247]),
    -- Serena / Calem: Meowstic (Female) Lv. 57: Psychic, Fake Out, Disarming Voice, Shadow Ball
    (130013, 13018, NULL, NULL, NULL, 'serena-fennekin', 1, ARRAY[94, 252, 574, 247]),
    -- Serena / Calem: Flareon Lv. 57: Lava Plume, Bite, Quick Attack
    (130013, 13018, NULL, NULL, NULL, 'serena-fennekin', 2, ARRAY[436, 44, 98]),
    -- Serena / Calem: Altaria Lv. 58: Dragon Pulse, Dazzling Gleam, Confide
    (130013, 13018, NULL, NULL, NULL, 'serena-fennekin', 3, ARRAY[406, 605, 590]),
    -- Serena / Calem: Absol Lv. 59: Slash, Swords Dance, Quick Attack, Night Slash
    (130013, 13018, NULL, NULL, NULL, 'serena-fennekin', 4, ARRAY[163, 14, 98, 400]),
    -- Serena / Calem: Greninja Lv. 61: Water Shuriken, Dark Pulse, Ice Beam
    (130013, 13018, NULL, NULL, NULL, 'serena-fennekin', 5, ARRAY[594, 399, 58]),
    -- Serena / Calem: Meowstic (Female) Lv. 57: Psychic, Fake Out, Disarming Voice, Shadow Ball
    (130013, 13018, NULL, NULL, NULL, 'serena-froakie', 1, ARRAY[94, 252, 574, 247]),
    -- Serena / Calem: Vaporeon Lv. 57: Muddy Water, Aurora Beam, Quick Attack
    (130013, 13018, NULL, NULL, NULL, 'serena-froakie', 2, ARRAY[330, 62, 98]),
    -- Serena / Calem: Altaria Lv. 58: Dragon Pulse, Dazzling Gleam, Confide
    (130013, 13018, NULL, NULL, NULL, 'serena-froakie', 3, ARRAY[406, 605, 590]),
    -- Serena / Calem: Absol Lv. 59: Slash, Swords Dance, Quick Attack, Night Slash
    (130013, 13018, NULL, NULL, NULL, 'serena-froakie', 4, ARRAY[163, 14, 98, 400]),
    -- Serena / Calem: Chesnaught Lv. 61: Seed Bomb, Brick Break, Body Slam
    (130013, 13018, NULL, NULL, NULL, 'serena-froakie', 5, ARRAY[402, 280, 34]),
    -- Serena / Calem: Meowstic Lv. 57: Psychic, Fake Out, Disarming Voice, Shadow Ball
    (130013, 13018, NULL, NULL, NULL, 'calem-chespin', 1, ARRAY[94, 252, 574, 247]),
    -- Serena / Calem: Jolteon Lv. 57: Discharge, Double Kick, Quick Attack
    (130013, 13018, NULL, NULL, NULL, 'calem-chespin', 2, ARRAY[435, 24, 98]),
    -- Serena / Calem: Altaria Lv. 58: Dragon Pulse, Dazzling Gleam, Confide
    (130013, 13018, NULL, NULL, NULL, 'calem-chespin', 3, ARRAY[406, 605, 590]),
    -- Serena / Calem: Absol Lv. 59: Slash, Swords Dance, Quick Attack, Night Slash
    (130013, 13018, NULL, NULL, NULL, 'calem-chespin', 4, ARRAY[163, 14, 98, 400]),
    -- Serena / Calem: Delphox Lv. 61: Psychic, Flamethrower, Shadow Ball
    (130013, 13018, NULL, NULL, NULL, 'calem-chespin', 5, ARRAY[94, 53, 247]),
    -- Serena / Calem: Meowstic Lv. 57: Psychic, Fake Out, Disarming Voice, Shadow Ball
    (130013, 13018, NULL, NULL, NULL, 'calem-fennekin', 1, ARRAY[94, 252, 574, 247]),
    -- Serena / Calem: Flareon Lv. 57: Lava Plume, Bite, Quick Attack
    (130013, 13018, NULL, NULL, NULL, 'calem-fennekin', 2, ARRAY[436, 44, 98]),
    -- Serena / Calem: Altaria Lv. 58: Dragon Pulse, Dazzling Gleam, Confide
    (130013, 13018, NULL, NULL, NULL, 'calem-fennekin', 3, ARRAY[406, 605, 590]),
    -- Serena / Calem: Absol Lv. 59: Slash, Swords Dance, Quick Attack, Night Slash
    (130013, 13018, NULL, NULL, NULL, 'calem-fennekin', 4, ARRAY[163, 14, 98, 400]),
    -- Serena / Calem: Greninja Lv. 61: Water Shuriken, Dark Pulse, Ice Beam
    (130013, 13018, NULL, NULL, NULL, 'calem-fennekin', 5, ARRAY[594, 399, 58]),
    -- Serena / Calem: Meowstic Lv. 57: Psychic, Fake Out, Disarming Voice, Shadow Ball
    (130013, 13018, NULL, NULL, NULL, 'calem-froakie', 1, ARRAY[94, 252, 574, 247]),
    -- Serena / Calem: Vaporeon Lv. 57: Muddy Water, Aurora Beam, Quick Attack
    (130013, 13018, NULL, NULL, NULL, 'calem-froakie', 2, ARRAY[330, 62, 98]),
    -- Serena / Calem: Altaria Lv. 58: Dragon Pulse, Dazzling Gleam, Confide
    (130013, 13018, NULL, NULL, NULL, 'calem-froakie', 3, ARRAY[406, 605, 590]),
    -- Serena / Calem: Absol Lv. 59: Slash, Swords Dance, Quick Attack, Night Slash
    (130013, 13018, NULL, NULL, NULL, 'calem-froakie', 4, ARRAY[163, 14, 98, 400]),
    -- Serena / Calem: Chesnaught Lv. 61: Seed Bomb, Brick Break, Body Slam
    (130013, 13018, NULL, NULL, NULL, 'calem-froakie', 5, ARRAY[402, 280, 34]),
    -- Serena / Calem: Meowstic (Female) Lv. 66: Psychic, Fake Out, Disarming Voice, Shadow Ball
    (130019, 13018, NULL, NULL, NULL, 'serena-chespin', 1, ARRAY[94, 252, 574, 247]),
    -- Serena / Calem: Clefable Lv. 68: Moonblast, Meteor Mash, Focus Blast, Sing
    (130019, 13018, NULL, NULL, NULL, 'serena-chespin', 2, ARRAY[585, 309, 411, 47]),
    -- Serena / Calem: Jolteon Lv. 66: Thunder, Double Kick, Quick Attack
    (130019, 13018, NULL, NULL, NULL, 'serena-chespin', 3, ARRAY[87, 24, 98]),
    -- Serena / Calem: Absol Lv. 68: Slash, Swords Dance, Quick Attack, Night Slash
    (130019, 13018, NULL, NULL, NULL, 'serena-chespin', 4, ARRAY[163, 14, 98, 400]),
    -- Serena / Calem: Altaria Lv. 67: Dragon Pulse, Dazzling Gleam, Confide
    (130019, 13018, NULL, NULL, NULL, 'serena-chespin', 5, ARRAY[406, 605, 590]),
    -- Serena / Calem: Delphox Lv. 70: Psychic, Fire Blast, Shadow Ball
    (130019, 13018, NULL, NULL, NULL, 'serena-chespin', 6, ARRAY[94, 126, 247]),
    -- Serena / Calem: Meowstic (Female) Lv. 66: Psychic, Fake Out, Disarming Voice, Shadow Ball
    (130019, 13018, NULL, NULL, NULL, 'serena-fennekin', 1, ARRAY[94, 252, 574, 247]),
    -- Serena / Calem: Clefable Lv. 68: Moonblast, Meteor Mash, Focus Blast, Sing
    (130019, 13018, NULL, NULL, NULL, 'serena-fennekin', 2, ARRAY[585, 309, 411, 47]),
    -- Serena / Calem: Flareon Lv. 66: Fire Blast, Bite, Quick Attack
    (130019, 13018, NULL, NULL, NULL, 'serena-fennekin', 3, ARRAY[126, 44, 98]),
    -- Serena / Calem: Absol Lv. 68: Slash, Swords Dance, Quick Attack, Night Slash
    (130019, 13018, NULL, NULL, NULL, 'serena-fennekin', 4, ARRAY[163, 14, 98, 400]),
    -- Serena / Calem: Altaria Lv. 67: Dragon Pulse, Dazzling Gleam, Confide
    (130019, 13018, NULL, NULL, NULL, 'serena-fennekin', 5, ARRAY[406, 605, 590]),
    -- Serena / Calem: Greninja Lv. 70: Hydro Pump, Dark Pulse, Ice Beam
    (130019, 13018, NULL, NULL, NULL, 'serena-fennekin', 6, ARRAY[56, 399, 58]),
    -- Serena / Calem: Meowstic (Female) Lv. 66: Psychic, Fake Out, Disarming Voice, Shadow Ball
    (130019, 13018, NULL, NULL, NULL, 'serena-froakie', 1, ARRAY[94, 252, 574, 247]),
    -- Serena / Calem: Clefable Lv. 68: Moonblast, Meteor Mash, Focus Blast, Sing
    (130019, 13018, NULL, NULL, NULL, 'serena-froakie', 2, ARRAY[585, 309, 411, 47]),
    -- Serena / Calem: Vaporeon Lv. 66: Hydro Pump, Aurora Beam, Quick Attack
    (130019, 13018, NULL, NULL, NULL, 'serena-froakie', 3, ARRAY[56, 62, 98]),
    -- Serena / Calem: Absol Lv. 68: Slash, Swords Dance, Quick Attack, Night Slash
    (130019, 13018, NULL, NULL, NULL, 'serena-froakie', 4, ARRAY[163, 14, 98, 400]),
    -- Serena / Calem: Altaria Lv. 67: Dragon Pulse, Dazzling Gleam, Confide
    (130019, 13018, NULL, NULL, NULL, 'serena-froakie', 5, ARRAY[406, 605, 590]),
    -- Serena / Calem: Chesnaught Lv. 70: Wood Hammer, Brick Break, Body Slam
    (130019, 13018, NULL, NULL, NULL, 'serena-froakie', 6, ARRAY[452, 280, 34]),
    -- Serena / Calem: Meowstic Lv. 66: Psychic, Fake Out, Disarming Voice, Shadow Ball
    (130019, 13018, NULL, NULL, NULL, 'calem-chespin', 1, ARRAY[94, 252, 574, 247]),
    -- Serena / Calem: Clefable Lv. 68: Moonblast, Meteor Mash, Focus Blast, Sing
    (130019, 13018, NULL, NULL, NULL, 'calem-chespin', 2, ARRAY[585, 309, 411, 47]),
    -- Serena / Calem: Jolteon Lv. 66: Thunder, Double Kick, Quick Attack
    (130019, 13018, NULL, NULL, NULL, 'calem-chespin', 3, ARRAY[87, 24, 98]),
    -- Serena / Calem: Absol Lv. 68: Slash, Swords Dance, Quick Attack, Night Slash
    (130019, 13018, NULL, NULL, NULL, 'calem-chespin', 4, ARRAY[163, 14, 98, 400]),
    -- Serena / Calem: Altaria Lv. 67: Dragon Pulse, Dazzling Gleam, Confide
    (130019, 13018, NULL, NULL, NULL, 'calem-chespin', 5, ARRAY[406, 605, 590]),
    -- Serena / Calem: Delphox Lv. 70: Psychic, Fire Blast, Shadow Ball
    (130019, 13018, NULL, NULL, NULL, 'calem-chespin', 6, ARRAY[94, 126, 247]),
    -- Serena / Calem: Meowstic Lv. 66: Psychic, Fake Out, Disarming Voice, Shadow Ball
    (130019, 13018, NULL, NULL, NULL, 'calem-fennekin', 1, ARRAY[94, 252, 574, 247]),
    -- Serena / Calem: Clefable Lv. 68: Moonblast, Meteor Mash, Focus Blast, Sing
    (130019, 13018, NULL, NULL, NULL, 'calem-fennekin', 2, ARRAY[585, 309, 411, 47]),
    -- Serena / Calem: Flareon Lv. 66: Fire Blast, Bite, Quick Attack
    (130019, 13018, NULL, NULL, NULL, 'calem-fennekin', 3, ARRAY[126, 44, 98]),
    -- Serena / Calem: Absol Lv. 68: Slash, Swords Dance, Quick Attack, Night Slash
    (130019, 13018, NULL, NULL, NULL, 'calem-fennekin', 4, ARRAY[163, 14, 98, 400]),
    -- Serena / Calem: Altaria Lv. 67: Dragon Pulse, Dazzling Gleam, Confide
    (130019, 13018, NULL, NULL, NULL, 'calem-fennekin', 5, ARRAY[406, 605, 590]),
    -- Serena / Calem: Greninja Lv. 70: Hydro Pump, Dark Pulse, Ice Beam
    (130019, 13018, NULL, NULL, NULL, 'calem-fennekin', 6, ARRAY[56, 399, 58]),
    -- Serena / Calem: Meowstic Lv. 66: Psychic, Fake Out, Disarming Voice, Shadow Ball
    (130019, 13018, NULL, NULL, NULL, 'calem-froakie', 1, ARRAY[94, 252, 574, 247]),
    -- Serena / Calem: Clefable Lv. 68: Moonblast, Meteor Mash, Focus Blast, Sing
    (130019, 13018, NULL, NULL, NULL, 'calem-froakie', 2, ARRAY[585, 309, 411, 47]),
    -- Serena / Calem: Vaporeon Lv. 66: Hydro Pump, Aurora Beam, Quick Attack
    (130019, 13018, NULL, NULL, NULL, 'calem-froakie', 3, ARRAY[56, 62, 98]),
    -- Serena / Calem: Absol Lv. 68: Slash, Swords Dance, Quick Attack, Night Slash
    (130019, 13018, NULL, NULL, NULL, 'calem-froakie', 4, ARRAY[163, 14, 98, 400]),
    -- Serena / Calem: Altaria Lv. 67: Dragon Pulse, Dazzling Gleam, Confide
    (130019, 13018, NULL, NULL, NULL, 'calem-froakie', 5, ARRAY[406, 605, 590]),
    -- Serena / Calem: Chesnaught Lv. 70: Wood Hammer, Brick Break, Body Slam
    (130019, 13018, NULL, NULL, NULL, 'calem-froakie', 6, ARRAY[452, 280, 34])
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
