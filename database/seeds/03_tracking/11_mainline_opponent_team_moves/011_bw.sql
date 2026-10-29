-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokéWiki trainer team tables for this game, matched to each
-- team by its Pokémon and their levels.
-- Fixed encounters (legendaries and other one-off Pokémon): the game's
-- data-mined encounter table; where it sets no moves, the game's default from
-- its own level-up learnset. Cross-checked with Serebii and Bulbapedia.
-- Pokémon no source confirms are left without moves (Voydex reads their types).
-- Scope: Black / White Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Black / White opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Cilan / Chili / Cress: Lillipup Lv. 12: Bite, Work Up, Odor Sleuth, Helping Hand
    (110003, 11001, NULL, 110001, 'snivy', NULL, 1, ARRAY[44, 526, 316, 270]),
    -- Cilan / Chili / Cress: Pansear Lv. 14: Work Up, Lick, Fury Swipes, Incinerate
    (110003, 11001, NULL, 110001, 'snivy', NULL, 2, ARRAY[526, 122, 154, 510]),
    -- Cilan / Chili / Cress: Lillipup Lv. 12: Bite, Work Up, Odor Sleuth, Helping Hand
    (110003, 11001, NULL, 110001, 'tepig', NULL, 1, ARRAY[44, 526, 316, 270]),
    -- Cilan / Chili / Cress: Panpour Lv. 14: Work Up, Lick, Fury Swipes, Water Gun
    (110003, 11001, NULL, 110001, 'tepig', NULL, 2, ARRAY[526, 122, 154, 55]),
    -- Cilan / Chili / Cress: Lillipup Lv. 12: Bite, Work Up, Odor Sleuth, Helping Hand
    (110003, 11001, NULL, 110001, 'oshawott', NULL, 1, ARRAY[44, 526, 316, 270]),
    -- Cilan / Chili / Cress: Pansage Lv. 14: Work Up, Lick, Fury Swipes, Vine Whip
    (110003, 11001, NULL, 110001, 'oshawott', NULL, 2, ARRAY[526, 122, 154, 22]),
    -- Lenora: Herdier Lv. 18: Take Down, Bite, Retaliate, Leer
    (110004, 11002, NULL, NULL, NULL, NULL, 1, ARRAY[36, 44, 514, 43]),
    -- Lenora: Watchog Lv. 20: Leer, Crunch, Retaliate, Hypnosis
    (110004, 11002, NULL, NULL, NULL, NULL, 2, ARRAY[43, 242, 514, 95]),
    -- Burgh: Whirlipede Lv. 21: Poison Tail, Struggle Bug, Pursuit, Screech
    (110005, 11003, NULL, NULL, NULL, NULL, 1, ARRAY[342, 522, 228, 103]),
    -- Burgh: Dwebble Lv. 21: Smack Down, Struggle Bug, Feint Attack, Sand Attack
    (110005, 11003, NULL, NULL, NULL, NULL, 2, ARRAY[479, 522, 185, 28]),
    -- Burgh: Leavanny Lv. 23: Razor Leaf, Struggle Bug, String Shot, Protect
    (110005, 11003, NULL, NULL, NULL, NULL, 3, ARRAY[75, 522, 81, 182]),
    -- Elesa: Emolga Lv. 25: Pursuit, Quick Attack, Volt Switch, Aerial Ace
    (110006, 11004, NULL, NULL, NULL, NULL, 1, ARRAY[228, 98, 521, 332]),
    -- Elesa: Emolga Lv. 25: Pursuit, Quick Attack, Volt Switch, Aerial Ace
    (110006, 11004, NULL, NULL, NULL, NULL, 2, ARRAY[228, 98, 521, 332]),
    -- Elesa: Zebstrika Lv. 27: Quick Attack, Spark, Volt Switch, Flame Charge
    (110006, 11004, NULL, NULL, NULL, NULL, 3, ARRAY[98, 209, 521, 488]),
    -- Clay: Krokorok Lv. 29: Crunch, Swagger, Bulldoze, Torment
    (110007, 11005, NULL, NULL, NULL, NULL, 1, ARRAY[242, 207, 523, 259]),
    -- Clay: Palpitoad Lv. 29: Muddy Water, Aqua Ring, Bulldoze, Bubble Beam
    (110007, 11005, NULL, NULL, NULL, NULL, 2, ARRAY[330, 392, 523, 61]),
    -- Clay: Excadrill Lv. 31: Slash, Rock Slide, Bulldoze, Hone Claws
    (110007, 11005, NULL, NULL, NULL, NULL, 3, ARRAY[163, 157, 523, 468]),
    -- Skyla: Swoobat Lv. 33: Heart Stamp, Amnesia, Acrobatics, Assurance
    (110008, 11006, NULL, NULL, NULL, NULL, 1, ARRAY[531, 133, 512, 372]),
    -- Skyla: Unfezant Lv. 33: Quick Attack, Air Slash, Leer, Razor Wind
    (110008, 11006, NULL, NULL, NULL, NULL, 2, ARRAY[98, 403, 43, 13]),
    -- Skyla: Swanna Lv. 35: Aqua Ring, Aerial Ace, Air Slash, Bubble Beam
    (110008, 11006, NULL, NULL, NULL, NULL, 3, ARRAY[392, 332, 403, 61]),
    -- Brycen: Vanillish Lv. 37: Mirror Shot, Acid Armor, Frost Breath, Astonish
    (110009, 11007, NULL, NULL, NULL, NULL, 1, ARRAY[429, 151, 524, 310]),
    -- Brycen: Cryogonal Lv. 37: Reflect, Aurora Beam, Frost Breath, Rapid Spin
    (110009, 11007, NULL, NULL, NULL, NULL, 2, ARRAY[115, 62, 524, 229]),
    -- Brycen: Beartic Lv. 39: Slash, Brine, Icicle Crash, Swagger
    (110009, 11007, NULL, NULL, NULL, NULL, 3, ARRAY[163, 362, 556, 207]),
    -- Drayden / Iris: Fraxure Lv. 41: Dragon Dance, Dragon Rage, Dragon Tail, Assurance
    (110010, 11008, 17, NULL, NULL, NULL, 1, ARRAY[349, 82, 525, 372]),
    -- Drayden / Iris: Druddigon Lv. 41: Chip Away, Revenge, Dragon Tail, Night Slash
    (110010, 11008, 17, NULL, NULL, NULL, 2, ARRAY[498, 279, 525, 400]),
    -- Drayden / Iris: Haxorus Lv. 43: Dragon Dance, Slash, Dragon Tail, Assurance
    (110010, 11008, 17, NULL, NULL, NULL, 3, ARRAY[349, 163, 525, 372]),
    -- Drayden / Iris: Fraxure Lv. 41: Dragon Dance, Dragon Rage, Dragon Tail, Assurance
    (110010, 11008, 18, NULL, NULL, NULL, 1, ARRAY[349, 82, 525, 372]),
    -- Drayden / Iris: Druddigon Lv. 41: Chip Away, Revenge, Dragon Tail, Night Slash
    (110010, 11008, 18, NULL, NULL, NULL, 2, ARRAY[498, 279, 525, 400]),
    -- Drayden / Iris: Haxorus Lv. 43: Dragon Dance, Slash, Dragon Tail, Assurance
    (110010, 11008, 18, NULL, NULL, NULL, 3, ARRAY[349, 163, 525, 372]),
    -- Shauntal: Cofagrigus Lv. 48: Psychic, Will-O-Wisp, Shadow Ball, Grass Knot
    (110011, 11009, NULL, NULL, NULL, NULL, 1, ARRAY[94, 261, 247, 447]),
    -- Shauntal: Jellicent Lv. 48: Shadow Ball, Surf, Energy Ball, Brine
    (110011, 11009, NULL, NULL, NULL, NULL, 2, ARRAY[247, 57, 412, 362]),
    -- Shauntal: Golurk Lv. 48: Curse, Brick Break, Earthquake, Shadow Punch
    (110011, 11009, NULL, NULL, NULL, NULL, 3, ARRAY[174, 280, 89, 325]),
    -- Shauntal: Chandelure Lv. 50: Fire Blast, Psychic, Shadow Ball, Payback
    (110011, 11009, NULL, NULL, NULL, NULL, 4, ARRAY[126, 94, 247, 371]),
    -- Grimsley: Scrafty Lv. 48: Sand Attack, Crunch, Poison Jab, Brick Break
    (110012, 11010, NULL, NULL, NULL, NULL, 1, ARRAY[28, 242, 398, 280]),
    -- Grimsley: Liepard Lv. 48: Fake Out, Night Slash, Attract, Aerial Ace
    (110012, 11010, NULL, NULL, NULL, NULL, 2, ARRAY[252, 400, 213, 332]),
    -- Grimsley: Krookodile Lv. 48: Crunch, Dragon Claw, Earthquake, Foul Play
    (110012, 11010, NULL, NULL, NULL, NULL, 3, ARRAY[242, 337, 89, 492]),
    -- Grimsley: Bisharp Lv. 50: X-Scissor, Night Slash, Metal Claw, Aerial Ace
    (110012, 11010, NULL, NULL, NULL, NULL, 4, ARRAY[404, 400, 232, 332]),
    -- Caitlin: Reuniclus Lv. 48: Energy Ball, Thunder, Focus Blast, Psychic
    (110013, 11011, NULL, NULL, NULL, NULL, 1, ARRAY[412, 87, 411, 94]),
    -- Caitlin: Musharna Lv. 48: Shadow Ball, Psychic, Charge Beam, Reflect
    (110013, 11011, NULL, NULL, NULL, NULL, 2, ARRAY[247, 94, 451, 115]),
    -- Caitlin: Sigilyph Lv. 48: Air Slash, Shadow Ball, Ice Beam, Psychic
    (110013, 11011, NULL, NULL, NULL, NULL, 3, ARRAY[403, 247, 58, 94]),
    -- Caitlin: Gothitelle Lv. 50: Calm Mind, Thunderbolt, Psychic, Shadow Ball
    (110013, 11011, NULL, NULL, NULL, NULL, 4, ARRAY[347, 85, 94, 247]),
    -- Marshal: Throh Lv. 48: Stone Edge, Payback, Bulldoze, Storm Throw
    (110014, 11012, NULL, NULL, NULL, NULL, 1, ARRAY[444, 371, 523, 480]),
    -- Marshal: Sawk Lv. 48: Stone Edge, Karate Chop, Grass Knot, Retaliate
    (110014, 11012, NULL, NULL, NULL, NULL, 2, ARRAY[444, 2, 447, 514]),
    -- Marshal: Conkeldurr Lv. 48: Stone Edge, Hammer Arm, Retaliate, Grass Knot
    (110014, 11012, NULL, NULL, NULL, NULL, 3, ARRAY[444, 359, 514, 447]),
    -- Marshal: Mienshao Lv. 50: U-turn, Jump Kick, Rock Slide, Retaliate
    (110014, 11012, NULL, NULL, NULL, NULL, 4, ARRAY[369, 26, 157, 514]),
    -- N: Zekrom Lv. 52: Fusion Bolt, Zen Headbutt, Giga Impact, Light Screen
    (110015, 11013, 17, NULL, NULL, NULL, 1, ARRAY[559, 428, 416, 113]),
    -- N: Carracosta Lv. 50: Stone Edge, Aqua Jet, Waterfall, Crunch
    (110015, 11013, 17, NULL, NULL, NULL, 2, ARRAY[444, 453, 127, 242]),
    -- N: Vanilluxe Lv. 50: Blizzard, Hail, Flash Cannon, Frost Breath
    (110015, 11013, 17, NULL, NULL, NULL, 3, ARRAY[59, 258, 430, 524]),
    -- N: Archeops Lv. 50: Stone Edge, Dragon Claw, Acrobatics, Crunch
    (110015, 11013, 17, NULL, NULL, NULL, 4, ARRAY[444, 337, 512, 242]),
    -- N: Zoroark Lv. 50: Focus Blast, Flamethrower, Night Slash, Retaliate
    (110015, 11013, 17, NULL, NULL, NULL, 5, ARRAY[411, 53, 400, 514]),
    -- N: Klinklang Lv. 50: Thunderbolt, Flash Cannon, Hyper Beam, Metal Sound
    (110015, 11013, 17, NULL, NULL, NULL, 6, ARRAY[85, 430, 63, 319]),
    -- N: Reshiram Lv. 52: Hyper Beam, Extrasensory, Fusion Flare, Reflect
    (110015, 11013, 18, NULL, NULL, NULL, 1, ARRAY[63, 326, 558, 115]),
    -- N: Carracosta Lv. 50: Stone Edge, Aqua Jet, Waterfall, Crunch
    (110015, 11013, 18, NULL, NULL, NULL, 2, ARRAY[444, 453, 127, 242]),
    -- N: Vanilluxe Lv. 50: Blizzard, Hail, Flash Cannon, Frost Breath
    (110015, 11013, 18, NULL, NULL, NULL, 3, ARRAY[59, 258, 430, 524]),
    -- N: Archeops Lv. 50: Stone Edge, Dragon Claw, Acrobatics, Crunch
    (110015, 11013, 18, NULL, NULL, NULL, 4, ARRAY[444, 337, 512, 242]),
    -- N: Zoroark Lv. 50: Focus Blast, Flamethrower, Night Slash, Retaliate
    (110015, 11013, 18, NULL, NULL, NULL, 5, ARRAY[411, 53, 400, 514]),
    -- N: Klinklang Lv. 50: Thunderbolt, Flash Cannon, Hyper Beam, Metal Sound
    (110015, 11013, 18, NULL, NULL, NULL, 6, ARRAY[85, 430, 63, 319]),
    -- Ghetsis: Cofagrigus Lv. 52: Toxic, Shadow Ball, Protect, Psychic
    (110016, 11014, NULL, NULL, NULL, NULL, 1, ARRAY[92, 247, 182, 94]),
    -- Ghetsis: Bouffalant Lv. 52: Head Charge, Wild Charge, Earthquake, Poison Jab
    (110016, 11014, NULL, NULL, NULL, NULL, 2, ARRAY[543, 528, 89, 398]),
    -- Ghetsis: Seismitoad Lv. 52: Muddy Water, Rain Dance, Earthquake, Sludge Wave
    (110016, 11014, NULL, NULL, NULL, NULL, 3, ARRAY[330, 240, 89, 482]),
    -- Ghetsis: Bisharp Lv. 52: Night Slash, Stone Edge, X-Scissor, Metal Burst
    (110016, 11014, NULL, NULL, NULL, NULL, 4, ARRAY[400, 444, 404, 368]),
    -- Ghetsis: Eelektross Lv. 52: Crunch, Flamethrower, Acrobatics, Wild Charge
    (110016, 11014, NULL, NULL, NULL, NULL, 5, ARRAY[242, 53, 512, 528]),
    -- Ghetsis: Hydreigon Lv. 54: Dragon Pulse, Fire Blast, Surf, Focus Blast
    (110016, 11014, NULL, NULL, NULL, NULL, 6, ARRAY[406, 126, 57, 411]),
    -- Alder: Accelgor Lv. 75: Bug Buzz, Focus Blast, Me First, Energy Ball
    (110017, 11015, NULL, NULL, NULL, NULL, 1, ARRAY[405, 411, 382, 412]),
    -- Alder: Bouffalant Lv. 75: Head Charge, Megahorn, Earthquake, Stone Edge
    (110017, 11015, NULL, NULL, NULL, NULL, 2, ARRAY[543, 224, 89, 444]),
    -- Alder: Druddigon Lv. 75: Night Slash, Outrage, Superpower, Payback
    (110017, 11015, NULL, NULL, NULL, NULL, 3, ARRAY[400, 200, 276, 371]),
    -- Alder: Vanilluxe Lv. 75: Blizzard, Light Screen, Flash Cannon, Acid Armor
    (110017, 11015, NULL, NULL, NULL, NULL, 4, ARRAY[59, 113, 430, 151]),
    -- Alder: Escavalier Lv. 75: X-Scissor, Giga Impact, Iron Head, Aerial Ace
    (110017, 11015, NULL, NULL, NULL, NULL, 5, ARRAY[404, 416, 442, 332]),
    -- Alder: Volcarona Lv. 77: Overheat, Bug Buzz, Hyper Beam, Quiver Dance
    (110017, 11015, NULL, NULL, NULL, NULL, 6, ARRAY[315, 405, 63, 483]),
    -- Bianca: Oshawott Lv. 5: Tackle, Tail Whip
    (110001, 11016, NULL, 110001, 'snivy', NULL, 1, ARRAY[33, 39]),
    -- Bianca: Snivy Lv. 5: Tackle, Leer
    (110001, 11016, NULL, 110001, 'tepig', NULL, 1, ARRAY[33, 43]),
    -- Bianca: Tepig Lv. 5: Tackle, Tail Whip
    (110001, 11016, NULL, 110001, 'oshawott', NULL, 1, ARRAY[33, 39]),
    -- Cheren: Tepig Lv. 5: Tackle, Tail Whip
    (110001, 11017, NULL, 110001, 'snivy', NULL, 1, ARRAY[33, 39]),
    -- Cheren: Oshawott Lv. 5: Tackle, Tail Whip
    (110001, 11017, NULL, 110001, 'tepig', NULL, 1, ARRAY[33, 39]),
    -- Cheren: Snivy Lv. 5: Tackle, Leer
    (110001, 11017, NULL, 110001, 'oshawott', NULL, 1, ARRAY[33, 43]),
    -- N: Purrloin Lv. 7: Scratch, Growl, Assist
    (110003, 11013, NULL, NULL, NULL, NULL, 1, ARRAY[10, 45, 274]),
    -- Bianca: Lillipup Lv. 6: Leer, Tackle, Odor Sleuth
    (110003, 11016, NULL, 110001, 'snivy', NULL, 1, ARRAY[43, 33, 316]),
    -- Bianca: Oshawott Lv. 7: Tackle, Tail Whip, Water Gun
    (110003, 11016, NULL, 110001, 'snivy', NULL, 2, ARRAY[33, 39, 55]),
    -- Bianca: Lillipup Lv. 6: Leer, Tackle, Odor Sleuth
    (110003, 11016, NULL, 110001, 'tepig', NULL, 1, ARRAY[43, 33, 316]),
    -- Bianca: Snivy Lv. 7: Tackle, Leer, Vine Whip
    (110003, 11016, NULL, 110001, 'tepig', NULL, 2, ARRAY[33, 43, 22]),
    -- Bianca: Lillipup Lv. 6: Leer, Tackle, Odor Sleuth
    (110003, 11016, NULL, 110001, 'oshawott', NULL, 1, ARRAY[43, 33, 316]),
    -- Bianca: Tepig Lv. 7: Tackle, Tail Whip, Ember
    (110003, 11016, NULL, 110001, 'oshawott', NULL, 2, ARRAY[33, 39, 52]),
    -- Cheren: Tepig Lv. 8: Tackle, Tail Whip, Ember
    (110003, 11017, NULL, 110001, 'snivy', NULL, 1, ARRAY[33, 39, 52]),
    -- Cheren: Purrloin Lv. 8: Scratch, Growl, Assist
    (110003, 11017, NULL, 110001, 'snivy', NULL, 2, ARRAY[10, 45, 274]),
    -- Cheren: Oshawott Lv. 8: Tackle, Tail Whip, Water Gun
    (110003, 11017, NULL, 110001, 'tepig', NULL, 1, ARRAY[33, 39, 55]),
    -- Cheren: Purrloin Lv. 8: Scratch, Growl, Assist
    (110003, 11017, NULL, 110001, 'tepig', NULL, 2, ARRAY[10, 45, 274]),
    -- Cheren: Snivy Lv. 8: Tackle, Leer, Vine Whip
    (110003, 11017, NULL, 110001, 'oshawott', NULL, 1, ARRAY[33, 43, 22]),
    -- Cheren: Purrloin Lv. 8: Scratch, Growl, Assist
    (110003, 11017, NULL, 110001, 'oshawott', NULL, 2, ARRAY[10, 45, 274]),
    -- Cheren: Tepig Lv. 14: Tail Whip, Ember, Odor Sleuth, Defense Curl
    (110004, 11017, NULL, 110001, 'snivy', NULL, 1, ARRAY[39, 52, 316, 111]),
    -- Cheren: Purrloin Lv. 12: Fury Swipes, Growl, Assist, Sand Attack
    (110004, 11017, NULL, 110001, 'snivy', NULL, 2, ARRAY[154, 45, 274, 28]),
    -- Cheren: Oshawott Lv. 14: Tail Whip, Water Gun, Water Sport, Focus Energy
    (110004, 11017, NULL, 110001, 'tepig', NULL, 1, ARRAY[39, 55, 346, 116]),
    -- Cheren: Purrloin Lv. 12: Fury Swipes, Growl, Assist, Sand Attack
    (110004, 11017, NULL, 110001, 'tepig', NULL, 2, ARRAY[154, 45, 274, 28]),
    -- Cheren: Snivy Lv. 14: Leer, Vine Whip, Wrap, Growth
    (110004, 11017, NULL, 110001, 'oshawott', NULL, 1, ARRAY[43, 22, 35, 74]),
    -- Cheren: Purrloin Lv. 12: Fury Swipes, Growl, Assist, Sand Attack
    (110004, 11017, NULL, 110001, 'oshawott', NULL, 2, ARRAY[154, 45, 274, 28]),
    -- N: Pidove Lv. 13: Gust, Growl, Leer, Quick Attack
    (110004, 11013, NULL, NULL, NULL, NULL, 1, ARRAY[16, 45, 43, 98]),
    -- N: Timburr Lv. 13: Leer, Focus Energy, Bide, Low Kick
    (110004, 11013, NULL, NULL, NULL, NULL, 2, ARRAY[43, 116, 117, 67]),
    -- N: Tympole Lv. 13: Growl, Supersonic, Round, Bubble Beam
    (110004, 11013, NULL, NULL, NULL, NULL, 3, ARRAY[45, 48, 496, 61]),
    -- Bianca: Herdier Lv. 18: Odor Sleuth, Bite, Helping Hand, Take Down
    (110006, 11016, NULL, 110001, 'snivy', NULL, 1, ARRAY[316, 44, 270, 36]),
    -- Bianca: Pansear Lv. 18: Lick, Incinerate, Fury Swipes, Yawn
    (110006, 11016, NULL, 110001, 'snivy', NULL, 2, ARRAY[122, 510, 154, 281]),
    -- Bianca: Munna Lv. 18: Yawn, Psybeam, Imprison, Moonlight
    (110006, 11016, NULL, 110001, 'snivy', NULL, 3, ARRAY[281, 60, 286, 236]),
    -- Bianca: Dewott Lv. 20: Water Sport, Focus Energy, Razor Shell, Fury Cutter
    (110006, 11016, NULL, 110001, 'snivy', NULL, 4, ARRAY[346, 116, 534, 210]),
    -- Bianca: Herdier Lv. 18: Odor Sleuth, Bite, Helping Hand, Take Down
    (110006, 11016, NULL, 110001, 'tepig', NULL, 1, ARRAY[316, 44, 270, 36]),
    -- Bianca: Panpour Lv. 18: Lick, Water Gun, Fury Swipes, Water Sport
    (110006, 11016, NULL, 110001, 'tepig', NULL, 2, ARRAY[122, 55, 154, 346]),
    -- Bianca: Munna Lv. 18: Yawn, Psybeam, Imprison, Moonlight
    (110006, 11016, NULL, 110001, 'tepig', NULL, 3, ARRAY[281, 60, 286, 236]),
    -- Bianca: Servine Lv. 20: Wrap, Growth, Leaf Tornado, Leech Seed
    (110006, 11016, NULL, 110001, 'tepig', NULL, 4, ARRAY[35, 74, 536, 73]),
    -- Bianca: Herdier Lv. 18: Odor Sleuth, Bite, Helping Hand, Take Down
    (110006, 11016, NULL, 110001, 'oshawott', NULL, 1, ARRAY[316, 44, 270, 36]),
    -- Bianca: Pansage Lv. 18: Lick, Vine Whip, Fury Swipes, Leech Seed
    (110006, 11016, NULL, 110001, 'oshawott', NULL, 2, ARRAY[122, 22, 154, 73]),
    -- Bianca: Munna Lv. 18: Yawn, Psybeam, Imprison, Moonlight
    (110006, 11016, NULL, 110001, 'oshawott', NULL, 3, ARRAY[281, 60, 286, 236]),
    -- Bianca: Pignite Lv. 20: Defense Curl, Flame Charge, Arm Thrust, Smog
    (110006, 11016, NULL, 110001, 'oshawott', NULL, 4, ARRAY[111, 488, 292, 123]),
    -- Cheren: Pidove Lv. 20: Leer, Quick Attack, Air Cutter, Roost
    (110006, 11017, NULL, 110001, 'snivy', NULL, 1, ARRAY[43, 98, 314, 355]),
    -- Cheren: Liepard Lv. 20: Sand Attack, Fury Swipes, Pursuit, Torment
    (110006, 11017, NULL, 110001, 'snivy', NULL, 2, ARRAY[28, 154, 228, 259]),
    -- Cheren: Pansage Lv. 20: Vine Whip, Fury Swipes, Leech Seed, Bite
    (110006, 11017, NULL, 110001, 'snivy', NULL, 3, ARRAY[22, 154, 73, 44]),
    -- Cheren: Pignite Lv. 22: Defense Curl, Flame Charge, Arm Thrust, Smog
    (110006, 11017, NULL, 110001, 'snivy', NULL, 4, ARRAY[111, 488, 292, 123]),
    -- Cheren: Pidove Lv. 20: Leer, Quick Attack, Air Cutter, Roost
    (110006, 11017, NULL, 110001, 'tepig', NULL, 1, ARRAY[43, 98, 314, 355]),
    -- Cheren: Liepard Lv. 20: Sand Attack, Fury Swipes, Pursuit, Torment
    (110006, 11017, NULL, 110001, 'tepig', NULL, 2, ARRAY[28, 154, 228, 259]),
    -- Cheren: Pansear Lv. 20: Incinerate, Fury Swipes, Yawn, Bite
    (110006, 11017, NULL, 110001, 'tepig', NULL, 3, ARRAY[510, 154, 281, 44]),
    -- Cheren: Dewott Lv. 22: Water Sport, Focus Energy, Razor Shell, Fury Cutter
    (110006, 11017, NULL, 110001, 'tepig', NULL, 4, ARRAY[346, 116, 534, 210]),
    -- Cheren: Pidove Lv. 20: Leer, Quick Attack, Air Cutter, Roost
    (110006, 11017, NULL, 110001, 'oshawott', NULL, 1, ARRAY[43, 98, 314, 355]),
    -- Cheren: Liepard Lv. 20: Sand Attack, Fury Swipes, Pursuit, Torment
    (110006, 11017, NULL, 110001, 'oshawott', NULL, 2, ARRAY[28, 154, 228, 259]),
    -- Cheren: Panpour Lv. 20: Water Gun, Fury Swipes, Water Sport, Bite
    (110006, 11017, NULL, 110001, 'oshawott', NULL, 3, ARRAY[55, 154, 346, 44]),
    -- Cheren: Servine Lv. 22: Wrap, Growth, Leaf Tornado, Leech Seed
    (110006, 11017, NULL, 110001, 'oshawott', NULL, 4, ARRAY[35, 74, 536, 73]),
    -- N: Sandile Lv. 22: Sand Tomb, Assurance, Mud-Slap, Embargo
    (110006, 11013, NULL, NULL, NULL, NULL, 1, ARRAY[328, 372, 189, 373]),
    -- N: Scraggy Lv. 22: Feint Attack, Headbutt, Swagger, Brick Break
    (110006, 11013, NULL, NULL, NULL, NULL, 2, ARRAY[185, 29, 207, 280]),
    -- N: Darumaka Lv. 22: Headbutt, Uproar, Facade, Fire Punch
    (110006, 11013, NULL, NULL, NULL, NULL, 3, ARRAY[29, 253, 263, 7]),
    -- N: Sigilyph Lv. 22: Tailwind, Whirlwind, Psybeam, Air Cutter
    (110006, 11013, NULL, NULL, NULL, NULL, 4, ARRAY[366, 18, 60, 314]),
    -- Cheren: Liepard Lv. 24: Fury Swipes, Pursuit, Torment, Fake Out
    (110007, 11017, NULL, 110001, 'snivy', NULL, 1, ARRAY[154, 228, 259, 252]),
    -- Cheren: Pansage Lv. 24: Fury Swipes, Leech Seed, Bite, Seed Bomb
    (110007, 11017, NULL, 110001, 'snivy', NULL, 2, ARRAY[154, 73, 44, 402]),
    -- Cheren: Tranquill Lv. 24: Quick Attack, Air Cutter, Roost, Detect
    (110007, 11017, NULL, 110001, 'snivy', NULL, 3, ARRAY[98, 314, 355, 197]),
    -- Cheren: Pignite Lv. 26: Flame Charge, Arm Thrust, Smog, Rollout
    (110007, 11017, NULL, 110001, 'snivy', NULL, 4, ARRAY[488, 292, 123, 205]),
    -- Cheren: Liepard Lv. 24: Fury Swipes, Pursuit, Torment, Fake Out
    (110007, 11017, NULL, 110001, 'tepig', NULL, 1, ARRAY[154, 228, 259, 252]),
    -- Cheren: Pansear Lv. 24: Fury Swipes, Yawn, Bite, Flame Burst
    (110007, 11017, NULL, 110001, 'tepig', NULL, 2, ARRAY[154, 281, 44, 481]),
    -- Cheren: Tranquill Lv. 24: Quick Attack, Air Cutter, Roost, Detect
    (110007, 11017, NULL, 110001, 'tepig', NULL, 3, ARRAY[98, 314, 355, 197]),
    -- Cheren: Dewott Lv. 26: Focus Energy, Razor Shell, Fury Cutter, Water Pulse
    (110007, 11017, NULL, 110001, 'tepig', NULL, 4, ARRAY[116, 534, 210, 352]),
    -- Cheren: Liepard Lv. 24: Fury Swipes, Pursuit, Torment, Fake Out
    (110007, 11017, NULL, 110001, 'oshawott', NULL, 1, ARRAY[154, 228, 259, 252]),
    -- Cheren: Panpour Lv. 24: Fury Swipes, Water Sport, Bite, Scald
    (110007, 11017, NULL, 110001, 'oshawott', NULL, 2, ARRAY[154, 346, 44, 503]),
    -- Cheren: Tranquill Lv. 24: Quick Attack, Air Cutter, Roost, Detect
    (110007, 11017, NULL, 110001, 'oshawott', NULL, 3, ARRAY[98, 314, 355, 197]),
    -- Cheren: Servine Lv. 26: Growth, Leaf Tornado, Leech Seed, Mega Drain
    (110007, 11017, NULL, 110001, 'oshawott', NULL, 4, ARRAY[74, 536, 73, 72]),
    -- Bianca: Herdier Lv. 26: Helping Hand, Take Down, Work Up, Crunch
    (110008, 11016, NULL, 110001, 'snivy', NULL, 1, ARRAY[270, 36, 526, 242]),
    -- Bianca: Pansear Lv. 26: Yawn, Bite, Flame Burst, Amnesia
    (110008, 11016, NULL, 110001, 'snivy', NULL, 2, ARRAY[281, 44, 481, 133]),
    -- Bianca: Musharna Lv. 26: Defense Curl, Lucky Chant, Psybeam, Hypnosis
    (110008, 11016, NULL, 110001, 'snivy', NULL, 3, ARRAY[111, 381, 60, 95]),
    -- Bianca: Dewott Lv. 28: Razor Shell, Fury Cutter, Water Pulse, Revenge
    (110008, 11016, NULL, 110001, 'snivy', NULL, 4, ARRAY[534, 210, 352, 279]),
    -- Bianca: Herdier Lv. 26: Helping Hand, Take Down, Work Up, Crunch
    (110008, 11016, NULL, 110001, 'tepig', NULL, 1, ARRAY[270, 36, 526, 242]),
    -- Bianca: Panpour Lv. 26: Water Sport, Bite, Scald, Taunt
    (110008, 11016, NULL, 110001, 'tepig', NULL, 2, ARRAY[346, 44, 503, 269]),
    -- Bianca: Musharna Lv. 26: Defense Curl, Lucky Chant, Psybeam, Hypnosis
    (110008, 11016, NULL, 110001, 'tepig', NULL, 3, ARRAY[111, 381, 60, 95]),
    -- Bianca: Servine Lv. 28: Leaf Tornado, Leech Seed, Mega Drain, Slam
    (110008, 11016, NULL, 110001, 'tepig', NULL, 4, ARRAY[536, 73, 72, 21]),
    -- Bianca: Herdier Lv. 26: Helping Hand, Take Down, Work Up, Crunch
    (110008, 11016, NULL, 110001, 'oshawott', NULL, 1, ARRAY[270, 36, 526, 242]),
    -- Bianca: Pansage Lv. 26: Leech Seed, Bite, Seed Bomb, Torment
    (110008, 11016, NULL, 110001, 'oshawott', NULL, 2, ARRAY[73, 44, 402, 259]),
    -- Bianca: Musharna Lv. 26: Defense Curl, Lucky Chant, Psybeam, Hypnosis
    (110008, 11016, NULL, 110001, 'oshawott', NULL, 3, ARRAY[111, 381, 60, 95]),
    -- Bianca: Pignite Lv. 28: Arm Thrust, Smog, Rollout, Take Down
    (110008, 11016, NULL, 110001, 'oshawott', NULL, 4, ARRAY[292, 123, 205, 36]),
    -- N: Boldore Lv. 28: Mud-Slap, Iron Defense, Smack Down, Power Gem
    (110008, 11013, NULL, NULL, NULL, NULL, 1, ARRAY[189, 334, 479, 408]),
    -- N: Ferroseed Lv. 28: Metal Claw, Pin Missile, Gyro Ball, Iron Defense
    (110008, 11013, NULL, NULL, NULL, NULL, 2, ARRAY[232, 42, 360, 334]),
    -- N: Joltik Lv. 28: Electroweb, Bug Bite, Gastro Acid, Slash
    (110008, 11013, NULL, NULL, NULL, NULL, 3, ARRAY[527, 450, 380, 163]),
    -- N: Klink Lv. 28: Thunder Shock, Gear Grind, Bind, Charge Beam
    (110008, 11013, NULL, NULL, NULL, NULL, 4, ARRAY[84, 544, 20, 451]),
    -- Cheren: Unfezant Lv. 33: Roost, Detect, Taunt, Air Slash
    (110009, 11017, NULL, 110001, 'snivy', NULL, 1, ARRAY[355, 197, 269, 403]),
    -- Cheren: Liepard Lv. 33: Torment, Fake Out, Hone Claws, Assurance
    (110009, 11017, NULL, 110001, 'snivy', NULL, 2, ARRAY[259, 252, 468, 372]),
    -- Cheren: Simisage Lv. 33: Leer, Lick, Fury Swipes, Seed Bomb
    (110009, 11017, NULL, 110001, 'snivy', NULL, 3, ARRAY[43, 122, 154, 402]),
    -- Cheren: Pignite Lv. 35: Smog, Rollout, Take Down, Heat Crash
    (110009, 11017, NULL, 110001, 'snivy', NULL, 4, ARRAY[123, 205, 36, 535]),
    -- Cheren: Unfezant Lv. 33: Roost, Detect, Taunt, Air Slash
    (110009, 11017, NULL, 110001, 'tepig', NULL, 1, ARRAY[355, 197, 269, 403]),
    -- Cheren: Liepard Lv. 33: Torment, Fake Out, Hone Claws, Assurance
    (110009, 11017, NULL, 110001, 'tepig', NULL, 2, ARRAY[259, 252, 468, 372]),
    -- Cheren: Simisear Lv. 33: Leer, Lick, Fury Swipes, Flame Burst
    (110009, 11017, NULL, 110001, 'tepig', NULL, 3, ARRAY[43, 122, 154, 481]),
    -- Cheren: Dewott Lv. 35: Fury Cutter, Water Pulse, Revenge, Aqua Jet
    (110009, 11017, NULL, 110001, 'tepig', NULL, 4, ARRAY[210, 352, 279, 453]),
    -- Cheren: Unfezant Lv. 33: Roost, Detect, Taunt, Air Slash
    (110009, 11017, NULL, 110001, 'oshawott', NULL, 1, ARRAY[355, 197, 269, 403]),
    -- Cheren: Liepard Lv. 33: Torment, Fake Out, Hone Claws, Assurance
    (110009, 11017, NULL, 110001, 'oshawott', NULL, 2, ARRAY[259, 252, 468, 372]),
    -- Cheren: Simipour Lv. 33: Leer, Lick, Fury Swipes, Scald
    (110009, 11017, NULL, 110001, 'oshawott', NULL, 3, ARRAY[43, 122, 154, 503]),
    -- Cheren: Servine Lv. 35: Leech Seed, Mega Drain, Slam, Leaf Blade
    (110009, 11017, NULL, 110001, 'oshawott', NULL, 4, ARRAY[73, 72, 21, 348]),
    -- Bianca: Stoutland Lv. 38: Work Up, Crunch, Roar, Retaliate
    (110010, 11016, NULL, 110001, 'snivy', NULL, 1, ARRAY[526, 242, 46, 514]),
    -- Bianca: Simisear Lv. 38: Leer, Lick, Fury Swipes, Flame Burst
    (110010, 11016, NULL, 110001, 'snivy', NULL, 2, ARRAY[43, 122, 154, 481]),
    -- Bianca: Musharna Lv. 38: Defense Curl, Lucky Chant, Psybeam, Hypnosis
    (110010, 11016, NULL, 110001, 'snivy', NULL, 3, ARRAY[111, 381, 60, 95]),
    -- Bianca: Samurott Lv. 40: Revenge, Aqua Jet, Slash, Encore
    (110010, 11016, NULL, 110001, 'snivy', NULL, 4, ARRAY[279, 453, 163, 227]),
    -- Bianca: Stoutland Lv. 38: Work Up, Crunch, Roar, Retaliate
    (110010, 11016, NULL, 110001, 'tepig', NULL, 1, ARRAY[526, 242, 46, 514]),
    -- Bianca: Simipour Lv. 38: Leer, Lick, Fury Swipes, Scald
    (110010, 11016, NULL, 110001, 'tepig', NULL, 2, ARRAY[43, 122, 154, 503]),
    -- Bianca: Musharna Lv. 38: Defense Curl, Lucky Chant, Psybeam, Hypnosis
    (110010, 11016, NULL, 110001, 'tepig', NULL, 3, ARRAY[111, 381, 60, 95]),
    -- Bianca: Serperior Lv. 40: Mega Drain, Slam, Leaf Blade, Coil
    (110010, 11016, NULL, 110001, 'tepig', NULL, 4, ARRAY[72, 21, 348, 489]),
    -- Bianca: Stoutland Lv. 38: Work Up, Crunch, Roar, Retaliate
    (110010, 11016, NULL, 110001, 'oshawott', NULL, 1, ARRAY[526, 242, 46, 514]),
    -- Bianca: Simisage Lv. 38: Leer, Lick, Fury Swipes, Seed Bomb
    (110010, 11016, NULL, 110001, 'oshawott', NULL, 2, ARRAY[43, 122, 154, 402]),
    -- Bianca: Musharna Lv. 38: Defense Curl, Lucky Chant, Psybeam, Hypnosis
    (110010, 11016, NULL, 110001, 'oshawott', NULL, 3, ARRAY[111, 381, 60, 95]),
    -- Bianca: Emboar Lv. 40: Rollout, Take Down, Heat Crash, Assurance
    (110010, 11016, NULL, 110001, 'oshawott', NULL, 4, ARRAY[205, 36, 535, 372]),
    -- Cheren: Unfezant Lv. 43: Air Slash, Detect, Taunt, Razor Wind
    (110010, 11017, NULL, 110001, 'snivy', NULL, 1, ARRAY[403, 197, 269, 13]),
    -- Cheren: Liepard Lv. 43: Assurance, Night Slash, Slash, Taunt
    (110010, 11017, NULL, 110001, 'snivy', NULL, 2, ARRAY[372, 400, 163, 269]),
    -- Cheren: Simisage Lv. 43: Lick, Seed Bomb, Leer, Fury Swipes
    (110010, 11017, NULL, 110001, 'snivy', NULL, 3, ARRAY[122, 402, 43, 154]),
    -- Cheren: Emboar Lv. 45: Heat Crash, Take Down, Flamethrower, Assurance
    (110010, 11017, NULL, 110001, 'snivy', NULL, 4, ARRAY[535, 36, 53, 372]),
    -- Cheren: Unfezant Lv. 43: Air Slash, Detect, Taunt, Razor Wind
    (110010, 11017, NULL, 110001, 'tepig', NULL, 1, ARRAY[403, 197, 269, 13]),
    -- Cheren: Liepard Lv. 43: Assurance, Night Slash, Slash, Taunt
    (110010, 11017, NULL, 110001, 'tepig', NULL, 2, ARRAY[372, 400, 163, 269]),
    -- Cheren: Simisear Lv. 43: Lick, Flame Burst, Leer, Fury Swipes
    (110010, 11017, NULL, 110001, 'tepig', NULL, 3, ARRAY[122, 481, 43, 154]),
    -- Cheren: Samurott Lv. 45: Aqua Jet, Aqua Tail, Slash, Encore
    (110010, 11017, NULL, 110001, 'tepig', NULL, 4, ARRAY[453, 401, 163, 227]),
    -- Cheren: Unfezant Lv. 43: Air Slash, Detect, Taunt, Razor Wind
    (110010, 11017, NULL, 110001, 'oshawott', NULL, 1, ARRAY[403, 197, 269, 13]),
    -- Cheren: Liepard Lv. 43: Assurance, Night Slash, Slash, Taunt
    (110010, 11017, NULL, 110001, 'oshawott', NULL, 2, ARRAY[372, 400, 163, 269]),
    -- Cheren: Simipour Lv. 43: Lick, Scald, Leer, Fury Swipes
    (110010, 11017, NULL, 110001, 'oshawott', NULL, 3, ARRAY[122, 503, 43, 154]),
    -- Cheren: Serperior Lv. 45: Leaf Blade, Giga Drain, Coil, Slam
    (110010, 11017, NULL, 110001, 'oshawott', NULL, 4, ARRAY[348, 202, 489, 21]),
    -- Reshiram: Reshiram Lv. 50: Dragon Breath, Slash, Extrasensory, Fusion Flare
    (110015, 11018, NULL, NULL, NULL, NULL, 1, ARRAY[225, 163, 326, 558]),
    -- Zekrom: Zekrom Lv. 50: Dragon Breath, Slash, Zen Headbutt, Fusion Bolt
    (110015, 11019, NULL, NULL, NULL, NULL, 1, ARRAY[225, 163, 428, 559]),
    -- Cobalion: Cobalion Lv. 42: Helping Hand, Retaliate, Iron Head, Sacred Sword
    (110019, 11020, NULL, NULL, NULL, NULL, 1, ARRAY[270, 514, 442, 533]),
    -- Terrakion: Terrakion Lv. 42: Helping Hand, Retaliate, Rock Slide, Sacred Sword
    (110019, 11021, NULL, NULL, NULL, NULL, 1, ARRAY[270, 514, 157, 533]),
    -- Virizion: Virizion Lv. 42: Helping Hand, Retaliate, Giga Drain, Sacred Sword
    (110019, 11022, NULL, NULL, NULL, NULL, 1, ARRAY[270, 514, 202, 533]),
    -- Tornadus: Tornadus Lv. 40: Revenge, Air Cutter, Extrasensory, Agility
    (110020, 11023, NULL, NULL, NULL, NULL, 1, ARRAY[279, 314, 326, 97]),
    -- Thundurus: Thundurus Lv. 40: Revenge, Shock Wave, Heal Block, Agility
    (110020, 11024, NULL, NULL, NULL, NULL, 1, ARRAY[279, 351, 377, 97]),
    -- Kyurem: Kyurem Lv. 75: Glaciate, Dragon Pulse, Imprison, Endeavor
    (110021, 11025, NULL, NULL, NULL, NULL, 1, ARRAY[549, 406, 286, 283]),
    -- Landorus: Landorus Lv. 70: Rock Slide, Earthquake, Sandstorm, Fissure
    (110022, 11026, NULL, NULL, NULL, NULL, 1, ARRAY[157, 89, 201, 90])
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
