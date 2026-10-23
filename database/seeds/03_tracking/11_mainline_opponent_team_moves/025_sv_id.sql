-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokéWiki trainer team tables for this game, matched to each
-- team by its Pokémon and their levels.
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
    (250009, 25011, NULL, NULL, NULL, 'chose-quaxly', 6, ARRAY[871, 414, 247, 555])
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
