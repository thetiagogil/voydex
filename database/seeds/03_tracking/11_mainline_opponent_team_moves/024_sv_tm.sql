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
-- Pokémon no source confirms are left without moves (Voydex reads their types).
-- Perrin (#115 audit): Bulbapedia.
-- Scope: Scarlet / Violet: The Teal Mask Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Scarlet / Violet: The Teal Mask opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Kieran: Sentret Lv. 12: Scratch, Defense Curl, Quick Attack
    (240001, 24001, NULL, NULL, NULL, 'before-the-way-home', 1, ARRAY[10, 111, 98]),
    -- Kieran: Yanma Lv. 12: Quick Attack, Air Cutter, Swift, Struggle Bug
    (240001, 24001, NULL, NULL, NULL, 'before-the-way-home', 2, ARRAY[98, 314, 129, 522]),
    -- Kieran: Sentret Lv. 59: Quick Attack, Take Down, Amnesia, Dig
    (240001, 24001, NULL, NULL, NULL, 'after-the-way-home', 1, ARRAY[98, 36, 133, 91]),
    -- Kieran: Yanma Lv. 60: Bug Buzz, Air Cutter, Quick Attack, Giga Drain
    (240001, 24001, NULL, NULL, NULL, 'after-the-way-home', 2, ARRAY[405, 314, 98, 202]),
    -- Ogerpon: Ogerpon (Hearthflame Mask) Lv. 20: Ivy Cudgel, Slam, Growth, Vine Whip
    (240005, 24003, NULL, NULL, NULL, 'before-the-way-home', 1, ARRAY[904, 21, 74, 22]),
    -- Ogerpon: Ogerpon (Wellspring Mask) Lv. 20: Ivy Cudgel, Slam, Growth, Vine Whip
    (240005, 24003, NULL, NULL, NULL, 'before-the-way-home', 2, ARRAY[904, 21, 74, 22]),
    -- Ogerpon: Ogerpon (Cornerstone Mask) Lv. 20: Ivy Cudgel, Slam, Growth, Vine Whip
    (240005, 24003, NULL, NULL, NULL, 'before-the-way-home', 3, ARRAY[904, 21, 74, 22]),
    -- Ogerpon: Ogerpon Lv. 20: Ivy Cudgel, Slam, Growth, Vine Whip
    (240005, 24003, NULL, NULL, NULL, 'before-the-way-home', 4, ARRAY[904, 21, 74, 22]),
    -- Ogerpon: Ogerpon (Hearthflame Mask) Lv. 70: Ivy Cudgel, Low Kick, Slam, Grassy Terrain
    (240005, 24003, NULL, NULL, NULL, 'after-the-way-home', 1, ARRAY[904, 67, 21, 580]),
    -- Ogerpon: Ogerpon (Wellspring Mask) Lv. 70: Ivy Cudgel, Low Kick, Slam, Grassy Terrain
    (240005, 24003, NULL, NULL, NULL, 'after-the-way-home', 2, ARRAY[904, 67, 21, 580]),
    -- Ogerpon: Ogerpon (Cornerstone Mask) Lv. 70: Ivy Cudgel, Low Kick, Slam, Grassy Terrain
    (240005, 24003, NULL, NULL, NULL, 'after-the-way-home', 3, ARRAY[904, 67, 21, 580]),
    -- Ogerpon: Ogerpon Lv. 70: Ivy Cudgel, Low Kick, Slam, Grassy Terrain
    (240005, 24003, NULL, NULL, NULL, 'after-the-way-home', 4, ARRAY[904, 67, 21, 580]),
    -- Bloodmoon Ursaluna: Ursaluna (Bloodmoon) Lv. 70: Blood Moon, Earth Power, Slash, Calm Mind
    (240007, 24004, NULL, NULL, NULL, NULL, 1, ARRAY[901, 414, 163, 347]),
    -- Carmine: Poochyena Lv. 12: Bite, Tackle, Howl
    (240001, 24005, NULL, NULL, NULL, 'before-the-way-home', 1, ARRAY[44, 33, 336]),
    -- Carmine: Vulpix Lv. 12: Ember, Disable, Quick Attack, Spite
    (240001, 24005, NULL, NULL, NULL, 'before-the-way-home', 2, ARRAY[52, 50, 98, 180]),
    -- Carmine: Poltchageist Lv. 13: Mega Drain, Astonish, Withdraw
    (240001, 24005, NULL, NULL, NULL, 'before-the-way-home', 3, ARRAY[72, 310, 110]),
    -- Carmine: Poochyena Lv. 60: Crunch, Howl, Take Down, Fire Fang
    (240001, 24005, NULL, NULL, NULL, 'after-the-way-home', 1, ARRAY[242, 336, 36, 424]),
    -- Carmine: Vulpix Lv. 60: Flamethrower, Extrasensory, Will-O-Wisp, Disable
    (240001, 24005, NULL, NULL, NULL, 'after-the-way-home', 2, ARRAY[53, 326, 261, 50]),
    -- Carmine: Poltchageist Lv. 60: Giga Drain, Shadow Ball, Foul Play, Stun Spore
    (240001, 24005, NULL, NULL, NULL, 'after-the-way-home', 3, ARRAY[202, 247, 492, 78]),
    -- Kieran: Poliwag Lv. 15: Water Gun, Pound, Haze, Mud Shot
    (240002, 24001, NULL, NULL, NULL, 'before-the-way-home', 1, ARRAY[55, 1, 114, 341]),
    -- Kieran: Yanma Lv. 16: Quick Attack, Air Cutter, Swift, Struggle Bug
    (240002, 24001, NULL, NULL, NULL, 'before-the-way-home', 2, ARRAY[98, 314, 129, 522]),
    -- Kieran: Furret Lv. 16: Dig, Quick Attack, Defense Curl, Fury Swipes
    (240002, 24001, NULL, NULL, NULL, 'before-the-way-home', 3, ARRAY[91, 98, 111, 154]),
    -- Kieran: Furret Lv. 62: Quick Attack, Double-Edge, Amnesia, Dig
    (240002, 24001, NULL, NULL, NULL, 'after-the-way-home', 1, ARRAY[98, 38, 133, 91]),
    -- Kieran: Yanma Lv. 62: Bug Buzz, Air Cutter, Giga Drain, Quick Attack
    (240002, 24001, NULL, NULL, NULL, 'after-the-way-home', 2, ARRAY[405, 314, 202, 98]),
    -- Kieran: Poliwhirl Lv. 66: Liquidation, Haze, Take Down, Belly Drum
    (240002, 24001, NULL, NULL, NULL, 'after-the-way-home', 3, ARRAY[710, 114, 36, 187]),
    -- Carmine: Morpeko Lv. 16: Thunder Shock, Power Trip, Bite, Leer
    (240002, 24005, NULL, NULL, NULL, 'before-the-way-home', 1, ARRAY[84, 681, 44, 43]),
    -- Carmine: Swadloon Lv. 16: Struggle Bug, Sticky Web, Razor Leaf, Trailblaze
    (240002, 24005, NULL, NULL, NULL, 'before-the-way-home', 2, ARRAY[522, 564, 75, 885]),
    -- Carmine: Mightyena Lv. 18: Bite, Take Down, Howl, Fire Fang
    (240002, 24005, NULL, NULL, NULL, 'before-the-way-home', 3, ARRAY[44, 36, 336, 424]),
    -- Carmine: Poltchageist Lv. 19: Mega Drain, Astonish, Withdraw, Stun Spore
    (240002, 24005, NULL, NULL, NULL, 'before-the-way-home', 4, ARRAY[72, 310, 110, 78]),
    -- Carmine: Morpeko Lv. 62: Aura Wheel, Lash Out, Thunder Wave, Seed Bomb
    (240002, 24005, NULL, NULL, NULL, 'after-the-way-home', 1, ARRAY[783, 808, 86, 402]),
    -- Carmine: Swadloon Lv. 63: Bug Buzz, Sticky Web, Energy Ball, Trailblaze
    (240002, 24005, NULL, NULL, NULL, 'after-the-way-home', 2, ARRAY[405, 564, 412, 885]),
    -- Carmine: Mightyena Lv. 63: Crunch, Howl, Take Down, Fire Fang
    (240002, 24005, NULL, NULL, NULL, 'after-the-way-home', 3, ARRAY[242, 336, 36, 424]),
    -- Carmine: Sinistcha Lv. 64: Matcha Gotcha, Shadow Ball, Foul Play, Stun Spore
    (240002, 24005, NULL, NULL, NULL, 'after-the-way-home', 4, ARRAY[902, 247, 492, 78]),
    -- Kieran: Yanma Lv. 22: Quick Attack, Air Cutter, Swift, Struggle Bug
    (240003, 24001, NULL, NULL, NULL, 'before-the-way-home', 1, ARRAY[98, 314, 129, 522]),
    -- Kieran: Poliwhirl Lv. 22: Water Pulse, Take Down, Mud Shot, Haze
    (240003, 24001, NULL, NULL, NULL, 'before-the-way-home', 2, ARRAY[352, 36, 341, 114]),
    -- Kieran: Furret Lv. 23: Take Down, Dig, Baby-Doll Eyes, Slash
    (240003, 24001, NULL, NULL, NULL, 'before-the-way-home', 3, ARRAY[36, 91, 608, 163]),
    -- Kieran: Dipplin Lv. 25: Syrup Bomb, Double Hit, Dragon Breath, Defense Curl
    (240003, 24001, NULL, NULL, NULL, 'before-the-way-home', 4, ARRAY[903, 458, 225, 111]),
    -- Kieran: Yanma Lv. 64: Bug Buzz, Air Cutter, Giga Drain, Quick Attack
    (240003, 24001, NULL, NULL, NULL, 'after-the-way-home', 1, ARRAY[405, 314, 202, 98]),
    -- Kieran: Furret Lv. 64: Sucker Punch, Double-Edge, Tidy Up, Super Fang
    (240003, 24001, NULL, NULL, NULL, 'after-the-way-home', 2, ARRAY[389, 38, 882, 162]),
    -- Kieran: Poliwrath Lv. 66: Hydro Pump, Haze, Brick Break, Earth Power
    (240003, 24001, NULL, NULL, NULL, 'after-the-way-home', 3, ARRAY[56, 114, 280, 414]),
    -- Kieran: Dipplin Lv. 67: Syrup Bomb, Dragon Pulse, Energy Ball, Double Hit
    (240003, 24001, NULL, NULL, NULL, 'after-the-way-home', 4, ARRAY[903, 406, 412, 458]),
    -- Kieran: Yanma Lv. 26: Quick Attack, Air Cutter, Swift, Bug Buzz
    (240004, 24001, NULL, NULL, NULL, 'before-the-way-home', 1, ARRAY[98, 314, 129, 405]),
    -- Kieran: Gligar Lv. 25: Aerial Ace, Bulldoze, Fury Cutter, Quick Attack
    (240004, 24001, NULL, NULL, NULL, 'before-the-way-home', 2, ARRAY[332, 523, 210, 98]),
    -- Kieran: Cramorant Lv. 25: Dive, Pluck, Fury Attack, Surf
    (240004, 24001, NULL, NULL, NULL, 'before-the-way-home', 3, ARRAY[291, 365, 31, 57]),
    -- Kieran: Dipplin Lv. 26: Syrup Bomb, Double Hit, Dragon Breath, Defense Curl
    (240004, 24001, NULL, NULL, NULL, 'before-the-way-home', 4, ARRAY[903, 458, 225, 111]),
    -- Kieran: Poliwhirl Lv. 28: Liquidation, Brick Break, Take Down, Mud Shot
    (240004, 24001, NULL, NULL, NULL, 'before-the-way-home', 5, ARRAY[710, 280, 36, 341]),
    -- Kieran: Yanmega Lv. 68: Bug Buzz, Air Slash, Giga Drain, Quick Attack
    (240004, 24001, NULL, NULL, NULL, 'after-the-way-home', 1, ARRAY[405, 403, 202, 98]),
    -- Kieran: Gligar Lv. 66: Earthquake, Rock Tomb, Dual Wingbeat, X-Scissor
    (240004, 24001, NULL, NULL, NULL, 'after-the-way-home', 2, ARRAY[89, 317, 814, 404]),
    -- Kieran: Cramorant Lv. 65: Dive, Air Slash, Thrash, Surf
    (240004, 24001, NULL, NULL, NULL, 'after-the-way-home', 3, ARRAY[291, 403, 37, 57]),
    -- Kieran: Dipplin Lv. 69: Syrup Bomb, Dragon Pulse, Energy Ball, Double Hit
    (240004, 24001, NULL, NULL, NULL, 'after-the-way-home', 4, ARRAY[903, 406, 412, 458]),
    -- Kieran: Poliwrath Lv. 71: Hydro Pump, Haze, Brick Break, Earth Power
    (240004, 24001, NULL, NULL, NULL, 'after-the-way-home', 5, ARRAY[56, 114, 280, 414]),
    -- Kieran: Shiftry Lv. 33: Bullet Seed, Fake Out, Payback, Aerial Ace
    (240006, 24001, NULL, NULL, NULL, 'before-the-way-home', 1, ARRAY[331, 252, 371, 332]),
    -- Kieran: Yanmega Lv. 37: Air Cutter, Quick Attack, Ancient Power, Bug Buzz
    (240006, 24001, NULL, NULL, NULL, 'before-the-way-home', 2, ARRAY[314, 98, 246, 405]),
    -- Kieran: Dipplin Lv. 36: Syrup Bomb, Double Hit, Dragon Breath, Defense Curl
    (240006, 24001, NULL, NULL, NULL, 'before-the-way-home', 3, ARRAY[903, 458, 225, 111]),
    -- Kieran: Probopass Lv. 33: Power Gem, Rock Tomb, Rock Blast, Spark
    (240006, 24001, NULL, NULL, NULL, 'before-the-way-home', 4, ARRAY[408, 317, 350, 209]),
    -- Kieran: Poliwrath Lv. 38: Brick Break, Belly Drum, Liquidation, Ice Punch
    (240006, 24001, NULL, NULL, NULL, 'before-the-way-home', 5, ARRAY[280, 187, 710, 8]),
    -- Kieran: Gliscor Lv. 37: Aerial Ace, Bulldoze, Poison Tail, Harden
    (240006, 24001, NULL, NULL, NULL, 'before-the-way-home', 6, ARRAY[332, 523, 342, 106]),
    -- Kieran: Shiftry Lv. 71: Fake Out, Tailwind, Leaf Blade, Dark Pulse
    (240006, 24001, NULL, NULL, NULL, 'after-the-way-home', 1, ARRAY[252, 366, 348, 399]),
    -- Kieran: Yanmega Lv. 72: Bug Buzz, Air Slash, Ancient Power, Psychic
    (240006, 24001, NULL, NULL, NULL, 'after-the-way-home', 2, ARRAY[405, 403, 246, 94]),
    -- Kieran: Dipplin Lv. 72: Syrup Bomb, Double Hit, Dragon Pulse, Energy Ball
    (240006, 24001, NULL, NULL, NULL, 'after-the-way-home', 3, ARRAY[903, 458, 406, 412]),
    -- Kieran: Probopass Lv. 71: Power Gem, Body Press, Zap Cannon, Flash Cannon
    (240006, 24001, NULL, NULL, NULL, 'after-the-way-home', 4, ARRAY[408, 776, 192, 430]),
    -- Kieran: Poliwrath Lv. 72: Close Combat, Belly Drum, Liquidation, Ice Punch
    (240006, 24001, NULL, NULL, NULL, 'after-the-way-home', 5, ARRAY[370, 187, 710, 8]),
    -- Kieran: Gliscor Lv. 76: Earthquake, Rock Tomb, Dual Wingbeat, X-Scissor
    (240006, 24001, NULL, NULL, NULL, 'after-the-way-home', 6, ARRAY[89, 317, 814, 404]),
    -- Carmine: Mightyena Lv. 33: Crunch, Howl, Take Down, Fire Fang
    (240006, 24005, NULL, NULL, NULL, 'before-the-way-home', 1, ARRAY[242, 336, 36, 424]),
    -- Carmine: Morpeko Lv. 33: Aura Wheel, Seed Bomb, Torment, Uproar
    (240006, 24005, NULL, NULL, NULL, 'before-the-way-home', 2, ARRAY[783, 402, 259, 253]),
    -- Carmine: Leavanny Lv. 34: X-Scissor, Slash, String Shot, Trailblaze
    (240006, 24005, NULL, NULL, NULL, 'before-the-way-home', 3, ARRAY[404, 163, 81, 885]),
    -- Carmine: Ninetales Lv. 34: Incinerate, Spite, Extrasensory, Will-O-Wisp
    (240006, 24005, NULL, NULL, NULL, 'before-the-way-home', 4, ARRAY[510, 180, 326, 261]),
    -- Carmine: Sinistcha Lv. 35: Matcha Gotcha, Foul Play, Scald, Stun Spore
    (240006, 24005, NULL, NULL, NULL, 'before-the-way-home', 5, ARRAY[902, 492, 503, 78]),
    -- Carmine: Mightyena Lv. 70: Crunch, Howl, Sucker Punch, Play Rough
    (240006, 24005, NULL, NULL, NULL, 'after-the-way-home', 1, ARRAY[242, 336, 389, 583]),
    -- Carmine: Morpeko Lv. 71: Aura Wheel, Lash Out, Thunder Wave, Seed Bomb
    (240006, 24005, NULL, NULL, NULL, 'after-the-way-home', 2, ARRAY[783, 808, 86, 402]),
    -- Carmine: Leavanny Lv. 72: Leaf Blade, X-Scissor, Swords Dance, Fell Stinger
    (240006, 24005, NULL, NULL, NULL, 'after-the-way-home', 3, ARRAY[348, 404, 14, 565]),
    -- Carmine: Ninetales Lv. 72: Flamethrower, Extrasensory, Will-O-Wisp, Disable
    (240006, 24005, NULL, NULL, NULL, 'after-the-way-home', 4, ARRAY[53, 326, 261, 50]),
    -- Carmine: Sinistcha Lv. 74: Matcha Gotcha, Hex, Stun Spore, Scald
    (240006, 24005, NULL, NULL, NULL, 'after-the-way-home', 5, ARRAY[902, 506, 78, 503]),
    -- Munkidori: Munkidori Lv. 30: Confusion, Clear Smog, Psybeam, Spite
    (240004, 24006, NULL, NULL, NULL, 'before-the-way-home', 1, ARRAY[93, 499, 60, 180]),
    -- Munkidori: Munkidori Lv. 70: Psychic, Sludge Wave, Nasty Plot, Future Sight
    (240004, 24006, NULL, NULL, NULL, 'after-the-way-home', 1, ARRAY[94, 482, 417, 248]),
    -- Okidogi: Okidogi Lv. 35: Bite, Poison Fang, Low Kick, Brutal Swing
    (240004, 24007, NULL, NULL, NULL, 'before-the-way-home', 1, ARRAY[44, 305, 67, 693]),
    -- Okidogi: Okidogi Lv. 85: Crunch, Close Combat, Brutal Swing, Poison Jab
    (240004, 24007, NULL, NULL, NULL, 'after-the-way-home', 1, ARRAY[242, 370, 693, 398]),
    -- Munkidori: Munkidori Lv. 35: Confusion, Clear Smog, Psybeam, Spite
    (240004, 24008, NULL, NULL, NULL, 'before-the-way-home', 1, ARRAY[93, 499, 60, 180]),
    -- Munkidori: Munkidori Lv. 85: Psychic, Sludge Wave, Shadow Ball, Nasty Plot
    (240004, 24008, NULL, NULL, NULL, 'after-the-way-home', 1, ARRAY[94, 482, 247, 417]),
    -- Fezandipiti: Fezandipiti Lv. 35: Quick Attack, Wing Attack, Poison Jab, Dazzling Gleam
    (240004, 24009, NULL, NULL, NULL, 'before-the-way-home', 1, ARRAY[98, 17, 398, 605]),
    -- Fezandipiti: Fezandipiti Lv. 85: Cross Poison, Play Rough, Dual Wingbeat, Dazzling Gleam
    (240004, 24009, NULL, NULL, NULL, 'after-the-way-home', 1, ARRAY[440, 583, 814, 605]),
    -- Okidogi: Okidogi Lv. 70: Poison Jab, Brutal Swing, Crunch, Superpower
    (240008, 24010, NULL, NULL, NULL, NULL, 1, ARRAY[398, 693, 242, 276]),
    -- Munkidori: Munkidori Lv. 70: Psychic, Sludge Wave, Nasty Plot, Future Sight
    (240009, 24006, NULL, NULL, NULL, NULL, 1, ARRAY[94, 482, 417, 248]),
    -- Fezandipiti: Fezandipiti Lv. 70: Beat Up, Swagger, Flatter, Roost
    (240010, 24011, NULL, NULL, NULL, NULL, 1, ARRAY[251, 207, 260, 355]),
    -- Perrin, Mossui Town: Noctowl Lv. 68: Roost, Moonblast, Hypnosis, Dream Eater
    (240007, 24012, NULL, NULL, NULL, NULL, 1, ARRAY[355, 585, 95, 138]),
    -- Perrin, Mossui Town: Leafeon Lv. 70: Leaf Blade, Swords Dance, Quick Attack, X-Scissor
    (240007, 24012, NULL, NULL, NULL, NULL, 2, ARRAY[348, 14, 98, 404])
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
