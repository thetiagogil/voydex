-- ============================================================================
-- Source
-- ============================================================================
-- Fixed encounters (legendaries and other one-off Pokémon): the game's
-- data-mined encounter table; where it sets no moves, the game's default from
-- its own level-up learnset. Cross-checked with Serebii and Bulbapedia.
-- Fixed encounters, totems, Titans, story bosses and trainers the sources
-- above leave out: Serebii, Bulbapedia and PokéWiki, kept where two agree;
-- where they disagree or only one covers it, Bulbapedia, then Serebii.
-- Rogue Megas of Hyperspace Missions 1, 3, 6 and 8: the moves the game's
-- data-mined encounter table gives the Pokémon you catch.
-- Pokémon no source confirms are left without moves (Voydex reads their types).
-- Special Scan legendaries, Zeraora and Magearna (#115 audit): Bulbapedia's event list, cross-checked with Serebii.
-- Scope: Legends: Z-A: Mega Dimension Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Legends: Z-A: Mega Dimension opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Darkrai: Mega Darkrai Lv. 85: Dark Void, Future Sight, Dream Eater, Snarl
    (270003, 27001, NULL, NULL, NULL, NULL, 1, ARRAY[464, 248, 138, 555]),
    -- Groudon: Primal Groudon Lv. 80: Precipice Blades, Fire Blast, Solar Beam, Scorching Sands
    (270004, 27002, NULL, NULL, NULL, NULL, 1, ARRAY[619, 126, 76, 815]),
    -- Kyogre: Primal Kyogre Lv. 80: Origin Pulse, Ice Beam, Surf, Thunder
    (270005, 27003, NULL, NULL, NULL, NULL, 1, ARRAY[618, 58, 57, 87]),
    -- Rayquaza: Mega Rayquaza Lv. 85: Dragon Ascent, Hyper Voice, Meteor Beam, Outrage
    (270006, 27004, NULL, NULL, NULL, NULL, 1, ARRAY[620, 304, 800, 200]),
    -- Heatran: Mega Heatran Lv. 80: Magma Storm, Flash Cannon, Bulldoze, Overheat
    (270003, 27005, NULL, NULL, NULL, NULL, 1, ARRAY[463, 430, 523, 315]),
    -- Genesect: Genesect Lv. 60: Techno Blast, Flash Cannon, Lunge, Bug Buzz
    (270007, 27006, NULL, NULL, NULL, NULL, 1, ARRAY[546, 430, 679, 405]),
    -- Marshadow: Marshadow Lv. 80: Spectral Thief, Close Combat, Shadow Punch, Shadow Sneak
    (270008, 27007, NULL, NULL, NULL, NULL, 1, ARRAY[712, 370, 325, 425]),
    -- Meltan: Meltan Lv. 70: Flash Cannon, Brutal Swing, Acid Armor, Thunder Wave
    (270009, 27008, NULL, NULL, NULL, NULL, 1, ARRAY[430, 693, 151, 86]),
    -- Volcanion: Volcanion Lv. 80: Steam Eruption, Hydro Pump, Haze, Overheat
    (270010, 27009, NULL, NULL, NULL, NULL, 1, ARRAY[592, 56, 114, 315]),
    -- Hoopa: Hoopa (Unbound) Lv. 80: Hyperspace Hole, Psychic, Nasty Plot, Phantom Force
    (270011, 27010, NULL, NULL, NULL, NULL, 1, ARRAY[593, 94, 417, 566]),
    -- Rogue Mega Absol Z: Mega Absol Z Lv. 75: Knock Off, Night Slash, Snarl, Shadow Sneak
    (270012, 27011, NULL, NULL, NULL, NULL, 1, ARRAY[282, 400, 555, 425]),
    -- Rogue Mega Staraptor: Mega Staraptor Lv. 75: Focus Blast, Dual Wingbeat, Double-Edge, Close Combat
    (270013, 27012, NULL, NULL, NULL, NULL, 1, ARRAY[411, 814, 38, 370]),
    -- Rogue Mega Tatsugiri: Mega Tatsugiri Lv. 75: Waterfall, Ice Beam, Dragon Rush, Whirlpool
    (270014, 27013, NULL, NULL, NULL, NULL, 1, ARRAY[127, 58, 407, 250]),
    -- Rogue Mega Meowstic: Mega Meowstic Lv. 75: Psychic, Reflect, Light Screen, Psybeam
    (270015, 27014, NULL, NULL, NULL, NULL, 1, ARRAY[94, 115, 113, 60]),
    -- Latias: Latias Lv. 60: Dragon Pulse, Aura Sphere, Mystical Fire, Air Slash
    (270016, 27017, NULL, NULL, NULL, NULL, 1, ARRAY[406, 396, 595, 403]),
    -- Latios: Latios Lv. 60: Dragon Pulse, Aura Sphere, Mystical Fire, Air Slash
    (270017, 27018, NULL, NULL, NULL, NULL, 1, ARRAY[406, 396, 595, 403]),
    -- Cobalion: Cobalion Lv. 60: Air Slash, Megahorn, Sacred Sword, Swords Dance
    (270018, 27019, NULL, NULL, NULL, NULL, 1, ARRAY[403, 224, 533, 14]),
    -- Terrakion: Terrakion Lv. 60: Rock Slide, Megahorn, Sacred Sword, Swords Dance
    (270019, 27020, NULL, NULL, NULL, NULL, 1, ARRAY[157, 224, 533, 14]),
    -- Virizion: Virizion Lv. 60: Air Slash, Megahorn, Sacred Sword, Swords Dance
    (270020, 27021, NULL, NULL, NULL, NULL, 1, ARRAY[403, 224, 533, 14]),
    -- Keldeo: Keldeo Lv. 60: Air Slash, Megahorn, Sacred Sword, Swords Dance
    (270021, 27022, NULL, NULL, NULL, NULL, 1, ARRAY[403, 224, 533, 14]),
    -- Meloetta: Meloetta Lv. 60: Psychic, U-turn, Relic Song, Psybeam
    (270022, 27023, NULL, NULL, NULL, NULL, 1, ARRAY[94, 369, 547, 60]),
    -- Rogue Mega Zeraora: Mega Zeraora Lv. 85: Plasma Fists, Electroweb, Dynamic Punch, Wild Charge
    (270024, 27024, NULL, NULL, NULL, NULL, 1, ARRAY[721, 527, 223, 528])
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
