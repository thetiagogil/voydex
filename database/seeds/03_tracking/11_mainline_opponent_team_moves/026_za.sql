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
-- Rogue Megas: no source lists a moveset for Legends battles, so each gets
-- the moves Serebii's rogue Mega page (written for the simulator rematches,
-- which replay the Story battles) says it uses, damaging moves first, then
-- status moves, up to four (Mega Absol: Air Slash, and Dark Pulse as its
-- charge move). Names that aren't a move that Pokémon has in Z-A are left out
-- (Froslass's Avalanche, Banette's Double Team decoys).
-- Pokémon no source confirms are left without moves (Voydex reads their types).
-- Naveen, Lida, Emma, Tarragon, Gwynn, Philippe, Lebanne and Griselle's Story
-- battles, Korrina's test and the two Hyperspace Multi Battles: Bulbapedia's
-- trainer pages only (team, levels, held Mega Stones and moves). The Multi
-- Battle teams are stored at their lower level and list two moves each.
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
    (260008, 26001, NULL, 260001, 'chikorita', 'taunie', 1, ARRAY[113, 115, 94, 85]),
    -- Taunie / Urbain: Goodra Lv. 62: Surf, Toxic, Draco Meteor, Blizzard
    (260008, 26001, NULL, 260001, 'chikorita', 'taunie', 2, ARRAY[57, 92, 434, 59]),
    -- Taunie / Urbain: Avalugg Lv. 62: Icicle Crash, Crunch, Stone Edge, Protect
    (260008, 26001, NULL, 260001, 'chikorita', 'taunie', 3, ARRAY[556, 242, 444, 182]),
    -- Taunie / Urbain: Feraligatr Lv. 63: Breaking Swipe, Liquidation, Ice Fang, Bulldoze
    (260008, 26001, NULL, 260001, 'chikorita', 'taunie', 4, ARRAY[784, 710, 423, 523]),
    -- Taunie / Urbain: Manectric Lv. 63: Snarl, Thunder, Overheat, Protect
    (260008, 26001, NULL, 260001, 'chikorita', 'taunie', 5, ARRAY[555, 87, 315, 182]),
    -- Taunie / Urbain: Mega Emboar Lv. 64: Flare Blitz, Stone Edge, Thunder Punch, Bulk Up
    (260008, 26001, NULL, 260001, 'chikorita', 'taunie', 6, ARRAY[394, 444, 9, 339]),
    -- Taunie / Urbain: Meowstic (Female) Lv. 62: Light Screen, Reflect, Psychic, Thunderbolt
    (260008, 26001, NULL, 260001, 'tepig', 'taunie', 1, ARRAY[113, 115, 94, 85]),
    -- Taunie / Urbain: Goodra Lv. 62: Surf, Toxic, Draco Meteor, Blizzard
    (260008, 26001, NULL, 260001, 'tepig', 'taunie', 2, ARRAY[57, 92, 434, 59]),
    -- Taunie / Urbain: Avalugg Lv. 62: Icicle Crash, Crunch, Stone Edge, Protect
    (260008, 26001, NULL, 260001, 'tepig', 'taunie', 3, ARRAY[556, 242, 444, 182]),
    -- Taunie / Urbain: Meganium Lv. 63: Leech Seed, Earth Power, Dazzling Gleam, Giga Drain
    (260008, 26001, NULL, 260001, 'tepig', 'taunie', 4, ARRAY[73, 414, 605, 202]),
    -- Taunie / Urbain: Manectric Lv. 63: Snarl, Thunder, Overheat, Protect
    (260008, 26001, NULL, 260001, 'tepig', 'taunie', 5, ARRAY[555, 87, 315, 182]),
    -- Taunie / Urbain: Mega Feraligatr Lv. 64: Breaking Swipe, Liquidation, Ice Fang, Bulldoze
    (260008, 26001, NULL, 260001, 'tepig', 'taunie', 6, ARRAY[784, 710, 423, 523]),
    -- Taunie / Urbain: Meowstic (Female) Lv. 62: Light Screen, Reflect, Psychic, Thunderbolt
    (260008, 26001, NULL, 260001, 'totodile', 'taunie', 1, ARRAY[113, 115, 94, 85]),
    -- Taunie / Urbain: Goodra Lv. 62: Surf, Toxic, Draco Meteor, Blizzard
    (260008, 26001, NULL, 260001, 'totodile', 'taunie', 2, ARRAY[57, 92, 434, 59]),
    -- Taunie / Urbain: Avalugg Lv. 62: Icicle Crash, Crunch, Stone Edge, Protect
    (260008, 26001, NULL, 260001, 'totodile', 'taunie', 3, ARRAY[556, 242, 444, 182]),
    -- Taunie / Urbain: Emboar Lv. 63: Flare Blitz, Stone Edge, Thunder Punch, Bulk Up
    (260008, 26001, NULL, 260001, 'totodile', 'taunie', 4, ARRAY[394, 444, 9, 339]),
    -- Taunie / Urbain: Manectric Lv. 63: Snarl, Thunder, Overheat, Protect
    (260008, 26001, NULL, 260001, 'totodile', 'taunie', 5, ARRAY[555, 87, 315, 182]),
    -- Taunie / Urbain: Mega Meganium Lv. 64: Leech Seed, Earth Power, Dazzling Gleam, Giga Drain
    (260008, 26001, NULL, 260001, 'totodile', 'taunie', 6, ARRAY[73, 414, 605, 202]),
    -- Taunie / Urbain: Meowstic Lv. 62: Light Screen, Reflect, Psychic, Thunderbolt
    (260008, 26001, NULL, 260001, 'chikorita', 'urbain', 1, ARRAY[113, 115, 94, 85]),
    -- Taunie / Urbain: Goodra Lv. 62: Surf, Toxic, Draco Meteor, Blizzard
    (260008, 26001, NULL, 260001, 'chikorita', 'urbain', 2, ARRAY[57, 92, 434, 59]),
    -- Taunie / Urbain: Avalugg Lv. 62: Icicle Crash, Crunch, Stone Edge, Protect
    (260008, 26001, NULL, 260001, 'chikorita', 'urbain', 3, ARRAY[556, 242, 444, 182]),
    -- Taunie / Urbain: Feraligatr Lv. 63: Breaking Swipe, Liquidation, Ice Fang, Bulldoze
    (260008, 26001, NULL, 260001, 'chikorita', 'urbain', 4, ARRAY[784, 710, 423, 523]),
    -- Taunie / Urbain: Manectric Lv. 63: Snarl, Thunder, Overheat, Protect
    (260008, 26001, NULL, 260001, 'chikorita', 'urbain', 5, ARRAY[555, 87, 315, 182]),
    -- Taunie / Urbain: Mega Emboar Lv. 64: Flare Blitz, Stone Edge, Thunder Punch, Bulk Up
    (260008, 26001, NULL, 260001, 'chikorita', 'urbain', 6, ARRAY[394, 444, 9, 339]),
    -- Taunie / Urbain: Meowstic Lv. 62: Light Screen, Reflect, Psychic, Thunderbolt
    (260008, 26001, NULL, 260001, 'tepig', 'urbain', 1, ARRAY[113, 115, 94, 85]),
    -- Taunie / Urbain: Goodra Lv. 62: Surf, Toxic, Draco Meteor, Blizzard
    (260008, 26001, NULL, 260001, 'tepig', 'urbain', 2, ARRAY[57, 92, 434, 59]),
    -- Taunie / Urbain: Avalugg Lv. 62: Icicle Crash, Crunch, Stone Edge, Protect
    (260008, 26001, NULL, 260001, 'tepig', 'urbain', 3, ARRAY[556, 242, 444, 182]),
    -- Taunie / Urbain: Meganium Lv. 63: Leech Seed, Earth Power, Dazzling Gleam, Giga Drain
    (260008, 26001, NULL, 260001, 'tepig', 'urbain', 4, ARRAY[73, 414, 605, 202]),
    -- Taunie / Urbain: Manectric Lv. 63: Snarl, Thunder, Overheat, Protect
    (260008, 26001, NULL, 260001, 'tepig', 'urbain', 5, ARRAY[555, 87, 315, 182]),
    -- Taunie / Urbain: Mega Feraligatr Lv. 64: Breaking Swipe, Liquidation, Ice Fang, Bulldoze
    (260008, 26001, NULL, 260001, 'tepig', 'urbain', 6, ARRAY[784, 710, 423, 523]),
    -- Taunie / Urbain: Meowstic Lv. 62: Light Screen, Reflect, Psychic, Thunderbolt
    (260008, 26001, NULL, 260001, 'totodile', 'urbain', 1, ARRAY[113, 115, 94, 85]),
    -- Taunie / Urbain: Goodra Lv. 62: Surf, Toxic, Draco Meteor, Blizzard
    (260008, 26001, NULL, 260001, 'totodile', 'urbain', 2, ARRAY[57, 92, 434, 59]),
    -- Taunie / Urbain: Avalugg Lv. 62: Icicle Crash, Crunch, Stone Edge, Protect
    (260008, 26001, NULL, 260001, 'totodile', 'urbain', 3, ARRAY[556, 242, 444, 182]),
    -- Taunie / Urbain: Emboar Lv. 63: Flare Blitz, Stone Edge, Thunder Punch, Bulk Up
    (260008, 26001, NULL, 260001, 'totodile', 'urbain', 4, ARRAY[394, 444, 9, 339]),
    -- Taunie / Urbain: Manectric Lv. 63: Snarl, Thunder, Overheat, Protect
    (260008, 26001, NULL, 260001, 'totodile', 'urbain', 5, ARRAY[555, 87, 315, 182]),
    -- Taunie / Urbain: Mega Meganium Lv. 64: Leech Seed, Earth Power, Dazzling Gleam, Giga Drain
    (260008, 26001, NULL, 260001, 'totodile', 'urbain', 6, ARRAY[73, 414, 605, 202]),
    -- Zygarde: Zygarde (10% Forme) Lv. 33: Bite, Haze, Bulldoze, Dragon Breath
    (260018, 26004, NULL, NULL, NULL, NULL, 1, ARRAY[44, 114, 523, 225]),
    -- Zygarde: Zygarde Lv. 57: Dragon Breath, Dragon Pulse, Crunch, Land's Wrath
    (260006, 26004, NULL, NULL, NULL, NULL, 1, ARRAY[225, 406, 242, 616]),
    -- Xerneas: Xerneas Lv. 75: Megahorn, Moonblast, Horn Leech, Geomancy
    (260010, 26005, NULL, NULL, NULL, NULL, 1, ARRAY[224, 585, 532, 601]),
    -- Yveltal: Yveltal Lv. 75: Hurricane, Dark Pulse, Psychic, Oblivion Wing
    (260011, 26006, NULL, NULL, NULL, NULL, 1, ARRAY[542, 399, 94, 613]),
    -- Zygarde: Mega Zygarde Lv. 84: Core Enforcer, Thousand Arrows, Thousand Waves, Land's Wrath
    (260012, 26004, NULL, NULL, NULL, NULL, 1, ARRAY[687, 614, 615, 616]),
    -- Rogue Mega Absol: Mega Absol Lv. 25: Air Slash, Dark Pulse
    (260005, 26002, NULL, NULL, NULL, NULL, 1, ARRAY[403, 399]),
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
    (260021, 26016, NULL, NULL, NULL, NULL, 6, ARRAY[394, 403, 407, 182]),
    -- Rogue Mega Slowbro: Mega Slowbro Lv. 34: Water Pulse, Psybeam
    (260022, 26017, NULL, NULL, NULL, NULL, 1, ARRAY[352, 60]),
    -- Rogue Mega Camerupt: Mega Camerupt Lv. 34: Earth Power
    (260023, 26018, NULL, NULL, NULL, NULL, 1, ARRAY[414]),
    -- Rogue Mega Victreebel: Mega Victreebel Lv. 34: Bullet Seed, Power Whip, Sludge Bomb
    (260024, 26019, NULL, NULL, NULL, NULL, 1, ARRAY[331, 438, 188]),
    -- Rogue Mega Beedrill: Mega Beedrill Lv. 41: Lunge, Pin Missile
    (260025, 26020, NULL, NULL, NULL, NULL, 1, ARRAY[679, 42]),
    -- Rogue Mega Hawlucha: Mega Hawlucha Lv. 41: Brick Break, Air Slash, Flying Press
    (260026, 26021, NULL, NULL, NULL, NULL, 1, ARRAY[280, 403, 560]),
    -- Rogue Mega Banette: Mega Banette Lv. 41: Shadow Ball, Phantom Force, Shadow Claw, Confuse Ray
    (260027, 26022, NULL, NULL, NULL, NULL, 1, ARRAY[247, 566, 421, 109]),
    -- Rogue Mega Mawile: Mega Mawile Lv. 48: Play Rough, Crunch
    (260028, 26023, NULL, NULL, NULL, NULL, 1, ARRAY[583, 242]),
    -- Rogue Mega Barbaracle: Mega Barbaracle Lv. 48: Rock Slide, Power-Up Punch, Close Combat
    (260029, 26024, NULL, NULL, NULL, NULL, 1, ARRAY[157, 612, 370]),
    -- Rogue Mega Ampharos: Mega Ampharos Lv. 48: Dragon Pulse, Breaking Swipe, Discharge
    (260030, 26025, NULL, NULL, NULL, NULL, 1, ARRAY[406, 784, 435]),
    -- Rogue Mega Froslass: Mega Froslass Lv. 53: Phantom Force, Icy Wind, Blizzard
    (260031, 26026, NULL, NULL, NULL, NULL, 1, ARRAY[566, 196, 59]),
    -- Rogue Mega Altaria: Mega Altaria Lv. 53: Dragon Pulse, Moonblast, Twister
    (260032, 26027, NULL, NULL, NULL, NULL, 1, ARRAY[406, 585, 239]),
    -- Rogue Mega Venusaur: Mega Venusaur Lv. 53: Power Whip, Bullet Seed, Solar Beam
    (260033, 26028, NULL, NULL, NULL, NULL, 1, ARRAY[438, 331, 76]),
    -- Rogue Mega Dragonite: Mega Dragonite Lv. 59: Air Slash, Flamethrower, Outrage, Hurricane
    (260034, 26029, NULL, NULL, NULL, NULL, 1, ARRAY[403, 53, 200, 542]),
    -- Rogue Mega Tyranitar: Mega Tyranitar Lv. 59: Rock Slide, Sand Tomb, Stone Edge
    (260035, 26030, NULL, NULL, NULL, NULL, 1, ARRAY[157, 328, 444]),
    -- Rogue Mega Starmie: Mega Starmie Lv. 59: Aqua Jet, Zen Headbutt, Hydro Pump
    (260036, 26031, NULL, NULL, NULL, NULL, 1, ARRAY[453, 428, 56]),
    -- Emma: Mareep Lv. 15: Tackle, Thunder Shock, Growl, Thunder Wave
    (260014, 26034, NULL, NULL, NULL, NULL, 1, ARRAY[33, 84, 45, 86]),
    -- Naveen: Spinarak Lv. 16: Absorb, Infestation, Shadow Sneak, X-Scissor
    (260015, 26033, NULL, NULL, NULL, NULL, 1, ARRAY[71, 611, 425, 404]),
    -- Naveen: Sableye Lv. 16: Tackle, Leer, Shadow Sneak, Take Down
    (260015, 26033, NULL, NULL, NULL, NULL, 2, ARRAY[33, 43, 425, 36]),
    -- Naveen: Scraggy Lv. 17: Tackle, Headbutt, Power-Up Punch, Rock Tomb
    (260015, 26033, NULL, NULL, NULL, NULL, 3, ARRAY[33, 29, 612, 317]),
    -- Lida: Clauncher Lv. 22: Mud Shot, Aqua Jet, Bubble Beam, Water Gun
    (260016, 26032, NULL, NULL, NULL, NULL, 1, ARRAY[341, 453, 61, 55]),
    -- Lida: Vanillite Lv. 22: Tackle, Taunt, Icy Wind, Harden
    (260016, 26032, NULL, NULL, NULL, NULL, 2, ARRAY[33, 269, 196, 106]),
    -- Lida: Staryu Lv. 23: Confuse Ray, Water Gun, Harden, Bubble Beam
    (260016, 26032, NULL, NULL, NULL, NULL, 3, ARRAY[109, 55, 106, 61]),
    -- Naveen: Ariados Lv. 33: Poison Jab, Pin Missile, Sticky Web, Shadow Sneak
    (260018, 26033, NULL, NULL, NULL, NULL, 1, ARRAY[398, 42, 564, 425]),
    -- Naveen: Sableye Lv. 33: Shadow Claw, Night Slash, Confuse Ray, Take Down
    (260018, 26033, NULL, NULL, NULL, NULL, 2, ARRAY[421, 400, 109, 36]),
    -- Naveen: Scraggy Lv. 33: Brick Break, Rock Tomb, Power-Up Punch, Headbutt
    (260018, 26033, NULL, NULL, NULL, NULL, 3, ARRAY[280, 317, 612, 29]),
    -- Tarragon: Hippowdon Lv. 36: Heavy Slam, Amnesia, Crunch, Stealth Rock
    (260018, 26035, NULL, NULL, NULL, NULL, 1, ARRAY[484, 133, 242, 446]),
    -- Tarragon: Diggersby Lv. 36: Swords Dance, Take Down, Bounce, Bulldoze
    (260018, 26035, NULL, NULL, NULL, NULL, 2, ARRAY[14, 36, 340, 523]),
    -- Tarragon: Mega Excadrill Lv. 37: Swords Dance, Dig, Rock Slide, X-Scissor
    (260018, 26035, NULL, NULL, NULL, NULL, 3, ARRAY[14, 91, 157, 404]),
    -- Gwynn: Banette Lv. 43: Shadow Sneak, Shadow Claw, Knock Off, Heal Block
    (260019, 26036, NULL, NULL, NULL, NULL, 1, ARRAY[425, 421, 282, 377]),
    -- Gwynn: Gourgeist (Small) Lv. 44: Trick-or-Treat, Shadow Claw, Bullet Seed, Brutal Swing
    (260019, 26036, NULL, NULL, NULL, NULL, 2, ARRAY[567, 421, 331, 693]),
    -- Gwynn: Mega Chandelure Lv. 45: Flamethrower, Fire Spin, Shadow Ball, Protect
    (260019, 26036, NULL, NULL, NULL, NULL, 3, ARRAY[53, 83, 247, 182]),
    -- Philippe: Steelix Lv. 46: Heavy Slam, Stealth Rock, Crunch, Rock Slide
    (260028, 26037, NULL, NULL, NULL, NULL, 1, ARRAY[484, 446, 242, 157]),
    -- Philippe: Scizor Lv. 46: Air Slash, Swords Dance, X-Scissor, Bullet Punch
    (260028, 26037, NULL, NULL, NULL, NULL, 2, ARRAY[403, 14, 404, 418]),
    -- Philippe: Mega Skarmory Lv. 47: Drill Run, Night Slash, Steel Wing, Air Slash
    (260028, 26037, NULL, NULL, NULL, NULL, 3, ARRAY[529, 400, 211, 403]),
    -- Gwynn: Banette Lv. 45: Phantom Force, Shadow Claw, Knock Off, Heal Block
    (260030, 26036, NULL, NULL, NULL, NULL, 1, ARRAY[566, 421, 282, 377]),
    -- Gwynn: Gourgeist (Small) Lv. 46: Trick-or-Treat, Shadow Claw, Bullet Seed, Brutal Swing
    (260030, 26036, NULL, NULL, NULL, NULL, 2, ARRAY[567, 421, 331, 693]),
    -- Gwynn: Gengar Lv. 46: Shadow Ball, Icy Wind, Dark Pulse, Hypnosis
    (260030, 26036, NULL, NULL, NULL, NULL, 3, ARRAY[247, 196, 399, 95]),
    -- Gwynn: Mega Chandelure Lv. 47: Flamethrower, Calm Mind, Psychic, Shadow Ball
    (260030, 26036, NULL, NULL, NULL, NULL, 4, ARRAY[53, 347, 94, 247]),
    -- Lida: Clawitzer Lv. 46: Dark Pulse, Aura Sphere, Water Pulse, Mud Shot
    (260031, 26032, NULL, NULL, NULL, NULL, 1, ARRAY[399, 396, 352, 341]),
    -- Lida: Vanillish Lv. 46: Ice Beam, Icy Wind, Flash Cannon, Icicle Crash
    (260031, 26032, NULL, NULL, NULL, NULL, 2, ARRAY[58, 196, 430, 556]),
    -- Lida: Emolga Lv. 47: Volt Switch, Air Slash, Spark, Quick Attack
    (260031, 26032, NULL, NULL, NULL, NULL, 3, ARRAY[521, 403, 209, 98]),
    -- Lida: Staryu Lv. 48: Psychic, Power Gem, Surf, Swift
    (260031, 26032, NULL, NULL, NULL, NULL, 4, ARRAY[94, 408, 57, 129]),
    -- Naveen: Ariados Lv. 48: Megahorn, Poison Jab, Sticky Web, Leech Life
    (260031, 26033, NULL, NULL, NULL, NULL, 1, ARRAY[224, 398, 564, 141]),
    -- Naveen: Sableye Lv. 48: Shadow Claw, Zen Headbutt, Confuse Ray, Power Gem
    (260031, 26033, NULL, NULL, NULL, NULL, 2, ARRAY[421, 428, 109, 408]),
    -- Naveen: Krookodile Lv. 49: Crunch, Iron Tail, Earthquake, Sand Tomb
    (260031, 26033, NULL, NULL, NULL, NULL, 3, ARRAY[242, 231, 89, 328]),
    -- Naveen: Mega Scrafty Lv. 50: Iron Tail, Ice Punch, Power-Up Punch, Crunch
    (260031, 26033, NULL, NULL, NULL, NULL, 4, ARRAY[231, 8, 612, 242]),
    -- Lebanne: Noivern Lv. 53: Hurricane, Super Fang, Dragon Pulse, Air Slash
    (260006, 26038, NULL, NULL, NULL, NULL, 1, ARRAY[542, 162, 406, 403]),
    -- Lebanne: Tyrantrum Lv. 53: Earthquake, Breaking Swipe, Rock Slide, Crunch
    (260006, 26038, NULL, NULL, NULL, NULL, 2, ARRAY[89, 784, 157, 242]),
    -- Lebanne: Garchomp Lv. 53: Earthquake, Swords Dance, Dragon Claw, Iron Head
    (260006, 26038, NULL, NULL, NULL, NULL, 3, ARRAY[89, 14, 337, 442]),
    -- Lebanne: Mega Dragalge Lv. 54: Sludge Bomb, Dragon Pulse, Hydro Pump, Protect
    (260006, 26038, NULL, NULL, NULL, NULL, 4, ARRAY[188, 406, 56, 182]),
    -- Philippe: Steelix Lv. 56: Stone Edge, Heavy Slam, Stealth Rock, Breaking Swipe
    (260036, 26037, NULL, NULL, NULL, NULL, 1, ARRAY[444, 484, 446, 784]),
    -- Philippe: Scizor Lv. 56: Protect, Iron Head, X-Scissor, Air Slash
    (260036, 26037, NULL, NULL, NULL, NULL, 2, ARRAY[182, 442, 404, 403]),
    -- Philippe: Aggron Lv. 56: Iron Tail, Rock Slide, Earthquake, Ice Punch
    (260036, 26037, NULL, NULL, NULL, NULL, 3, ARRAY[231, 157, 89, 8]),
    -- Philippe: Mega Skarmory Lv. 57: Drill Run, Night Slash, Steel Wing, Protect
    (260036, 26037, NULL, NULL, NULL, NULL, 4, ARRAY[529, 400, 211, 182]),
    -- Emma: Ampharos Lv. 57: Thunder, Power Gem, Dragon Pulse, Light Screen
    (260021, 26034, NULL, NULL, NULL, NULL, 1, ARRAY[87, 408, 406, 113]),
    -- Emma: Mawile Lv. 57: Play Rough, Dynamic Punch, Crunch, Iron Head
    (260021, 26034, NULL, NULL, NULL, NULL, 2, ARRAY[583, 223, 242, 442]),
    -- Emma: Lopunny Lv. 57: Fire Punch, Ice Punch, Thunder Punch, Power-Up Punch
    (260021, 26034, NULL, NULL, NULL, NULL, 3, ARRAY[7, 8, 9, 612]),
    -- Emma: Lucario Lv. 57: Aura Sphere, Flash Cannon, Psychic, Calm Mind
    (260021, 26034, NULL, NULL, NULL, NULL, 4, ARRAY[396, 430, 94, 347]),
    -- Emma: Mega Malamar Lv. 58: Poison Jab, Night Slash, Psycho Cut, Slash
    (260021, 26034, NULL, NULL, NULL, NULL, 5, ARRAY[398, 400, 427, 163]),
    -- Griselle: Talonflame Lv. 59: Flare Blitz, Steel Wing, Quick Attack, U-turn
    (260021, 26039, NULL, NULL, NULL, NULL, 1, ARRAY[394, 211, 98, 369]),
    -- Griselle: Camerupt Lv. 59: Earthquake, Lava Plume, Rock Slide, Protect
    (260021, 26039, NULL, NULL, NULL, NULL, 2, ARRAY[89, 436, 157, 182]),
    -- Griselle: Aerodactyl Lv. 60: Stone Edge, Iron Head, Crunch, Thunder Fang
    (260021, 26039, NULL, NULL, NULL, NULL, 3, ARRAY[444, 442, 242, 422]),
    -- Griselle: Metagross Lv. 60: Bullet Punch, Psycho Cut, Brutal Swing, Ice Punch
    (260021, 26039, NULL, NULL, NULL, NULL, 4, ARRAY[418, 427, 693, 8]),
    -- Griselle: Mega Pyroar Lv. 61: Flamethrower, Earth Power, Hyper Voice, Snarl
    (260021, 26039, NULL, NULL, NULL, NULL, 5, ARRAY[53, 414, 304, 555])
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
