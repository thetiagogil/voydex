-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokéWiki trainer team tables for this game, matched to each
-- team by its Pokémon and their levels.
-- Cross-check: data-mined Sword / Shield trainer data.
-- Fixed encounters (legendaries and other one-off Pokémon): the game's
-- data-mined encounter table; where it sets no moves, the game's default from
-- its own level-up learnset. Cross-checked with Serebii and Bulbapedia.
-- Fixed encounters, totems, Titans, story bosses and trainers the sources
-- above leave out: Serebii, Bulbapedia and PokéWiki, kept where two agree;
-- where they disagree or only one covers it, Bulbapedia, then Serebii.
-- Glastrier / Spectrier at Freezington: the game's data-mined battle data,
-- matched by GamerGuides (Bulbapedia and Serebii list no moves).
-- Pokémon no source confirms are left without moves (Voydex reads their types).
-- Scope: Sword / Shield: The Crown Tundra Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Sword / Shield: The Crown Tundra opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Calyrex: Calyrex (Ice Rider) Lv. 80: Glacial Lance, Psychic, Iron Defense, Giga Drain
    (200004, 20002, NULL, 200003, 'glastrier', NULL, 1, ARRAY[824, 94, 334, 202]),
    -- Calyrex: Calyrex (Shadow Rider) Lv. 80: Astral Barrage, Psychic, Agility, Giga Drain
    (200004, 20002, NULL, 200003, 'spectrier', NULL, 1, ARRAY[825, 94, 97, 202]),
    -- Glastrier: Glastrier Lv. 75: Icicle Crash, Thrash, Avalanche, Stomp
    (200004, 20003, NULL, 200003, 'glastrier', NULL, 1, ARRAY[556, 37, 419, 23]),
    -- Spectrier: Spectrier Lv. 75: Shadow Ball, Thrash, Hex, Double Kick
    (200004, 20004, NULL, 200003, 'spectrier', NULL, 1, ARRAY[247, 37, 506, 24]),
    -- Registeel: Registeel Lv. 70: Heavy Slam, Flash Cannon, Iron Defense, Charge Beam
    (200005, 20005, NULL, NULL, NULL, NULL, 1, ARRAY[484, 430, 334, 451]),
    -- Regirock: Regirock Lv. 70: Superpower, Stone Edge, Hammer Arm, Curse
    (200005, 20006, NULL, NULL, NULL, NULL, 1, ARRAY[276, 444, 359, 174]),
    -- Regice: Regice Lv. 70: Ice Beam, Zap Cannon, Amnesia, Icy Wind
    (200005, 20007, NULL, NULL, NULL, NULL, 1, ARRAY[58, 192, 133, 196]),
    -- Regieleki: Regieleki Lv. 70: Thunder Cage, Electroweb, Extreme Speed, Magnet Rise
    (200006, 20008, NULL, 200005, 'regieleki', NULL, 1, ARRAY[819, 527, 245, 393]),
    -- Regidrago: Regidrago Lv. 70: Dragon Energy, Dragon Claw, Hammer Arm, Laser Focus
    (200006, 20009, NULL, 200005, 'regidrago', NULL, 1, ARRAY[820, 337, 359, 673]),
    -- Galarian Articuno: Galarian Articuno Lv. 70: Freezing Glare, Hurricane, Psycho Cut, Psycho Shift
    (200007, 20010, NULL, NULL, NULL, NULL, 1, ARRAY[821, 542, 427, 375]),
    -- Galarian Zapdos: Galarian Zapdos Lv. 70: Thunderous Kick, Drill Peck, Reversal, Focus Energy
    (200007, 20011, NULL, NULL, NULL, NULL, 1, ARRAY[823, 65, 179, 116]),
    -- Galarian Moltres: Galarian Moltres Lv. 70: Fiery Wrath, Hurricane, Sucker Punch, Nasty Plot
    (200007, 20012, NULL, NULL, NULL, NULL, 1, ARRAY[822, 542, 389, 417]),
    -- Cobalion: Cobalion Lv. 70: Sacred Sword, Swords Dance, Iron Head, Close Combat
    (200009, 20013, NULL, NULL, NULL, NULL, 1, ARRAY[533, 14, 442, 370]),
    -- Terrakion: Terrakion Lv. 70: Sacred Sword, Swords Dance, Stone Edge, Close Combat
    (200009, 20014, NULL, NULL, NULL, NULL, 1, ARRAY[533, 14, 444, 370]),
    -- Virizion: Virizion Lv. 70: Sacred Sword, Swords Dance, Leaf Blade, Close Combat
    (200009, 20015, NULL, NULL, NULL, NULL, 1, ARRAY[533, 14, 348, 370]),
    -- Keldeo: Keldeo (Resolute Form) Lv. 65: Secret Sword, Sacred Sword, Swords Dance, Hydro Pump
    (200010, 20016, NULL, NULL, NULL, NULL, 1, ARRAY[548, 533, 14, 56]),
    -- Peony: Copperajah Lv. 70: Heavy Slam, Play Rough, High Horsepower, Superpower
    (200002, 20001, NULL, NULL, NULL, NULL, 1, ARRAY[484, 583, 667, 276]),
    -- Peony: Aggron Lv. 70: Crunch, Iron Head, Stone Edge, Body Press
    (200002, 20001, NULL, NULL, NULL, NULL, 2, ARRAY[242, 442, 444, 776])
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
