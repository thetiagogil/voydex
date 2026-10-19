-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia type chart pages.
-- Cross-check: PokemonDB historical type chart notes.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation-aware type effectiveness change-point rows. Neutral rows are omitted unless they are explicit change points.
-- ============================================================================
INSERT INTO reference.type_matchups (
  attacking_type_id,
  defending_type_id,
  generation_start_id,
  multiplier_numerator,
  multiplier_denominator
)
VALUES
  -- Normal vs Rock from Generation I = 1/2
  (1, 13, 1, 1, 2),
  -- Normal vs Ghost from Generation I = 0/1
  (1, 14, 1, 0, 1),
  -- Fire vs Fire from Generation I = 1/2
  (2, 2, 1, 1, 2),
  -- Fire vs Water from Generation I = 1/2
  (2, 3, 1, 1, 2),
  -- Fire vs Grass from Generation I = 2/1
  (2, 5, 1, 2, 1),
  -- Fire vs Ice from Generation I = 2/1
  (2, 6, 1, 2, 1),
  -- Fire vs Bug from Generation I = 2/1
  (2, 12, 1, 2, 1),
  -- Fire vs Rock from Generation I = 1/2
  (2, 13, 1, 1, 2),
  -- Fire vs Dragon from Generation I = 1/2
  (2, 15, 1, 1, 2),
  -- Water vs Fire from Generation I = 2/1
  (3, 2, 1, 2, 1),
  -- Water vs Water from Generation I = 1/2
  (3, 3, 1, 1, 2),
  -- Water vs Grass from Generation I = 1/2
  (3, 5, 1, 1, 2),
  -- Water vs Ground from Generation I = 2/1
  (3, 9, 1, 2, 1),
  -- Water vs Rock from Generation I = 2/1
  (3, 13, 1, 2, 1),
  -- Water vs Dragon from Generation I = 1/2
  (3, 15, 1, 1, 2),
  -- Electric vs Water from Generation I = 2/1
  (4, 3, 1, 2, 1),
  -- Electric vs Electric from Generation I = 1/2
  (4, 4, 1, 1, 2),
  -- Electric vs Grass from Generation I = 1/2
  (4, 5, 1, 1, 2),
  -- Electric vs Ground from Generation I = 0/1
  (4, 9, 1, 0, 1),
  -- Electric vs Flying from Generation I = 2/1
  (4, 10, 1, 2, 1),
  -- Electric vs Dragon from Generation I = 1/2
  (4, 15, 1, 1, 2),
  -- Grass vs Fire from Generation I = 1/2
  (5, 2, 1, 1, 2),
  -- Grass vs Water from Generation I = 2/1
  (5, 3, 1, 2, 1),
  -- Grass vs Grass from Generation I = 1/2
  (5, 5, 1, 1, 2),
  -- Grass vs Poison from Generation I = 1/2
  (5, 8, 1, 1, 2),
  -- Grass vs Ground from Generation I = 2/1
  (5, 9, 1, 2, 1),
  -- Grass vs Flying from Generation I = 1/2
  (5, 10, 1, 1, 2),
  -- Grass vs Bug from Generation I = 1/2
  (5, 12, 1, 1, 2),
  -- Grass vs Rock from Generation I = 2/1
  (5, 13, 1, 2, 1),
  -- Grass vs Dragon from Generation I = 1/2
  (5, 15, 1, 1, 2),
  -- Ice vs Water from Generation I = 1/2
  (6, 3, 1, 1, 2),
  -- Ice vs Grass from Generation I = 2/1
  (6, 5, 1, 2, 1),
  -- Ice vs Ice from Generation I = 1/2
  (6, 6, 1, 1, 2),
  -- Ice vs Ground from Generation I = 2/1
  (6, 9, 1, 2, 1),
  -- Ice vs Flying from Generation I = 2/1
  (6, 10, 1, 2, 1),
  -- Ice vs Dragon from Generation I = 2/1
  (6, 15, 1, 2, 1),
  -- Fighting vs Normal from Generation I = 2/1
  (7, 1, 1, 2, 1),
  -- Fighting vs Ice from Generation I = 2/1
  (7, 6, 1, 2, 1),
  -- Fighting vs Poison from Generation I = 1/2
  (7, 8, 1, 1, 2),
  -- Fighting vs Flying from Generation I = 1/2
  (7, 10, 1, 1, 2),
  -- Fighting vs Psychic from Generation I = 1/2
  (7, 11, 1, 1, 2),
  -- Fighting vs Bug from Generation I = 1/2
  (7, 12, 1, 1, 2),
  -- Fighting vs Rock from Generation I = 2/1
  (7, 13, 1, 2, 1),
  -- Fighting vs Ghost from Generation I = 0/1
  (7, 14, 1, 0, 1),
  -- Poison vs Grass from Generation I = 2/1
  (8, 5, 1, 2, 1),
  -- Poison vs Poison from Generation I = 1/2
  (8, 8, 1, 1, 2),
  -- Poison vs Ground from Generation I = 1/2
  (8, 9, 1, 1, 2),
  -- Poison vs Bug from Generation I = 2/1
  (8, 12, 1, 2, 1),
  -- Poison vs Rock from Generation I = 1/2
  (8, 13, 1, 1, 2),
  -- Poison vs Ghost from Generation I = 1/2
  (8, 14, 1, 1, 2),
  -- Ground vs Fire from Generation I = 2/1
  (9, 2, 1, 2, 1),
  -- Ground vs Electric from Generation I = 2/1
  (9, 4, 1, 2, 1),
  -- Ground vs Grass from Generation I = 1/2
  (9, 5, 1, 1, 2),
  -- Ground vs Poison from Generation I = 2/1
  (9, 8, 1, 2, 1),
  -- Ground vs Flying from Generation I = 0/1
  (9, 10, 1, 0, 1),
  -- Ground vs Bug from Generation I = 1/2
  (9, 12, 1, 1, 2),
  -- Ground vs Rock from Generation I = 2/1
  (9, 13, 1, 2, 1),
  -- Flying vs Electric from Generation I = 1/2
  (10, 4, 1, 1, 2),
  -- Flying vs Grass from Generation I = 2/1
  (10, 5, 1, 2, 1),
  -- Flying vs Fighting from Generation I = 2/1
  (10, 7, 1, 2, 1),
  -- Flying vs Bug from Generation I = 2/1
  (10, 12, 1, 2, 1),
  -- Flying vs Rock from Generation I = 1/2
  (10, 13, 1, 1, 2),
  -- Psychic vs Fighting from Generation I = 2/1
  (11, 7, 1, 2, 1),
  -- Psychic vs Poison from Generation I = 2/1
  (11, 8, 1, 2, 1),
  -- Psychic vs Psychic from Generation I = 1/2
  (11, 11, 1, 1, 2),
  -- Bug vs Fire from Generation I = 1/2
  (12, 2, 1, 1, 2),
  -- Bug vs Grass from Generation I = 2/1
  (12, 5, 1, 2, 1),
  -- Bug vs Fighting from Generation I = 1/2
  (12, 7, 1, 1, 2),
  -- Bug vs Poison from Generation I = 2/1
  (12, 8, 1, 2, 1),
  -- Bug vs Flying from Generation I = 1/2
  (12, 10, 1, 1, 2),
  -- Bug vs Psychic from Generation I = 2/1
  (12, 11, 1, 2, 1),
  -- Bug vs Ghost from Generation I = 1/2
  (12, 14, 1, 1, 2),
  -- Rock vs Fire from Generation I = 2/1
  (13, 2, 1, 2, 1),
  -- Rock vs Ice from Generation I = 2/1
  (13, 6, 1, 2, 1),
  -- Rock vs Fighting from Generation I = 1/2
  (13, 7, 1, 1, 2),
  -- Rock vs Ground from Generation I = 1/2
  (13, 9, 1, 1, 2),
  -- Rock vs Flying from Generation I = 2/1
  (13, 10, 1, 2, 1),
  -- Rock vs Bug from Generation I = 2/1
  (13, 12, 1, 2, 1),
  -- Ghost vs Normal from Generation I = 0/1
  (14, 1, 1, 0, 1),
  -- Ghost vs Psychic from Generation I = 0/1
  (14, 11, 1, 0, 1),
  -- Ghost vs Ghost from Generation I = 2/1
  (14, 14, 1, 2, 1),
  -- Dragon vs Dragon from Generation I = 2/1
  (15, 15, 1, 2, 1),
  -- Normal vs Steel from Generation II = 1/2
  (1, 17, 2, 1, 2),
  -- Fire vs Steel from Generation II = 2/1
  (2, 17, 2, 2, 1),
  -- Grass vs Steel from Generation II = 1/2
  (5, 17, 2, 1, 2),
  -- Ice vs Fire from Generation II = 1/2
  (6, 2, 2, 1, 2),
  -- Ice vs Steel from Generation II = 1/2
  (6, 17, 2, 1, 2),
  -- Fighting vs Dark from Generation II = 2/1
  (7, 16, 2, 2, 1),
  -- Fighting vs Steel from Generation II = 2/1
  (7, 17, 2, 2, 1),
  -- Poison vs Bug from Generation II = 1/1
  (8, 12, 2, 1, 1),
  -- Poison vs Steel from Generation II = 0/1
  (8, 17, 2, 0, 1),
  -- Ground vs Steel from Generation II = 2/1
  (9, 17, 2, 2, 1),
  -- Flying vs Steel from Generation II = 1/2
  (10, 17, 2, 1, 2),
  -- Psychic vs Dark from Generation II = 0/1
  (11, 16, 2, 0, 1),
  -- Psychic vs Steel from Generation II = 1/2
  (11, 17, 2, 1, 2),
  -- Bug vs Poison from Generation II = 1/2
  (12, 8, 2, 1, 2),
  -- Bug vs Dark from Generation II = 2/1
  (12, 16, 2, 2, 1),
  -- Bug vs Steel from Generation II = 1/2
  (12, 17, 2, 1, 2),
  -- Rock vs Steel from Generation II = 1/2
  (13, 17, 2, 1, 2),
  -- Ghost vs Psychic from Generation II = 2/1
  (14, 11, 2, 2, 1),
  -- Ghost vs Dark from Generation II = 1/2
  (14, 16, 2, 1, 2),
  -- Ghost vs Steel from Generation II = 1/2
  (14, 17, 2, 1, 2),
  -- Dragon vs Steel from Generation II = 1/2
  (15, 17, 2, 1, 2),
  -- Dark vs Fighting from Generation II = 1/2
  (16, 7, 2, 1, 2),
  -- Dark vs Psychic from Generation II = 2/1
  (16, 11, 2, 2, 1),
  -- Dark vs Ghost from Generation II = 2/1
  (16, 14, 2, 2, 1),
  -- Dark vs Dark from Generation II = 1/2
  (16, 16, 2, 1, 2),
  -- Dark vs Steel from Generation II = 1/2
  (16, 17, 2, 1, 2),
  -- Steel vs Fire from Generation II = 1/2
  (17, 2, 2, 1, 2),
  -- Steel vs Water from Generation II = 1/2
  (17, 3, 2, 1, 2),
  -- Steel vs Electric from Generation II = 1/2
  (17, 4, 2, 1, 2),
  -- Steel vs Ice from Generation II = 2/1
  (17, 6, 2, 2, 1),
  -- Steel vs Rock from Generation II = 2/1
  (17, 13, 2, 2, 1),
  -- Steel vs Steel from Generation II = 1/2
  (17, 17, 2, 1, 2),
  -- Fighting vs Fairy from Generation VI = 1/2
  (7, 18, 6, 1, 2),
  -- Poison vs Fairy from Generation VI = 2/1
  (8, 18, 6, 2, 1),
  -- Bug vs Fairy from Generation VI = 1/2
  (12, 18, 6, 1, 2),
  -- Ghost vs Steel from Generation VI = 1/1
  (14, 17, 6, 1, 1),
  -- Dragon vs Fairy from Generation VI = 0/1
  (15, 18, 6, 0, 1),
  -- Dark vs Steel from Generation VI = 1/1
  (16, 17, 6, 1, 1),
  -- Dark vs Fairy from Generation VI = 1/2
  (16, 18, 6, 1, 2),
  -- Steel vs Fairy from Generation VI = 2/1
  (17, 18, 6, 2, 1),
  -- Fairy vs Fire from Generation VI = 1/2
  (18, 2, 6, 1, 2),
  -- Fairy vs Fighting from Generation VI = 2/1
  (18, 7, 6, 2, 1),
  -- Fairy vs Poison from Generation VI = 1/2
  (18, 8, 6, 1, 2),
  -- Fairy vs Dragon from Generation VI = 2/1
  (18, 15, 6, 2, 1),
  -- Fairy vs Dark from Generation VI = 2/1
  (18, 16, 6, 2, 1),
  -- Fairy vs Steel from Generation VI = 1/2
  (18, 17, 6, 1, 2);
