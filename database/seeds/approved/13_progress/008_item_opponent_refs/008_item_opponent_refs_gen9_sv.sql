-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (sv, VG 23)
-- ============================================================================
INSERT INTO
    progress.item_opponent_refs (progress_item_id, opponent_id)
VALUES
    -- Victory Road gyms
    (901, 500), -- bug-badge → Katy
    (902, 501), -- grass-badge → Brassius
    (903, 502), -- electric-badge → Iono
    (904, 503), -- water-badge → Kofu
    (905, 504), -- normal-badge → Larry
    (906, 505), -- ghost-badge → Ryme
    (907, 506), -- psychic-badge → Tulip
    (908, 507), -- ice-badge → Grusha
    -- Starfall Street bosses
    (909, 508), -- dark-star → Giacomo
    (910, 509), -- fire-star → Mela
    (911, 510), -- poison-star → Atticus
    (912, 511), -- fairy-star → Ortega
    (913, 512), -- fighting-star → Eri
    -- Elite Four + Champions
    (919, 513), -- elite-four-rika → Rika
    (920, 514), -- elite-four-poppy → Poppy
    (921, 515), -- elite-four-larry → Larry (E4)
    (922, 516), -- elite-four-hassel → Hassel
    (923, 517), -- top-champion-geeta → Geeta
    (924, 518), -- champion-nemona → Nemona
    (926, 519);

-- professor-ai → Professor AI