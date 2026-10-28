-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokéWiki trainer team tables for this game, matched to each
-- team by its Pokémon and their levels.
-- Fixed encounters (legendaries and other one-off Pokémon): the game's
-- data-mined encounter table; where it sets no moves, the game's default from
-- its own level-up learnset. Cross-checked with Serebii and Bulbapedia.
-- Pokémon no source confirms are left without moves (Voydex reads their types).
-- Scope: Scarlet / Violet: The Indigo Disk Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Scarlet / Violet: The Indigo Disk opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Crispin: Rotom (Heat) Lv. 77: Will-O-Wisp, Overheat, Thunderbolt, Hex
    (250002, 25001, NULL, NULL, NULL, NULL, 1, ARRAY[261, 315, 85, 506]),
    -- Crispin: Talonflame Lv. 77: Sunny Day, Brave Bird, Flare Blitz, Roost
    (250002, 25001, NULL, NULL, NULL, NULL, 2, ARRAY[241, 413, 394, 355]),
    -- Crispin: Exeggutor Lv. 78: Leech Seed, Psyshock, Protect, Solar Beam
    (250002, 25001, NULL, NULL, NULL, NULL, 3, ARRAY[73, 473, 182, 76]),
    -- Crispin: Camerupt Lv. 78: Earth Power, Heat Wave, Ancient Power, Zen Headbutt
    (250002, 25001, NULL, NULL, NULL, NULL, 4, ARRAY[414, 257, 246, 428]),
    -- Crispin: Magmortar Lv. 78: Psychic, Thunderbolt, Heat Wave, Sunny Day
    (250002, 25001, NULL, NULL, NULL, NULL, 5, ARRAY[94, 85, 257, 241]),
    -- Crispin: Blaziken Lv. 79: Stone Edge, Focus Blast, Temper Flare, Shadow Claw
    (250002, 25001, NULL, NULL, NULL, NULL, 6, ARRAY[444, 411, 915, 421]),
    -- Amarys: Skarmory Lv. 78: Stealth Rock, Whirlwind, Body Press, Dual Wingbeat
    (250003, 25002, NULL, NULL, NULL, NULL, 1, ARRAY[446, 18, 776, 814]),
    -- Amarys: Alolan Dugtrio Lv. 78: Earthquake, Sucker Punch, Iron Head, Stone Edge
    (250003, 25002, NULL, NULL, NULL, NULL, 2, ARRAY[89, 389, 442, 444]),
    -- Amarys: Scizor Lv. 79: Bullet Punch, Trailblaze, Pounce, Aerial Ace
    (250003, 25002, NULL, NULL, NULL, NULL, 3, ARRAY[418, 885, 884, 332]),
    -- Amarys: Reuniclus Lv. 79: Trick Room, Protect, Energy Ball, Psychic
    (250003, 25002, NULL, NULL, NULL, NULL, 4, ARRAY[433, 182, 412, 94]),
    -- Amarys: Empoleon Lv. 79: Ice Beam, Hydro Pump, Flash Cannon, Grass Knot
    (250003, 25002, NULL, NULL, NULL, NULL, 5, ARRAY[58, 56, 430, 447]),
    -- Amarys: Metagross Lv. 80: Hard Press, Ice Punch, Zen Headbutt, Brick Break
    (250003, 25002, NULL, NULL, NULL, NULL, 6, ARRAY[912, 8, 428, 280]),
    -- Lacey: Whimsicott Lv. 78: Light Screen, Tailwind, Energy Ball, Moonblast
    (250004, 25003, NULL, NULL, NULL, NULL, 1, ARRAY[113, 366, 412, 585]),
    -- Lacey: Granbull Lv. 78: Play Rough, Fire Punch, Ice Punch, Stomping Tantrum
    (250004, 25003, NULL, NULL, NULL, NULL, 2, ARRAY[583, 7, 8, 707]),
    -- Lacey: Primarina Lv. 79: Hyper Voice, Moonblast, Ice Beam, Shadow Ball
    (250004, 25003, NULL, NULL, NULL, NULL, 3, ARRAY[304, 585, 58, 247]),
    -- Lacey: Galarian Slowbro Lv. 79: Shell Side Arm, Psychic, Flamethrower, Ice Beam
    (250004, 25003, NULL, NULL, NULL, NULL, 4, ARRAY[801, 94, 53, 58]),
    -- Lacey: Alcremie (Ruby Swirl) Lv. 79: Decorate, Recover, Giga Drain, Alluring Voice
    (250004, 25003, NULL, NULL, NULL, NULL, 5, ARRAY[777, 105, 202, 914]),
    -- Lacey: Excadrill Lv. 80: Tera Blast, Iron Head, Rock Tomb, High Horsepower
    (250004, 25003, NULL, NULL, NULL, NULL, 6, ARRAY[851, 442, 317, 667]),
    -- Drayton: Dragonite Lv. 78: Extreme Speed, Thunder Punch, Ice Spinner, Tailwind
    (250005, 25004, NULL, NULL, NULL, NULL, 1, ARRAY[245, 9, 861, 366]),
    -- Drayton: Flygon Lv. 78: Earthquake, Stone Edge, Fire Punch, Breaking Swipe
    (250005, 25004, NULL, NULL, NULL, NULL, 2, ARRAY[89, 444, 7, 784]),
    -- Drayton: Haxorus Lv. 79: Earthquake, Breaking Swipe, Iron Head, Dragon Dance
    (250005, 25004, NULL, NULL, NULL, NULL, 3, ARRAY[89, 784, 442, 349]),
    -- Drayton: Sceptile Lv. 79: Dragon Cheer, Leaf Storm, X-Scissor, Acrobatics
    (250005, 25004, NULL, NULL, NULL, NULL, 4, ARRAY[913, 437, 404, 512]),
    -- Drayton: Kingdra Lv. 79: Rain Dance, Ice Beam, Hydro Pump, Hurricane
    (250005, 25004, NULL, NULL, NULL, NULL, 5, ARRAY[240, 58, 56, 542]),
    -- Drayton: Archaludon Lv. 80: Electro Shot, Dragon Pulse, Flash Cannon, Snarl
    (250005, 25004, NULL, NULL, NULL, NULL, 6, ARRAY[905, 406, 430, 555]),
    -- Kieran: Dragonite Lv. 80: Hurricane, Thunder, Extreme Speed, Breaking Swipe
    (250006, 25005, NULL, NULL, NULL, NULL, 1, ARRAY[542, 87, 245, 784]),
    -- Kieran: Politoed Lv. 80: Ice Beam, Weather Ball, Psychic, Helping Hand
    (250006, 25005, NULL, NULL, NULL, NULL, 2, ARRAY[58, 311, 94, 270]),
    -- Kieran: Porygon-Z Lv. 81: Hyper Beam, Ice Beam, Thunderbolt, Shadow Ball
    (250006, 25005, NULL, NULL, NULL, NULL, 3, ARRAY[63, 58, 85, 247]),
    -- Kieran: Grimmsnarl Lv. 81: Sucker Punch, Spirit Break, Light Screen, Reflect
    (250006, 25005, NULL, NULL, NULL, NULL, 4, ARRAY[389, 789, 113, 115]),
    -- Kieran: Incineroar Lv. 81: Darkest Lariat, Brick Break, Flare Blitz, Fake Out
    (250006, 25005, NULL, NULL, NULL, NULL, 5, ARRAY[663, 280, 394, 252]),
    -- Kieran: Hydrapple Lv. 82: Fickle Beam, Gyro Ball, Tera Blast, Earth Power
    (250006, 25005, NULL, NULL, NULL, NULL, 6, ARRAY[907, 360, 851, 414]),
    -- Terapagos: Terapagos (Stellar Form) Lv. 85: Tera Starstorm, Zen Headbutt, Earth Power, Water Pulse
    (250008, 25006, NULL, NULL, NULL, NULL, 1, ARRAY[906, 428, 414, 352]),
    -- Pecharunt: Pecharunt Lv. 88: Nasty Plot, Toxic, Malignant Chain, Shadow Ball
    (250009, 25007, NULL, NULL, NULL, NULL, 1, ARRAY[417, 92, 919, 247]),
    -- Carmine: Mightyena Lv. 74: Crunch, Howl, Super Fang, Sucker Punch
    (250001, 25008, NULL, NULL, NULL, NULL, 1, ARRAY[242, 336, 162, 389]),
    -- Carmine: Toucannon Lv. 74: Beak Blast, Throat Chop, Flame Charge, Dual Wingbeat
    (250001, 25008, NULL, NULL, NULL, NULL, 2, ARRAY[690, 675, 488, 814]),
    -- Carmine: Scrafty Lv. 74: Brick Break, Crunch, Ice Punch, Bulk Up
    (250001, 25008, NULL, NULL, NULL, NULL, 3, ARRAY[280, 242, 8, 339]),
    -- Carmine: Sinistcha Lv. 75: Matcha Gotcha, Hex, Stun Spore, Scald
    (250001, 25008, NULL, NULL, NULL, NULL, 4, ARRAY[902, 506, 78, 503]),
    -- Kieran: Terapagos (Terastal Form) Lv. 85: Zen Headbutt, Earth Power, Water Pulse
    (250008, 25009, NULL, NULL, NULL, NULL, 1, ARRAY[428, 414, 352]),
    -- Arven & Penny: Greedent Lv. 82: Bullet Seed, Body Slam, Psychic Fangs, High Horsepower
    (250009, 25010, NULL, NULL, NULL, NULL, 1, ARRAY[331, 34, 706, 667]),
    -- Arven & Penny: Cloyster Lv. 82: Rock Blast, Icicle Spear, Liquidation, Light Screen
    (250009, 25010, NULL, NULL, NULL, NULL, 2, ARRAY[350, 333, 710, 113]),
    -- Arven & Penny: Mabosstiff Lv. 83: Crunch, Psychic Fangs, Fire Fang, Play Rough
    (250009, 25010, NULL, NULL, NULL, NULL, 3, ARRAY[242, 706, 424, 583]),
    -- Arven & Penny: Umbreon Lv. 84: Dark Pulse, Quick Attack, Baby-Doll Eyes, Psychic
    (250009, 25010, NULL, NULL, NULL, NULL, 4, ARRAY[399, 98, 608, 94]),
    -- Arven & Penny: Leafeon Lv. 84: Leaf Blade, Quick Attack, Baby-Doll Eyes, X-Scissor
    (250009, 25010, NULL, NULL, NULL, NULL, 5, ARRAY[348, 98, 608, 404]),
    -- Arven & Penny: Sylveon Lv. 85: Moonblast, Quick Attack, Baby-Doll Eyes, Shadow Ball
    (250009, 25010, NULL, NULL, NULL, NULL, 6, ARRAY[585, 98, 608, 247]),
    -- Nemona: Lycanroc Lv. 86: Accelerock, Drill Run, Stone Edge, Stealth Rock
    (250009, 25011, NULL, NULL, NULL, 'chose-sprigatito', 1, ARRAY[709, 529, 444, 446]),
    -- Nemona: Kommo-o Lv. 86: Clangorous Soul, Drain Punch, Thunder Punch, Earthquake
    (250009, 25011, NULL, NULL, NULL, 'chose-sprigatito', 2, ARRAY[775, 409, 9, 89]),
    -- Nemona: Goodra Lv. 86: Dragon Pulse, Muddy Water, Ice Beam, Sludge Bomb
    (250009, 25011, NULL, NULL, NULL, 'chose-sprigatito', 3, ARRAY[406, 330, 58, 188]),
    -- Nemona: Ribombee Lv. 86: Bug Buzz, Moonblast, Energy Ball, Psychic
    (250009, 25011, NULL, NULL, NULL, 'chose-sprigatito', 4, ARRAY[405, 585, 412, 94]),
    -- Nemona: Pawmot Lv. 86: Double Shock, Close Combat, Ice Punch, Quick Attack
    (250009, 25011, NULL, NULL, NULL, 'chose-sprigatito', 5, ARRAY[892, 370, 8, 98]),
    -- Nemona: Quaquaval Lv. 87: Aqua Step, Brick Break, Aerial Ace, Ice Spinner
    (250009, 25011, NULL, NULL, NULL, 'chose-sprigatito', 6, ARRAY[872, 280, 332, 861]),
    -- Nemona: Lycanroc Lv. 86: Accelerock, Drill Run, Stone Edge, Stealth Rock
    (250009, 25011, NULL, NULL, NULL, 'chose-fuecoco', 1, ARRAY[709, 529, 444, 446]),
    -- Nemona: Kommo-o Lv. 86: Clangorous Soul, Drain Punch, Thunder Punch, Earthquake
    (250009, 25011, NULL, NULL, NULL, 'chose-fuecoco', 2, ARRAY[775, 409, 9, 89]),
    -- Nemona: Goodra Lv. 86: Dragon Pulse, Muddy Water, Ice Beam, Sludge Bomb
    (250009, 25011, NULL, NULL, NULL, 'chose-fuecoco', 3, ARRAY[406, 330, 58, 188]),
    -- Nemona: Milotic Lv. 86: Draining Kiss, Surf, Ice Beam, Mud Shot
    (250009, 25011, NULL, NULL, NULL, 'chose-fuecoco', 4, ARRAY[577, 57, 58, 341]),
    -- Nemona: Pawmot Lv. 86: Double Shock, Close Combat, Ice Punch, Quick Attack
    (250009, 25011, NULL, NULL, NULL, 'chose-fuecoco', 5, ARRAY[892, 370, 8, 98]),
    -- Nemona: Meowscarada Lv. 87: Flower Trick, Thunder Punch, Shadow Claw, Play Rough
    (250009, 25011, NULL, NULL, NULL, 'chose-fuecoco', 6, ARRAY[870, 9, 421, 583]),
    -- Nemona: Lycanroc Lv. 86: Accelerock, Drill Run, Stone Edge, Stealth Rock
    (250009, 25011, NULL, NULL, NULL, 'chose-quaxly', 1, ARRAY[709, 529, 444, 446]),
    -- Nemona: Kommo-o Lv. 86: Clangorous Soul, Drain Punch, Thunder Punch, Earthquake
    (250009, 25011, NULL, NULL, NULL, 'chose-quaxly', 2, ARRAY[775, 409, 9, 89]),
    -- Nemona: Goodra Lv. 86: Dragon Pulse, Muddy Water, Ice Beam, Sludge Bomb
    (250009, 25011, NULL, NULL, NULL, 'chose-quaxly', 3, ARRAY[406, 330, 58, 188]),
    -- Nemona: Dusknoir Lv. 86: Earthquake, Thunder Punch, Shadow Sneak, Ice Punch
    (250009, 25011, NULL, NULL, NULL, 'chose-quaxly', 4, ARRAY[89, 9, 425, 8]),
    -- Nemona: Pawmot Lv. 86: Double Shock, Close Combat, Ice Punch, Quick Attack
    (250009, 25011, NULL, NULL, NULL, 'chose-quaxly', 5, ARRAY[892, 370, 8, 98]),
    -- Nemona: Skeledirge Lv. 87: Torch Song, Earth Power, Shadow Ball, Snarl
    (250009, 25011, NULL, NULL, NULL, 'chose-quaxly', 6, ARRAY[871, 414, 247, 555]),
    -- Meloetta: Meloetta Lv. 70: Relic Song, Hyper Voice, Sing, Psychic
    (250010, 25012, NULL, NULL, NULL, NULL, 1, ARRAY[547, 304, 47, 94]),
    -- Gouging Fire: Gouging Fire Lv. 75: Burning Bulwark, Dragon Rush, Fire Blast, Lava Plume
    (250011, 25013, NULL, NULL, NULL, NULL, 1, ARRAY[908, 407, 126, 436]),
    -- Raging Bolt: Raging Bolt Lv. 75: Thunderclap, Dragon Hammer, Rising Voltage, Dragon Pulse
    (250011, 25014, NULL, NULL, NULL, NULL, 1, ARRAY[909, 692, 804, 406]),
    -- Iron Crown: Iron Crown Lv. 75: Sacred Sword, Tachyon Cutter, Future Sight, Volt Switch
    (250011, 25015, NULL, NULL, NULL, NULL, 1, ARRAY[533, 911, 248, 521]),
    -- Iron Boulder: Iron Boulder Lv. 75: Sacred Sword, Mighty Cleave, Swords Dance, Megahorn
    (250011, 25016, NULL, NULL, NULL, NULL, 1, ARRAY[533, 910, 14, 224]),
    -- Articuno: Articuno Lv. 70: Hurricane, Haze, Blizzard, Sheer Cold
    (250012, 25017, NULL, NULL, NULL, NULL, 1, ARRAY[542, 114, 59, 329]),
    -- Zapdos: Zapdos Lv. 70: Thunder, Detect, Magnetic Flux, Zap Cannon
    (250012, 25018, NULL, NULL, NULL, NULL, 1, ARRAY[87, 197, 602, 192]),
    -- Moltres: Moltres Lv. 70: Hurricane, Endure, Overheat, Sky Attack
    (250012, 25019, NULL, NULL, NULL, NULL, 1, ARRAY[542, 203, 315, 143]),
    -- Raikou: Raikou Lv. 70: Extrasensory, Discharge, Reflect, Rain Dance
    (250012, 25020, NULL, NULL, NULL, NULL, 1, ARRAY[326, 435, 115, 240]),
    -- Entei: Entei Lv. 70: Extrasensory, Lava Plume, Swagger, Sunny Day
    (250012, 25021, NULL, NULL, NULL, NULL, 1, ARRAY[326, 436, 207, 241]),
    -- Suicune: Suicune Lv. 70: Extrasensory, Surf, Mirror Coat, Rain Dance
    (250012, 25022, NULL, NULL, NULL, NULL, 1, ARRAY[326, 57, 243, 240]),
    -- Ho-Oh: Ho-Oh Lv. 70: Extrasensory, Recover, Sacred Fire, Sunny Day
    (250012, 25023, NULL, NULL, NULL, NULL, 1, ARRAY[326, 105, 221, 241]),
    -- Latios: Latios Lv. 70: Luster Purge, Dragon Pulse, Zen Headbutt, Dragon Breath
    (250012, 25024, NULL, NULL, NULL, NULL, 1, ARRAY[295, 406, 428, 225]),
    -- Groudon: Groudon Lv. 70: Earthquake, Hammer Arm, Fissure, Rest
    (250012, 25025, NULL, NULL, NULL, NULL, 1, ARRAY[89, 359, 90, 156]),
    -- Reshiram: Reshiram Lv. 70: Flamethrower, Fusion Flare, Hyper Voice, Fire Blast
    (250012, 25026, NULL, NULL, NULL, NULL, 1, ARRAY[53, 558, 304, 126]),
    -- Solgaleo: Solgaleo Lv. 70: Metal Burst, Wild Charge, Solar Beam, Flare Blitz
    (250012, 25027, NULL, NULL, NULL, NULL, 1, ARRAY[368, 528, 76, 394]),
    -- Glastrier: Glastrier Lv. 70: Iron Defense, Thrash, Taunt, Double-Edge
    (250012, 25028, NULL, NULL, NULL, NULL, 1, ARRAY[334, 37, 269, 38]),
    -- Lugia: Lugia Lv. 70: Extrasensory, Recover, Aeroblast, Rain Dance
    (250012, 25029, NULL, NULL, NULL, NULL, 1, ARRAY[326, 105, 177, 240]),
    -- Latias: Latias Lv. 70: Reflect Type, Psychic, Guard Split, Healing Wish
    (250012, 25030, NULL, NULL, NULL, NULL, 1, ARRAY[513, 94, 470, 361]),
    -- Kyogre: Kyogre Lv. 70: Muddy Water, Ice Beam, Sheer Cold, Aqua Ring
    (250012, 25031, NULL, NULL, NULL, NULL, 1, ARRAY[330, 58, 329, 392]),
    -- Cobalion: Cobalion Lv. 70: Sacred Sword, Swords Dance, Iron Head, Close Combat
    (250012, 25032, NULL, NULL, NULL, NULL, 1, ARRAY[533, 14, 442, 370]),
    -- Terrakion: Terrakion Lv. 70: Sacred Sword, Swords Dance, Stone Edge, Close Combat
    (250012, 25033, NULL, NULL, NULL, NULL, 1, ARRAY[533, 14, 444, 370]),
    -- Virizion: Virizion Lv. 70: Sacred Sword, Swords Dance, Leaf Blade, Close Combat
    (250012, 25034, NULL, NULL, NULL, NULL, 1, ARRAY[533, 14, 348, 370]),
    -- Zekrom: Zekrom Lv. 70: Thunderbolt, Fusion Bolt, Hyper Voice, Thunder
    (250012, 25035, NULL, NULL, NULL, NULL, 1, ARRAY[85, 559, 304, 87]),
    -- Lunala: Lunala Lv. 70: Psychic, Moonblast, Phantom Force, Dream Eater
    (250012, 25036, NULL, NULL, NULL, NULL, 1, ARRAY[94, 585, 566, 138]),
    -- Spectrier: Spectrier Lv. 70: Agility, Thrash, Disable, Double-Edge
    (250012, 25037, NULL, NULL, NULL, NULL, 1, ARRAY[97, 37, 50, 38]),
    -- Rayquaza: Rayquaza Lv. 70: Dragon Pulse, Hyper Voice, Rest, Fly
    (250012, 25038, NULL, NULL, NULL, NULL, 1, ARRAY[406, 304, 156, 19]),
    -- Kyurem: Kyurem Lv. 70: Hyper Voice, Scary Face, Blizzard, Imprison
    (250012, 25039, NULL, NULL, NULL, NULL, 1, ARRAY[304, 184, 59, 286]),
    -- Necrozma: Necrozma Lv. 70: Stored Power, Rock Blast, Iron Defense, Power Gem
    (250012, 25040, NULL, NULL, NULL, NULL, 1, ARRAY[500, 350, 334, 408]),
    -- Kubfu: Kubfu Lv. 30: Scary Face, Headbutt, Brick Break, Detect
    (250012, 25041, NULL, NULL, NULL, NULL, 1, ARRAY[184, 29, 280, 197])
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
