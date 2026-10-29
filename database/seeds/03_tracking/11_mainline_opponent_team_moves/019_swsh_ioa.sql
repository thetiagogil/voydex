-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokéWiki trainer team tables for this game, matched to each
-- team by its Pokémon and their levels.
-- Cross-check: data-mined Sword / Shield trainer data.
-- Pokémon no source confirms are left without moves (Voydex reads their types).
-- Mustard's first battle and his Kubfu (#115 audit): Bulbapedia; his Urshifu's signature move follows its style (Wicked Blow for Single Strike, Surging Strikes for Rapid Strike).
-- Scope: Sword / Shield: The Isle of Armor Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Sword / Shield: The Isle of Armor opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Klara / Avery: Skorupi Lv. 23: Bite, Poison Fang
    (190002, 19001, 31, NULL, NULL, 'main-story-not-finished', 1, ARRAY[44, 305]),
    -- Klara / Avery: Galarian Weezing Lv. 24: Clear Smog, Assurance
    (190002, 19001, 31, NULL, NULL, 'main-story-not-finished', 2, ARRAY[499, 372]),
    -- Klara / Avery: Whirlipede Lv. 24: Poison Tail, Bug Bite
    (190002, 19001, 31, NULL, NULL, 'main-story-not-finished', 3, ARRAY[342, 450]),
    -- Klara / Avery: Galarian Slowbro Lv. 25: Water Pulse, Shell Side Arm, Confusion
    (190002, 19001, 31, NULL, NULL, 'main-story-not-finished', 4, ARRAY[352, 801, 93]),
    -- Klara / Avery: Skorupi Lv. 65: Bite, Poison Fang
    (190002, 19001, 31, NULL, NULL, 'main-story-finished', 1, ARRAY[44, 305]),
    -- Klara / Avery: Galarian Weezing Lv. 66: Clear Smog, Assurance
    (190002, 19001, 31, NULL, NULL, 'main-story-finished', 2, ARRAY[499, 372]),
    -- Klara / Avery: Whirlipede Lv. 66: Poison Tail, Bug Bite
    (190002, 19001, 31, NULL, NULL, 'main-story-finished', 3, ARRAY[342, 450]),
    -- Klara / Avery: Galarian Slowbro Lv. 67: Water Pulse, Shell Side Arm, Confusion
    (190002, 19001, 31, NULL, NULL, 'main-story-finished', 4, ARRAY[352, 801, 93]),
    -- Klara / Avery: Galarian Ponyta Lv. 23: Psybeam, Fairy Wind
    (190002, 19001, 32, NULL, NULL, 'main-story-not-finished', 1, ARRAY[60, 584]),
    -- Klara / Avery: Swoobat Lv. 24: Confusion, Air Cutter
    (190002, 19001, 32, NULL, NULL, 'main-story-not-finished', 2, ARRAY[93, 314]),
    -- Klara / Avery: Kadabra Lv. 24: Psybeam, Swift
    (190002, 19001, 32, NULL, NULL, 'main-story-not-finished', 3, ARRAY[60, 129]),
    -- Klara / Avery: Galarian Slowbro Lv. 25: Water Pulse, Shell Side Arm, Confusion
    (190002, 19001, 32, NULL, NULL, 'main-story-not-finished', 4, ARRAY[352, 801, 93]),
    -- Klara / Avery: Galarian Ponyta Lv. 65: Psybeam, Fairy Wind
    (190002, 19001, 32, NULL, NULL, 'main-story-finished', 1, ARRAY[60, 584]),
    -- Klara / Avery: Swoobat Lv. 66: Confusion, Air Cutter
    (190002, 19001, 32, NULL, NULL, 'main-story-finished', 2, ARRAY[93, 314]),
    -- Klara / Avery: Kadabra Lv. 66: Psybeam, Swift
    (190002, 19001, 32, NULL, NULL, 'main-story-finished', 3, ARRAY[60, 129]),
    -- Klara / Avery: Galarian Slowbro Lv. 67: Water Pulse, Shell Side Arm, Confusion
    (190002, 19001, 32, NULL, NULL, 'main-story-finished', 4, ARRAY[352, 801, 93]),
    -- Mustard, Master Dojo: Mienfoo Lv. 13: Fake Out, Force Palm, U-turn
    (190001, 19002, NULL, NULL, NULL, 'main-story-not-finished', 1, ARRAY[252, 395, 369]),
    -- Mustard, Master Dojo: Shinx Lv. 13: Spark, Bite
    (190001, 19002, NULL, NULL, NULL, 'main-story-not-finished', 2, ARRAY[209, 44]),
    -- Mustard, Master Dojo: Mienfoo Lv. 61: Fake Out, Force Palm, U-turn
    (190001, 19002, NULL, NULL, NULL, 'main-story-finished', 1, ARRAY[252, 395, 369]),
    -- Mustard, Master Dojo: Shinx Lv. 61: Spark, Bite
    (190001, 19002, NULL, NULL, NULL, 'main-story-finished', 2, ARRAY[209, 44]),
    -- Mustard's Kubfu, top of the tower: Kubfu Lv. 30: Aerial Ace, Focus Energy, Brick Break
    (190006, 19002, NULL, NULL, NULL, 'main-story-not-finished', 1, ARRAY[332, 116, 280]),
    -- Mustard's Kubfu, top of the tower: Kubfu Lv. 70: Aerial Ace, Focus Energy, Brick Break
    (190006, 19002, NULL, NULL, NULL, 'main-story-finished', 1, ARRAY[332, 116, 280]),
    -- Mustard: Mienshao Lv. 73: Fake Out, U-turn, Blaze Kick, Close Combat
    (190007, 19002, NULL, 190005, 'tower-of-darkness', NULL, 1, ARRAY[252, 369, 299, 370]),
    -- Mustard: Luxray Lv. 73: Psychic Fangs, Wild Charge, Crunch, Play Rough
    (190007, 19002, NULL, 190005, 'tower-of-darkness', NULL, 2, ARRAY[706, 528, 242, 583]),
    -- Mustard: Corviknight Lv. 74: Iron Head, Brave Bird, Body Press, Light Screen
    (190007, 19002, NULL, 190005, 'tower-of-darkness', NULL, 3, ARRAY[442, 413, 776, 113]),
    -- Mustard: Lycanroc Lv. 75: Accelerock, Stealth Rock, Stone Edge, Play Rough
    (190007, 19002, NULL, 190005, 'tower-of-darkness', NULL, 4, ARRAY[709, 446, 444, 583]),
    -- Mustard: Kommo-o Lv. 75: Clanging Scales, Aura Sphere, Flash Cannon, Clangorous Soul
    (190007, 19002, NULL, 190005, 'tower-of-darkness', NULL, 5, ARRAY[691, 396, 430, 775]),
    -- Mustard: Gigantamax Urshifu (Rapid Strike) Lv. 75: Surging Strikes, Close Combat, Poison Jab, Iron Head
    (190007, 19002, NULL, 190005, 'tower-of-darkness', NULL, 6, ARRAY[818, 370, 398, 442]),
    -- Mustard: Mienshao Lv. 73: Fake Out, U-turn, Blaze Kick, Close Combat
    (190007, 19002, NULL, 190005, 'tower-of-waters', NULL, 1, ARRAY[252, 369, 299, 370]),
    -- Mustard: Luxray Lv. 73: Psychic Fangs, Wild Charge, Crunch, Play Rough
    (190007, 19002, NULL, 190005, 'tower-of-waters', NULL, 2, ARRAY[706, 528, 242, 583]),
    -- Mustard: Corviknight Lv. 74: Iron Head, Brave Bird, Body Press, Light Screen
    (190007, 19002, NULL, 190005, 'tower-of-waters', NULL, 3, ARRAY[442, 413, 776, 113]),
    -- Mustard: Lycanroc Lv. 75: Accelerock, Stealth Rock, Stone Edge, Play Rough
    (190007, 19002, NULL, 190005, 'tower-of-waters', NULL, 4, ARRAY[709, 446, 444, 583]),
    -- Mustard: Kommo-o Lv. 75: Clanging Scales, Aura Sphere, Flash Cannon, Clangorous Soul
    (190007, 19002, NULL, 190005, 'tower-of-waters', NULL, 5, ARRAY[691, 396, 430, 775]),
    -- Mustard: Gigantamax Urshifu Lv. 75: Wicked Blow, Close Combat, Poison Jab, Iron Head
    (190007, 19002, NULL, 190005, 'tower-of-waters', NULL, 6, ARRAY[817, 370, 398, 442]),
    -- Klara / Avery: Venipede Lv. 10: Poison Tail
    (190001, 19001, 31, NULL, NULL, 'main-story-not-finished', 1, ARRAY[342]),
    -- Klara / Avery: Galarian Slowpoke Lv. 12: Confusion, Acid
    (190001, 19001, 31, NULL, NULL, 'main-story-not-finished', 2, ARRAY[93, 51]),
    -- Klara / Avery: Venipede Lv. 58: Poison Tail
    (190001, 19001, 31, NULL, NULL, 'main-story-finished', 1, ARRAY[342]),
    -- Klara / Avery: Galarian Slowpoke Lv. 60: Confusion, Acid
    (190001, 19001, 31, NULL, NULL, 'main-story-finished', 2, ARRAY[93, 51]),
    -- Klara / Avery: Abra Lv. 10: Confusion
    (190001, 19001, 32, NULL, NULL, 'main-story-not-finished', 1, ARRAY[93]),
    -- Klara / Avery: Galarian Slowpoke Lv. 12: Confusion, Acid
    (190001, 19001, 32, NULL, NULL, 'main-story-not-finished', 2, ARRAY[93, 51]),
    -- Klara / Avery: Abra Lv. 58: Confusion
    (190001, 19001, 32, NULL, NULL, 'main-story-finished', 1, ARRAY[93]),
    -- Klara / Avery: Galarian Slowpoke Lv. 60: Confusion, Acid
    (190001, 19001, 32, NULL, NULL, 'main-story-finished', 2, ARRAY[93, 51]),
    -- Klara / Avery: Galarian Slowpoke Lv. 18: Acid, Confusion
    (190004, 19001, 31, NULL, NULL, 'main-story-not-finished', 1, ARRAY[51, 93]),
    -- Klara / Avery: Koffing Lv. 18: Clear Smog, Assurance
    (190004, 19001, 31, NULL, NULL, 'main-story-not-finished', 2, ARRAY[499, 372]),
    -- Klara / Avery: Whirlipede Lv. 19: Poison Tail, Bug Bite
    (190004, 19001, 31, NULL, NULL, 'main-story-not-finished', 3, ARRAY[342, 450]),
    -- Klara / Avery: Galarian Slowpoke Lv. 62: Acid, Confusion
    (190004, 19001, 31, NULL, NULL, 'main-story-finished', 1, ARRAY[51, 93]),
    -- Klara / Avery: Koffing Lv. 62: Clear Smog, Assurance
    (190004, 19001, 31, NULL, NULL, 'main-story-finished', 2, ARRAY[499, 372]),
    -- Klara / Avery: Whirlipede Lv. 63: Poison Tail, Bug Bite
    (190004, 19001, 31, NULL, NULL, 'main-story-finished', 3, ARRAY[342, 450]),
    -- Klara / Avery: Galarian Slowpoke Lv. 18: Acid, Confusion
    (190004, 19001, 32, NULL, NULL, 'main-story-not-finished', 1, ARRAY[51, 93]),
    -- Klara / Avery: Woobat Lv. 18: Confusion, Air Cutter
    (190004, 19001, 32, NULL, NULL, 'main-story-not-finished', 2, ARRAY[93, 314]),
    -- Klara / Avery: Kadabra Lv. 19: Psybeam, Swift
    (190004, 19001, 32, NULL, NULL, 'main-story-not-finished', 3, ARRAY[60, 129]),
    -- Klara / Avery: Galarian Slowpoke Lv. 62: Acid, Confusion
    (190004, 19001, 32, NULL, NULL, 'main-story-finished', 1, ARRAY[51, 93]),
    -- Klara / Avery: Woobat Lv. 62: Confusion, Air Cutter
    (190004, 19001, 32, NULL, NULL, 'main-story-finished', 2, ARRAY[93, 314]),
    -- Klara / Avery: Kadabra Lv. 63: Psybeam, Swift
    (190004, 19001, 32, NULL, NULL, 'main-story-finished', 3, ARRAY[60, 129])
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
