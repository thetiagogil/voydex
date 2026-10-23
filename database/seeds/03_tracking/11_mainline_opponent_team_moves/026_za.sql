-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokéWiki trainer team tables for this game, matched to each
-- team by its Pokémon and their levels.
-- Pokémon no source confirms are left without moves (Voydex reads their types).
-- Scope: Legends: Z-A Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Legends: Z-A opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Taunie / Urbain: Totodile Lv. 5: Tackle, Leer
    (260003, 26001, NULL, 260001, 'chikorita', NULL, 1, ARRAY[33, 43]),
    -- Taunie / Urbain: Tepig Lv. 5: Tackle, Tail Whip
    (260003, 26001, NULL, 260001, 'chikorita', NULL, 2, ARRAY[33, 39]),
    -- Taunie / Urbain: Chikorita Lv. 5: Tackle, Tail Whip
    (260003, 26001, NULL, 260001, 'tepig', NULL, 1, ARRAY[33, 39]),
    -- Taunie / Urbain: Totodile Lv. 5: Tackle, Leer
    (260003, 26001, NULL, 260001, 'tepig', NULL, 2, ARRAY[33, 43]),
    -- Taunie / Urbain: Tepig Lv. 5: Tackle, Tail Whip
    (260003, 26001, NULL, 260001, 'totodile', NULL, 1, ARRAY[33, 39]),
    -- Taunie / Urbain: Chikorita Lv. 5: Tackle, Tail Whip
    (260003, 26001, NULL, 260001, 'totodile', NULL, 2, ARRAY[33, 39]),
    -- Taunie / Urbain: Croconaw Lv. 25: Aqua Jet, Tackle, Slash, Bite
    (260005, 26001, NULL, 260001, 'chikorita', NULL, 1, ARRAY[453, 33, 163, 44]),
    -- Taunie / Urbain: Pignite Lv. 25: Power-Up Punch, Rollout, Flame Wheel, Tackle
    (260005, 26001, NULL, 260001, 'chikorita', NULL, 2, ARRAY[612, 205, 172, 33]),
    -- Taunie / Urbain: Mega Manectric Lv. 26: Thunder Fang, Bite, Spark, Fire Fang
    (260005, 26001, NULL, 260001, 'chikorita', NULL, 3, ARRAY[422, 44, 209, 424]),
    -- Taunie / Urbain: Bayleef Lv. 25: Giga Drain, Leech Seed, Body Slam, Disarming Voice
    (260005, 26001, NULL, 260001, 'tepig', NULL, 1, ARRAY[202, 73, 34, 574]),
    -- Taunie / Urbain: Croconaw Lv. 25: Aqua Jet, Tackle, Slash, Bite
    (260005, 26001, NULL, 260001, 'tepig', NULL, 2, ARRAY[453, 33, 163, 44]),
    -- Taunie / Urbain: Mega Manectric Lv. 26: Thunder Fang, Spark, Bite, Fire Fang
    (260005, 26001, NULL, 260001, 'tepig', NULL, 3, ARRAY[422, 209, 44, 424]),
    -- Taunie / Urbain: Pignite Lv. 25: Power-Up Punch, Rollout, Flame Wheel, Tackle
    (260005, 26001, NULL, 260001, 'totodile', NULL, 1, ARRAY[612, 205, 172, 33]),
    -- Taunie / Urbain: Bayleef Lv. 25: Giga Drain, Leech Seed, Body Slam, Disarming Voice
    (260005, 26001, NULL, 260001, 'totodile', NULL, 2, ARRAY[202, 73, 34, 574]),
    -- Taunie / Urbain: Mega Manectric Lv. 26: Thunder Fang, Bite, Spark, Fire Fang
    (260005, 26001, NULL, 260001, 'totodile', NULL, 3, ARRAY[422, 44, 209, 424]),
    -- Taunie / Urbain: Meowstic (Female) Lv. 62: Light Screen, Reflect, Psychic, Thunderbolt
    (260008, 26001, NULL, NULL, NULL, 'taunie-chikorita', 1, ARRAY[113, 115, 94, 85]),
    -- Taunie / Urbain: Goodra Lv. 62: Surf, Toxic, Draco Meteor, Blizzard
    (260008, 26001, NULL, NULL, NULL, 'taunie-chikorita', 2, ARRAY[57, 92, 434, 59]),
    -- Taunie / Urbain: Avalugg Lv. 62: Icicle Crash, Crunch, Stone Edge, Protect
    (260008, 26001, NULL, NULL, NULL, 'taunie-chikorita', 3, ARRAY[556, 242, 444, 182]),
    -- Taunie / Urbain: Feraligatr Lv. 63: Breaking Swipe, Liquidation, Ice Fang, Bulldoze
    (260008, 26001, NULL, NULL, NULL, 'taunie-chikorita', 4, ARRAY[784, 710, 423, 523]),
    -- Taunie / Urbain: Manectric Lv. 63: Snarl, Thunder, Overheat, Protect
    (260008, 26001, NULL, NULL, NULL, 'taunie-chikorita', 5, ARRAY[555, 87, 315, 182]),
    -- Taunie / Urbain: Mega Emboar Lv. 64: Flare Blitz, Stone Edge, Thunder Punch, Bulk Up
    (260008, 26001, NULL, NULL, NULL, 'taunie-chikorita', 6, ARRAY[394, 444, 9, 339]),
    -- Taunie / Urbain: Meowstic (Female) Lv. 62: Light Screen, Reflect, Psychic, Thunderbolt
    (260008, 26001, NULL, NULL, NULL, 'taunie-tepig', 1, ARRAY[113, 115, 94, 85]),
    -- Taunie / Urbain: Goodra Lv. 62: Surf, Toxic, Draco Meteor, Blizzard
    (260008, 26001, NULL, NULL, NULL, 'taunie-tepig', 2, ARRAY[57, 92, 434, 59]),
    -- Taunie / Urbain: Avalugg Lv. 62: Icicle Crash, Crunch, Stone Edge, Protect
    (260008, 26001, NULL, NULL, NULL, 'taunie-tepig', 3, ARRAY[556, 242, 444, 182]),
    -- Taunie / Urbain: Meganium Lv. 63: Leech Seed, Earth Power, Dazzling Gleam, Giga Drain
    (260008, 26001, NULL, NULL, NULL, 'taunie-tepig', 4, ARRAY[73, 414, 605, 202]),
    -- Taunie / Urbain: Manectric Lv. 63: Snarl, Thunder, Overheat, Protect
    (260008, 26001, NULL, NULL, NULL, 'taunie-tepig', 5, ARRAY[555, 87, 315, 182]),
    -- Taunie / Urbain: Mega Feraligatr Lv. 64: Breaking Swipe, Liquidation, Ice Fang, Bulldoze
    (260008, 26001, NULL, NULL, NULL, 'taunie-tepig', 6, ARRAY[784, 710, 423, 523]),
    -- Taunie / Urbain: Meowstic (Female) Lv. 62: Light Screen, Reflect, Psychic, Thunderbolt
    (260008, 26001, NULL, NULL, NULL, 'taunie-totodile', 1, ARRAY[113, 115, 94, 85]),
    -- Taunie / Urbain: Goodra Lv. 62: Surf, Toxic, Draco Meteor, Blizzard
    (260008, 26001, NULL, NULL, NULL, 'taunie-totodile', 2, ARRAY[57, 92, 434, 59]),
    -- Taunie / Urbain: Avalugg Lv. 62: Icicle Crash, Crunch, Stone Edge, Protect
    (260008, 26001, NULL, NULL, NULL, 'taunie-totodile', 3, ARRAY[556, 242, 444, 182]),
    -- Taunie / Urbain: Emboar Lv. 63: Flare Blitz, Stone Edge, Thunder Punch, Bulk Up
    (260008, 26001, NULL, NULL, NULL, 'taunie-totodile', 4, ARRAY[394, 444, 9, 339]),
    -- Taunie / Urbain: Manectric Lv. 63: Snarl, Thunder, Overheat, Protect
    (260008, 26001, NULL, NULL, NULL, 'taunie-totodile', 5, ARRAY[555, 87, 315, 182]),
    -- Taunie / Urbain: Mega Meganium Lv. 64: Leech Seed, Earth Power, Dazzling Gleam, Giga Drain
    (260008, 26001, NULL, NULL, NULL, 'taunie-totodile', 6, ARRAY[73, 414, 605, 202]),
    -- Taunie / Urbain: Meowstic Lv. 62: Light Screen, Reflect, Psychic, Thunderbolt
    (260008, 26001, NULL, NULL, NULL, 'urbain-chikorita', 1, ARRAY[113, 115, 94, 85]),
    -- Taunie / Urbain: Goodra Lv. 62: Surf, Toxic, Draco Meteor, Blizzard
    (260008, 26001, NULL, NULL, NULL, 'urbain-chikorita', 2, ARRAY[57, 92, 434, 59]),
    -- Taunie / Urbain: Avalugg Lv. 62: Icicle Crash, Crunch, Stone Edge, Protect
    (260008, 26001, NULL, NULL, NULL, 'urbain-chikorita', 3, ARRAY[556, 242, 444, 182]),
    -- Taunie / Urbain: Feraligatr Lv. 63: Breaking Swipe, Liquidation, Ice Fang, Bulldoze
    (260008, 26001, NULL, NULL, NULL, 'urbain-chikorita', 4, ARRAY[784, 710, 423, 523]),
    -- Taunie / Urbain: Manectric Lv. 63: Snarl, Thunder, Overheat, Protect
    (260008, 26001, NULL, NULL, NULL, 'urbain-chikorita', 5, ARRAY[555, 87, 315, 182]),
    -- Taunie / Urbain: Mega Emboar Lv. 64: Flare Blitz, Stone Edge, Thunder Punch, Bulk Up
    (260008, 26001, NULL, NULL, NULL, 'urbain-chikorita', 6, ARRAY[394, 444, 9, 339]),
    -- Taunie / Urbain: Meowstic Lv. 62: Light Screen, Reflect, Psychic, Thunderbolt
    (260008, 26001, NULL, NULL, NULL, 'urbain-tepig', 1, ARRAY[113, 115, 94, 85]),
    -- Taunie / Urbain: Goodra Lv. 62: Surf, Toxic, Draco Meteor, Blizzard
    (260008, 26001, NULL, NULL, NULL, 'urbain-tepig', 2, ARRAY[57, 92, 434, 59]),
    -- Taunie / Urbain: Avalugg Lv. 62: Icicle Crash, Crunch, Stone Edge, Protect
    (260008, 26001, NULL, NULL, NULL, 'urbain-tepig', 3, ARRAY[556, 242, 444, 182]),
    -- Taunie / Urbain: Meganium Lv. 63: Leech Seed, Earth Power, Dazzling Gleam, Giga Drain
    (260008, 26001, NULL, NULL, NULL, 'urbain-tepig', 4, ARRAY[73, 414, 605, 202]),
    -- Taunie / Urbain: Manectric Lv. 63: Snarl, Thunder, Overheat, Protect
    (260008, 26001, NULL, NULL, NULL, 'urbain-tepig', 5, ARRAY[555, 87, 315, 182]),
    -- Taunie / Urbain: Mega Feraligatr Lv. 64: Breaking Swipe, Liquidation, Ice Fang, Bulldoze
    (260008, 26001, NULL, NULL, NULL, 'urbain-tepig', 6, ARRAY[784, 710, 423, 523]),
    -- Taunie / Urbain: Meowstic Lv. 62: Light Screen, Reflect, Psychic, Thunderbolt
    (260008, 26001, NULL, NULL, NULL, 'urbain-totodile', 1, ARRAY[113, 115, 94, 85]),
    -- Taunie / Urbain: Goodra Lv. 62: Surf, Toxic, Draco Meteor, Blizzard
    (260008, 26001, NULL, NULL, NULL, 'urbain-totodile', 2, ARRAY[57, 92, 434, 59]),
    -- Taunie / Urbain: Avalugg Lv. 62: Icicle Crash, Crunch, Stone Edge, Protect
    (260008, 26001, NULL, NULL, NULL, 'urbain-totodile', 3, ARRAY[556, 242, 444, 182]),
    -- Taunie / Urbain: Emboar Lv. 63: Flare Blitz, Stone Edge, Thunder Punch, Bulk Up
    (260008, 26001, NULL, NULL, NULL, 'urbain-totodile', 4, ARRAY[394, 444, 9, 339]),
    -- Taunie / Urbain: Manectric Lv. 63: Snarl, Thunder, Overheat, Protect
    (260008, 26001, NULL, NULL, NULL, 'urbain-totodile', 5, ARRAY[555, 87, 315, 182]),
    -- Taunie / Urbain: Mega Meganium Lv. 64: Leech Seed, Earth Power, Dazzling Gleam, Giga Drain
    (260008, 26001, NULL, NULL, NULL, 'urbain-totodile', 6, ARRAY[73, 414, 605, 202]),
    -- Lysandre: Pyroar Lv. 78: Hyper Voice, Flamethrower, Snarl, Solar Beam
    (260012, 26003, NULL, NULL, NULL, NULL, 1, ARRAY[304, 53, 555, 76]),
    -- Lysandre: Florges Lv. 78: Energy Ball, Dazzling Gleam, Psychic, Calm Mind
    (260012, 26003, NULL, NULL, NULL, NULL, 2, ARRAY[412, 605, 94, 347]),
    -- Lysandre: Sableye Lv. 78: Will-O-Wisp, Night Slash, Shadow Claw, Confuse Ray
    (260012, 26003, NULL, NULL, NULL, NULL, 3, ARRAY[261, 400, 421, 109]),
    -- Lysandre: Noivern Lv. 79: Boomburst, Hurricane, Dragon Pulse, Super Fang
    (260012, 26003, NULL, NULL, NULL, NULL, 4, ARRAY[586, 542, 406, 162]),
    -- Lysandre: Garbodor Lv. 79: Gunk Shot, Brutal Swing, Rock Blast, Metal Claw
    (260012, 26003, NULL, NULL, NULL, NULL, 5, ARRAY[441, 693, 350, 232]),
    -- Lysandre: Mega Gyarados Lv. 80: Crunch, Waterfall, Ice Fang, Earthquake
    (260012, 26003, NULL, NULL, NULL, NULL, 6, ARRAY[242, 127, 423, 89]),
    -- Zach: Slowpoke Lv. 8: Water Gun, Growl, Tackle, Confusion
    (260013, 26007, NULL, NULL, NULL, NULL, 1, ARRAY[55, 45, 33, 93]),
    -- Zach: Pidgey Lv. 9: Tackle, Growl, Gust
    (260013, 26007, NULL, NULL, NULL, NULL, 2, ARRAY[33, 45, 16]),
    -- Zach: Pikachu Lv. 9: Quick Attack, Growl, Thunder Wave, Thunder Shock
    (260013, 26007, NULL, NULL, NULL, NULL, 3, ARRAY[98, 45, 86, 84]),
    -- Yvon: Spritzee Lv. 15: Fairy Wind, Fake Tears, Disarming Voice
    (260014, 26008, NULL, NULL, NULL, NULL, 1, ARRAY[584, 313, 574]),
    -- Yvon: Swirlix Lv. 15: Tackle, Charm, Fairy Wind, Fake Tears
    (260014, 26008, NULL, NULL, NULL, NULL, 2, ARRAY[33, 204, 584, 313]),
    -- Yvon: Vivillon Lv. 16: Light Screen, Infestation, Gust, Draining Kiss
    (260014, 26008, NULL, NULL, NULL, NULL, 3, ARRAY[113, 611, 16, 577]),
    -- Xavi: Venipede Lv. 20: Spikes, Rollout, Screech, Pin Missile
    (260015, 26009, NULL, NULL, NULL, NULL, 1, ARRAY[191, 205, 103, 42]),
    -- Xavi: Roselia Lv. 20: Spikes, Sleep Powder, Razor Leaf, Magical Leaf
    (260015, 26009, NULL, NULL, NULL, NULL, 2, ARRAY[191, 79, 75, 345]),
    -- Xavi: Kadabra Lv. 21: Psybeam, Reflect, Shadow Ball, Confusion
    (260015, 26009, NULL, NULL, NULL, NULL, 3, ARRAY[60, 115, 247, 93]),
    -- Xavi: Furfrou Lv. 21: Fire Fang, Thunder Fang, Take Down, Bite
    (260015, 26009, NULL, NULL, NULL, NULL, 4, ARRAY[424, 422, 36, 44]),
    -- Rintaro: Simisage Lv. 24: Protect, Vine Whip, Bite, Magical Leaf
    (260016, 26010, NULL, NULL, NULL, NULL, 1, ARRAY[182, 22, 44, 345]),
    -- Rintaro: Simipour Lv. 24: Protect, Bite, Bubble Beam, Water Gun
    (260016, 26010, NULL, NULL, NULL, NULL, 2, ARRAY[182, 44, 61, 55]),
    -- Rintaro: Simisear Lv. 24: Protect, Bite, Ember, Flame Wheel
    (260016, 26010, NULL, NULL, NULL, NULL, 3, ARRAY[182, 44, 52, 172]),
    -- Vinnie: Houndoom Lv. 30: Fire Fang, Fire Spin, Bite, Roar
    (260017, 26011, NULL, NULL, NULL, NULL, 1, ARRAY[424, 83, 44, 46]),
    -- Vinnie: Sharpedo Lv. 30: Whirlpool, Aqua Jet, Night Slash, Slash
    (260017, 26011, NULL, NULL, NULL, NULL, 2, ARRAY[250, 453, 400, 163]),
    -- Vinnie: Buneary Lv. 30: Charm, Quick Attack, Draining Kiss, Brutal Swing
    (260017, 26011, NULL, NULL, NULL, NULL, 3, ARRAY[204, 98, 577, 693]),
    -- Vinnie: Mega Drampa Lv. 32: Safeguard, Icy Wind, Twister, Glare
    (260017, 26011, NULL, NULL, NULL, NULL, 4, ARRAY[219, 196, 239, 137]),
    -- Canari: Heliolisk Lv. 37: Swift, Parabolic Charge, Volt Switch, Bulldoze
    (260018, 26012, NULL, NULL, NULL, NULL, 1, ARRAY[129, 570, 521, 523]),
    -- Canari: Ampharos Lv. 38: Cotton Guard, Discharge, Power Gem, Dragon Pulse
    (260018, 26012, NULL, NULL, NULL, NULL, 2, ARRAY[538, 435, 408, 406]),
    -- Canari: Stunfisk Lv. 38: Discharge, Spark, Charge, Mud Shot
    (260018, 26012, NULL, NULL, NULL, NULL, 3, ARRAY[435, 209, 268, 341]),
    -- Canari: Mega Eelektross Lv. 39: Discharge, Crunch, Volt Switch, Eerie Impulse
    (260018, 26012, NULL, NULL, NULL, NULL, 4, ARRAY[435, 242, 521, 598]),
    -- Ivor: Heracross Lv. 45: Rock Blast, Pin Missile, Aerial Ace, Brick Break
    (260019, 26013, NULL, NULL, NULL, NULL, 1, ARRAY[350, 42, 332, 280]),
    -- Ivor: Medicham Lv. 46: Zen Headbutt, Rock Smash, Protect, Ice Punch
    (260019, 26013, NULL, NULL, NULL, NULL, 2, ARRAY[428, 249, 182, 8]),
    -- Ivor: Machamp Lv. 46: Bulldoze, Brick Break, Brutal Swing, Bulk Up
    (260019, 26013, NULL, NULL, NULL, NULL, 3, ARRAY[523, 280, 693, 339]),
    -- Ivor: Mega Falinks Lv. 47: Iron Head, Brick Break, Rock Slide, No Retreat
    (260019, 26013, NULL, NULL, NULL, NULL, 4, ARRAY[442, 280, 157, 748]),
    -- Corbeau: Arbok Lv. 50: Poison Jab, Fire Fang, Toxic, Leech Life
    (260020, 26014, NULL, NULL, NULL, NULL, 1, ARRAY[398, 424, 92, 141]),
    -- Corbeau: Gyarados Lv. 51: Crunch, Waterfall, Dragon Rush, Bounce
    (260020, 26014, NULL, NULL, NULL, NULL, 2, ARRAY[242, 127, 407, 340]),
    -- Corbeau: Roserade Lv. 51: Giga Drain, Synthesis, Sludge Bomb, Shadow Ball
    (260020, 26014, NULL, NULL, NULL, NULL, 3, ARRAY[202, 235, 188, 247]),
    -- Corbeau: Mega Scolipede Lv. 52: Gunk Shot, Protect, X-Scissor, Earthquake
    (260020, 26014, NULL, NULL, NULL, NULL, 4, ARRAY[441, 182, 404, 89]),
    -- Canari: Heliolisk Lv. 53: Thunder Wave, Parabolic Charge, Thunderbolt, Bulldoze
    (260006, 26012, NULL, NULL, NULL, NULL, 1, ARRAY[86, 570, 85, 523]),
    -- Canari: Ampharos Lv. 54: Dazzling Gleam, Thunder, Power Gem, Ice Punch
    (260006, 26012, NULL, NULL, NULL, NULL, 2, ARRAY[605, 87, 408, 8]),
    -- Canari: Stunfisk Lv. 54: Discharge, Thunder Shock, Stealth Rock, Mud Shot
    (260006, 26012, NULL, NULL, NULL, NULL, 3, ARRAY[435, 84, 446, 341]),
    -- Canari: Mega Eelektross Lv. 55: Liquidation, Thunderbolt, Zap Cannon, Giga Drain
    (260006, 26012, NULL, NULL, NULL, NULL, 4, ARRAY[710, 85, 192, 202]),
    -- Ivor: Heracross Lv. 53: Rock Blast, Megahorn, Aerial Ace, Brick Break
    (260006, 26013, NULL, NULL, NULL, NULL, 1, ARRAY[350, 224, 332, 280]),
    -- Ivor: Medicham Lv. 54: Zen Headbutt, Rock Smash, Protect, Ice Punch
    (260006, 26013, NULL, NULL, NULL, NULL, 2, ARRAY[428, 249, 182, 8]),
    -- Ivor: Machamp Lv. 54: Bulldoze, Brick Break, Brutal Swing, Bulk Up
    (260006, 26013, NULL, NULL, NULL, NULL, 3, ARRAY[523, 280, 693, 339]),
    -- Ivor: Mega Falinks Lv. 55: Iron Head, Close Combat, Rock Slide, No Retreat
    (260006, 26013, NULL, NULL, NULL, NULL, 4, ARRAY[442, 370, 157, 748]),
    -- Corbeau: Arbok Lv. 54: Poison Jab, Fire Fang, Toxic, Leech Life
    (260006, 26014, NULL, NULL, NULL, NULL, 1, ARRAY[398, 424, 92, 141]),
    -- Corbeau: Gyarados Lv. 55: Crunch, Waterfall, Dragon Rush, Bounce
    (260006, 26014, NULL, NULL, NULL, NULL, 2, ARRAY[242, 127, 407, 340]),
    -- Corbeau: Roserade Lv. 55: Giga Drain, Synthesis, Sludge Bomb, Shadow Ball
    (260006, 26014, NULL, NULL, NULL, NULL, 3, ARRAY[202, 235, 188, 247]),
    -- Corbeau: Mega Scolipede Lv. 56: Gunk Shot, Protect, X-Scissor, Earthquake
    (260006, 26014, NULL, NULL, NULL, NULL, 4, ARRAY[441, 182, 404, 89]),
    -- Jacinthe: Carbink Lv. 57: Stealth Rock, Stone Edge, Moonblast, Flash Cannon
    (260006, 26015, NULL, NULL, NULL, NULL, 1, ARRAY[446, 444, 585, 430]),
    -- Jacinthe: Mawile Lv. 58: Play Rough, Iron Head, Crunch, Fire Fang
    (260006, 26015, NULL, NULL, NULL, NULL, 2, ARRAY[583, 442, 242, 424]),
    -- Jacinthe: Aurorus Lv. 58: Blizzard, Freeze-Dry, Rock Blast, Protect
    (260006, 26015, NULL, NULL, NULL, NULL, 3, ARRAY[59, 573, 350, 182]),
    -- Jacinthe: Gardevoir Lv. 58: Moonblast, Mystical Fire, Psychic, Calm Mind
    (260006, 26015, NULL, NULL, NULL, NULL, 4, ARRAY[585, 595, 94, 347]),
    -- Jacinthe: Mega Clefable Lv. 59: Air Slash, Moonblast, Mystical Fire, Protect
    (260006, 26015, NULL, NULL, NULL, NULL, 5, ARRAY[403, 585, 595, 182]),
    -- Grisham: Pangoro Lv. 61: Brick Break, Crunch, Bullet Punch, Protect
    (260021, 26016, NULL, NULL, NULL, NULL, 1, ARRAY[280, 242, 418, 182]),
    -- Grisham: Malamar Lv. 61: Hypnosis, Psyshock, Night Slash, Liquidation
    (260021, 26016, NULL, NULL, NULL, NULL, 2, ARRAY[95, 473, 400, 710]),
    -- Grisham: Pyroar Lv. 61: Overheat, Earth Power, Snarl, Hyper Voice
    (260021, 26016, NULL, NULL, NULL, NULL, 3, ARRAY[315, 414, 555, 304]),
    -- Grisham: Tyranitar Lv. 62: Stone Edge, Ice Punch, Crunch, Earthquake
    (260021, 26016, NULL, NULL, NULL, NULL, 4, ARRAY[444, 8, 242, 89]),
    -- Grisham: Salamence Lv. 62: Aerial Ace, Earthquake, Fire Fang, Draco Meteor
    (260021, 26016, NULL, NULL, NULL, NULL, 5, ARRAY[332, 89, 424, 434]),
    -- Grisham: Mega Charizard X Lv. 63: Flare Blitz, Air Slash, Dragon Rush, Protect
    (260021, 26016, NULL, NULL, NULL, NULL, 6, ARRAY[394, 403, 407, 182])
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
