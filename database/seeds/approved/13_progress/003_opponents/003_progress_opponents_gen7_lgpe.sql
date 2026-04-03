-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (lgpe, VG 17)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Let's Go Pikachu/Eevee: Kanto gym structure. Same 8 leaders as RB/FRLG.
-- Champion battle is against the rival.
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    (436, 17, NULL, 'brock', 'Brock', 'gym-leader', NULL, 1),
    (437, 17, NULL, 'misty', 'Misty', 'gym-leader', NULL, 2),
    (438, 17, NULL, 'lt-surge', 'Lt. Surge', 'gym-leader', NULL, 3),
    (439, 17, NULL, 'erika', 'Erika', 'gym-leader', NULL, 4),
    (440, 17, NULL, 'koga', 'Koga', 'gym-leader', NULL, 5),
    (441, 17, NULL, 'sabrina', 'Sabrina', 'gym-leader', NULL, 6),
    (442, 17, NULL, 'blaine', 'Blaine', 'gym-leader', NULL, 7),
    (443, 17, NULL, 'giovanni', 'Giovanni', 'gym-leader', NULL, 8),
    (444, 17, NULL, 'lorelei', 'Lorelei', 'elite-four', NULL, 9),
    (445, 17, NULL, 'bruno', 'Bruno', 'elite-four', NULL, 10),
    (446, 17, NULL, 'agatha', 'Agatha', 'elite-four', NULL, 11),
    (447, 17, NULL, 'lance', 'Lance', 'elite-four', NULL, 12),
    (448, 17, NULL, 'rival', 'Rival', 'champion', NULL, 13),
    (449, 17, NULL, 'blue', 'Blue', 'story-boss', NULL, 14);