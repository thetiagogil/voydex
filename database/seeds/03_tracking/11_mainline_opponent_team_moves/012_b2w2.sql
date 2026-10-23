-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokéWiki trainer team tables for this game, matched to each
-- team by its Pokémon and their levels.
-- Pokémon no source confirms are left without moves (Voydex reads their types).
-- Scope: Black 2 / White 2 Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Black 2 / White 2 opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Cheren: Patrat Lv. 11: Work Up, Tackle, Bite
    (120003, 12001, NULL, NULL, NULL, NULL, 1, ARRAY[526, 33, 44]),
    -- Cheren: Lillipup Lv. 13: Work Up, Tackle, Bite
    (120003, 12001, NULL, NULL, NULL, NULL, 2, ARRAY[526, 33, 44]),
    -- Roxie: Koffing Lv. 16: Tackle, Smog, Assurance, Clear Smog
    (120004, 12002, NULL, NULL, NULL, NULL, 1, ARRAY[33, 123, 372, 499]),
    -- Roxie: Whirlipede Lv. 18: Protect, Venoshock, Poison Sting, Pursuit
    (120004, 12002, NULL, NULL, NULL, NULL, 2, ARRAY[182, 474, 40, 228]),
    -- Burgh: Swadloon Lv. 22: Struggle Bug, Razor Leaf, String Shot
    (120005, 12003, NULL, NULL, NULL, NULL, 1, ARRAY[522, 75, 81]),
    -- Burgh: Dwebble Lv. 22: Struggle Bug, Smack Down, Feint Attack, Rock Polish
    (120005, 12003, NULL, NULL, NULL, NULL, 2, ARRAY[522, 479, 185, 397]),
    -- Burgh: Leavanny Lv. 24: Struggle Bug, Razor Leaf, Cut, String Shot
    (120005, 12003, NULL, NULL, NULL, NULL, 3, ARRAY[522, 75, 15, 81]),
    -- Elesa: Emolga Lv. 28: Volt Switch, Quick Attack, Pursuit, Electro Ball
    (120006, 12004, NULL, NULL, NULL, NULL, 1, ARRAY[521, 98, 228, 486]),
    -- Elesa: Flaaffy Lv. 28: Volt Switch, Take Down, Thunder Wave, Electro Ball
    (120006, 12004, NULL, NULL, NULL, NULL, 2, ARRAY[521, 36, 86, 486]),
    -- Elesa: Zebstrika Lv. 30: Volt Switch, Flame Charge, Pursuit, Quick Attack
    (120006, 12004, NULL, NULL, NULL, NULL, 3, ARRAY[521, 488, 228, 98]),
    -- Clay: Krokorok Lv. 31: Bulldoze, Crunch, Sand Tomb, Torment
    (120007, 12005, NULL, NULL, NULL, NULL, 1, ARRAY[523, 242, 328, 259]),
    -- Clay: Sandslash Lv. 31: Bulldoze, Crush Claw, Rollout, Fury Cutter
    (120007, 12005, NULL, NULL, NULL, NULL, 2, ARRAY[523, 306, 205, 210]),
    -- Clay: Excadrill Lv. 33: Bulldoze, Metal Claw, Slash, Rock Slide
    (120007, 12005, NULL, NULL, NULL, NULL, 3, ARRAY[523, 232, 163, 157]),
    -- Skyla: Swoobat Lv. 37: Acrobatics, Assurance, Heart Stamp, Attract
    (120008, 12006, NULL, NULL, NULL, NULL, 1, ARRAY[512, 372, 531, 213]),
    -- Skyla: Skarmory Lv. 37: Air Cutter, Steel Wing, Fury Attack, Agility
    (120008, 12006, NULL, NULL, NULL, NULL, 2, ARRAY[314, 211, 31, 97]),
    -- Skyla: Swanna Lv. 39: Air Slash, Roost, Bubble Beam, Feather Dance
    (120008, 12006, NULL, NULL, NULL, NULL, 3, ARRAY[403, 355, 61, 297]),
    -- Drayden: Druddigon Lv. 46: Dragon Tail, Revenge, Slash, Crunch
    (120009, 12007, NULL, NULL, NULL, NULL, 1, ARRAY[525, 279, 163, 242]),
    -- Drayden: Flygon Lv. 46: Dragon Tail, Earth Power, Rock Slide, Crunch
    (120009, 12007, NULL, NULL, NULL, NULL, 2, ARRAY[525, 414, 157, 242]),
    -- Drayden: Haxorus Lv. 48: Dragon Tail, Assurance, Slash, Dragon Dance
    (120009, 12007, NULL, NULL, NULL, NULL, 3, ARRAY[525, 372, 163, 349]),
    -- Marlon: Carracosta Lv. 49: Scald, Smack Down, Crunch, Shell Smash
    (120010, 12008, NULL, NULL, NULL, NULL, 1, ARRAY[503, 479, 242, 504]),
    -- Marlon: Wailord Lv. 49: Scald, Rollout, Bounce, Amnesia
    (120010, 12008, NULL, NULL, NULL, NULL, 2, ARRAY[503, 205, 340, 133]),
    -- Marlon: Jellicent Lv. 51: Scald, Ominous Wind, Brine, Recover
    (120010, 12008, NULL, NULL, NULL, NULL, 3, ARRAY[503, 466, 362, 105]),
    -- Colress: Magneton Lv. 50: Thunder Wave, Volt Switch, Tri Attack, Flash Cannon
    (120011, 12009, NULL, NULL, NULL, NULL, 1, ARRAY[86, 521, 161, 430]),
    -- Colress: Metang Lv. 50: Agility, Zen Headbutt, Rock Slide, Meteor Mash
    (120011, 12009, NULL, NULL, NULL, NULL, 2, ARRAY[97, 428, 157, 309]),
    -- Colress: Beheeyem Lv. 50: Psychic, Calm Mind, Energy Ball, Recover
    (120011, 12009, NULL, NULL, NULL, NULL, 3, ARRAY[94, 347, 412, 105]),
    -- Colress: Magnezone Lv. 50: Discharge, Thunder Wave, Explosion, Flash Cannon
    (120011, 12009, NULL, NULL, NULL, NULL, 4, ARRAY[435, 86, 153, 430]),
    -- Colress: Klinklang Lv. 52: Shift Gear, Gear Grind, Giga Impact, Thunderbolt
    (120011, 12009, NULL, NULL, NULL, NULL, 5, ARRAY[508, 544, 416, 85]),
    -- Ghetsis: Cofagrigus Lv. 50: Protect, Shadow Ball, Toxic, Psychic
    (120012, 12010, NULL, NULL, NULL, NULL, 1, ARRAY[182, 247, 92, 94]),
    -- Ghetsis: Seismitoad Lv. 50: Muddy Water, Sludge Wave, Earthquake, Drain Punch
    (120012, 12010, NULL, NULL, NULL, NULL, 2, ARRAY[330, 482, 89, 409]),
    -- Ghetsis: Eelektross Lv. 50: Thunderbolt, Crunch, Flamethrower, Acrobatics
    (120012, 12010, NULL, NULL, NULL, NULL, 3, ARRAY[85, 242, 53, 512]),
    -- Ghetsis: Drapion Lv. 50: Night Slash, Earthquake, Poison Fang, X-Scissor
    (120012, 12010, NULL, NULL, NULL, NULL, 4, ARRAY[400, 89, 305, 404]),
    -- Ghetsis: Toxicroak Lv. 50: Poison Jab, Sucker Punch, Shadow Ball, Brick Break
    (120012, 12010, NULL, NULL, NULL, NULL, 5, ARRAY[398, 389, 247, 280]),
    -- Ghetsis: Hydreigon Lv. 52: Dragon Rush, Crunch, Rock Slide, Frustration
    (120012, 12010, NULL, NULL, NULL, NULL, 6, ARRAY[407, 242, 157, 218]),
    -- Shauntal: Cofagrigus Lv. 56: Will-O-Wisp, Grass Knot, Psychic, Shadow Ball
    (120013, 12011, NULL, NULL, NULL, NULL, 1, ARRAY[261, 447, 94, 247]),
    -- Shauntal: Drifblim Lv. 56: Thunderbolt, Acrobatics, Psychic, Shadow Ball
    (120013, 12011, NULL, NULL, NULL, NULL, 2, ARRAY[85, 512, 94, 247]),
    -- Shauntal: Golurk Lv. 56: Heavy Slam, Earthquake, Brick Break, Shadow Punch
    (120013, 12011, NULL, NULL, NULL, NULL, 3, ARRAY[484, 89, 280, 325]),
    -- Shauntal: Chandelure Lv. 58: Energy Ball, Fire Blast, Psychic, Shadow Ball
    (120013, 12011, NULL, NULL, NULL, NULL, 4, ARRAY[412, 126, 94, 247]),
    -- Grimsley: Liepard Lv. 56: Night Slash, Fake Out, Aerial Ace, Attract
    (120014, 12012, NULL, NULL, NULL, NULL, 1, ARRAY[400, 252, 332, 213]),
    -- Grimsley: Scrafty Lv. 56: Brick Break, Crunch, Poison Jab, Rock Tomb
    (120014, 12012, NULL, NULL, NULL, NULL, 2, ARRAY[280, 242, 398, 317]),
    -- Grimsley: Krookodile Lv. 56: Dragon Claw, Crunch, Earthquake, Rock Tomb
    (120014, 12012, NULL, NULL, NULL, NULL, 3, ARRAY[337, 242, 89, 317]),
    -- Grimsley: Bisharp Lv. 58: Night Slash, X-Scissor, Aerial Ace, Metal Claw
    (120014, 12012, NULL, NULL, NULL, NULL, 4, ARRAY[400, 404, 332, 232]),
    -- Caitlin: Musharna Lv. 56: Yawn, Dream Eater, Charge Beam, Reflect
    (120015, 12013, NULL, NULL, NULL, NULL, 1, ARRAY[281, 138, 451, 115]),
    -- Caitlin: Reuniclus Lv. 56: Energy Ball, Recover, Focus Blast, Psychic
    (120015, 12013, NULL, NULL, NULL, NULL, 2, ARRAY[412, 105, 411, 94]),
    -- Caitlin: Sigilyph Lv. 56: Air Slash, Shadow Ball, Ice Beam, Psychic
    (120015, 12013, NULL, NULL, NULL, NULL, 3, ARRAY[403, 247, 58, 94]),
    -- Caitlin: Gothitelle Lv. 58: Calm Mind, Thunderbolt, Psychic, Shadow Ball
    (120015, 12013, NULL, NULL, NULL, NULL, 4, ARRAY[347, 85, 94, 247]),
    -- Marshal: Throh Lv. 56: Storm Throw, Bulldoze, Rock Tomb, Payback
    (120016, 12014, NULL, NULL, NULL, NULL, 1, ARRAY[480, 523, 317, 371]),
    -- Marshal: Sawk Lv. 56: Brick Break, Retaliate, Rock Slide, Payback
    (120016, 12014, NULL, NULL, NULL, NULL, 2, ARRAY[280, 514, 157, 371]),
    -- Marshal: Mienshao Lv. 56: High Jump Kick, Retaliate, Bounce, U-turn
    (120016, 12014, NULL, NULL, NULL, NULL, 3, ARRAY[136, 514, 340, 369]),
    -- Marshal: Conkeldurr Lv. 58: Hammer Arm, Retaliate, Bulk Up, Stone Edge
    (120016, 12014, NULL, NULL, NULL, NULL, 4, ARRAY[359, 514, 339, 444]),
    -- Iris: Hydreigon Lv. 57: Flamethrower, Charge Beam, Dragon Pulse, Surf
    (120017, 12015, NULL, NULL, NULL, NULL, 1, ARRAY[53, 451, 406, 57]),
    -- Iris: Druddigon Lv. 57: Flamethrower, Rock Slide, Dragon Tail, Focus Blast
    (120017, 12015, NULL, NULL, NULL, NULL, 2, ARRAY[53, 157, 525, 411]),
    -- Iris: Archeops Lv. 57: Acrobatics, Rock Slide, Dragon Claw, Endeavor
    (120017, 12015, NULL, NULL, NULL, NULL, 3, ARRAY[512, 157, 337, 283]),
    -- Iris: Aggron Lv. 57: Earthquake, Rock Slide, Double-Edge, Autotomize
    (120017, 12015, NULL, NULL, NULL, NULL, 4, ARRAY[89, 157, 38, 475]),
    -- Iris: Lapras Lv. 57: Ice Beam, Thunderbolt, Sing, Surf
    (120017, 12015, NULL, NULL, NULL, NULL, 5, ARRAY[58, 85, 47, 57]),
    -- Iris: Haxorus Lv. 59: Earthquake, X-Scissor, Dual Chop, Dragon Dance
    (120017, 12015, NULL, NULL, NULL, NULL, 6, ARRAY[89, 404, 530, 349]),
    -- Hugh: Tepig Lv. 5: Tackle, Tail Whip
    (120001, 12016, NULL, 120001, 'snivy', NULL, 1, ARRAY[33, 39]),
    -- Hugh: Oshawott Lv. 5: Tackle, Tail Whip
    (120001, 12016, NULL, 120001, 'tepig', NULL, 1, ARRAY[33, 39]),
    -- Hugh: Snivy Lv. 5: Tackle, Leer
    (120001, 12016, NULL, 120001, 'oshawott', NULL, 1, ARRAY[33, 43]),
    -- Hugh: Tepig Lv. 8: Tackle, Tail Whip
    (120003, 12016, NULL, 120001, 'snivy', NULL, 1, ARRAY[33, 39]),
    -- Hugh: Oshawott Lv. 8: Tackle, Tail Whip
    (120003, 12016, NULL, 120001, 'tepig', NULL, 1, ARRAY[33, 39]),
    -- Hugh: Snivy Lv. 8: Tackle, Leer
    (120003, 12016, NULL, 120001, 'oshawott', NULL, 1, ARRAY[33, 43]),
    -- Colress: Magnemite Lv. 21: Sonic Boom, Thunder Wave, Magnet Bomb, Spark
    (120006, 12009, NULL, NULL, NULL, NULL, 1, ARRAY[49, 86, 443, 209]),
    -- Colress: Klink Lv. 23: Charge, Thunder Shock, Gear Grind, Bind
    (120006, 12009, NULL, NULL, NULL, NULL, 2, ARRAY[268, 84, 544, 20]),
    -- Hugh: Pignite Lv. 25: Take Down, Heat Crash, Smog, Rollout
    (120008, 12016, NULL, 120001, 'snivy', NULL, 1, ARRAY[36, 535, 123, 205]),
    -- Hugh: Simipour Lv. 25: Scald, Leer, Lick, Fury Swipes
    (120008, 12016, NULL, 120001, 'snivy', NULL, 2, ARRAY[503, 43, 122, 154]),
    -- Hugh: Tranquill Lv. 25: Air Cutter, Detect, Taunt, Roost
    (120008, 12016, NULL, 120001, 'snivy', NULL, 3, ARRAY[314, 197, 269, 355]),
    -- Hugh: Dewott Lv. 25: Aqua Jet, Water Pulse, Revenge, Fury Cutter
    (120008, 12016, NULL, 120001, 'tepig', NULL, 1, ARRAY[453, 352, 279, 210]),
    -- Hugh: Simisage Lv. 25: Seed Bomb, Leer, Lick, Fury Swipes
    (120008, 12016, NULL, 120001, 'tepig', NULL, 2, ARRAY[402, 43, 122, 154]),
    -- Hugh: Tranquill Lv. 25: Air Cutter, Detect, Taunt, Roost
    (120008, 12016, NULL, 120001, 'tepig', NULL, 3, ARRAY[314, 197, 269, 355]),
    -- Hugh: Servine Lv. 25: Leaf Blade, Leech Seed, Slam, Mega Drain
    (120008, 12016, NULL, 120001, 'oshawott', NULL, 1, ARRAY[348, 73, 21, 72]),
    -- Hugh: Simisear Lv. 25: Flame Burst, Leer, Lick, Fury Swipes
    (120008, 12016, NULL, 120001, 'oshawott', NULL, 2, ARRAY[481, 43, 122, 154]),
    -- Hugh: Tranquill Lv. 25: Air Cutter, Detect, Taunt, Roost
    (120008, 12016, NULL, 120001, 'oshawott', NULL, 3, ARRAY[314, 197, 269, 355]),
    -- Colress: Magneton Lv. 25: Thunder Wave, Supersonic, Thunder Shock, Mirror Shot
    (120008, 12009, NULL, NULL, NULL, NULL, 1, ARRAY[86, 48, 84, 429]),
    -- Colress: Elgyem Lv. 25: Growl, Psybeam, Heal Block
    (120008, 12009, NULL, NULL, NULL, NULL, 2, ARRAY[45, 60, 377]),
    -- Colress: Klink Lv. 25: Charge, Thunder Shock, Gear Grind, Bind
    (120008, 12009, NULL, NULL, NULL, NULL, 3, ARRAY[268, 84, 544, 20]),
    -- Hugh: Unfezant Lv. 39: Taunt, Air Slash, Razor Wind, Detect
    (120009, 12016, NULL, 120001, 'snivy', NULL, 1, ARRAY[269, 403, 13, 197]),
    -- Hugh: Simipour Lv. 39: Scald, Leer, Lick, Fury Swipes
    (120009, 12016, NULL, 120001, 'snivy', NULL, 2, ARRAY[503, 43, 122, 154]),
    -- Hugh: Emboar Lv. 41: Take Down, Assurance, Heat Crash, Rollout
    (120009, 12016, NULL, 120001, 'snivy', NULL, 3, ARRAY[36, 372, 535, 205]),
    -- Hugh: Unfezant Lv. 39: Taunt, Air Slash, Razor Wind, Detect
    (120009, 12016, NULL, 120001, 'tepig', NULL, 1, ARRAY[269, 403, 13, 197]),
    -- Hugh: Simisage Lv. 39: Seed Bomb, Leer, Lick, Fury Swipes
    (120009, 12016, NULL, 120001, 'tepig', NULL, 2, ARRAY[402, 43, 122, 154]),
    -- Hugh: Samurott Lv. 41: Scald, Aqua Jet, Revenge, Slash
    (120009, 12016, NULL, 120001, 'tepig', NULL, 3, ARRAY[503, 453, 279, 163]),
    -- Hugh: Unfezant Lv. 39: Taunt, Air Slash, Razor Wind, Detect
    (120009, 12016, NULL, 120001, 'oshawott', NULL, 1, ARRAY[269, 403, 13, 197]),
    -- Hugh: Simisear Lv. 39: Flame Burst, Leer, Lick, Fury Swipes
    (120009, 12016, NULL, 120001, 'oshawott', NULL, 2, ARRAY[481, 43, 122, 154]),
    -- Hugh: Serperior Lv. 41: Leaf Blade, Coil, Slam, Mega Drain
    (120009, 12016, NULL, 120001, 'oshawott', NULL, 3, ARRAY[348, 489, 21, 72]),
    -- Hugh: Unfezant Lv. 55: Facade, Aerial Ace, U-turn, Swagger
    (120012, 12016, NULL, 120001, 'snivy', NULL, 1, ARRAY[263, 332, 369, 207]),
    -- Hugh: Simipour Lv. 55: Rock Slide, Surf, Brick Break, Crunch
    (120012, 12016, NULL, 120001, 'snivy', NULL, 2, ARRAY[157, 57, 280, 242]),
    -- Hugh: Bouffalant Lv. 55: Head Charge, Wild Charge, Megahorn, Earthquake
    (120012, 12016, NULL, 120001, 'snivy', NULL, 3, ARRAY[543, 528, 224, 89]),
    -- Hugh: Emboar Lv. 57: Rock Slide, Brick Break, Scald, Flamethrower
    (120012, 12016, NULL, 120001, 'snivy', NULL, 4, ARRAY[157, 280, 503, 53]),
    -- Hugh: Unfezant Lv. 55: Facade, Aerial Ace, U-turn, Swagger
    (120012, 12016, NULL, 120001, 'tepig', NULL, 1, ARRAY[263, 332, 369, 207]),
    -- Hugh: Simisage Lv. 55: Rock Slide, Energy Ball, Brick Break, Crunch
    (120012, 12016, NULL, 120001, 'tepig', NULL, 2, ARRAY[157, 412, 280, 242]),
    -- Hugh: Bouffalant Lv. 55: Head Charge, Wild Charge, Megahorn, Earthquake
    (120012, 12016, NULL, 120001, 'tepig', NULL, 3, ARRAY[543, 528, 224, 89]),
    -- Hugh: Samurott Lv. 57: Surf, X-Scissor, Ice Beam, Revenge
    (120012, 12016, NULL, 120001, 'tepig', NULL, 4, ARRAY[57, 404, 58, 279]),
    -- Hugh: Unfezant Lv. 55: Facade, Aerial Ace, U-turn, Swagger
    (120012, 12016, NULL, 120001, 'oshawott', NULL, 1, ARRAY[263, 332, 369, 207]),
    -- Hugh: Simisear Lv. 55: Rock Slide, Flamethrower, Brick Break, Crunch
    (120012, 12016, NULL, 120001, 'oshawott', NULL, 2, ARRAY[157, 53, 280, 242]),
    -- Hugh: Bouffalant Lv. 55: Head Charge, Wild Charge, Megahorn, Earthquake
    (120012, 12016, NULL, 120001, 'oshawott', NULL, 3, ARRAY[543, 528, 224, 89]),
    -- Hugh: Serperior Lv. 57: Leaf Blade, Coil, Dragon Tail, Giga Drain
    (120012, 12016, NULL, 120001, 'oshawott', NULL, 4, ARRAY[348, 489, 525, 202]),
    -- Colress: Magneton Lv. 72: Volt Switch, Flash Cannon, Tri Attack, Thunder Wave
    (120018, 12009, NULL, NULL, NULL, NULL, 1, ARRAY[521, 430, 161, 86]),
    -- Colress: Rotom (Wash) Lv. 72: Discharge, Hydro Pump, Will-O-Wisp, Substitute
    (120018, 12009, NULL, NULL, NULL, NULL, 2, ARRAY[435, 56, 261, 164]),
    -- Colress: Metagross Lv. 72: Meteor Mash, Zen Headbutt, Rock Slide, Agility
    (120018, 12009, NULL, NULL, NULL, NULL, 3, ARRAY[309, 428, 157, 97]),
    -- Colress: Beheeyem Lv. 72: Psychic, Energy Ball, Calm Mind, Recover
    (120018, 12009, NULL, NULL, NULL, NULL, 4, ARRAY[94, 412, 347, 105]),
    -- Colress: Magnezone Lv. 72: Thunderbolt, Flash Cannon, Hyper Beam, Thunder Wave
    (120018, 12009, NULL, NULL, NULL, NULL, 5, ARRAY[85, 430, 63, 86]),
    -- Colress: Klinklang Lv. 74: Gear Grind, Wild Charge, Giga Impact, Shift Gear
    (120018, 12009, NULL, NULL, NULL, NULL, 6, ARRAY[544, 528, 416, 508])
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
