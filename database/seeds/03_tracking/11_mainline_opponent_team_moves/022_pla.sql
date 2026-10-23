-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokéWiki trainer team tables for this game, matched to each
-- team by its Pokémon and their levels.
-- Pokémon no source confirms are left without moves (Voydex reads their types).
-- Scope: Legends: Arceus Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Legends: Arceus opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Volo: Spiritomb Lv. 68: Hypnosis, Dark Pulse, Extrasensory, Shadow Ball
    (220011, 22008, NULL, NULL, NULL, NULL, 1, ARRAY[95, 399, 326, 247]),
    -- Volo: Roserade Lv. 68: Poison Jab, Petal Dance, Spikes
    (220011, 22008, NULL, NULL, NULL, NULL, 2, ARRAY[398, 80, 191]),
    -- Volo: Togekiss Lv. 68: Calm Mind, Moonblast, Extrasensory, Air Slash
    (220011, 22008, NULL, NULL, NULL, NULL, 3, ARRAY[347, 585, 326, 403]),
    -- Volo: Hisuian Arcanine Lv. 68: Raging Fury, Crunch, Rock Slide
    (220011, 22008, NULL, NULL, NULL, NULL, 4, ARRAY[833, 242, 157]),
    -- Volo: Lucario Lv. 68: Close Combat, Crunch, Bulk Up, Bullet Punch
    (220011, 22008, NULL, NULL, NULL, NULL, 5, ARRAY[370, 242, 339, 418]),
    -- Volo: Garchomp Lv. 68: Dragon Claw, Earth Power, Slash, Iron Head
    (220011, 22008, NULL, NULL, NULL, NULL, 6, ARRAY[337, 414, 163, 442]),
    -- Volo: Togepi Lv. 5: Tackle
    (220001, 22008, NULL, NULL, NULL, NULL, 1, ARRAY[33]),
    -- Volo: Togepi Lv. 22: Calm Mind, Draining Kiss, Tackle
    (220004, 22008, NULL, NULL, NULL, NULL, 1, ARRAY[347, 577, 33]),
    -- Volo: Gible Lv. 22: Twister, Bulldoze
    (220004, 22008, NULL, NULL, NULL, NULL, 2, ARRAY[239, 523])
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
